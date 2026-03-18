#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"

using namespace llvm;

namespace {

static uint32_t encodeOrdering(AtomicOrdering Ord) {
    switch (Ord) {
        case AtomicOrdering::Monotonic:
            return 0;
        case AtomicOrdering::Acquire:
            return 1;
        case AtomicOrdering::Release:
            return 2;
        case AtomicOrdering::AcquireRelease:
            return 3;
        case AtomicOrdering::SequentiallyConsistent:
            return 4;
        default:
            return 0;
    }
}

static Constant* getStringLiteral(Module& M, StringRef S, StringRef GlobalName) {
    LLVMContext& Ctx = M.getContext();
    Constant* StrConstant = ConstantDataArray::getString(Ctx, S, true);

    auto* GV = new GlobalVariable(
        M,
        StrConstant->getType(),
        true,
        GlobalValue::PrivateLinkage,
        StrConstant,
        GlobalName);

    GV->setUnnamedAddr(GlobalValue::UnnamedAddr::Global);
    GV->setAlignment(Align(1));

    Constant* Zero = ConstantInt::get(Type::getInt32Ty(Ctx), 0);
    Constant* Indices[] = {Zero, Zero};

    return ConstantExpr::getInBoundsGetElementPtr(
        StrConstant->getType(),
        GV,
        Indices);
}

struct AtomicTracePass : public PassInfoMixin<AtomicTracePass> {
    PreservedAnalyses run(Module& M, ModuleAnalysisManager&) {
        LLVMContext& Ctx = M.getContext();

        Type* VoidTy = Type::getVoidTy(Ctx);
        Type* Int32Ty = Type::getInt32Ty(Ctx);
        Type* PtrTy = PointerType::getUnqual(Ctx);

        FunctionCallee LoadHook = M.getOrInsertFunction(
            "wmmon_load",
            FunctionType::get(
                VoidTy,
                {PtrTy, Int32Ty, PtrTy, PtrTy, Int32Ty},
                false));

        FunctionCallee StoreHook = M.getOrInsertFunction(
            "wmmon_store",
            FunctionType::get(
                VoidTy,
                {PtrTy, Int32Ty, PtrTy, PtrTy, Int32Ty},
                false));

        FunctionCallee CmpXchgHook = M.getOrInsertFunction(
            "wmmon_cmpxchg",
            FunctionType::get(
                VoidTy,
                {PtrTy, Int32Ty, Int32Ty, Int32Ty, PtrTy, PtrTy, Int32Ty},
                false));

        bool Changed = false;
        unsigned StringId = 0;

        for (Function& F : M) {
            if (F.isDeclaration()) continue;

            SmallVector<Instruction*, 16> WorkList;
            for (Instruction& I : instructions(F)) {
                if (auto* LI = dyn_cast<LoadInst>(&I)) {
                    if (LI->isAtomic()) {
                        WorkList.push_back(LI);
                    }
                } else if (auto* SI = dyn_cast<StoreInst>(&I)) {
                    if (SI->isAtomic()) {
                        WorkList.push_back(SI);
                    }
                } else if (isa<AtomicCmpXchgInst>(&I)) {
                    WorkList.push_back(&I);
                }
            }

            for (Instruction* I : WorkList) {
                IRBuilder<> Builder(I);

                std::string FuncName = F.getName().str();
                std::string FileName = "(unknown)";
                uint32_t Line = 0;

                if (DILocation* Loc = I->getDebugLoc()) {
                    FileName = Loc->getFilename().str();
                    Line = Loc->getLine();
                }

                Constant* FuncNamePtr =
                    getStringLiteral(M, FuncName, "__wmmon_func_" + std::to_string(StringId++));
                Constant* FileNamePtr =
                    getStringLiteral(M, FileName, "__wmmon_file_" + std::to_string(StringId++));
                Value* LineVal = ConstantInt::get(Int32Ty, Line);

                if (auto* LI = dyn_cast<LoadInst>(I)) {
                    Value* Addr = Builder.CreateBitCast(LI->getPointerOperand(), PtrTy);
                    Value* Mo = ConstantInt::get(Int32Ty, encodeOrdering(LI->getOrdering()));

                    Builder.CreateCall(
                        LoadHook,
                        {Addr, Mo, FuncNamePtr, FileNamePtr, LineVal});

                    Changed = true;
                } else if (auto* SI = dyn_cast<StoreInst>(I)) {
                    Value* Addr = Builder.CreateBitCast(SI->getPointerOperand(), PtrTy);
                    Value* Mo = ConstantInt::get(Int32Ty, encodeOrdering(SI->getOrdering()));

                    Builder.CreateCall(
                        StoreHook,
                        {Addr, Mo, FuncNamePtr, FileNamePtr, LineVal});

                    Changed = true;
                } else if (auto* CX = dyn_cast<AtomicCmpXchgInst>(I)) {
                    Value* Addr = Builder.CreateBitCast(CX->getPointerOperand(), PtrTy);
                    Value* SuccMo = ConstantInt::get(Int32Ty, encodeOrdering(CX->getSuccessOrdering()));
                    Value* FailMo = ConstantInt::get(Int32Ty, encodeOrdering(CX->getFailureOrdering()));
                    Value* IsWeak = ConstantInt::get(Int32Ty, CX->isWeak() ? 1 : 0);

                    Builder.CreateCall(
                        CmpXchgHook,
                        {Addr, SuccMo, FailMo, IsWeak, FuncNamePtr, FileNamePtr, LineVal});

                    Changed = true;
                }
            }
        }

        if (Changed) {
            errs() << "[AtomicTracePass] Instrumentation inserted.\n";
            return PreservedAnalyses::none();
        }

        errs() << "[AtomicTracePass] No atomic instructions instrumented.\n";
        return PreservedAnalyses::all();
    }
};

} // namespace

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return {
        LLVM_PLUGIN_API_VERSION,
        "AtomicTracePass",
        LLVM_VERSION_STRING,
        [](PassBuilder& PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager& MPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "atomic-trace-pass") {
                        MPM.addPass(AtomicTracePass());
                        return true;
                    }
                    return false;
                });
        }
    };
}