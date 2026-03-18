; ModuleID = 'test_deque.ll'
source_filename = "harness/test_deque.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.Job = type { i32 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.parlay::internal::Deque" = type { %"struct.std::atomic", [4 x i8], %"struct.std::atomic.0", [48 x i8], %"struct.std::array" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%"struct.std::atomic.0" = type { %"struct.parlay::internal::Deque<Job>::age_t" }
%"struct.parlay::internal::Deque<Job>::age_t" = type { i32, i32 }
%"struct.std::array" = type { [1000 x %"struct.parlay::internal::Deque<Job>::padded_job"] }
%"struct.parlay::internal::Deque<Job>::padded_job" = type { %"struct.std::atomic.1", [56 x i8] }
%"struct.std::atomic.1" = type { %"struct.std::__atomic_base.2" }
%"struct.std::__atomic_base.2" = type { ptr }
%"struct.std::pair" = type <{ ptr, i8, [7 x i8] }>

$_ZN6parlay8internal5DequeI3JobEC2Ev = comdat any

$_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_ = comdat any

$_ZN6parlay8internal5DequeI3JobE7pop_topEv = comdat any

$_ZNSt6atomicIjEC2Ej = comdat any

$_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEC2ES5_ = comdat any

$_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEC2Ev = comdat any

$_ZNSt13__atomic_baseIjEC2Ej = comdat any

$_ZN6parlay8internal5DequeI3JobE10padded_jobC2Ev = comdat any

$_ZNSt6atomicIP3JobEC2Ev = comdat any

$_ZNSt13__atomic_baseIP3JobEC2Ev = comdat any

$_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEixEm = comdat any

$_ZNSt6atomicIP3JobE5storeES1_St12memory_order = comdat any

$_ZStanSt12memory_orderSt23__memory_order_modifier = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order = comdat any

$_ZNKSt6atomicIP3JobE4loadESt12memory_order = comdat any

$_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_order = comdat any

$_ZNSt4pairIP3JobbEC2IRS1_bQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS5_S6_EEEEOT_OT0_ = comdat any

$_ZNSt4pairIP3JobbEC2IDnbQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS4_S5_EEEEOT_OT0_ = comdat any

$_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_ = comdat any

$_ZSt23__cmpexch_failure_orderSt12memory_order = comdat any

$_ZStorSt12memory_orderSt23__memory_order_modifier = comdat any

$_ZSt24__cmpexch_failure_order2St12memory_order = comdat any

@__const.main.a = private unnamed_addr constant %struct.Job { i32 1 }, align 4
@__const.main.b = private unnamed_addr constant %struct.Job { i32 2 }, align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [28 x i8] c"push_bottom(a) was_empty = \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [28 x i8] c"push_bottom(b) was_empty = \00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [21 x i8] c"pop_top #1 job id = \00", align 1, !dbg !15
@.str.4 = private unnamed_addr constant [11 x i8] c", empty = \00", align 1, !dbg !20
@.str.5 = private unnamed_addr constant [22 x i8] c"pop_top #1 job = null\00", align 1, !dbg !25
@.str.6 = private unnamed_addr constant [21 x i8] c"pop_top #2 job id = \00", align 1, !dbg !30
@.str.7 = private unnamed_addr constant [22 x i8] c"pop_top #2 job = null\00", align 1, !dbg !32
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"internal error: scheduler queue overflow\0A\00", align 1, !dbg !34
@__wmmon_func_0 = private unnamed_addr constant [50 x i8] c"_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_\00", align 1
@__wmmon_file_1 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_2 = private unnamed_addr constant [50 x i8] c"_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_\00", align 1
@__wmmon_file_3 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_4 = private unnamed_addr constant [50 x i8] c"_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_\00", align 1
@__wmmon_file_5 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_6 = private unnamed_addr constant [50 x i8] c"_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_\00", align 1
@__wmmon_file_7 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_8 = private unnamed_addr constant [50 x i8] c"_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_\00", align 1
@__wmmon_file_9 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_10 = private unnamed_addr constant [50 x i8] c"_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_\00", align 1
@__wmmon_file_11 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_12 = private unnamed_addr constant [42 x i8] c"_ZN6parlay8internal5DequeI3JobE7pop_topEv\00", align 1
@__wmmon_file_13 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_14 = private unnamed_addr constant [42 x i8] c"_ZN6parlay8internal5DequeI3JobE7pop_topEv\00", align 1
@__wmmon_file_15 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_16 = private unnamed_addr constant [42 x i8] c"_ZN6parlay8internal5DequeI3JobE7pop_topEv\00", align 1
@__wmmon_file_17 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_18 = private unnamed_addr constant [46 x i8] c"_ZNSt6atomicIP3JobE5storeES1_St12memory_order\00", align 1
@__wmmon_file_19 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_20 = private unnamed_addr constant [46 x i8] c"_ZNSt6atomicIP3JobE5storeES1_St12memory_order\00", align 1
@__wmmon_file_21 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_22 = private unnamed_addr constant [46 x i8] c"_ZNSt6atomicIP3JobE5storeES1_St12memory_order\00", align 1
@__wmmon_file_23 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_24 = private unnamed_addr constant [74 x i8] c"_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order\00", align 1
@__wmmon_file_25 = private unnamed_addr constant [74 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/atomic\00", align 1
@__wmmon_func_26 = private unnamed_addr constant [74 x i8] c"_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order\00", align 1
@__wmmon_file_27 = private unnamed_addr constant [74 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/atomic\00", align 1
@__wmmon_func_28 = private unnamed_addr constant [74 x i8] c"_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order\00", align 1
@__wmmon_file_29 = private unnamed_addr constant [74 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/atomic\00", align 1
@__wmmon_func_30 = private unnamed_addr constant [43 x i8] c"_ZNKSt6atomicIP3JobE4loadESt12memory_order\00", align 1
@__wmmon_file_31 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_32 = private unnamed_addr constant [43 x i8] c"_ZNKSt6atomicIP3JobE4loadESt12memory_order\00", align 1
@__wmmon_file_33 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_34 = private unnamed_addr constant [43 x i8] c"_ZNKSt6atomicIP3JobE4loadESt12memory_order\00", align 1
@__wmmon_file_35 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_36 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_37 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_38 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_39 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_40 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_41 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_42 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_43 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_44 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_45 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_46 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_47 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_48 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_49 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_50 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_51 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_52 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_53 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_54 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_55 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_56 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_57 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_58 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_59 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_60 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_61 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_62 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_63 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_64 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_65 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_66 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_67 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_68 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_69 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_70 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_71 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_72 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_73 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_74 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_75 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_76 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_77 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_78 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_79 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_80 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_81 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_82 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_83 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_84 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_85 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_86 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_87 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_88 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_89 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_90 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_91 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_92 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_93 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1
@__wmmon_func_94 = private unnamed_addr constant [103 x i8] c"_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_\00", align 1
@__wmmon_file_95 = private unnamed_addr constant [86 x i8] c"/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h\00", align 1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !1598 {
  %1 = alloca i32, align 4
  %2 = alloca %"struct.parlay::internal::Deque", align 64
  %3 = alloca %struct.Job, align 4
  %4 = alloca %struct.Job, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"struct.std::pair", align 8
  %8 = alloca %"struct.std::pair", align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1599, metadata !DIExpression()), !dbg !1600
  call void @_ZN6parlay8internal5DequeI3JobEC2Ev(ptr noundef nonnull align 64 dereferenceable(64064) %2), !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1601, metadata !DIExpression()), !dbg !1602
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 @__const.main.a, i64 4, i1 false), !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 @__const.main.b, i64 4, i1 false), !dbg !1604
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1605, metadata !DIExpression()), !dbg !1606
  %9 = call noundef zeroext i1 @_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_(ptr noundef nonnull align 64 dereferenceable(64064) %2, ptr noundef %3), !dbg !1607
  %10 = zext i1 %9 to i8, !dbg !1606
  store i8 %10, ptr %5, align 1, !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1608, metadata !DIExpression()), !dbg !1609
  %11 = call noundef zeroext i1 @_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_(ptr noundef nonnull align 64 dereferenceable(64064) %2, ptr noundef %4), !dbg !1610
  %12 = zext i1 %11 to i8, !dbg !1609
  store i8 %12, ptr %6, align 1, !dbg !1609
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !1611
  %14 = load i8, ptr %5, align 1, !dbg !1612
  %15 = trunc i8 %14 to i1, !dbg !1612
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %13, i1 noundef zeroext %15), !dbg !1613
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef @.str.1), !dbg !1614
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !1615
  %19 = load i8, ptr %6, align 1, !dbg !1616
  %20 = trunc i8 %19 to i1, !dbg !1616
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %18, i1 noundef zeroext %20), !dbg !1617
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef @.str.1), !dbg !1618
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1619, metadata !DIExpression()), !dbg !1620
  %23 = call { ptr, i8 } @_ZN6parlay8internal5DequeI3JobE7pop_topEv(ptr noundef nonnull align 64 dereferenceable(64064) %2), !dbg !1621
  %24 = getelementptr inbounds { ptr, i8 }, ptr %7, i32 0, i32 0, !dbg !1621
  %25 = extractvalue { ptr, i8 } %23, 0, !dbg !1621
  store ptr %25, ptr %24, align 8, !dbg !1621
  %26 = getelementptr inbounds { ptr, i8 }, ptr %7, i32 0, i32 1, !dbg !1621
  %27 = extractvalue { ptr, i8 } %23, 1, !dbg !1621
  store i8 %27, ptr %26, align 8, !dbg !1621
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1622, metadata !DIExpression()), !dbg !1623
  %28 = call { ptr, i8 } @_ZN6parlay8internal5DequeI3JobE7pop_topEv(ptr noundef nonnull align 64 dereferenceable(64064) %2), !dbg !1624
  %29 = getelementptr inbounds { ptr, i8 }, ptr %8, i32 0, i32 0, !dbg !1624
  %30 = extractvalue { ptr, i8 } %28, 0, !dbg !1624
  store ptr %30, ptr %29, align 8, !dbg !1624
  %31 = getelementptr inbounds { ptr, i8 }, ptr %8, i32 0, i32 1, !dbg !1624
  %32 = extractvalue { ptr, i8 } %28, 1, !dbg !1624
  store i8 %32, ptr %31, align 8, !dbg !1624
  %33 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 0, !dbg !1625
  %34 = load ptr, ptr %33, align 8, !dbg !1625
  %35 = icmp ne ptr %34, null, !dbg !1627
  br i1 %35, label %36, label %49, !dbg !1628

36:                                               ; preds = %0
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !1629
  %38 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 0, !dbg !1631
  %39 = load ptr, ptr %38, align 8, !dbg !1631
  %40 = getelementptr inbounds %struct.Job, ptr %39, i32 0, i32 0, !dbg !1632
  %41 = load i32, ptr %40, align 4, !dbg !1632
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef %41), !dbg !1633
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef @.str.4), !dbg !1634
  %44 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 1, !dbg !1635
  %45 = load i8, ptr %44, align 8, !dbg !1635
  %46 = trunc i8 %45 to i1, !dbg !1635
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %43, i1 noundef zeroext %46), !dbg !1636
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef @.str.1), !dbg !1637
  br label %57, !dbg !1638

49:                                               ; preds = %0
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !1639
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef @.str.4), !dbg !1641
  %52 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 1, !dbg !1642
  %53 = load i8, ptr %52, align 8, !dbg !1642
  %54 = trunc i8 %53 to i1, !dbg !1642
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %51, i1 noundef zeroext %54), !dbg !1643
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef @.str.1), !dbg !1644
  br label %57

57:                                               ; preds = %49, %36
  %58 = getelementptr inbounds %"struct.std::pair", ptr %8, i32 0, i32 0, !dbg !1645
  %59 = load ptr, ptr %58, align 8, !dbg !1645
  %60 = icmp ne ptr %59, null, !dbg !1647
  br i1 %60, label %61, label %74, !dbg !1648

61:                                               ; preds = %57
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6), !dbg !1649
  %63 = getelementptr inbounds %"struct.std::pair", ptr %8, i32 0, i32 0, !dbg !1651
  %64 = load ptr, ptr %63, align 8, !dbg !1651
  %65 = getelementptr inbounds %struct.Job, ptr %64, i32 0, i32 0, !dbg !1652
  %66 = load i32, ptr %65, align 4, !dbg !1652
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %62, i32 noundef %66), !dbg !1653
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef @.str.4), !dbg !1654
  %69 = getelementptr inbounds %"struct.std::pair", ptr %8, i32 0, i32 1, !dbg !1655
  %70 = load i8, ptr %69, align 8, !dbg !1655
  %71 = trunc i8 %70 to i1, !dbg !1655
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %68, i1 noundef zeroext %71), !dbg !1656
  %73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef @.str.1), !dbg !1657
  br label %82, !dbg !1658

74:                                               ; preds = %57
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7), !dbg !1659
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef @.str.4), !dbg !1661
  %77 = getelementptr inbounds %"struct.std::pair", ptr %8, i32 0, i32 1, !dbg !1662
  %78 = load i8, ptr %77, align 8, !dbg !1662
  %79 = trunc i8 %78 to i1, !dbg !1662
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %76, i1 noundef zeroext %79), !dbg !1663
  %81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef @.str.1), !dbg !1664
  br label %82

82:                                               ; preds = %74, %61
  ret i32 0, !dbg !1665
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6parlay8internal5DequeI3JobEC2Ev(ptr noundef nonnull align 64 dereferenceable(64064) %0) unnamed_addr #2 comdat align 2 !dbg !1666 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1667, metadata !DIExpression()), !dbg !1669
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %4, i32 0, i32 0, !dbg !1670
  call void @_ZNSt6atomicIjEC2Ej(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 0) #8, !dbg !1670
  %6 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %4, i32 0, i32 2, !dbg !1671
  %7 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::age_t", ptr %3, i32 0, i32 0, !dbg !1672
  store i32 0, ptr %7, align 8, !dbg !1672
  %8 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::age_t", ptr %3, i32 0, i32 1, !dbg !1672
  store i32 0, ptr %8, align 4, !dbg !1672
  %9 = load i64, ptr %3, align 8, !dbg !1671
  call void @_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEC2ES5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %9) #8, !dbg !1671
  %10 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %4, i32 0, i32 4, !dbg !1673
  call void @_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEC2Ev(ptr noundef nonnull align 64 dereferenceable(64000) %10) #8, !dbg !1673
  ret void, !dbg !1674
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_(ptr noundef nonnull align 64 dereferenceable(64064) %0, ptr noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1675 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1676, metadata !DIExpression()), !dbg !1677
  store ptr %1, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1678, metadata !DIExpression()), !dbg !1679
  %15 = load ptr, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1680, metadata !DIExpression()), !dbg !1681
  %16 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %15, i32 0, i32 0, !dbg !1682
  store ptr %16, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1683, metadata !DIExpression()), !dbg !1686
  store i32 2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1688, metadata !DIExpression()), !dbg !1689
  %17 = load ptr, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1690, metadata !DIExpression()), !dbg !1691
  %18 = load i32, ptr %9, align 4, !dbg !1692
  %19 = invoke noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %18, i32 noundef 65535)
          to label %20 unwind label %28, !dbg !1693

20:                                               ; preds = %2
  store i32 %19, ptr %10, align 4, !dbg !1691
  %21 = load i32, ptr %9, align 4, !dbg !1694
  switch i32 %21, label %22 [
    i32 1, label %24
    i32 2, label %24
    i32 5, label %26
  ], !dbg !1695

22:                                               ; preds = %20
  call void @wmmon_load(ptr %17, i32 0, ptr @__wmmon_func_0, ptr @__wmmon_file_1, i32 505), !dbg !1695
  %23 = load atomic i32, ptr %17 monotonic, align 4, !dbg !1695
  store i32 %23, ptr %11, align 4, !dbg !1695
  br label %31, !dbg !1695

24:                                               ; preds = %20, %20
  call void @wmmon_load(ptr %17, i32 1, ptr @__wmmon_func_2, ptr @__wmmon_file_3, i32 505), !dbg !1695
  %25 = load atomic i32, ptr %17 acquire, align 4, !dbg !1695
  store i32 %25, ptr %11, align 4, !dbg !1695
  br label %31, !dbg !1695

26:                                               ; preds = %20
  call void @wmmon_load(ptr %17, i32 4, ptr @__wmmon_func_4, ptr @__wmmon_file_5, i32 505), !dbg !1695
  %27 = load atomic i32, ptr %17 seq_cst, align 4, !dbg !1695
  store i32 %27, ptr %11, align 4, !dbg !1695
  br label %31, !dbg !1695

28:                                               ; preds = %2
  %29 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1693
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !1693
  call void @__clang_call_terminate(ptr %30) #9, !dbg !1693
  unreachable, !dbg !1693

31:                                               ; preds = %26, %24, %22
  %32 = load i32, ptr %11, align 4, !dbg !1695
  store i32 %32, ptr %14, align 4, !dbg !1681
  %33 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %15, i32 0, i32 4, !dbg !1696
  %34 = load i32, ptr %14, align 4, !dbg !1697
  %35 = zext i32 %34 to i64, !dbg !1697
  %36 = call noundef nonnull align 64 dereferenceable(8) ptr @_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEixEm(ptr noundef nonnull align 64 dereferenceable(64000) %33, i64 noundef %35) #8, !dbg !1696
  %37 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::padded_job", ptr %36, i32 0, i32 0, !dbg !1698
  %38 = load ptr, ptr %13, align 8, !dbg !1699
  call void @_ZNSt6atomicIP3JobE5storeES1_St12memory_order(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %38, i32 noundef 3) #8, !dbg !1700
  %39 = load i32, ptr %14, align 4, !dbg !1701
  %40 = add i32 %39, 1, !dbg !1701
  store i32 %40, ptr %14, align 4, !dbg !1701
  %41 = load i32, ptr %14, align 4, !dbg !1702
  %42 = icmp eq i32 %41, 1000, !dbg !1704
  br i1 %42, label %43, label %45, !dbg !1705

43:                                               ; preds = %31
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.8), !dbg !1706
  call void @abort() #9, !dbg !1708
  unreachable, !dbg !1708

45:                                               ; preds = %31
  %46 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %15, i32 0, i32 0, !dbg !1709
  %47 = load i32, ptr %14, align 4, !dbg !1710
  store ptr %46, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1711, metadata !DIExpression()), !dbg !1714
  store i32 %47, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1716, metadata !DIExpression()), !dbg !1717
  store i32 5, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1718, metadata !DIExpression()), !dbg !1719
  %48 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1720, metadata !DIExpression()), !dbg !1721
  %49 = load i32, ptr %5, align 4, !dbg !1722
  %50 = call noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %49, i32 noundef 65535), !dbg !1723
  store i32 %50, ptr %6, align 4, !dbg !1721
  %51 = load i32, ptr %5, align 4, !dbg !1724
  %52 = load i32, ptr %4, align 4, !dbg !1725
  store i32 %52, ptr %7, align 4, !dbg !1726
  switch i32 %51, label %53 [
    i32 3, label %55
    i32 5, label %57
  ], !dbg !1726

53:                                               ; preds = %45
  %54 = load i32, ptr %7, align 4, !dbg !1726
  call void @wmmon_store(ptr %48, i32 0, ptr @__wmmon_func_6, ptr @__wmmon_file_7, i32 481), !dbg !1726
  store atomic i32 %54, ptr %48 monotonic, align 4, !dbg !1726
  br label %59, !dbg !1726

55:                                               ; preds = %45
  %56 = load i32, ptr %7, align 4, !dbg !1726
  call void @wmmon_store(ptr %48, i32 2, ptr @__wmmon_func_8, ptr @__wmmon_file_9, i32 481), !dbg !1726
  store atomic i32 %56, ptr %48 release, align 4, !dbg !1726
  br label %59, !dbg !1726

57:                                               ; preds = %45
  %58 = load i32, ptr %7, align 4, !dbg !1726
  call void @wmmon_store(ptr %48, i32 4, ptr @__wmmon_func_10, ptr @__wmmon_file_11, i32 481), !dbg !1726
  store atomic i32 %58, ptr %48 seq_cst, align 4, !dbg !1726
  br label %59, !dbg !1726

59:                                               ; preds = %57, %55, %53
  %60 = load i32, ptr %14, align 4, !dbg !1727
  %61 = icmp eq i32 %60, 1, !dbg !1728
  ret i1 %61, !dbg !1729
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZN6parlay8internal5DequeI3JobE7pop_topEv(ptr noundef nonnull align 64 dereferenceable(64064) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1730 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"struct.std::pair", align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  %12 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  %13 = alloca i8, align 1
  %14 = alloca ptr, align 8
  %15 = alloca i8, align 1
  %16 = alloca ptr, align 8
  %17 = alloca i8, align 1
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1731, metadata !DIExpression()), !dbg !1732
  %18 = load ptr, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1733, metadata !DIExpression()), !dbg !1734
  %19 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %18, i32 0, i32 2, !dbg !1735
  %20 = call i64 @_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2) #8, !dbg !1736
  store i64 %20, ptr %8, align 8, !dbg !1736
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1737, metadata !DIExpression()), !dbg !1738
  %21 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %18, i32 0, i32 0, !dbg !1739
  store ptr %21, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1683, metadata !DIExpression()), !dbg !1740
  store i32 2, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1688, metadata !DIExpression()), !dbg !1742
  %22 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1690, metadata !DIExpression()), !dbg !1743
  %23 = load i32, ptr %3, align 4, !dbg !1744
  %24 = invoke noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %23, i32 noundef 65535)
          to label %25 unwind label %33, !dbg !1745

25:                                               ; preds = %1
  store i32 %24, ptr %4, align 4, !dbg !1743
  %26 = load i32, ptr %3, align 4, !dbg !1746
  switch i32 %26, label %27 [
    i32 1, label %29
    i32 2, label %29
    i32 5, label %31
  ], !dbg !1747

27:                                               ; preds = %25
  call void @wmmon_load(ptr %22, i32 0, ptr @__wmmon_func_12, ptr @__wmmon_file_13, i32 505), !dbg !1747
  %28 = load atomic i32, ptr %22 monotonic, align 4, !dbg !1747
  store i32 %28, ptr %5, align 4, !dbg !1747
  br label %36, !dbg !1747

29:                                               ; preds = %25, %25
  call void @wmmon_load(ptr %22, i32 1, ptr @__wmmon_func_14, ptr @__wmmon_file_15, i32 505), !dbg !1747
  %30 = load atomic i32, ptr %22 acquire, align 4, !dbg !1747
  store i32 %30, ptr %5, align 4, !dbg !1747
  br label %36, !dbg !1747

31:                                               ; preds = %25
  call void @wmmon_load(ptr %22, i32 4, ptr @__wmmon_func_16, ptr @__wmmon_file_17, i32 505), !dbg !1747
  %32 = load atomic i32, ptr %22 seq_cst, align 4, !dbg !1747
  store i32 %32, ptr %5, align 4, !dbg !1747
  br label %36, !dbg !1747

33:                                               ; preds = %1
  %34 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1745
  %35 = extractvalue { ptr, i32 } %34, 0, !dbg !1745
  call void @__clang_call_terminate(ptr %35) #9, !dbg !1745
  unreachable, !dbg !1745

36:                                               ; preds = %31, %29, %27
  %37 = load i32, ptr %5, align 4, !dbg !1747
  store i32 %37, ptr %9, align 4, !dbg !1738
  %38 = load i32, ptr %9, align 4, !dbg !1748
  %39 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::age_t", ptr %8, i32 0, i32 1, !dbg !1750
  %40 = load i32, ptr %39, align 4, !dbg !1750
  %41 = icmp ugt i32 %38, %40, !dbg !1751
  br i1 %41, label %42, label %71, !dbg !1752

42:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1753, metadata !DIExpression()), !dbg !1755
  %43 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %18, i32 0, i32 4, !dbg !1756
  %44 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::age_t", ptr %8, i32 0, i32 1, !dbg !1757
  %45 = load i32, ptr %44, align 4, !dbg !1757
  %46 = zext i32 %45 to i64, !dbg !1758
  %47 = call noundef nonnull align 64 dereferenceable(8) ptr @_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEixEm(ptr noundef nonnull align 64 dereferenceable(64000) %43, i64 noundef %46) #8, !dbg !1756
  %48 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::padded_job", ptr %47, i32 0, i32 0, !dbg !1759
  %49 = call noundef ptr @_ZNKSt6atomicIP3JobE4loadESt12memory_order(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 2) #8, !dbg !1760
  store ptr %49, ptr %10, align 8, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1761, metadata !DIExpression()), !dbg !1762
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %8, i64 8, i1 false), !dbg !1763
  %50 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::age_t", ptr %11, i32 0, i32 1, !dbg !1764
  %51 = load i32, ptr %50, align 4, !dbg !1764
  %52 = add i32 %51, 1, !dbg !1765
  %53 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::age_t", ptr %11, i32 0, i32 1, !dbg !1766
  store i32 %52, ptr %53, align 4, !dbg !1767
  %54 = getelementptr inbounds %"struct.parlay::internal::Deque", ptr %18, i32 0, i32 2, !dbg !1768
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %11, i64 8, i1 false), !dbg !1770
  %55 = load i64, ptr %12, align 8, !dbg !1771
  %56 = call noundef zeroext i1 @_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_order(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %8, i64 %55, i32 noundef 5) #8, !dbg !1771
  br i1 %56, label %57, label %64, !dbg !1772

57:                                               ; preds = %42
  %58 = load i32, ptr %9, align 4, !dbg !1773
  %59 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::age_t", ptr %8, i32 0, i32 1, !dbg !1774
  %60 = load i32, ptr %59, align 4, !dbg !1774
  %61 = add i32 %60, 1, !dbg !1775
  %62 = icmp eq i32 %58, %61, !dbg !1776
  %63 = zext i1 %62 to i8, !dbg !1777
  store i8 %63, ptr %13, align 1, !dbg !1777
  call void @_ZNSt4pairIP3JobbEC2IRS1_bQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS5_S6_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %13) #8, !dbg !1778
  br label %72, !dbg !1779

64:                                               ; preds = %42
  store ptr null, ptr %14, align 8, !dbg !1780
  %65 = load i32, ptr %9, align 4, !dbg !1781
  %66 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::age_t", ptr %8, i32 0, i32 1, !dbg !1782
  %67 = load i32, ptr %66, align 4, !dbg !1782
  %68 = add i32 %67, 1, !dbg !1783
  %69 = icmp eq i32 %65, %68, !dbg !1784
  %70 = zext i1 %69 to i8, !dbg !1785
  store i8 %70, ptr %15, align 1, !dbg !1785
  call void @_ZNSt4pairIP3JobbEC2IDnbQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS4_S5_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #8, !dbg !1786
  br label %72, !dbg !1787

71:                                               ; preds = %36
  store ptr null, ptr %16, align 8, !dbg !1788
  store i8 1, ptr %17, align 1, !dbg !1789
  call void @_ZNSt4pairIP3JobbEC2IDnbQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS4_S5_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 1 dereferenceable(1) %17) #8, !dbg !1790
  br label %72, !dbg !1791

72:                                               ; preds = %71, %64, %57
  %73 = load { ptr, i8 }, ptr %6, align 8, !dbg !1792
  ret { ptr, i8 } %73, !dbg !1792
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicIjEC2Ej(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !dbg !1793 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1794, metadata !DIExpression()), !dbg !1796
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1797, metadata !DIExpression()), !dbg !1798
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4, !dbg !1799
  call void @_ZNSt13__atomic_baseIjEC2Ej(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %6) #8, !dbg !1800
  ret void, !dbg !1801
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEC2ES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1) unnamed_addr #2 comdat align 2 !dbg !1802 {
  %3 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1803, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1806, metadata !DIExpression()), !dbg !1807
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::atomic.0", ptr %5, i32 0, i32 0, !dbg !1808
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %3, i64 8, i1 false), !dbg !1808
  ret void, !dbg !1809
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEC2Ev(ptr noundef nonnull align 64 dereferenceable(64000) %0) unnamed_addr #2 comdat align 2 !dbg !1810 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1814, metadata !DIExpression()), !dbg !1816
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::array", ptr %3, i32 0, i32 0, !dbg !1817
  %5 = getelementptr inbounds [1000 x %"struct.parlay::internal::Deque<Job>::padded_job"], ptr %4, i32 0, i32 0, !dbg !1817
  %6 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::padded_job", ptr %5, i64 1000, !dbg !1817
  br label %7, !dbg !1817

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %5, %1 ], [ %9, %7 ], !dbg !1817
  call void @_ZN6parlay8internal5DequeI3JobE10padded_jobC2Ev(ptr noundef nonnull align 64 dereferenceable(8) %8) #8, !dbg !1817
  %9 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::padded_job", ptr %8, i64 1, !dbg !1817
  %10 = icmp eq ptr %9, %6, !dbg !1817
  br i1 %10, label %11, label %7, !dbg !1817

11:                                               ; preds = %7
  ret void, !dbg !1817
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13__atomic_baseIjEC2Ej(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !dbg !1818 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1819, metadata !DIExpression()), !dbg !1820
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1821, metadata !DIExpression()), !dbg !1822
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__atomic_base", ptr %5, i32 0, i32 0, !dbg !1823
  %7 = load i32, ptr %4, align 4, !dbg !1824
  store i32 %7, ptr %6, align 4, !dbg !1823
  ret void, !dbg !1825
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6parlay8internal5DequeI3JobE10padded_jobC2Ev(ptr noundef nonnull align 64 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !1826 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1831, metadata !DIExpression()), !dbg !1833
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.parlay::internal::Deque<Job>::padded_job", ptr %3, i32 0, i32 0, !dbg !1834
  call void @_ZNSt6atomicIP3JobEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !1834
  ret void, !dbg !1834
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicIP3JobEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !1835 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1836, metadata !DIExpression()), !dbg !1838
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::atomic.1", ptr %3, i32 0, i32 0, !dbg !1839
  call void @_ZNSt13__atomic_baseIP3JobEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !1839
  ret void, !dbg !1840
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13__atomic_baseIP3JobEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !1841 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1842, metadata !DIExpression()), !dbg !1844
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__atomic_base.2", ptr %3, i32 0, i32 0, !dbg !1845
  store ptr null, ptr %4, align 8, !dbg !1845
  ret void, !dbg !1846
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 64 dereferenceable(8) ptr @_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEixEm(ptr noundef nonnull align 64 dereferenceable(64000) %0, i64 noundef %1) #2 comdat align 2 !dbg !1847 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1850, metadata !DIExpression()), !dbg !1851
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::array", ptr %5, i32 0, i32 0, !dbg !1852
  %7 = load i64, ptr %4, align 8, !dbg !1853
  %8 = getelementptr inbounds [1000 x %"struct.parlay::internal::Deque<Job>::padded_job"], ptr %6, i64 0, i64 %7, !dbg !1852
  ret ptr %8, !dbg !1854
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicIP3JobE5storeES1_St12memory_order(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) #2 comdat align 2 !dbg !1855 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1856, metadata !DIExpression()), !dbg !1857
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1858, metadata !DIExpression()), !dbg !1859
  store i32 %2, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1860, metadata !DIExpression()), !dbg !1861
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds %"struct.std::atomic.1", ptr %12, i32 0, i32 0, !dbg !1862
  %14 = load ptr, ptr %10, align 8, !dbg !1863
  %15 = load i32, ptr %11, align 4, !dbg !1864
  store ptr %13, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1865, metadata !DIExpression()), !dbg !1867
  store ptr %14, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1869, metadata !DIExpression()), !dbg !1870
  store i32 %15, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1871, metadata !DIExpression()), !dbg !1872
  %16 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1873, metadata !DIExpression()), !dbg !1874
  %17 = load i32, ptr %6, align 4, !dbg !1875
  %18 = call noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %17, i32 noundef 65535), !dbg !1876
  store i32 %18, ptr %7, align 4, !dbg !1874
  %19 = load i32, ptr %6, align 4, !dbg !1877
  %20 = load ptr, ptr %5, align 8, !dbg !1878
  store ptr %20, ptr %8, align 8, !dbg !1879
  switch i32 %19, label %21 [
    i32 3, label %23
    i32 5, label %25
  ], !dbg !1879

21:                                               ; preds = %3
  %22 = load i64, ptr %8, align 8, !dbg !1879
  call void @wmmon_store(ptr %16, i32 0, ptr @__wmmon_func_18, ptr @__wmmon_file_19, i32 813), !dbg !1879
  store atomic i64 %22, ptr %16 monotonic, align 8, !dbg !1879
  br label %27, !dbg !1879

23:                                               ; preds = %3
  %24 = load i64, ptr %8, align 8, !dbg !1879
  call void @wmmon_store(ptr %16, i32 2, ptr @__wmmon_func_20, ptr @__wmmon_file_21, i32 813), !dbg !1879
  store atomic i64 %24, ptr %16 release, align 8, !dbg !1879
  br label %27, !dbg !1879

25:                                               ; preds = %3
  %26 = load i64, ptr %8, align 8, !dbg !1879
  call void @wmmon_store(ptr %16, i32 4, ptr @__wmmon_func_22, ptr @__wmmon_file_23, i32 813), !dbg !1879
  store atomic i64 %26, ptr %16 seq_cst, align 8, !dbg !1879
  br label %27, !dbg !1879

27:                                               ; preds = %25, %23, %21
  ret void, !dbg !1880
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %0, i32 noundef %1) #2 comdat !dbg !1881 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1884, metadata !DIExpression()), !dbg !1885
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1886, metadata !DIExpression()), !dbg !1887
  %5 = load i32, ptr %3, align 4, !dbg !1888
  %6 = load i32, ptr %4, align 4, !dbg !1889
  %7 = and i32 %5, %6, !dbg !1890
  ret i32 %7, !dbg !1891
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #7 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #8
  call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #2 comdat align 2 !dbg !1892 {
  %3 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1893, metadata !DIExpression()), !dbg !1895
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1896, metadata !DIExpression()), !dbg !1897
  %8 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1898, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1903, metadata !DIExpression()), !dbg !1904
  %9 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 0, !dbg !1905
  store ptr %9, ptr %7, align 8, !dbg !1904
  %10 = getelementptr inbounds %"struct.std::atomic.0", ptr %8, i32 0, i32 0, !dbg !1906
  %11 = load i32, ptr %5, align 4, !dbg !1907
  %12 = load ptr, ptr %7, align 8, !dbg !1908
  switch i32 %11, label %13 [
    i32 1, label %15
    i32 2, label %15
    i32 5, label %17
  ], !dbg !1909

13:                                               ; preds = %2
  call void @wmmon_load(ptr %10, i32 0, ptr @__wmmon_func_24, ptr @__wmmon_file_25, i32 297), !dbg !1909
  %14 = load atomic i64, ptr %10 monotonic, align 8, !dbg !1909
  store i64 %14, ptr %12, align 8, !dbg !1909
  br label %19, !dbg !1909

15:                                               ; preds = %2, %2
  call void @wmmon_load(ptr %10, i32 1, ptr @__wmmon_func_26, ptr @__wmmon_file_27, i32 297), !dbg !1909
  %16 = load atomic i64, ptr %10 acquire, align 8, !dbg !1909
  store i64 %16, ptr %12, align 8, !dbg !1909
  br label %19, !dbg !1909

17:                                               ; preds = %2
  call void @wmmon_load(ptr %10, i32 4, ptr @__wmmon_func_28, ptr @__wmmon_file_29, i32 297), !dbg !1909
  %18 = load atomic i64, ptr %10 seq_cst, align 8, !dbg !1909
  store i64 %18, ptr %12, align 8, !dbg !1909
  br label %19, !dbg !1909

19:                                               ; preds = %17, %15, %13
  %20 = load ptr, ptr %7, align 8, !dbg !1910
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %20, i64 8, i1 false), !dbg !1911
  %21 = load i64, ptr %3, align 8, !dbg !1912
  ret i64 %21, !dbg !1912
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt6atomicIP3JobE4loadESt12memory_order(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #2 comdat align 2 !dbg !1913 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1914, metadata !DIExpression()), !dbg !1916
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1917, metadata !DIExpression()), !dbg !1918
  %9 = load ptr, ptr %7, align 8
  %10 = getelementptr inbounds %"struct.std::atomic.1", ptr %9, i32 0, i32 0, !dbg !1919
  %11 = load i32, ptr %8, align 4, !dbg !1920
  store ptr %10, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1921, metadata !DIExpression()), !dbg !1924
  store i32 %11, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1926, metadata !DIExpression()), !dbg !1927
  %12 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1928, metadata !DIExpression()), !dbg !1929
  %13 = load i32, ptr %4, align 4, !dbg !1930
  %14 = call noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %13, i32 noundef 65535), !dbg !1931
  store i32 %14, ptr %5, align 4, !dbg !1929
  %15 = load i32, ptr %4, align 4, !dbg !1932
  switch i32 %15, label %16 [
    i32 1, label %18
    i32 2, label %18
    i32 5, label %20
  ], !dbg !1933

16:                                               ; preds = %2
  call void @wmmon_load(ptr %12, i32 0, ptr @__wmmon_func_30, ptr @__wmmon_file_31, i32 837), !dbg !1933
  %17 = load atomic i64, ptr %12 monotonic, align 8, !dbg !1933
  store i64 %17, ptr %6, align 8, !dbg !1933
  br label %22, !dbg !1933

18:                                               ; preds = %2, %2
  call void @wmmon_load(ptr %12, i32 1, ptr @__wmmon_func_32, ptr @__wmmon_file_33, i32 837), !dbg !1933
  %19 = load atomic i64, ptr %12 acquire, align 8, !dbg !1933
  store i64 %19, ptr %6, align 8, !dbg !1933
  br label %22, !dbg !1933

20:                                               ; preds = %2
  call void @wmmon_load(ptr %12, i32 4, ptr @__wmmon_func_34, ptr @__wmmon_file_35, i32 837), !dbg !1933
  %21 = load atomic i64, ptr %12 seq_cst, align 8, !dbg !1933
  store i64 %21, ptr %6, align 8, !dbg !1933
  br label %22, !dbg !1933

22:                                               ; preds = %20, %18, %16
  %23 = load ptr, ptr %6, align 8, !dbg !1933
  ret ptr %23, !dbg !1934
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_order(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %2, i32 noundef %3) #2 comdat align 2 !dbg !1935 {
  %5 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  store i64 %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1936, metadata !DIExpression()), !dbg !1937
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1938, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1942, metadata !DIExpression()), !dbg !1943
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8, !dbg !1944
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false), !dbg !1945
  %12 = load i32, ptr %8, align 4, !dbg !1946
  %13 = load i32, ptr %8, align 4, !dbg !1947
  %14 = call noundef i32 @_ZSt23__cmpexch_failure_orderSt12memory_order(i32 noundef %13) #8, !dbg !1948
  %15 = load i64, ptr %9, align 8, !dbg !1949
  %16 = call noundef zeroext i1 @_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 %15, i32 noundef %12, i32 noundef %14) #8, !dbg !1949
  ret i1 %16, !dbg !1950
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIP3JobbEC2IRS1_bQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS5_S6_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 !dbg !1951 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1959, metadata !DIExpression()), !dbg !1961
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1962, metadata !DIExpression()), !dbg !1963
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1964, metadata !DIExpression()), !dbg !1965
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 0, !dbg !1966
  %9 = load ptr, ptr %5, align 8, !dbg !1967
  %10 = load ptr, ptr %9, align 8, !dbg !1968
  store ptr %10, ptr %8, align 8, !dbg !1966
  %11 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 1, !dbg !1969
  %12 = load ptr, ptr %6, align 8, !dbg !1970
  %13 = load i8, ptr %12, align 1, !dbg !1971
  %14 = trunc i8 %13 to i1, !dbg !1971
  %15 = zext i1 %14 to i8, !dbg !1969
  store i8 %15, ptr %11, align 8, !dbg !1969
  ret void, !dbg !1972
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIP3JobbEC2IDnbQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS4_S5_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 !dbg !1973 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1981, metadata !DIExpression()), !dbg !1982
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1983, metadata !DIExpression()), !dbg !1984
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1985, metadata !DIExpression()), !dbg !1986
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 0, !dbg !1987
  %9 = load ptr, ptr %5, align 8, !dbg !1988
  store ptr null, ptr %8, align 8, !dbg !1987
  %10 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 1, !dbg !1989
  %11 = load ptr, ptr %6, align 8, !dbg !1990
  %12 = load i8, ptr %11, align 1, !dbg !1991
  %13 = trunc i8 %12 to i1, !dbg !1991
  %14 = zext i1 %13 to i8, !dbg !1989
  store i8 %14, ptr %10, align 8, !dbg !1989
  ret void, !dbg !1992
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %2, i32 noundef %3, i32 noundef %4) #2 comdat align 2 !dbg !1993 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %"struct.parlay::internal::Deque<Job>::age_t", align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %2, ptr %13, align 8
  store ptr %0, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1994, metadata !DIExpression()), !dbg !1995
  store ptr %1, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1996, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1998, metadata !DIExpression()), !dbg !1999
  store i32 %3, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2000, metadata !DIExpression()), !dbg !2001
  store i32 %4, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2002, metadata !DIExpression()), !dbg !2003
  %18 = load ptr, ptr %14, align 8
  %19 = getelementptr inbounds %"struct.std::atomic.0", ptr %18, i32 0, i32 0, !dbg !2004
  %20 = load ptr, ptr %15, align 8, !dbg !2005
  %21 = load i32, ptr %16, align 4, !dbg !2006
  %22 = load i32, ptr %17, align 4, !dbg !2007
  store ptr %19, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2008, metadata !DIExpression()), !dbg !2018
  store ptr %20, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2020, metadata !DIExpression()), !dbg !2021
  store ptr %13, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2022, metadata !DIExpression()), !dbg !2023
  store i8 0, ptr %9, align 1
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i32 %21, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2026, metadata !DIExpression()), !dbg !2027
  store i32 %22, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2028, metadata !DIExpression()), !dbg !2029
  %23 = load ptr, ptr %6, align 8, !dbg !2030
  %24 = load i32, ptr %10, align 4, !dbg !2032
  %25 = load ptr, ptr %7, align 8, !dbg !2033
  %26 = load ptr, ptr %8, align 8, !dbg !2034
  %27 = load i32, ptr %11, align 4, !dbg !2035
  %28 = load i8, ptr %9, align 1, !dbg !2036
  %29 = trunc i8 %28 to i1, !dbg !2036
  switch i32 %24, label %30 [
    i32 1, label %32
    i32 2, label %32
    i32 3, label %34
    i32 4, label %36
    i32 5, label %38
  ], !dbg !2037

30:                                               ; preds = %5
  %31 = icmp eq i1 %29, false, !dbg !2037
  br i1 %31, label %40, label %41, !dbg !2037

32:                                               ; preds = %5, %5
  %33 = icmp eq i1 %29, false, !dbg !2037
  br i1 %33, label %99, label %100, !dbg !2037

34:                                               ; preds = %5
  %35 = icmp eq i1 %29, false, !dbg !2037
  br i1 %35, label %158, label %159, !dbg !2037

36:                                               ; preds = %5
  %37 = icmp eq i1 %29, false, !dbg !2037
  br i1 %37, label %217, label %218, !dbg !2037

38:                                               ; preds = %5
  %39 = icmp eq i1 %29, false, !dbg !2037
  br i1 %39, label %276, label %277, !dbg !2037

40:                                               ; preds = %30
  switch i32 %27, label %43 [
    i32 1, label %49
    i32 2, label %49
    i32 5, label %55
  ], !dbg !2037

41:                                               ; preds = %30
  switch i32 %27, label %71 [
    i32 1, label %77
    i32 2, label %77
    i32 5, label %83
  ], !dbg !2037

42:                                               ; preds = %89, %61
  br label %335, !dbg !2037

43:                                               ; preds = %40
  %44 = load i64, ptr %25, align 8, !dbg !2037
  %45 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 0, i32 0, i32 0, ptr @__wmmon_func_36, ptr @__wmmon_file_37, i32 1015), !dbg !2037
  %46 = cmpxchg ptr %23, i64 %44, i64 %45 monotonic monotonic, align 8, !dbg !2037
  %47 = extractvalue { i64, i1 } %46, 0, !dbg !2037
  %48 = extractvalue { i64, i1 } %46, 1, !dbg !2037
  br i1 %48, label %63, label %62, !dbg !2037

49:                                               ; preds = %40, %40
  %50 = load i64, ptr %25, align 8, !dbg !2037
  %51 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 0, i32 1, i32 0, ptr @__wmmon_func_38, ptr @__wmmon_file_39, i32 1015), !dbg !2037
  %52 = cmpxchg ptr %23, i64 %50, i64 %51 monotonic acquire, align 8, !dbg !2037
  %53 = extractvalue { i64, i1 } %52, 0, !dbg !2037
  %54 = extractvalue { i64, i1 } %52, 1, !dbg !2037
  br i1 %54, label %66, label %65, !dbg !2037

55:                                               ; preds = %40
  %56 = load i64, ptr %25, align 8, !dbg !2037
  %57 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 0, i32 4, i32 0, ptr @__wmmon_func_40, ptr @__wmmon_file_41, i32 1015), !dbg !2037
  %58 = cmpxchg ptr %23, i64 %56, i64 %57 monotonic seq_cst, align 8, !dbg !2037
  %59 = extractvalue { i64, i1 } %58, 0, !dbg !2037
  %60 = extractvalue { i64, i1 } %58, 1, !dbg !2037
  br i1 %60, label %69, label %68, !dbg !2037

61:                                               ; preds = %69, %66, %63
  br label %42, !dbg !2037

62:                                               ; preds = %43
  store i64 %47, ptr %25, align 8, !dbg !2037
  br label %63, !dbg !2037

63:                                               ; preds = %62, %43
  %64 = zext i1 %48 to i8, !dbg !2037
  store i8 %64, ptr %12, align 1, !dbg !2037
  br label %61, !dbg !2037

65:                                               ; preds = %49
  store i64 %53, ptr %25, align 8, !dbg !2037
  br label %66, !dbg !2037

66:                                               ; preds = %65, %49
  %67 = zext i1 %54 to i8, !dbg !2037
  store i8 %67, ptr %12, align 1, !dbg !2037
  br label %61, !dbg !2037

68:                                               ; preds = %55
  store i64 %59, ptr %25, align 8, !dbg !2037
  br label %69, !dbg !2037

69:                                               ; preds = %68, %55
  %70 = zext i1 %60 to i8, !dbg !2037
  store i8 %70, ptr %12, align 1, !dbg !2037
  br label %61, !dbg !2037

71:                                               ; preds = %41
  %72 = load i64, ptr %25, align 8, !dbg !2037
  %73 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 0, i32 0, i32 1, ptr @__wmmon_func_42, ptr @__wmmon_file_43, i32 1015), !dbg !2037
  %74 = cmpxchg weak ptr %23, i64 %72, i64 %73 monotonic monotonic, align 8, !dbg !2037
  %75 = extractvalue { i64, i1 } %74, 0, !dbg !2037
  %76 = extractvalue { i64, i1 } %74, 1, !dbg !2037
  br i1 %76, label %91, label %90, !dbg !2037

77:                                               ; preds = %41, %41
  %78 = load i64, ptr %25, align 8, !dbg !2037
  %79 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 0, i32 1, i32 1, ptr @__wmmon_func_44, ptr @__wmmon_file_45, i32 1015), !dbg !2037
  %80 = cmpxchg weak ptr %23, i64 %78, i64 %79 monotonic acquire, align 8, !dbg !2037
  %81 = extractvalue { i64, i1 } %80, 0, !dbg !2037
  %82 = extractvalue { i64, i1 } %80, 1, !dbg !2037
  br i1 %82, label %94, label %93, !dbg !2037

83:                                               ; preds = %41
  %84 = load i64, ptr %25, align 8, !dbg !2037
  %85 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 0, i32 4, i32 1, ptr @__wmmon_func_46, ptr @__wmmon_file_47, i32 1015), !dbg !2037
  %86 = cmpxchg weak ptr %23, i64 %84, i64 %85 monotonic seq_cst, align 8, !dbg !2037
  %87 = extractvalue { i64, i1 } %86, 0, !dbg !2037
  %88 = extractvalue { i64, i1 } %86, 1, !dbg !2037
  br i1 %88, label %97, label %96, !dbg !2037

89:                                               ; preds = %97, %94, %91
  br label %42, !dbg !2037

90:                                               ; preds = %71
  store i64 %75, ptr %25, align 8, !dbg !2037
  br label %91, !dbg !2037

91:                                               ; preds = %90, %71
  %92 = zext i1 %76 to i8, !dbg !2037
  store i8 %92, ptr %12, align 1, !dbg !2037
  br label %89, !dbg !2037

93:                                               ; preds = %77
  store i64 %81, ptr %25, align 8, !dbg !2037
  br label %94, !dbg !2037

94:                                               ; preds = %93, %77
  %95 = zext i1 %82 to i8, !dbg !2037
  store i8 %95, ptr %12, align 1, !dbg !2037
  br label %89, !dbg !2037

96:                                               ; preds = %83
  store i64 %87, ptr %25, align 8, !dbg !2037
  br label %97, !dbg !2037

97:                                               ; preds = %96, %83
  %98 = zext i1 %88 to i8, !dbg !2037
  store i8 %98, ptr %12, align 1, !dbg !2037
  br label %89, !dbg !2037

99:                                               ; preds = %32
  switch i32 %27, label %102 [
    i32 1, label %108
    i32 2, label %108
    i32 5, label %114
  ], !dbg !2037

100:                                              ; preds = %32
  switch i32 %27, label %130 [
    i32 1, label %136
    i32 2, label %136
    i32 5, label %142
  ], !dbg !2037

101:                                              ; preds = %148, %120
  br label %335, !dbg !2037

102:                                              ; preds = %99
  %103 = load i64, ptr %25, align 8, !dbg !2037
  %104 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 1, i32 0, i32 0, ptr @__wmmon_func_48, ptr @__wmmon_file_49, i32 1015), !dbg !2037
  %105 = cmpxchg ptr %23, i64 %103, i64 %104 acquire monotonic, align 8, !dbg !2037
  %106 = extractvalue { i64, i1 } %105, 0, !dbg !2037
  %107 = extractvalue { i64, i1 } %105, 1, !dbg !2037
  br i1 %107, label %122, label %121, !dbg !2037

108:                                              ; preds = %99, %99
  %109 = load i64, ptr %25, align 8, !dbg !2037
  %110 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 1, i32 1, i32 0, ptr @__wmmon_func_50, ptr @__wmmon_file_51, i32 1015), !dbg !2037
  %111 = cmpxchg ptr %23, i64 %109, i64 %110 acquire acquire, align 8, !dbg !2037
  %112 = extractvalue { i64, i1 } %111, 0, !dbg !2037
  %113 = extractvalue { i64, i1 } %111, 1, !dbg !2037
  br i1 %113, label %125, label %124, !dbg !2037

114:                                              ; preds = %99
  %115 = load i64, ptr %25, align 8, !dbg !2037
  %116 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 1, i32 4, i32 0, ptr @__wmmon_func_52, ptr @__wmmon_file_53, i32 1015), !dbg !2037
  %117 = cmpxchg ptr %23, i64 %115, i64 %116 acquire seq_cst, align 8, !dbg !2037
  %118 = extractvalue { i64, i1 } %117, 0, !dbg !2037
  %119 = extractvalue { i64, i1 } %117, 1, !dbg !2037
  br i1 %119, label %128, label %127, !dbg !2037

120:                                              ; preds = %128, %125, %122
  br label %101, !dbg !2037

121:                                              ; preds = %102
  store i64 %106, ptr %25, align 8, !dbg !2037
  br label %122, !dbg !2037

122:                                              ; preds = %121, %102
  %123 = zext i1 %107 to i8, !dbg !2037
  store i8 %123, ptr %12, align 1, !dbg !2037
  br label %120, !dbg !2037

124:                                              ; preds = %108
  store i64 %112, ptr %25, align 8, !dbg !2037
  br label %125, !dbg !2037

125:                                              ; preds = %124, %108
  %126 = zext i1 %113 to i8, !dbg !2037
  store i8 %126, ptr %12, align 1, !dbg !2037
  br label %120, !dbg !2037

127:                                              ; preds = %114
  store i64 %118, ptr %25, align 8, !dbg !2037
  br label %128, !dbg !2037

128:                                              ; preds = %127, %114
  %129 = zext i1 %119 to i8, !dbg !2037
  store i8 %129, ptr %12, align 1, !dbg !2037
  br label %120, !dbg !2037

130:                                              ; preds = %100
  %131 = load i64, ptr %25, align 8, !dbg !2037
  %132 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 1, i32 0, i32 1, ptr @__wmmon_func_54, ptr @__wmmon_file_55, i32 1015), !dbg !2037
  %133 = cmpxchg weak ptr %23, i64 %131, i64 %132 acquire monotonic, align 8, !dbg !2037
  %134 = extractvalue { i64, i1 } %133, 0, !dbg !2037
  %135 = extractvalue { i64, i1 } %133, 1, !dbg !2037
  br i1 %135, label %150, label %149, !dbg !2037

136:                                              ; preds = %100, %100
  %137 = load i64, ptr %25, align 8, !dbg !2037
  %138 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 1, i32 1, i32 1, ptr @__wmmon_func_56, ptr @__wmmon_file_57, i32 1015), !dbg !2037
  %139 = cmpxchg weak ptr %23, i64 %137, i64 %138 acquire acquire, align 8, !dbg !2037
  %140 = extractvalue { i64, i1 } %139, 0, !dbg !2037
  %141 = extractvalue { i64, i1 } %139, 1, !dbg !2037
  br i1 %141, label %153, label %152, !dbg !2037

142:                                              ; preds = %100
  %143 = load i64, ptr %25, align 8, !dbg !2037
  %144 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 1, i32 4, i32 1, ptr @__wmmon_func_58, ptr @__wmmon_file_59, i32 1015), !dbg !2037
  %145 = cmpxchg weak ptr %23, i64 %143, i64 %144 acquire seq_cst, align 8, !dbg !2037
  %146 = extractvalue { i64, i1 } %145, 0, !dbg !2037
  %147 = extractvalue { i64, i1 } %145, 1, !dbg !2037
  br i1 %147, label %156, label %155, !dbg !2037

148:                                              ; preds = %156, %153, %150
  br label %101, !dbg !2037

149:                                              ; preds = %130
  store i64 %134, ptr %25, align 8, !dbg !2037
  br label %150, !dbg !2037

150:                                              ; preds = %149, %130
  %151 = zext i1 %135 to i8, !dbg !2037
  store i8 %151, ptr %12, align 1, !dbg !2037
  br label %148, !dbg !2037

152:                                              ; preds = %136
  store i64 %140, ptr %25, align 8, !dbg !2037
  br label %153, !dbg !2037

153:                                              ; preds = %152, %136
  %154 = zext i1 %141 to i8, !dbg !2037
  store i8 %154, ptr %12, align 1, !dbg !2037
  br label %148, !dbg !2037

155:                                              ; preds = %142
  store i64 %146, ptr %25, align 8, !dbg !2037
  br label %156, !dbg !2037

156:                                              ; preds = %155, %142
  %157 = zext i1 %147 to i8, !dbg !2037
  store i8 %157, ptr %12, align 1, !dbg !2037
  br label %148, !dbg !2037

158:                                              ; preds = %34
  switch i32 %27, label %161 [
    i32 1, label %167
    i32 2, label %167
    i32 5, label %173
  ], !dbg !2037

159:                                              ; preds = %34
  switch i32 %27, label %189 [
    i32 1, label %195
    i32 2, label %195
    i32 5, label %201
  ], !dbg !2037

160:                                              ; preds = %207, %179
  br label %335, !dbg !2037

161:                                              ; preds = %158
  %162 = load i64, ptr %25, align 8, !dbg !2037
  %163 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 2, i32 0, i32 0, ptr @__wmmon_func_60, ptr @__wmmon_file_61, i32 1015), !dbg !2037
  %164 = cmpxchg ptr %23, i64 %162, i64 %163 release monotonic, align 8, !dbg !2037
  %165 = extractvalue { i64, i1 } %164, 0, !dbg !2037
  %166 = extractvalue { i64, i1 } %164, 1, !dbg !2037
  br i1 %166, label %181, label %180, !dbg !2037

167:                                              ; preds = %158, %158
  %168 = load i64, ptr %25, align 8, !dbg !2037
  %169 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 2, i32 1, i32 0, ptr @__wmmon_func_62, ptr @__wmmon_file_63, i32 1015), !dbg !2037
  %170 = cmpxchg ptr %23, i64 %168, i64 %169 release acquire, align 8, !dbg !2037
  %171 = extractvalue { i64, i1 } %170, 0, !dbg !2037
  %172 = extractvalue { i64, i1 } %170, 1, !dbg !2037
  br i1 %172, label %184, label %183, !dbg !2037

173:                                              ; preds = %158
  %174 = load i64, ptr %25, align 8, !dbg !2037
  %175 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 2, i32 4, i32 0, ptr @__wmmon_func_64, ptr @__wmmon_file_65, i32 1015), !dbg !2037
  %176 = cmpxchg ptr %23, i64 %174, i64 %175 release seq_cst, align 8, !dbg !2037
  %177 = extractvalue { i64, i1 } %176, 0, !dbg !2037
  %178 = extractvalue { i64, i1 } %176, 1, !dbg !2037
  br i1 %178, label %187, label %186, !dbg !2037

179:                                              ; preds = %187, %184, %181
  br label %160, !dbg !2037

180:                                              ; preds = %161
  store i64 %165, ptr %25, align 8, !dbg !2037
  br label %181, !dbg !2037

181:                                              ; preds = %180, %161
  %182 = zext i1 %166 to i8, !dbg !2037
  store i8 %182, ptr %12, align 1, !dbg !2037
  br label %179, !dbg !2037

183:                                              ; preds = %167
  store i64 %171, ptr %25, align 8, !dbg !2037
  br label %184, !dbg !2037

184:                                              ; preds = %183, %167
  %185 = zext i1 %172 to i8, !dbg !2037
  store i8 %185, ptr %12, align 1, !dbg !2037
  br label %179, !dbg !2037

186:                                              ; preds = %173
  store i64 %177, ptr %25, align 8, !dbg !2037
  br label %187, !dbg !2037

187:                                              ; preds = %186, %173
  %188 = zext i1 %178 to i8, !dbg !2037
  store i8 %188, ptr %12, align 1, !dbg !2037
  br label %179, !dbg !2037

189:                                              ; preds = %159
  %190 = load i64, ptr %25, align 8, !dbg !2037
  %191 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 2, i32 0, i32 1, ptr @__wmmon_func_66, ptr @__wmmon_file_67, i32 1015), !dbg !2037
  %192 = cmpxchg weak ptr %23, i64 %190, i64 %191 release monotonic, align 8, !dbg !2037
  %193 = extractvalue { i64, i1 } %192, 0, !dbg !2037
  %194 = extractvalue { i64, i1 } %192, 1, !dbg !2037
  br i1 %194, label %209, label %208, !dbg !2037

195:                                              ; preds = %159, %159
  %196 = load i64, ptr %25, align 8, !dbg !2037
  %197 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 2, i32 1, i32 1, ptr @__wmmon_func_68, ptr @__wmmon_file_69, i32 1015), !dbg !2037
  %198 = cmpxchg weak ptr %23, i64 %196, i64 %197 release acquire, align 8, !dbg !2037
  %199 = extractvalue { i64, i1 } %198, 0, !dbg !2037
  %200 = extractvalue { i64, i1 } %198, 1, !dbg !2037
  br i1 %200, label %212, label %211, !dbg !2037

201:                                              ; preds = %159
  %202 = load i64, ptr %25, align 8, !dbg !2037
  %203 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 2, i32 4, i32 1, ptr @__wmmon_func_70, ptr @__wmmon_file_71, i32 1015), !dbg !2037
  %204 = cmpxchg weak ptr %23, i64 %202, i64 %203 release seq_cst, align 8, !dbg !2037
  %205 = extractvalue { i64, i1 } %204, 0, !dbg !2037
  %206 = extractvalue { i64, i1 } %204, 1, !dbg !2037
  br i1 %206, label %215, label %214, !dbg !2037

207:                                              ; preds = %215, %212, %209
  br label %160, !dbg !2037

208:                                              ; preds = %189
  store i64 %193, ptr %25, align 8, !dbg !2037
  br label %209, !dbg !2037

209:                                              ; preds = %208, %189
  %210 = zext i1 %194 to i8, !dbg !2037
  store i8 %210, ptr %12, align 1, !dbg !2037
  br label %207, !dbg !2037

211:                                              ; preds = %195
  store i64 %199, ptr %25, align 8, !dbg !2037
  br label %212, !dbg !2037

212:                                              ; preds = %211, %195
  %213 = zext i1 %200 to i8, !dbg !2037
  store i8 %213, ptr %12, align 1, !dbg !2037
  br label %207, !dbg !2037

214:                                              ; preds = %201
  store i64 %205, ptr %25, align 8, !dbg !2037
  br label %215, !dbg !2037

215:                                              ; preds = %214, %201
  %216 = zext i1 %206 to i8, !dbg !2037
  store i8 %216, ptr %12, align 1, !dbg !2037
  br label %207, !dbg !2037

217:                                              ; preds = %36
  switch i32 %27, label %220 [
    i32 1, label %226
    i32 2, label %226
    i32 5, label %232
  ], !dbg !2037

218:                                              ; preds = %36
  switch i32 %27, label %248 [
    i32 1, label %254
    i32 2, label %254
    i32 5, label %260
  ], !dbg !2037

219:                                              ; preds = %266, %238
  br label %335, !dbg !2037

220:                                              ; preds = %217
  %221 = load i64, ptr %25, align 8, !dbg !2037
  %222 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 3, i32 0, i32 0, ptr @__wmmon_func_72, ptr @__wmmon_file_73, i32 1015), !dbg !2037
  %223 = cmpxchg ptr %23, i64 %221, i64 %222 acq_rel monotonic, align 8, !dbg !2037
  %224 = extractvalue { i64, i1 } %223, 0, !dbg !2037
  %225 = extractvalue { i64, i1 } %223, 1, !dbg !2037
  br i1 %225, label %240, label %239, !dbg !2037

226:                                              ; preds = %217, %217
  %227 = load i64, ptr %25, align 8, !dbg !2037
  %228 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 3, i32 1, i32 0, ptr @__wmmon_func_74, ptr @__wmmon_file_75, i32 1015), !dbg !2037
  %229 = cmpxchg ptr %23, i64 %227, i64 %228 acq_rel acquire, align 8, !dbg !2037
  %230 = extractvalue { i64, i1 } %229, 0, !dbg !2037
  %231 = extractvalue { i64, i1 } %229, 1, !dbg !2037
  br i1 %231, label %243, label %242, !dbg !2037

232:                                              ; preds = %217
  %233 = load i64, ptr %25, align 8, !dbg !2037
  %234 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 3, i32 4, i32 0, ptr @__wmmon_func_76, ptr @__wmmon_file_77, i32 1015), !dbg !2037
  %235 = cmpxchg ptr %23, i64 %233, i64 %234 acq_rel seq_cst, align 8, !dbg !2037
  %236 = extractvalue { i64, i1 } %235, 0, !dbg !2037
  %237 = extractvalue { i64, i1 } %235, 1, !dbg !2037
  br i1 %237, label %246, label %245, !dbg !2037

238:                                              ; preds = %246, %243, %240
  br label %219, !dbg !2037

239:                                              ; preds = %220
  store i64 %224, ptr %25, align 8, !dbg !2037
  br label %240, !dbg !2037

240:                                              ; preds = %239, %220
  %241 = zext i1 %225 to i8, !dbg !2037
  store i8 %241, ptr %12, align 1, !dbg !2037
  br label %238, !dbg !2037

242:                                              ; preds = %226
  store i64 %230, ptr %25, align 8, !dbg !2037
  br label %243, !dbg !2037

243:                                              ; preds = %242, %226
  %244 = zext i1 %231 to i8, !dbg !2037
  store i8 %244, ptr %12, align 1, !dbg !2037
  br label %238, !dbg !2037

245:                                              ; preds = %232
  store i64 %236, ptr %25, align 8, !dbg !2037
  br label %246, !dbg !2037

246:                                              ; preds = %245, %232
  %247 = zext i1 %237 to i8, !dbg !2037
  store i8 %247, ptr %12, align 1, !dbg !2037
  br label %238, !dbg !2037

248:                                              ; preds = %218
  %249 = load i64, ptr %25, align 8, !dbg !2037
  %250 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 3, i32 0, i32 1, ptr @__wmmon_func_78, ptr @__wmmon_file_79, i32 1015), !dbg !2037
  %251 = cmpxchg weak ptr %23, i64 %249, i64 %250 acq_rel monotonic, align 8, !dbg !2037
  %252 = extractvalue { i64, i1 } %251, 0, !dbg !2037
  %253 = extractvalue { i64, i1 } %251, 1, !dbg !2037
  br i1 %253, label %268, label %267, !dbg !2037

254:                                              ; preds = %218, %218
  %255 = load i64, ptr %25, align 8, !dbg !2037
  %256 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 3, i32 1, i32 1, ptr @__wmmon_func_80, ptr @__wmmon_file_81, i32 1015), !dbg !2037
  %257 = cmpxchg weak ptr %23, i64 %255, i64 %256 acq_rel acquire, align 8, !dbg !2037
  %258 = extractvalue { i64, i1 } %257, 0, !dbg !2037
  %259 = extractvalue { i64, i1 } %257, 1, !dbg !2037
  br i1 %259, label %271, label %270, !dbg !2037

260:                                              ; preds = %218
  %261 = load i64, ptr %25, align 8, !dbg !2037
  %262 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 3, i32 4, i32 1, ptr @__wmmon_func_82, ptr @__wmmon_file_83, i32 1015), !dbg !2037
  %263 = cmpxchg weak ptr %23, i64 %261, i64 %262 acq_rel seq_cst, align 8, !dbg !2037
  %264 = extractvalue { i64, i1 } %263, 0, !dbg !2037
  %265 = extractvalue { i64, i1 } %263, 1, !dbg !2037
  br i1 %265, label %274, label %273, !dbg !2037

266:                                              ; preds = %274, %271, %268
  br label %219, !dbg !2037

267:                                              ; preds = %248
  store i64 %252, ptr %25, align 8, !dbg !2037
  br label %268, !dbg !2037

268:                                              ; preds = %267, %248
  %269 = zext i1 %253 to i8, !dbg !2037
  store i8 %269, ptr %12, align 1, !dbg !2037
  br label %266, !dbg !2037

270:                                              ; preds = %254
  store i64 %258, ptr %25, align 8, !dbg !2037
  br label %271, !dbg !2037

271:                                              ; preds = %270, %254
  %272 = zext i1 %259 to i8, !dbg !2037
  store i8 %272, ptr %12, align 1, !dbg !2037
  br label %266, !dbg !2037

273:                                              ; preds = %260
  store i64 %264, ptr %25, align 8, !dbg !2037
  br label %274, !dbg !2037

274:                                              ; preds = %273, %260
  %275 = zext i1 %265 to i8, !dbg !2037
  store i8 %275, ptr %12, align 1, !dbg !2037
  br label %266, !dbg !2037

276:                                              ; preds = %38
  switch i32 %27, label %279 [
    i32 1, label %285
    i32 2, label %285
    i32 5, label %291
  ], !dbg !2037

277:                                              ; preds = %38
  switch i32 %27, label %307 [
    i32 1, label %313
    i32 2, label %313
    i32 5, label %319
  ], !dbg !2037

278:                                              ; preds = %325, %297
  br label %335, !dbg !2037

279:                                              ; preds = %276
  %280 = load i64, ptr %25, align 8, !dbg !2037
  %281 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 4, i32 0, i32 0, ptr @__wmmon_func_84, ptr @__wmmon_file_85, i32 1015), !dbg !2037
  %282 = cmpxchg ptr %23, i64 %280, i64 %281 seq_cst monotonic, align 8, !dbg !2037
  %283 = extractvalue { i64, i1 } %282, 0, !dbg !2037
  %284 = extractvalue { i64, i1 } %282, 1, !dbg !2037
  br i1 %284, label %299, label %298, !dbg !2037

285:                                              ; preds = %276, %276
  %286 = load i64, ptr %25, align 8, !dbg !2037
  %287 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 4, i32 1, i32 0, ptr @__wmmon_func_86, ptr @__wmmon_file_87, i32 1015), !dbg !2037
  %288 = cmpxchg ptr %23, i64 %286, i64 %287 seq_cst acquire, align 8, !dbg !2037
  %289 = extractvalue { i64, i1 } %288, 0, !dbg !2037
  %290 = extractvalue { i64, i1 } %288, 1, !dbg !2037
  br i1 %290, label %302, label %301, !dbg !2037

291:                                              ; preds = %276
  %292 = load i64, ptr %25, align 8, !dbg !2037
  %293 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 4, i32 4, i32 0, ptr @__wmmon_func_88, ptr @__wmmon_file_89, i32 1015), !dbg !2037
  %294 = cmpxchg ptr %23, i64 %292, i64 %293 seq_cst seq_cst, align 8, !dbg !2037
  %295 = extractvalue { i64, i1 } %294, 0, !dbg !2037
  %296 = extractvalue { i64, i1 } %294, 1, !dbg !2037
  br i1 %296, label %305, label %304, !dbg !2037

297:                                              ; preds = %305, %302, %299
  br label %278, !dbg !2037

298:                                              ; preds = %279
  store i64 %283, ptr %25, align 8, !dbg !2037
  br label %299, !dbg !2037

299:                                              ; preds = %298, %279
  %300 = zext i1 %284 to i8, !dbg !2037
  store i8 %300, ptr %12, align 1, !dbg !2037
  br label %297, !dbg !2037

301:                                              ; preds = %285
  store i64 %289, ptr %25, align 8, !dbg !2037
  br label %302, !dbg !2037

302:                                              ; preds = %301, %285
  %303 = zext i1 %290 to i8, !dbg !2037
  store i8 %303, ptr %12, align 1, !dbg !2037
  br label %297, !dbg !2037

304:                                              ; preds = %291
  store i64 %295, ptr %25, align 8, !dbg !2037
  br label %305, !dbg !2037

305:                                              ; preds = %304, %291
  %306 = zext i1 %296 to i8, !dbg !2037
  store i8 %306, ptr %12, align 1, !dbg !2037
  br label %297, !dbg !2037

307:                                              ; preds = %277
  %308 = load i64, ptr %25, align 8, !dbg !2037
  %309 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 4, i32 0, i32 1, ptr @__wmmon_func_90, ptr @__wmmon_file_91, i32 1015), !dbg !2037
  %310 = cmpxchg weak ptr %23, i64 %308, i64 %309 seq_cst monotonic, align 8, !dbg !2037
  %311 = extractvalue { i64, i1 } %310, 0, !dbg !2037
  %312 = extractvalue { i64, i1 } %310, 1, !dbg !2037
  br i1 %312, label %327, label %326, !dbg !2037

313:                                              ; preds = %277, %277
  %314 = load i64, ptr %25, align 8, !dbg !2037
  %315 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 4, i32 1, i32 1, ptr @__wmmon_func_92, ptr @__wmmon_file_93, i32 1015), !dbg !2037
  %316 = cmpxchg weak ptr %23, i64 %314, i64 %315 seq_cst acquire, align 8, !dbg !2037
  %317 = extractvalue { i64, i1 } %316, 0, !dbg !2037
  %318 = extractvalue { i64, i1 } %316, 1, !dbg !2037
  br i1 %318, label %330, label %329, !dbg !2037

319:                                              ; preds = %277
  %320 = load i64, ptr %25, align 8, !dbg !2037
  %321 = load i64, ptr %26, align 8, !dbg !2037
  call void @wmmon_cmpxchg(ptr %23, i32 4, i32 4, i32 1, ptr @__wmmon_func_94, ptr @__wmmon_file_95, i32 1015), !dbg !2037
  %322 = cmpxchg weak ptr %23, i64 %320, i64 %321 seq_cst seq_cst, align 8, !dbg !2037
  %323 = extractvalue { i64, i1 } %322, 0, !dbg !2037
  %324 = extractvalue { i64, i1 } %322, 1, !dbg !2037
  br i1 %324, label %333, label %332, !dbg !2037

325:                                              ; preds = %333, %330, %327
  br label %278, !dbg !2037

326:                                              ; preds = %307
  store i64 %311, ptr %25, align 8, !dbg !2037
  br label %327, !dbg !2037

327:                                              ; preds = %326, %307
  %328 = zext i1 %312 to i8, !dbg !2037
  store i8 %328, ptr %12, align 1, !dbg !2037
  br label %325, !dbg !2037

329:                                              ; preds = %313
  store i64 %317, ptr %25, align 8, !dbg !2037
  br label %330, !dbg !2037

330:                                              ; preds = %329, %313
  %331 = zext i1 %318 to i8, !dbg !2037
  store i8 %331, ptr %12, align 1, !dbg !2037
  br label %325, !dbg !2037

332:                                              ; preds = %319
  store i64 %323, ptr %25, align 8, !dbg !2037
  br label %333, !dbg !2037

333:                                              ; preds = %332, %319
  %334 = zext i1 %324 to i8, !dbg !2037
  store i8 %334, ptr %12, align 1, !dbg !2037
  br label %325, !dbg !2037

335:                                              ; preds = %278, %219, %160, %101, %42
  %336 = load i8, ptr %12, align 1, !dbg !2037
  %337 = trunc i8 %336 to i1, !dbg !2037
  ret i1 %337, !dbg !2038
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZSt23__cmpexch_failure_orderSt12memory_order(i32 noundef %0) #2 comdat personality ptr @__gxx_personality_v0 !dbg !2039 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2042, metadata !DIExpression()), !dbg !2043
  %3 = load i32, ptr %2, align 4, !dbg !2044
  %4 = call noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %3, i32 noundef 65535), !dbg !2045
  %5 = call noundef i32 @_ZSt24__cmpexch_failure_order2St12memory_order(i32 noundef %4) #8, !dbg !2046
  %6 = load i32, ptr %2, align 4, !dbg !2047
  %7 = call noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %6, i32 noundef -65536), !dbg !2048
  %8 = invoke noundef i32 @_ZStorSt12memory_orderSt23__memory_order_modifier(i32 noundef %5, i32 noundef %7)
          to label %9 unwind label %10, !dbg !2049

9:                                                ; preds = %1
  ret i32 %8, !dbg !2050

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2049
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !2049
  call void @__clang_call_terminate(ptr %12) #9, !dbg !2049
  unreachable, !dbg !2049
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12memory_orderSt23__memory_order_modifier(i32 noundef %0, i32 noundef %1) #2 comdat !dbg !2051 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2052, metadata !DIExpression()), !dbg !2053
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2054, metadata !DIExpression()), !dbg !2055
  %5 = load i32, ptr %3, align 4, !dbg !2056
  %6 = load i32, ptr %4, align 4, !dbg !2057
  %7 = or i32 %5, %6, !dbg !2058
  ret i32 %7, !dbg !2059
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZSt24__cmpexch_failure_order2St12memory_order(i32 noundef %0) #2 comdat !dbg !2060 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2061, metadata !DIExpression()), !dbg !2062
  %3 = load i32, ptr %2, align 4, !dbg !2063
  %4 = icmp eq i32 %3, 4, !dbg !2064
  br i1 %4, label %5, label %6, !dbg !2063

5:                                                ; preds = %1
  br label %14, !dbg !2063

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4, !dbg !2065
  %8 = icmp eq i32 %7, 3, !dbg !2066
  br i1 %8, label %9, label %10, !dbg !2065

9:                                                ; preds = %6
  br label %12, !dbg !2065

10:                                               ; preds = %6
  %11 = load i32, ptr %2, align 4, !dbg !2067
  br label %12, !dbg !2065

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 0, %9 ], [ %11, %10 ], !dbg !2065
  br label %14, !dbg !2063

14:                                               ; preds = %12, %5
  %15 = phi i32 [ 2, %5 ], [ %13, %12 ], !dbg !2063
  ret i32 %15, !dbg !2068
}

declare void @wmmon_load(ptr, i32, ptr, ptr, i32)

declare void @wmmon_store(ptr, i32, ptr, ptr, i32)

declare void @wmmon_cmpxchg(ptr, i32, i32, i32, ptr, ptr, i32)

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!40}
!llvm.linker.options = !{}
!llvm.module.flags = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596}
!llvm.ident = !{!1597}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "harness/test_deque.cpp", directory: "/home/deelay/wmm/parlay_abp", checksumkind: CSK_MD5, checksum: "345c565c5831d0383c703ad1b1b7461a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 28)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 2)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !3, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 21)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 11)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 22)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !17, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !27, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !36, line: 58, type: !37, isLocal: true, isDefinition: true)
!36 = !DIFile(filename: "./parlaylib/include/parlay/internal/work_stealing_deque.h", directory: "/home/deelay/wmm/parlay_abp", checksumkind: CSK_MD5, checksum: "f7e4fd44d28fb5dab42dec420ef51610")
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 42)
!40 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !60, globals: !730, imports: !742, splitDebugInlining: false, nameTableKind: None)
!41 = !{!42, !53}
!42 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !44, file: !43, line: 62, baseType: !45, size: 32, flags: DIFlagEnumClass, elements: !46, identifier: "_ZTSSt12memory_order")
!43 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h", directory: "")
!44 = !DINamespace(name: "std", scope: null)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!47, !48, !49, !50, !51, !52}
!47 = !DIEnumerator(name: "relaxed", value: 0)
!48 = !DIEnumerator(name: "consume", value: 1)
!49 = !DIEnumerator(name: "acquire", value: 2)
!50 = !DIEnumerator(name: "release", value: 3)
!51 = !DIEnumerator(name: "acq_rel", value: 4)
!52 = !DIEnumerator(name: "seq_cst", value: 5)
!53 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "__memory_order_modifier", scope: !44, file: !43, line: 91, baseType: !54, size: 32, elements: !55, identifier: "_ZTSSt23__memory_order_modifier")
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "__memory_order_mask", value: 65535, isUnsigned: true)
!57 = !DIEnumerator(name: "__memory_order_modifier_mask", value: 4294901760, isUnsigned: true)
!58 = !DIEnumerator(name: "__memory_order_hle_acquire", value: 65536, isUnsigned: true)
!59 = !DIEnumerator(name: "__memory_order_hle_release", value: 131072, isUnsigned: true)
!60 = !{!61, !45, !42, !729, !53, !676, !73, !69, !228, !336, !332, !62, !320, !329}
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "age_t", scope: !62, file: !36, line: 30, size: 64, align: 64, flags: DIFlagTypePassByValue, elements: !724, identifier: "_ZTSN6parlay8internal5DequeI3JobE5age_tE")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Deque<Job>", scope: !63, file: !36, line: 23, size: 512512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !65, templateParams: !722, identifier: "_ZTSN6parlay8internal5DequeI3JobEE")
!63 = !DINamespace(name: "internal", scope: !64)
!64 = !DINamespace(name: "parlay", scope: null)
!65 = !{!66, !68, !227, !319, !666, !670, !673, !719}
!66 = !DIDerivedType(tag: DW_TAG_variable, name: "q_size", scope: !62, file: !36, line: 41, baseType: !67, flags: DIFlagStaticMember, extraData: i32 1000)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "bot", scope: !62, file: !36, line: 42, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned int>", scope: !44, file: !70, line: 845, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !71, templateParams: !225, identifier: "_ZTSSt6atomicIjE")
!70 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/atomic", directory: "")
!71 = !{!72, !200, !202, !206, !207, !212, !216, !221}
!72 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !69, baseType: !73, extraData: i32 0)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned int>", scope: !44, file: !43, line: 341, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !74, templateParams: !198, identifier: "_ZTSSt13__atomic_baseIjE")
!74 = !{!75, !76, !78, !82, !83, !88, !92, !97, !100, !104, !109, !112, !115, !118, !121, !122, !123, !126, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !145, !148, !151, !154, !157, !160, !163, !166, !170, !173, !176, !179, !180, !181, !182, !183, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!75 = !DIDerivedType(tag: DW_TAG_variable, name: "_S_alignment", scope: !73, file: !43, line: 349, baseType: !67, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 4)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !73, file: !43, line: 352, baseType: !77, size: 32, align: 32, flags: DIFlagPrivate)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_type", scope: !73, file: !43, line: 347, baseType: !54, flags: DIFlagPrivate)
!78 = !DISubprogram(name: "__atomic_base", scope: !73, file: !43, line: 355, type: !79, scopeLine: 355, flags: DIFlagPrototyped, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!82 = !DISubprogram(name: "~__atomic_base", scope: !73, file: !43, line: 356, type: !79, scopeLine: 356, flags: DIFlagPrototyped, spFlags: 0)
!83 = !DISubprogram(name: "__atomic_base", scope: !73, file: !43, line: 357, type: !84, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !81, !86}
!86 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!88 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIjEaSERKS0_", scope: !73, file: !43, line: 358, type: !89, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !81, !86}
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 64)
!92 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIjEaSERKS0_", scope: !73, file: !43, line: 359, type: !93, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!93 = !DISubroutineType(types: !94)
!94 = !{!91, !95, !86}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!96 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!97 = !DISubprogram(name: "__atomic_base", scope: !73, file: !43, line: 362, type: !98, scopeLine: 362, flags: DIFlagPrototyped, spFlags: 0)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !81, !77}
!100 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNKSt13__atomic_baseIjEcvjEv", scope: !73, file: !43, line: 364, type: !101, scopeLine: 364, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{!77, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!104 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNVKSt13__atomic_baseIjEcvjEv", scope: !73, file: !43, line: 367, type: !105, scopeLine: 367, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{!77, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!109 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIjEaSEj", scope: !73, file: !43, line: 371, type: !110, scopeLine: 371, flags: DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{!77, !81, !77}
!112 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIjEaSEj", scope: !73, file: !43, line: 378, type: !113, scopeLine: 378, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!77, !95, !77}
!115 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIjEppEi", scope: !73, file: !43, line: 385, type: !116, scopeLine: 385, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!77, !81, !45}
!118 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIjEppEi", scope: !73, file: !43, line: 389, type: !119, scopeLine: 389, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{!77, !95, !45}
!121 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIjEmmEi", scope: !73, file: !43, line: 393, type: !116, scopeLine: 393, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIjEmmEi", scope: !73, file: !43, line: 397, type: !119, scopeLine: 397, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIjEppEv", scope: !73, file: !43, line: 401, type: !124, scopeLine: 401, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!77, !81}
!126 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIjEppEv", scope: !73, file: !43, line: 405, type: !127, scopeLine: 405, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!77, !95}
!129 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIjEmmEv", scope: !73, file: !43, line: 409, type: !124, scopeLine: 409, flags: DIFlagPrototyped, spFlags: 0)
!130 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIjEmmEv", scope: !73, file: !43, line: 413, type: !127, scopeLine: 413, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13__atomic_baseIjEpLEj", scope: !73, file: !43, line: 417, type: !110, scopeLine: 417, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt13__atomic_baseIjEpLEj", scope: !73, file: !43, line: 421, type: !113, scopeLine: 421, flags: DIFlagPrototyped, spFlags: 0)
!133 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13__atomic_baseIjEmIEj", scope: !73, file: !43, line: 425, type: !110, scopeLine: 425, flags: DIFlagPrototyped, spFlags: 0)
!134 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt13__atomic_baseIjEmIEj", scope: !73, file: !43, line: 429, type: !113, scopeLine: 429, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt13__atomic_baseIjEaNEj", scope: !73, file: !43, line: 433, type: !110, scopeLine: 433, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt13__atomic_baseIjEaNEj", scope: !73, file: !43, line: 437, type: !113, scopeLine: 437, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt13__atomic_baseIjEoREj", scope: !73, file: !43, line: 441, type: !110, scopeLine: 441, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt13__atomic_baseIjEoREj", scope: !73, file: !43, line: 445, type: !113, scopeLine: 445, flags: DIFlagPrototyped, spFlags: 0)
!139 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt13__atomic_baseIjEeOEj", scope: !73, file: !43, line: 449, type: !110, scopeLine: 449, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt13__atomic_baseIjEeOEj", scope: !73, file: !43, line: 453, type: !113, scopeLine: 453, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt13__atomic_baseIjE12is_lock_freeEv", scope: !73, file: !43, line: 457, type: !142, scopeLine: 457, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !103}
!144 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!145 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt13__atomic_baseIjE12is_lock_freeEv", scope: !73, file: !43, line: 465, type: !146, scopeLine: 465, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!144, !107}
!148 = !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseIjE5storeEjSt12memory_order", scope: !73, file: !43, line: 473, type: !149, scopeLine: 473, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !81, !77, !42}
!151 = !DISubprogram(name: "store", linkageName: "_ZNVSt13__atomic_baseIjE5storeEjSt12memory_order", scope: !73, file: !43, line: 485, type: !152, scopeLine: 485, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !95, !77, !42}
!154 = !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseIjE4loadESt12memory_order", scope: !73, file: !43, line: 498, type: !155, scopeLine: 498, flags: DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!77, !103, !42}
!157 = !DISubprogram(name: "load", linkageName: "_ZNVKSt13__atomic_baseIjE4loadESt12memory_order", scope: !73, file: !43, line: 509, type: !158, scopeLine: 509, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!77, !107, !42}
!160 = !DISubprogram(name: "exchange", linkageName: "_ZNSt13__atomic_baseIjE8exchangeEjSt12memory_order", scope: !73, file: !43, line: 520, type: !161, scopeLine: 520, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!77, !81, !77, !42}
!163 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt13__atomic_baseIjE8exchangeEjSt12memory_order", scope: !73, file: !43, line: 528, type: !164, scopeLine: 528, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!77, !95, !77, !42}
!166 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_orderS2_", scope: !73, file: !43, line: 535, type: !167, scopeLine: 535, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!144, !81, !169, !77, !42, !42}
!169 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !77, size: 64)
!170 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_orderS2_", scope: !73, file: !43, line: 545, type: !171, scopeLine: 545, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!144, !95, !169, !77, !42, !42}
!173 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order", scope: !73, file: !43, line: 556, type: !174, scopeLine: 556, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!144, !81, !169, !77, !42}
!176 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseIjE21compare_exchange_weakERjjSt12memory_order", scope: !73, file: !43, line: 564, type: !177, scopeLine: 564, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!144, !95, !169, !77, !42}
!179 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_", scope: !73, file: !43, line: 572, type: !167, scopeLine: 572, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_", scope: !73, file: !43, line: 582, type: !171, scopeLine: 582, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order", scope: !73, file: !43, line: 593, type: !174, scopeLine: 593, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order", scope: !73, file: !43, line: 601, type: !177, scopeLine: 601, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubprogram(name: "wait", linkageName: "_ZNKSt13__atomic_baseIjE4waitEjSt12memory_order", scope: !73, file: !43, line: 610, type: !184, scopeLine: 610, flags: DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !103, !77, !42}
!186 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt13__atomic_baseIjE10notify_oneEv", scope: !73, file: !43, line: 620, type: !79, scopeLine: 620, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt13__atomic_baseIjE10notify_allEv", scope: !73, file: !43, line: 626, type: !79, scopeLine: 626, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseIjE9fetch_addEjSt12memory_order", scope: !73, file: !43, line: 633, type: !161, scopeLine: 633, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt13__atomic_baseIjE9fetch_addEjSt12memory_order", scope: !73, file: !43, line: 638, type: !164, scopeLine: 638, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseIjE9fetch_subEjSt12memory_order", scope: !73, file: !43, line: 643, type: !161, scopeLine: 643, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt13__atomic_baseIjE9fetch_subEjSt12memory_order", scope: !73, file: !43, line: 648, type: !164, scopeLine: 648, flags: DIFlagPrototyped, spFlags: 0)
!192 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt13__atomic_baseIjE9fetch_andEjSt12memory_order", scope: !73, file: !43, line: 653, type: !161, scopeLine: 653, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt13__atomic_baseIjE9fetch_andEjSt12memory_order", scope: !73, file: !43, line: 658, type: !164, scopeLine: 658, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt13__atomic_baseIjE8fetch_orEjSt12memory_order", scope: !73, file: !43, line: 663, type: !161, scopeLine: 663, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt13__atomic_baseIjE8fetch_orEjSt12memory_order", scope: !73, file: !43, line: 668, type: !164, scopeLine: 668, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt13__atomic_baseIjE9fetch_xorEjSt12memory_order", scope: !73, file: !43, line: 673, type: !161, scopeLine: 673, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt13__atomic_baseIjE9fetch_xorEjSt12memory_order", scope: !73, file: !43, line: 678, type: !164, scopeLine: 678, flags: DIFlagPrototyped, spFlags: 0)
!198 = !{!199}
!199 = !DITemplateTypeParameter(name: "_ITp", type: !54)
!200 = !DIDerivedType(tag: DW_TAG_variable, name: "is_always_lock_free", scope: !69, file: !70, line: 862, baseType: !201, flags: DIFlagStaticMember, extraData: i1 true)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!202 = !DISubprogram(name: "atomic", scope: !69, file: !70, line: 850, type: !203, scopeLine: 850, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!206 = !DISubprogram(name: "~atomic", scope: !69, file: !70, line: 851, type: !203, scopeLine: 851, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DISubprogram(name: "atomic", scope: !69, file: !70, line: 852, type: !208, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !205, !210}
!210 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!212 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIjEaSERKS0_", scope: !69, file: !70, line: 853, type: !213, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !205, !210}
!215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !69, size: 64)
!216 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicIjEaSERKS0_", scope: !69, file: !70, line: 854, type: !217, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!217 = !DISubroutineType(types: !218)
!218 = !{!215, !219, !210}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!220 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!221 = !DISubprogram(name: "atomic", scope: !69, file: !70, line: 856, type: !222, scopeLine: 856, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !205, !224}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__integral_type", scope: !69, file: !70, line: 847, baseType: !54)
!225 = !{!226}
!226 = !DITemplateTypeParameter(name: "_Tp", type: !54)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !62, file: !36, line: 43, baseType: !228, size: 64, offset: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<parlay::internal::Deque<Job>::age_t>", scope: !44, file: !70, line: 198, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !229, templateParams: !317, identifier: "_ZTSSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE")
!229 = !{!230, !231, !232, !233, !234, !238, !239, !244, !248, !253, !256, !260, !265, !268, !271, !274, !277, !280, !283, !286, !289, !292, !295, !299, !302, !305, !308, !309, !310, !311, !312, !315, !316}
!230 = !DIDerivedType(tag: DW_TAG_variable, name: "_S_min_alignment", scope: !228, file: !70, line: 204, baseType: !67, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 8)
!231 = !DIDerivedType(tag: DW_TAG_variable, name: "_S_alignment", scope: !228, file: !70, line: 208, baseType: !67, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !228, file: !70, line: 211, baseType: !61, size: 64, align: 64, flags: DIFlagPrivate)
!233 = !DIDerivedType(tag: DW_TAG_variable, name: "is_always_lock_free", scope: !228, file: !70, line: 272, baseType: !201, flags: DIFlagStaticMember)
!234 = !DISubprogram(name: "atomic", scope: !228, file: !70, line: 227, type: !235, scopeLine: 227, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!238 = !DISubprogram(name: "~atomic", scope: !228, file: !70, line: 228, type: !235, scopeLine: 228, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubprogram(name: "atomic", scope: !228, file: !70, line: 229, type: !240, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !237, !242}
!242 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!244 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEaSERKS6_", scope: !228, file: !70, line: 230, type: !245, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !237, !242}
!247 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !228, size: 64)
!248 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEaSERKS6_", scope: !228, file: !70, line: 231, type: !249, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!249 = !DISubroutineType(types: !250)
!250 = !{!247, !251, !242}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!252 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !228)
!253 = !DISubprogram(name: "atomic", scope: !228, file: !70, line: 233, type: !254, scopeLine: 233, flags: DIFlagPrototyped, spFlags: 0)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !237, !61}
!256 = !DISubprogram(name: "operator age_t", linkageName: "_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEcvS5_Ev", scope: !228, file: !70, line: 241, type: !257, scopeLine: 241, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!61, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!260 = !DISubprogram(name: "operator age_t", linkageName: "_ZNVKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEcvS5_Ev", scope: !228, file: !70, line: 244, type: !261, scopeLine: 244, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!61, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!265 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEaSES5_", scope: !228, file: !70, line: 248, type: !266, scopeLine: 248, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!61, !237, !61}
!268 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEaSES5_", scope: !228, file: !70, line: 252, type: !269, scopeLine: 252, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{!61, !251, !61}
!271 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE12is_lock_freeEv", scope: !228, file: !70, line: 256, type: !272, scopeLine: 256, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!144, !259}
!274 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE12is_lock_freeEv", scope: !228, file: !70, line: 264, type: !275, scopeLine: 264, flags: DIFlagPrototyped, spFlags: 0)
!275 = !DISubroutineType(types: !276)
!276 = !{!144, !263}
!277 = !DISubprogram(name: "store", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE5storeES5_St12memory_order", scope: !228, file: !70, line: 277, type: !278, scopeLine: 277, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !237, !61, !42}
!280 = !DISubprogram(name: "store", linkageName: "_ZNVSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE5storeES5_St12memory_order", scope: !228, file: !70, line: 285, type: !281, scopeLine: 285, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !251, !61, !42}
!283 = !DISubprogram(name: "load", linkageName: "_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order", scope: !228, file: !70, line: 293, type: !284, scopeLine: 293, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!61, !259, !42}
!286 = !DISubprogram(name: "load", linkageName: "_ZNVKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order", scope: !228, file: !70, line: 302, type: !287, scopeLine: 302, flags: DIFlagPrototyped, spFlags: 0)
!287 = !DISubroutineType(types: !288)
!288 = !{!61, !263, !42}
!289 = !DISubprogram(name: "exchange", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE8exchangeES5_St12memory_order", scope: !228, file: !70, line: 311, type: !290, scopeLine: 311, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!61, !237, !61, !42}
!292 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE8exchangeES5_St12memory_order", scope: !228, file: !70, line: 322, type: !293, scopeLine: 322, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!61, !251, !61, !42}
!295 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE21compare_exchange_weakERS5_S5_St12memory_orderS8_", scope: !228, file: !70, line: 334, type: !296, scopeLine: 334, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!144, !237, !298, !61, !42, !42}
!298 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !61, size: 64)
!299 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE21compare_exchange_weakERS5_S5_St12memory_orderS8_", scope: !228, file: !70, line: 342, type: !300, scopeLine: 342, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!144, !251, !298, !61, !42, !42}
!302 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE21compare_exchange_weakERS5_S5_St12memory_order", scope: !228, file: !70, line: 350, type: !303, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{!144, !237, !298, !61, !42}
!305 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE21compare_exchange_weakERS5_S5_St12memory_order", scope: !228, file: !70, line: 356, type: !306, scopeLine: 356, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!144, !251, !298, !61, !42}
!308 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_", scope: !228, file: !70, line: 362, type: !296, scopeLine: 362, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_", scope: !228, file: !70, line: 370, type: !300, scopeLine: 370, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_order", scope: !228, file: !70, line: 378, type: !303, scopeLine: 378, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_order", scope: !228, file: !70, line: 384, type: !306, scopeLine: 384, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DISubprogram(name: "wait", linkageName: "_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4waitES5_St12memory_order", scope: !228, file: !70, line: 391, type: !313, scopeLine: 391, flags: DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !259, !61, !42}
!315 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE10notify_oneEv", scope: !228, file: !70, line: 400, type: !235, scopeLine: 400, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE10notify_allEv", scope: !228, file: !70, line: 404, type: !235, scopeLine: 404, flags: DIFlagPrototyped, spFlags: 0)
!317 = !{!318}
!318 = !DITemplateTypeParameter(name: "_Tp", type: !61)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "deq", scope: !62, file: !36, line: 44, baseType: !320, size: 512000, offset: 512)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array<parlay::internal::Deque<Job>::padded_job, 1000UL>", scope: !44, file: !321, line: 94, size: 512000, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !322, templateParams: !327, identifier: "_ZTSSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE")
!321 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/array", directory: "")
!322 = !{!323, !588, !595, !599, !604, !611, !612, !613, !619, !624, !625, !626, !627, !628, !629, !630, !635, !636, !639, !644, !648, !649, !650, !653, !656, !657, !658, !662}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_M_elems", scope: !320, file: !321, line: 109, baseType: !324, size: 512000, align: 512)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Type", scope: !325, file: !321, line: 55, baseType: !585)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__array_traits<parlay::internal::Deque<Job>::padded_job, 1000UL>", scope: !44, file: !321, line: 53, size: 8, flags: DIFlagTypePassByValue, elements: !326, templateParams: !327, identifier: "_ZTSSt14__array_traitsIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE")
!326 = !{}
!327 = !{!328, !583}
!328 = !DITemplateTypeParameter(name: "_Tp", type: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padded_job", scope: !62, file: !36, line: 37, size: 512, align: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !330, identifier: "_ZTSN6parlay8internal5DequeI3JobE10padded_jobE")
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "job", scope: !329, file: !36, line: 38, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<Job *>", scope: !44, file: !70, line: 413, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !333, templateParams: !581, identifier: "_ZTSSt6atomicIP3JobE")
!333 = !{!334, !464, !465, !469, !470, !475, !479, !484, !488, !492, !497, !500, !503, !506, !509, !510, !511, !514, !517, !518, !519, !522, !525, !526, !527, !530, !533, !536, !539, !542, !545, !548, !551, !555, !558, !561, !564, !565, !566, !567, !568, !571, !572, !573, !576, !579, !580}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_M_b", scope: !332, file: !70, line: 420, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__base_type", scope: !332, file: !70, line: 419, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<Job *>", scope: !44, file: !43, line: 686, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !337, templateParams: !462, identifier: "_ZTSSt13__atomic_baseIP3JobE")
!337 = !{!338, !344, !352, !358, !362, !363, !367, !371, !375, !378, !381, !384, !387, !390, !393, !396, !397, !398, !401, !404, !405, !406, !409, !412, !413, !414, !417, !420, !423, !426, !429, !432, !435, !438, !442, !445, !446, !447, !450, !453, !454, !457, !460, !461}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_M_p", scope: !336, file: !43, line: 691, baseType: !339, size: 64, flags: DIFlagPrivate)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pointer_type", scope: !336, file: !43, line: 689, baseType: !340, flags: DIFlagPrivate)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Job", file: !2, line: 5, size: 32, flags: DIFlagTypePassByValue, elements: !342, identifier: "_ZTS3Job")
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !341, file: !2, line: 6, baseType: !45, size: 32)
!344 = !DISubprogram(name: "_M_type_size", linkageName: "_ZNKSt13__atomic_baseIP3JobE12_M_type_sizeEl", scope: !336, file: !43, line: 695, type: !345, scopeLine: 695, flags: DIFlagPrivate | DIFlagPrototyped, spFlags: 0)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !350, !347}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !44, file: !348, line: 309, baseType: !349)
!348 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "449d6dbeca4f3eea299d97c24eb9ed95")
!349 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!352 = !DISubprogram(name: "_M_type_size", linkageName: "_ZNVKSt13__atomic_baseIP3JobE12_M_type_sizeEl", scope: !336, file: !43, line: 698, type: !353, scopeLine: 698, flags: DIFlagPrivate | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!347, !355, !347}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !336)
!358 = !DISubprogram(name: "__atomic_base", scope: !336, file: !43, line: 701, type: !359, scopeLine: 701, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!362 = !DISubprogram(name: "~__atomic_base", scope: !336, file: !43, line: 702, type: !359, scopeLine: 702, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubprogram(name: "__atomic_base", scope: !336, file: !43, line: 703, type: !364, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !361, !366}
!366 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !351, size: 64)
!367 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIP3JobEaSERKS2_", scope: !336, file: !43, line: 704, type: !368, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !361, !366}
!370 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !336, size: 64)
!371 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIP3JobEaSERKS2_", scope: !336, file: !43, line: 705, type: !372, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!372 = !DISubroutineType(types: !373)
!373 = !{!370, !374, !366}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!375 = !DISubprogram(name: "__atomic_base", scope: !336, file: !43, line: 708, type: !376, scopeLine: 708, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !361, !339}
!378 = !DISubprogram(name: "operator Job *", linkageName: "_ZNKSt13__atomic_baseIP3JobEcvS1_Ev", scope: !336, file: !43, line: 710, type: !379, scopeLine: 710, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!339, !350}
!381 = !DISubprogram(name: "operator Job *", linkageName: "_ZNVKSt13__atomic_baseIP3JobEcvS1_Ev", scope: !336, file: !43, line: 713, type: !382, scopeLine: 713, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{!339, !355}
!384 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIP3JobEaSES1_", scope: !336, file: !43, line: 717, type: !385, scopeLine: 717, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!339, !361, !339}
!387 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIP3JobEaSES1_", scope: !336, file: !43, line: 724, type: !388, scopeLine: 724, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DISubroutineType(types: !389)
!389 = !{!339, !374, !339}
!390 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIP3JobEppEi", scope: !336, file: !43, line: 731, type: !391, scopeLine: 731, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{!339, !361, !45}
!393 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIP3JobEppEi", scope: !336, file: !43, line: 735, type: !394, scopeLine: 735, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DISubroutineType(types: !395)
!395 = !{!339, !374, !45}
!396 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIP3JobEmmEi", scope: !336, file: !43, line: 739, type: !391, scopeLine: 739, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIP3JobEmmEi", scope: !336, file: !43, line: 743, type: !394, scopeLine: 743, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIP3JobEppEv", scope: !336, file: !43, line: 747, type: !399, scopeLine: 747, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!339, !361}
!401 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIP3JobEppEv", scope: !336, file: !43, line: 752, type: !402, scopeLine: 752, flags: DIFlagPrototyped, spFlags: 0)
!402 = !DISubroutineType(types: !403)
!403 = !{!339, !374}
!404 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIP3JobEmmEv", scope: !336, file: !43, line: 757, type: !399, scopeLine: 757, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIP3JobEmmEv", scope: !336, file: !43, line: 762, type: !402, scopeLine: 762, flags: DIFlagPrototyped, spFlags: 0)
!406 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13__atomic_baseIP3JobEpLEl", scope: !336, file: !43, line: 767, type: !407, scopeLine: 767, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!339, !361, !347}
!409 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt13__atomic_baseIP3JobEpLEl", scope: !336, file: !43, line: 772, type: !410, scopeLine: 772, flags: DIFlagPrototyped, spFlags: 0)
!410 = !DISubroutineType(types: !411)
!411 = !{!339, !374, !347}
!412 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13__atomic_baseIP3JobEmIEl", scope: !336, file: !43, line: 777, type: !407, scopeLine: 777, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt13__atomic_baseIP3JobEmIEl", scope: !336, file: !43, line: 782, type: !410, scopeLine: 782, flags: DIFlagPrototyped, spFlags: 0)
!414 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt13__atomic_baseIP3JobE12is_lock_freeEv", scope: !336, file: !43, line: 787, type: !415, scopeLine: 787, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!144, !350}
!417 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt13__atomic_baseIP3JobE12is_lock_freeEv", scope: !336, file: !43, line: 795, type: !418, scopeLine: 795, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DISubroutineType(types: !419)
!419 = !{!144, !355}
!420 = !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseIP3JobE5storeES1_St12memory_order", scope: !336, file: !43, line: 803, type: !421, scopeLine: 803, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !361, !339, !42}
!423 = !DISubprogram(name: "store", linkageName: "_ZNVSt13__atomic_baseIP3JobE5storeES1_St12memory_order", scope: !336, file: !43, line: 817, type: !424, scopeLine: 817, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !374, !339, !42}
!426 = !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseIP3JobE4loadESt12memory_order", scope: !336, file: !43, line: 830, type: !427, scopeLine: 830, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!339, !350, !42}
!429 = !DISubprogram(name: "load", linkageName: "_ZNVKSt13__atomic_baseIP3JobE4loadESt12memory_order", scope: !336, file: !43, line: 841, type: !430, scopeLine: 841, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DISubroutineType(types: !431)
!431 = !{!339, !355, !42}
!432 = !DISubprogram(name: "exchange", linkageName: "_ZNSt13__atomic_baseIP3JobE8exchangeES1_St12memory_order", scope: !336, file: !43, line: 852, type: !433, scopeLine: 852, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!339, !361, !339, !42}
!435 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt13__atomic_baseIP3JobE8exchangeES1_St12memory_order", scope: !336, file: !43, line: 860, type: !436, scopeLine: 860, flags: DIFlagPrototyped, spFlags: 0)
!436 = !DISubroutineType(types: !437)
!437 = !{!339, !374, !339, !42}
!438 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseIP3JobE21compare_exchange_weakERS1_S1_St12memory_orderS4_", scope: !336, file: !43, line: 867, type: !439, scopeLine: 867, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!144, !361, !441, !339, !42, !42}
!441 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !339, size: 64)
!442 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseIP3JobE21compare_exchange_weakERS1_S1_St12memory_orderS4_", scope: !336, file: !43, line: 878, type: !443, scopeLine: 878, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!144, !374, !441, !339, !42, !42}
!445 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseIP3JobE23compare_exchange_strongERS1_S1_St12memory_orderS4_", scope: !336, file: !43, line: 889, type: !439, scopeLine: 889, flags: DIFlagPrototyped, spFlags: 0)
!446 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseIP3JobE23compare_exchange_strongERS1_S1_St12memory_orderS4_", scope: !336, file: !43, line: 900, type: !443, scopeLine: 900, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DISubprogram(name: "wait", linkageName: "_ZNKSt13__atomic_baseIP3JobE4waitES1_St12memory_order", scope: !336, file: !43, line: 912, type: !448, scopeLine: 912, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !350, !339, !42}
!450 = !DISubprogram(name: "notify_one", linkageName: "_ZNKSt13__atomic_baseIP3JobE10notify_oneEv", scope: !336, file: !43, line: 923, type: !451, scopeLine: 923, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !350}
!453 = !DISubprogram(name: "notify_all", linkageName: "_ZNKSt13__atomic_baseIP3JobE10notify_allEv", scope: !336, file: !43, line: 929, type: !451, scopeLine: 929, flags: DIFlagPrototyped, spFlags: 0)
!454 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseIP3JobE9fetch_addElSt12memory_order", scope: !336, file: !43, line: 936, type: !455, scopeLine: 936, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!339, !361, !347, !42}
!457 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt13__atomic_baseIP3JobE9fetch_addElSt12memory_order", scope: !336, file: !43, line: 941, type: !458, scopeLine: 941, flags: DIFlagPrototyped, spFlags: 0)
!458 = !DISubroutineType(types: !459)
!459 = !{!339, !374, !347, !42}
!460 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseIP3JobE9fetch_subElSt12memory_order", scope: !336, file: !43, line: 946, type: !455, scopeLine: 946, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt13__atomic_baseIP3JobE9fetch_subElSt12memory_order", scope: !336, file: !43, line: 951, type: !458, scopeLine: 951, flags: DIFlagPrototyped, spFlags: 0)
!462 = !{!463}
!463 = !DITemplateTypeParameter(name: "_ITp", type: !340)
!464 = !DIDerivedType(tag: DW_TAG_variable, name: "is_always_lock_free", scope: !332, file: !70, line: 561, baseType: !201, flags: DIFlagStaticMember)
!465 = !DISubprogram(name: "atomic", scope: !332, file: !70, line: 422, type: !466, scopeLine: 422, flags: DIFlagPrototyped, spFlags: 0)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!469 = !DISubprogram(name: "~atomic", scope: !332, file: !70, line: 423, type: !466, scopeLine: 423, flags: DIFlagPrototyped, spFlags: 0)
!470 = !DISubprogram(name: "atomic", scope: !332, file: !70, line: 424, type: !471, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !468, !473}
!473 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!475 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIP3JobEaSERKS2_", scope: !332, file: !70, line: 425, type: !476, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !468, !473}
!478 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !332, size: 64)
!479 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicIP3JobEaSERKS2_", scope: !332, file: !70, line: 426, type: !480, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!480 = !DISubroutineType(types: !481)
!481 = !{!478, !482, !473}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!483 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !332)
!484 = !DISubprogram(name: "atomic", scope: !332, file: !70, line: 428, type: !485, scopeLine: 428, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !468, !487}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pointer_type", scope: !332, file: !70, line: 418, baseType: !340)
!488 = !DISubprogram(name: "operator Job *", linkageName: "_ZNKSt6atomicIP3JobEcvS1_Ev", scope: !332, file: !70, line: 430, type: !489, scopeLine: 430, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!487, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!492 = !DISubprogram(name: "operator Job *", linkageName: "_ZNVKSt6atomicIP3JobEcvS1_Ev", scope: !332, file: !70, line: 433, type: !493, scopeLine: 433, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!487, !495}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!497 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIP3JobEaSES1_", scope: !332, file: !70, line: 437, type: !498, scopeLine: 437, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{!487, !468, !487}
!500 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicIP3JobEaSES1_", scope: !332, file: !70, line: 441, type: !501, scopeLine: 441, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!487, !482, !487}
!503 = !DISubprogram(name: "operator++", linkageName: "_ZNSt6atomicIP3JobEppEi", scope: !332, file: !70, line: 445, type: !504, scopeLine: 445, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!487, !468, !45}
!506 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt6atomicIP3JobEppEi", scope: !332, file: !70, line: 454, type: !507, scopeLine: 454, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!487, !482, !45}
!509 = !DISubprogram(name: "operator--", linkageName: "_ZNSt6atomicIP3JobEmmEi", scope: !332, file: !70, line: 463, type: !504, scopeLine: 463, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt6atomicIP3JobEmmEi", scope: !332, file: !70, line: 472, type: !507, scopeLine: 472, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DISubprogram(name: "operator++", linkageName: "_ZNSt6atomicIP3JobEppEv", scope: !332, file: !70, line: 481, type: !512, scopeLine: 481, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!487, !468}
!514 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt6atomicIP3JobEppEv", scope: !332, file: !70, line: 490, type: !515, scopeLine: 490, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{!487, !482}
!517 = !DISubprogram(name: "operator--", linkageName: "_ZNSt6atomicIP3JobEmmEv", scope: !332, file: !70, line: 499, type: !512, scopeLine: 499, flags: DIFlagPrototyped, spFlags: 0)
!518 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt6atomicIP3JobEmmEv", scope: !332, file: !70, line: 508, type: !515, scopeLine: 508, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt6atomicIP3JobEpLEl", scope: !332, file: !70, line: 517, type: !520, scopeLine: 517, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DISubroutineType(types: !521)
!521 = !{!487, !468, !347}
!522 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt6atomicIP3JobEpLEl", scope: !332, file: !70, line: 526, type: !523, scopeLine: 526, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!487, !482, !347}
!525 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt6atomicIP3JobEmIEl", scope: !332, file: !70, line: 535, type: !520, scopeLine: 535, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt6atomicIP3JobEmIEl", scope: !332, file: !70, line: 544, type: !523, scopeLine: 544, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt6atomicIP3JobE12is_lock_freeEv", scope: !332, file: !70, line: 553, type: !528, scopeLine: 553, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!144, !491}
!530 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt6atomicIP3JobE12is_lock_freeEv", scope: !332, file: !70, line: 557, type: !531, scopeLine: 557, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!144, !495}
!533 = !DISubprogram(name: "store", linkageName: "_ZNSt6atomicIP3JobE5storeES1_St12memory_order", scope: !332, file: !70, line: 566, type: !534, scopeLine: 566, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !468, !487, !42}
!536 = !DISubprogram(name: "store", linkageName: "_ZNVSt6atomicIP3JobE5storeES1_St12memory_order", scope: !332, file: !70, line: 571, type: !537, scopeLine: 571, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !482, !487, !42}
!539 = !DISubprogram(name: "load", linkageName: "_ZNKSt6atomicIP3JobE4loadESt12memory_order", scope: !332, file: !70, line: 576, type: !540, scopeLine: 576, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{!487, !491, !42}
!542 = !DISubprogram(name: "load", linkageName: "_ZNVKSt6atomicIP3JobE4loadESt12memory_order", scope: !332, file: !70, line: 580, type: !543, scopeLine: 580, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{!487, !495, !42}
!545 = !DISubprogram(name: "exchange", linkageName: "_ZNSt6atomicIP3JobE8exchangeES1_St12memory_order", scope: !332, file: !70, line: 584, type: !546, scopeLine: 584, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!487, !468, !487, !42}
!548 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt6atomicIP3JobE8exchangeES1_St12memory_order", scope: !332, file: !70, line: 589, type: !549, scopeLine: 589, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!487, !482, !487, !42}
!551 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt6atomicIP3JobE21compare_exchange_weakERS1_S1_St12memory_orderS4_", scope: !332, file: !70, line: 594, type: !552, scopeLine: 594, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{!144, !468, !554, !487, !42, !42}
!554 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !487, size: 64)
!555 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt6atomicIP3JobE21compare_exchange_weakERS1_S1_St12memory_orderS4_", scope: !332, file: !70, line: 599, type: !556, scopeLine: 599, flags: DIFlagPrototyped, spFlags: 0)
!556 = !DISubroutineType(types: !557)
!557 = !{!144, !482, !554, !487, !42, !42}
!558 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt6atomicIP3JobE21compare_exchange_weakERS1_S1_St12memory_order", scope: !332, file: !70, line: 605, type: !559, scopeLine: 605, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!144, !468, !554, !487, !42}
!561 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt6atomicIP3JobE21compare_exchange_weakERS1_S1_St12memory_order", scope: !332, file: !70, line: 613, type: !562, scopeLine: 613, flags: DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{!144, !482, !554, !487, !42}
!564 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt6atomicIP3JobE23compare_exchange_strongERS1_S1_St12memory_orderS4_", scope: !332, file: !70, line: 621, type: !552, scopeLine: 621, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt6atomicIP3JobE23compare_exchange_strongERS1_S1_St12memory_orderS4_", scope: !332, file: !70, line: 626, type: !556, scopeLine: 626, flags: DIFlagPrototyped, spFlags: 0)
!566 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt6atomicIP3JobE23compare_exchange_strongERS1_S1_St12memory_order", scope: !332, file: !70, line: 632, type: !559, scopeLine: 632, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt6atomicIP3JobE23compare_exchange_strongERS1_S1_St12memory_order", scope: !332, file: !70, line: 640, type: !562, scopeLine: 640, flags: DIFlagPrototyped, spFlags: 0)
!568 = !DISubprogram(name: "wait", linkageName: "_ZNKSt6atomicIP3JobE4waitES1_St12memory_order", scope: !332, file: !70, line: 649, type: !569, scopeLine: 649, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !491, !487, !42}
!571 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt6atomicIP3JobE10notify_oneEv", scope: !332, file: !70, line: 655, type: !466, scopeLine: 655, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt6atomicIP3JobE10notify_allEv", scope: !332, file: !70, line: 659, type: !466, scopeLine: 659, flags: DIFlagPrototyped, spFlags: 0)
!573 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt6atomicIP3JobE9fetch_addElSt12memory_order", scope: !332, file: !70, line: 664, type: !574, scopeLine: 664, flags: DIFlagPrototyped, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{!487, !468, !347, !42}
!576 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt6atomicIP3JobE9fetch_addElSt12memory_order", scope: !332, file: !70, line: 674, type: !577, scopeLine: 674, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{!487, !482, !347, !42}
!579 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt6atomicIP3JobE9fetch_subElSt12memory_order", scope: !332, file: !70, line: 684, type: !574, scopeLine: 684, flags: DIFlagPrototyped, spFlags: 0)
!580 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt6atomicIP3JobE9fetch_subElSt12memory_order", scope: !332, file: !70, line: 694, type: !577, scopeLine: 694, flags: DIFlagPrototyped, spFlags: 0)
!581 = !{!582}
!582 = !DITemplateTypeParameter(name: "_Tp", type: !340)
!583 = !DITemplateValueParameter(name: "_Nm", type: !584, value: i64 1000)
!584 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 512000, align: 512, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 1000)
!588 = !DISubprogram(name: "fill", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4fillERKS5_", scope: !320, file: !321, line: 115, type: !589, scopeLine: 115, flags: DIFlagPrototyped, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !591, !592}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!592 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !320, file: !321, line: 96, baseType: !329)
!595 = !DISubprogram(name: "swap", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4swapERS6_", scope: !320, file: !321, line: 119, type: !596, scopeLine: 119, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !591, !598}
!598 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !320, size: 64)
!599 = !DISubprogram(name: "begin", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE5beginEv", scope: !320, file: !321, line: 126, type: !600, scopeLine: 126, flags: DIFlagPrototyped, spFlags: 0)
!600 = !DISubroutineType(types: !601)
!601 = !{!602, !591}
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !320, file: !321, line: 101, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!604 = !DISubprogram(name: "begin", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE5beginEv", scope: !320, file: !321, line: 131, type: !605, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DISubroutineType(types: !606)
!606 = !{!607, !609}
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !320, file: !321, line: 102, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!611 = !DISubprogram(name: "end", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE3endEv", scope: !320, file: !321, line: 136, type: !600, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!612 = !DISubprogram(name: "end", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE3endEv", scope: !320, file: !321, line: 141, type: !605, scopeLine: 141, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE6rbeginEv", scope: !320, file: !321, line: 146, type: !614, scopeLine: 146, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !591}
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !320, file: !321, line: 105, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<parlay::internal::Deque<Job>::padded_job *>", scope: !44, file: !618, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPN6parlay8internal5DequeI3JobE10padded_jobEE")
!618 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "078d2c6e40695db2f690aeaa2795d719")
!619 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE6rbeginEv", scope: !320, file: !321, line: 151, type: !620, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!622, !609}
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !320, file: !321, line: 106, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const parlay::internal::Deque<Job>::padded_job *>", scope: !44, file: !618, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKN6parlay8internal5DequeI3JobE10padded_jobEE")
!624 = !DISubprogram(name: "rend", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4rendEv", scope: !320, file: !321, line: 156, type: !614, scopeLine: 156, flags: DIFlagPrototyped, spFlags: 0)
!625 = !DISubprogram(name: "rend", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4rendEv", scope: !320, file: !321, line: 161, type: !620, scopeLine: 161, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE6cbeginEv", scope: !320, file: !321, line: 166, type: !605, scopeLine: 166, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DISubprogram(name: "cend", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4cendEv", scope: !320, file: !321, line: 171, type: !605, scopeLine: 171, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE7crbeginEv", scope: !320, file: !321, line: 176, type: !620, scopeLine: 176, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DISubprogram(name: "crend", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE5crendEv", scope: !320, file: !321, line: 181, type: !620, scopeLine: 181, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DISubprogram(name: "size", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4sizeEv", scope: !320, file: !321, line: 187, type: !631, scopeLine: 187, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!633, !609}
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !321, line: 103, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !44, file: !348, line: 308, baseType: !584)
!635 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE8max_sizeEv", scope: !320, file: !321, line: 191, type: !631, scopeLine: 191, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DISubprogram(name: "empty", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE5emptyEv", scope: !320, file: !321, line: 195, type: !637, scopeLine: 195, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!144, !609}
!639 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEixEm", scope: !320, file: !321, line: 200, type: !640, scopeLine: 200, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DISubroutineType(types: !641)
!641 = !{!642, !591, !633}
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !320, file: !321, line: 99, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !594, size: 64)
!644 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEixEm", scope: !320, file: !321, line: 208, type: !645, scopeLine: 208, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!647, !609, !633}
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !320, file: !321, line: 100, baseType: !592)
!648 = !DISubprogram(name: "at", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE2atEm", scope: !320, file: !321, line: 217, type: !640, scopeLine: 217, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubprogram(name: "at", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE2atEm", scope: !320, file: !321, line: 227, type: !645, scopeLine: 227, flags: DIFlagPrototyped, spFlags: 0)
!650 = !DISubprogram(name: "front", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE5frontEv", scope: !320, file: !321, line: 240, type: !651, scopeLine: 240, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!642, !591}
!653 = !DISubprogram(name: "front", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE5frontEv", scope: !320, file: !321, line: 248, type: !654, scopeLine: 248, flags: DIFlagPrototyped, spFlags: 0)
!654 = !DISubroutineType(types: !655)
!655 = !{!647, !609}
!656 = !DISubprogram(name: "back", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4backEv", scope: !320, file: !321, line: 258, type: !651, scopeLine: 258, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubprogram(name: "back", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4backEv", scope: !320, file: !321, line: 266, type: !654, scopeLine: 266, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DISubprogram(name: "data", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4dataEv", scope: !320, file: !321, line: 276, type: !659, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DISubroutineType(types: !660)
!660 = !{!661, !591}
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !320, file: !321, line: 97, baseType: !603)
!662 = !DISubprogram(name: "data", linkageName: "_ZNKSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EE4dataEv", scope: !320, file: !321, line: 281, type: !663, scopeLine: 281, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!665, !609}
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !320, file: !321, line: 98, baseType: !608)
!666 = !DISubprogram(name: "Deque", scope: !62, file: !36, line: 46, type: !667, scopeLine: 46, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!670 = !DISubprogram(name: "push_bottom", linkageName: "_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_", scope: !62, file: !36, line: 53, type: !671, scopeLine: 53, flags: DIFlagPrototyped, spFlags: 0)
!671 = !DISubroutineType(types: !672)
!672 = !{!144, !669, !340}
!673 = !DISubprogram(name: "pop_top", linkageName: "_ZN6parlay8internal5DequeI3JobE7pop_topEv", scope: !62, file: !36, line: 70, type: !674, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{!676, !669}
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<Job *, bool>", scope: !44, file: !677, line: 187, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !678, templateParams: !716, identifier: "_ZTSSt4pairIP3JobbE")
!677 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stl_pair.h", directory: "", checksumkind: CSK_MD5, checksum: "73730f2e40d95437864180754ecd0b92")
!678 = !{!679, !684, !685, !686, !692, !696, !700, !703, !709, !712, !713}
!679 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !676, baseType: !680, extraData: i32 0)
!680 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<Job *, bool>", scope: !44, file: !677, line: 163, size: 8, flags: DIFlagTypePassByValue, elements: !326, templateParams: !681, identifier: "_ZTSSt11__pair_baseIP3JobbE")
!681 = !{!682, !683}
!682 = !DITemplateTypeParameter(name: "_U1", type: !340)
!683 = !DITemplateTypeParameter(name: "_U2", type: !144)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !676, file: !677, line: 193, baseType: !340, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !676, file: !677, line: 194, baseType: !144, size: 8, offset: 64)
!686 = !DISubprogram(name: "pair", scope: !676, file: !677, line: 197, type: !687, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !689, !690}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!690 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!692 = !DISubprogram(name: "pair", scope: !676, file: !677, line: 198, type: !693, scopeLine: 198, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !689, !695}
!695 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !676, size: 64)
!696 = !DISubprogram(name: "swap", linkageName: "_ZNSt4pairIP3JobbE4swapERS2_", scope: !676, file: !677, line: 206, type: !697, scopeLine: 206, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !689, !699}
!699 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !676, size: 64)
!700 = !DISubprogram(name: "pair", scope: !676, file: !677, line: 249, type: !701, scopeLine: 249, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !689}
!703 = !DISubprogram(name: "pair", scope: !676, file: !677, line: 305, type: !704, scopeLine: 305, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !689, !706, !708}
!706 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!708 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !201, size: 64)
!709 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIP3JobbEaSERKS2_", scope: !676, file: !677, line: 412, type: !710, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!710 = !DISubroutineType(types: !711)
!711 = !{!699, !689, !690}
!712 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIP3JobbEaSERKS2_Qcl13_S_assignableIRKT_RKT0_EE", scope: !676, file: !677, line: 416, type: !710, scopeLine: 416, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIP3JobbEaSEOS2_Qcl13_S_assignableIT_T0_EE", scope: !676, file: !677, line: 427, type: !714, scopeLine: 427, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!699, !689, !695}
!716 = !{!717, !718}
!717 = !DITemplateTypeParameter(name: "_T1", type: !340)
!718 = !DITemplateTypeParameter(name: "_T2", type: !144)
!719 = !DISubprogram(name: "pop_bottom", linkageName: "_ZN6parlay8internal5DequeI3JobE10pop_bottomEv", scope: !62, file: !36, line: 88, type: !720, scopeLine: 88, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!340, !669}
!722 = !{!723}
!723 = !DITemplateTypeParameter(name: "Job", type: !341)
!724 = !{!725, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !61, file: !36, line: 32, baseType: !726, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "tag_t", file: !36, line: 25, baseType: !54)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !61, file: !36, line: 33, baseType: !728, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "qidx", file: !36, line: 24, baseType: !54)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!730 = !{!0, !8, !13, !15, !20, !25, !30, !32, !731, !734, !34, !736, !738, !740}
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!732 = distinct !DIGlobalVariable(name: "memory_order_acquire", scope: !44, file: !43, line: 74, type: !733, isLocal: true, isDefinition: true)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!735 = distinct !DIGlobalVariable(name: "memory_order_release", scope: !44, file: !43, line: 75, type: !733, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!737 = distinct !DIGlobalVariable(name: "memory_order_seq_cst", scope: !44, file: !43, line: 77, type: !733, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!739 = distinct !DIGlobalVariable(name: "memory_order_acq_rel", scope: !44, file: !43, line: 76, type: !733, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!741 = distinct !DIGlobalVariable(name: "memory_order_relaxed", scope: !44, file: !43, line: 72, type: !733, isLocal: true, isDefinition: true)
!742 = !{!743, !760, !763, !768, !776, !784, !788, !795, !799, !803, !805, !807, !811, !821, !825, !831, !837, !839, !843, !847, !851, !855, !867, !869, !873, !877, !881, !883, !889, !893, !897, !899, !901, !905, !913, !917, !921, !925, !927, !933, !935, !942, !947, !951, !955, !959, !963, !967, !969, !971, !975, !979, !983, !985, !989, !993, !995, !997, !1001, !1007, !1012, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1031, !1035, !1040, !1044, !1048, !1053, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1089, !1093, !1097, !1103, !1107, !1111, !1116, !1118, !1122, !1126, !1130, !1140, !1142, !1146, !1150, !1154, !1158, !1162, !1166, !1170, !1174, !1178, !1182, !1186, !1188, !1192, !1196, !1200, !1206, !1210, !1214, !1216, !1220, !1224, !1230, !1232, !1236, !1240, !1244, !1248, !1252, !1256, !1260, !1261, !1262, !1263, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1275, !1281, !1286, !1290, !1292, !1294, !1296, !1298, !1305, !1309, !1313, !1317, !1321, !1325, !1330, !1334, !1336, !1340, !1346, !1350, !1355, !1357, !1359, !1363, !1367, !1369, !1371, !1373, !1375, !1379, !1381, !1383, !1387, !1391, !1395, !1399, !1403, !1407, !1409, !1413, !1417, !1421, !1425, !1427, !1429, !1433, !1437, !1438, !1439, !1440, !1441, !1442, !1450, !1458, !1461, !1462, !1464, !1466, !1468, !1470, !1474, !1476, !1478, !1480, !1482, !1484, !1486, !1488, !1490, !1494, !1498, !1500, !1504, !1508, !1514, !1518, !1520, !1523, !1526, !1528, !1530, !1532, !1536, !1539, !1542, !1545, !1548, !1550, !1555, !1559, !1562, !1565, !1567, !1569, !1571, !1573, !1576, !1579, !1582, !1585, !1588}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !744, file: !759, line: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !745, line: 6, baseType: !746)
!745 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !747, line: 21, baseType: !748)
!747 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !749, identifier: "_ZTS11__mbstate_t")
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !748, file: !747, line: 15, baseType: !45, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !748, file: !747, line: 20, baseType: !752, size: 32, offset: 32)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !747, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !753, identifier: "_ZTSN11__mbstate_tUt_E")
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !752, file: !747, line: 18, baseType: !54, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !752, file: !747, line: 19, baseType: !756, size: 32)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 4)
!759 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !761, file: !759, line: 141)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !762, line: 20, baseType: !54)
!762 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !764, file: !759, line: 143)
!764 = !DISubprogram(name: "btowc", scope: !765, file: !765, line: 309, type: !766, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "889114206ea781a9a9a0b33e52589e47")
!766 = !DISubroutineType(types: !767)
!767 = !{!761, !45}
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !769, file: !759, line: 144)
!769 = !DISubprogram(name: "fgetwc", scope: !765, file: !765, line: 935, type: !770, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DISubroutineType(types: !771)
!771 = !{!761, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !774, line: 5, baseType: !775)
!774 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !777, file: !759, line: 145)
!777 = !DISubprogram(name: "fgetws", scope: !765, file: !765, line: 964, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DISubroutineType(types: !779)
!779 = !{!780, !782, !45, !783}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!782 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !780)
!783 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !772)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !785, file: !759, line: 146)
!785 = !DISubprogram(name: "fputwc", scope: !765, file: !765, line: 949, type: !786, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DISubroutineType(types: !787)
!787 = !{!761, !781, !772}
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !789, file: !759, line: 147)
!789 = !DISubprogram(name: "fputws", scope: !765, file: !765, line: 971, type: !790, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DISubroutineType(types: !791)
!791 = !{!45, !792, !783}
!792 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !796, file: !759, line: 148)
!796 = !DISubprogram(name: "fwide", scope: !765, file: !765, line: 725, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!45, !772, !45}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !800, file: !759, line: 149)
!800 = !DISubprogram(name: "fwprintf", scope: !765, file: !765, line: 732, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!45, !783, !792, null}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !804, file: !759, line: 150)
!804 = !DISubprogram(name: "fwscanf", linkageName: "__isoc23_fwscanf", scope: !765, file: !765, line: 795, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !806, file: !759, line: 151)
!806 = !DISubprogram(name: "getwc", scope: !765, file: !765, line: 936, type: !770, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !808, file: !759, line: 152)
!808 = !DISubprogram(name: "getwchar", scope: !765, file: !765, line: 942, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{!761}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !812, file: !759, line: 153)
!812 = !DISubprogram(name: "mbrlen", scope: !765, file: !765, line: 332, type: !813, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DISubroutineType(types: !814)
!814 = !{!815, !817, !815, !819}
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !816, line: 18, baseType: !584)
!816 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!817 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !822, file: !759, line: 154)
!822 = !DISubprogram(name: "mbrtowc", scope: !765, file: !765, line: 321, type: !823, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!815, !782, !817, !815, !819}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !826, file: !759, line: 155)
!826 = !DISubprogram(name: "mbsinit", scope: !765, file: !765, line: 317, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!45, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !832, file: !759, line: 156)
!832 = !DISubprogram(name: "mbsrtowcs", scope: !765, file: !765, line: 362, type: !833, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DISubroutineType(types: !834)
!834 = !{!815, !782, !835, !815, !819}
!835 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !838, file: !759, line: 157)
!838 = !DISubprogram(name: "putwc", scope: !765, file: !765, line: 950, type: !786, flags: DIFlagPrototyped, spFlags: 0)
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !840, file: !759, line: 158)
!840 = !DISubprogram(name: "putwchar", scope: !765, file: !765, line: 956, type: !841, flags: DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{!761, !781}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !844, file: !759, line: 160)
!844 = !DISubprogram(name: "swprintf", scope: !765, file: !765, line: 742, type: !845, flags: DIFlagPrototyped, spFlags: 0)
!845 = !DISubroutineType(types: !846)
!846 = !{!45, !782, !815, !792, null}
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !848, file: !759, line: 162)
!848 = !DISubprogram(name: "swscanf", linkageName: "__isoc23_swscanf", scope: !765, file: !765, line: 802, type: !849, flags: DIFlagPrototyped, spFlags: 0)
!849 = !DISubroutineType(types: !850)
!850 = !{!45, !792, !792, null}
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !852, file: !759, line: 163)
!852 = !DISubprogram(name: "ungetwc", scope: !765, file: !765, line: 979, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DISubroutineType(types: !854)
!854 = !{!761, !761, !772}
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !856, file: !759, line: 164)
!856 = !DISubprogram(name: "vfwprintf", scope: !765, file: !765, line: 750, type: !857, flags: DIFlagPrototyped, spFlags: 0)
!857 = !DISubroutineType(types: !858)
!858 = !{!45, !783, !792, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !861, identifier: "_ZTS13__va_list_tag")
!861 = !{!862, !863, !864, !866}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !860, file: !2, baseType: !54, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !860, file: !2, baseType: !54, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !860, file: !2, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !860, file: !2, baseType: !865, size: 64, offset: 128)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !868, file: !759, line: 166)
!868 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc23_vfwscanf", scope: !765, file: !765, line: 875, type: !857, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !870, file: !759, line: 169)
!870 = !DISubprogram(name: "vswprintf", scope: !765, file: !765, line: 763, type: !871, flags: DIFlagPrototyped, spFlags: 0)
!871 = !DISubroutineType(types: !872)
!872 = !{!45, !782, !815, !792, !859}
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !874, file: !759, line: 172)
!874 = !DISubprogram(name: "vswscanf", linkageName: "__isoc23_vswscanf", scope: !765, file: !765, line: 882, type: !875, flags: DIFlagPrototyped, spFlags: 0)
!875 = !DISubroutineType(types: !876)
!876 = !{!45, !792, !792, !859}
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !878, file: !759, line: 174)
!878 = !DISubprogram(name: "vwprintf", scope: !765, file: !765, line: 758, type: !879, flags: DIFlagPrototyped, spFlags: 0)
!879 = !DISubroutineType(types: !880)
!880 = !{!45, !792, !859}
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !882, file: !759, line: 176)
!882 = !DISubprogram(name: "vwscanf", linkageName: "__isoc23_vwscanf", scope: !765, file: !765, line: 879, type: !879, flags: DIFlagPrototyped, spFlags: 0)
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !884, file: !759, line: 178)
!884 = !DISubprogram(name: "wcrtomb", scope: !765, file: !765, line: 326, type: !885, flags: DIFlagPrototyped, spFlags: 0)
!885 = !DISubroutineType(types: !886)
!886 = !{!815, !887, !781, !819}
!887 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !890, file: !759, line: 179)
!890 = !DISubprogram(name: "wcscat", scope: !765, file: !765, line: 121, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DISubroutineType(types: !892)
!892 = !{!780, !782, !792}
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !894, file: !759, line: 180)
!894 = !DISubprogram(name: "wcscmp", scope: !765, file: !765, line: 130, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DISubroutineType(types: !896)
!896 = !{!45, !793, !793}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !898, file: !759, line: 181)
!898 = !DISubprogram(name: "wcscoll", scope: !765, file: !765, line: 155, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !900, file: !759, line: 182)
!900 = !DISubprogram(name: "wcscpy", scope: !765, file: !765, line: 98, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !902, file: !759, line: 183)
!902 = !DISubprogram(name: "wcscspn", scope: !765, file: !765, line: 212, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!815, !793, !793}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !906, file: !759, line: 184)
!906 = !DISubprogram(name: "wcsftime", scope: !765, file: !765, line: 1043, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!815, !782, !815, !792, !909}
!909 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !765, line: 94, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !914, file: !759, line: 185)
!914 = !DISubprogram(name: "wcslen", scope: !765, file: !765, line: 247, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DISubroutineType(types: !916)
!916 = !{!815, !793}
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !918, file: !759, line: 186)
!918 = !DISubprogram(name: "wcsncat", scope: !765, file: !765, line: 125, type: !919, flags: DIFlagPrototyped, spFlags: 0)
!919 = !DISubroutineType(types: !920)
!920 = !{!780, !782, !792, !815}
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !922, file: !759, line: 187)
!922 = !DISubprogram(name: "wcsncmp", scope: !765, file: !765, line: 133, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!923 = !DISubroutineType(types: !924)
!924 = !{!45, !793, !793, !815}
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !926, file: !759, line: 188)
!926 = !DISubprogram(name: "wcsncpy", scope: !765, file: !765, line: 103, type: !919, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !928, file: !759, line: 189)
!928 = !DISubprogram(name: "wcsrtombs", scope: !765, file: !765, line: 368, type: !929, flags: DIFlagPrototyped, spFlags: 0)
!929 = !DISubroutineType(types: !930)
!930 = !{!815, !887, !931, !815, !819}
!931 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !934, file: !759, line: 190)
!934 = !DISubprogram(name: "wcsspn", scope: !765, file: !765, line: 216, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !936, file: !759, line: 191)
!936 = !DISubprogram(name: "wcstod", scope: !765, file: !765, line: 402, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!937 = !DISubroutineType(types: !938)
!938 = !{!939, !792, !940}
!939 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!940 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !943, file: !759, line: 193)
!943 = !DISubprogram(name: "wcstof", scope: !765, file: !765, line: 407, type: !944, flags: DIFlagPrototyped, spFlags: 0)
!944 = !DISubroutineType(types: !945)
!945 = !{!946, !792, !940}
!946 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !948, file: !759, line: 195)
!948 = !DISubprogram(name: "wcstok", scope: !765, file: !765, line: 242, type: !949, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DISubroutineType(types: !950)
!950 = !{!780, !782, !792, !940}
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !952, file: !759, line: 196)
!952 = !DISubprogram(name: "wcstol", linkageName: "__isoc23_wcstol", scope: !765, file: !765, line: 500, type: !953, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DISubroutineType(types: !954)
!954 = !{!349, !792, !940, !45}
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !956, file: !759, line: 197)
!956 = !DISubprogram(name: "wcstoul", linkageName: "__isoc23_wcstoul", scope: !765, file: !765, line: 503, type: !957, flags: DIFlagPrototyped, spFlags: 0)
!957 = !DISubroutineType(types: !958)
!958 = !{!584, !792, !940, !45}
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !960, file: !759, line: 198)
!960 = !DISubprogram(name: "wcsxfrm", scope: !765, file: !765, line: 159, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!961 = !DISubroutineType(types: !962)
!962 = !{!815, !782, !792, !815}
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !964, file: !759, line: 199)
!964 = !DISubprogram(name: "wctob", scope: !765, file: !765, line: 313, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!45, !761}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !968, file: !759, line: 200)
!968 = !DISubprogram(name: "wmemcmp", scope: !765, file: !765, line: 283, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !970, file: !759, line: 201)
!970 = !DISubprogram(name: "wmemcpy", scope: !765, file: !765, line: 287, type: !919, flags: DIFlagPrototyped, spFlags: 0)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !972, file: !759, line: 202)
!972 = !DISubprogram(name: "wmemmove", scope: !765, file: !765, line: 292, type: !973, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DISubroutineType(types: !974)
!974 = !{!780, !780, !793, !815}
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !976, file: !759, line: 203)
!976 = !DISubprogram(name: "wmemset", scope: !765, file: !765, line: 296, type: !977, flags: DIFlagPrototyped, spFlags: 0)
!977 = !DISubroutineType(types: !978)
!978 = !{!780, !780, !781, !815}
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !980, file: !759, line: 204)
!980 = !DISubprogram(name: "wprintf", scope: !765, file: !765, line: 739, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DISubroutineType(types: !982)
!982 = !{!45, !792, null}
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !984, file: !759, line: 205)
!984 = !DISubprogram(name: "wscanf", linkageName: "__isoc23_wscanf", scope: !765, file: !765, line: 799, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !986, file: !759, line: 206)
!986 = !DISubprogram(name: "wcschr", scope: !765, file: !765, line: 189, type: !987, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DISubroutineType(types: !988)
!988 = !{!780, !793, !781}
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !990, file: !759, line: 207)
!990 = !DISubprogram(name: "wcspbrk", scope: !765, file: !765, line: 226, type: !991, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!780, !793, !793}
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !994, file: !759, line: 208)
!994 = !DISubprogram(name: "wcsrchr", scope: !765, file: !765, line: 199, type: !987, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !996, file: !759, line: 209)
!996 = !DISubprogram(name: "wcsstr", scope: !765, file: !765, line: 237, type: !991, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !998, file: !759, line: 210)
!998 = !DISubprogram(name: "wmemchr", scope: !765, file: !765, line: 278, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!780, !793, !781, !815}
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1003, file: !759, line: 251)
!1002 = !DINamespace(name: "__gnu_cxx", scope: null)
!1003 = !DISubprogram(name: "wcstold", scope: !765, file: !765, line: 409, type: !1004, flags: DIFlagPrototyped, spFlags: 0)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !792, !940}
!1006 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1008, file: !759, line: 260)
!1008 = !DISubprogram(name: "wcstoll", linkageName: "__isoc23_wcstoll", scope: !765, file: !765, line: 508, type: !1009, flags: DIFlagPrototyped, spFlags: 0)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!1011, !792, !940, !45}
!1011 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1013, file: !759, line: 261)
!1013 = !DISubprogram(name: "wcstoull", linkageName: "__isoc23_wcstoull", scope: !765, file: !765, line: 513, type: !1014, flags: DIFlagPrototyped, spFlags: 0)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!1016, !792, !940, !45}
!1016 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1003, file: !759, line: 267)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1008, file: !759, line: 268)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1013, file: !759, line: 269)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !943, file: !759, line: 283)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !868, file: !759, line: 286)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !874, file: !759, line: 289)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !882, file: !759, line: 292)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1003, file: !759, line: 296)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1008, file: !759, line: 297)
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1013, file: !759, line: 298)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1028, file: !1029, line: 66)
!1028 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1030, file: !1029, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1029 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!1030 = !DINamespace(name: "__exception_ptr", scope: !44)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1030, entity: !1032, file: !1029, line: 85)
!1032 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !44, file: !1029, line: 81, type: !1033, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !1028}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1036, file: !1029, line: 243)
!1036 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !1030, file: !1029, line: 230, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1039, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1028, size: 64)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1041, file: !1043, line: 53)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1042, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1042 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "23ebf40dea0ab9a74daf64a0eaa99518")
!1043 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1045, file: !1043, line: 54)
!1045 = !DISubprogram(name: "setlocale", scope: !1042, file: !1042, line: 122, type: !1046, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!888, !45, !818}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1049, file: !1043, line: 55)
!1049 = !DISubprogram(name: "localeconv", scope: !1042, file: !1042, line: 125, type: !1050, flags: DIFlagPrototyped, spFlags: 0)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1054, file: !1058, line: 64)
!1054 = !DISubprogram(name: "isalnum", scope: !1055, file: !1055, line: 108, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1055 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "43fd45dcf96e8fb7d8f14700096497c7")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!45, !45}
!1058 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1060, file: !1058, line: 65)
!1060 = !DISubprogram(name: "isalpha", scope: !1055, file: !1055, line: 109, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1062, file: !1058, line: 66)
!1062 = !DISubprogram(name: "iscntrl", scope: !1055, file: !1055, line: 110, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1064, file: !1058, line: 67)
!1064 = !DISubprogram(name: "isdigit", scope: !1055, file: !1055, line: 111, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1066, file: !1058, line: 68)
!1066 = !DISubprogram(name: "isgraph", scope: !1055, file: !1055, line: 113, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1068, file: !1058, line: 69)
!1068 = !DISubprogram(name: "islower", scope: !1055, file: !1055, line: 112, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1070, file: !1058, line: 70)
!1070 = !DISubprogram(name: "isprint", scope: !1055, file: !1055, line: 114, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1072, file: !1058, line: 71)
!1072 = !DISubprogram(name: "ispunct", scope: !1055, file: !1055, line: 115, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1074, file: !1058, line: 72)
!1074 = !DISubprogram(name: "isspace", scope: !1055, file: !1055, line: 116, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1076, file: !1058, line: 73)
!1076 = !DISubprogram(name: "isupper", scope: !1055, file: !1055, line: 117, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1078, file: !1058, line: 74)
!1078 = !DISubprogram(name: "isxdigit", scope: !1055, file: !1055, line: 118, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1080, file: !1058, line: 75)
!1080 = !DISubprogram(name: "tolower", scope: !1055, file: !1055, line: 122, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1082, file: !1058, line: 76)
!1082 = !DISubprogram(name: "toupper", scope: !1055, file: !1055, line: 125, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1084, file: !1058, line: 87)
!1084 = !DISubprogram(name: "isblank", scope: !1055, file: !1055, line: 130, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1086, entity: !1087, file: !1088, line: 58)
!1086 = !DINamespace(name: "__gnu_debug", scope: null)
!1087 = !DINamespace(name: "__debug", scope: !44)
!1088 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1090, file: !1092, line: 52)
!1090 = !DISubprogram(name: "abs", scope: !1091, file: !1091, line: 980, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1091 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "7fa2ecb2348a66f8b44ab9a15abd0b72")
!1092 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1094, file: !1096, line: 131)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1091, line: 63, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1091, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1096 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1098, file: !1096, line: 132)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1091, line: 71, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1091, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !1100, identifier: "_ZTS6ldiv_t")
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1099, file: !1091, line: 69, baseType: !349, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1099, file: !1091, line: 70, baseType: !349, size: 64, offset: 64)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1104, file: !1096, line: 134)
!1104 = !DISubprogram(name: "abort", scope: !1091, file: !1091, line: 730, type: !1105, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null}
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1108, file: !1096, line: 136)
!1108 = !DISubprogram(name: "aligned_alloc", scope: !1091, file: !1091, line: 724, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!865, !815, !815}
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1112, file: !1096, line: 138)
!1112 = !DISubprogram(name: "atexit", scope: !1091, file: !1091, line: 734, type: !1113, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!45, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1117, file: !1096, line: 141)
!1117 = !DISubprogram(name: "at_quick_exit", scope: !1091, file: !1091, line: 739, type: !1113, flags: DIFlagPrototyped, spFlags: 0)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1119, file: !1096, line: 144)
!1119 = !DISubprogram(name: "atof", scope: !1091, file: !1091, line: 102, type: !1120, flags: DIFlagPrototyped, spFlags: 0)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!939, !818}
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1123, file: !1096, line: 145)
!1123 = !DISubprogram(name: "atoi", scope: !1091, file: !1091, line: 105, type: !1124, flags: DIFlagPrototyped, spFlags: 0)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!45, !818}
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1127, file: !1096, line: 146)
!1127 = !DISubprogram(name: "atol", scope: !1091, file: !1091, line: 108, type: !1128, flags: DIFlagPrototyped, spFlags: 0)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!349, !818}
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1131, file: !1096, line: 147)
!1131 = !DISubprogram(name: "bsearch", scope: !1091, file: !1091, line: 960, type: !1132, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!865, !1134, !1134, !815, !815, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1091, line: 948, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!45, !1134, !1134}
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1141, file: !1096, line: 148)
!1141 = !DISubprogram(name: "calloc", scope: !1091, file: !1091, line: 675, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1143, file: !1096, line: 149)
!1143 = !DISubprogram(name: "div", scope: !1091, file: !1091, line: 992, type: !1144, flags: DIFlagPrototyped, spFlags: 0)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!1094, !45, !45}
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1147, file: !1096, line: 150)
!1147 = !DISubprogram(name: "exit", scope: !1091, file: !1091, line: 756, type: !1148, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !45}
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1151, file: !1096, line: 151)
!1151 = !DISubprogram(name: "free", scope: !1091, file: !1091, line: 687, type: !1152, flags: DIFlagPrototyped, spFlags: 0)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !865}
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1155, file: !1096, line: 152)
!1155 = !DISubprogram(name: "getenv", scope: !1091, file: !1091, line: 773, type: !1156, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!888, !818}
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1159, file: !1096, line: 153)
!1159 = !DISubprogram(name: "labs", scope: !1091, file: !1091, line: 981, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!349, !349}
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1163, file: !1096, line: 154)
!1163 = !DISubprogram(name: "ldiv", scope: !1091, file: !1091, line: 994, type: !1164, flags: DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1098, !349, !349}
!1166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1167, file: !1096, line: 155)
!1167 = !DISubprogram(name: "malloc", scope: !1091, file: !1091, line: 672, type: !1168, flags: DIFlagPrototyped, spFlags: 0)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!865, !815}
!1170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1171, file: !1096, line: 157)
!1171 = !DISubprogram(name: "mblen", scope: !1091, file: !1091, line: 1062, type: !1172, flags: DIFlagPrototyped, spFlags: 0)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!45, !818, !815}
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1175, file: !1096, line: 158)
!1175 = !DISubprogram(name: "mbstowcs", scope: !1091, file: !1091, line: 1073, type: !1176, flags: DIFlagPrototyped, spFlags: 0)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!815, !782, !817, !815}
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1179, file: !1096, line: 159)
!1179 = !DISubprogram(name: "mbtowc", scope: !1091, file: !1091, line: 1065, type: !1180, flags: DIFlagPrototyped, spFlags: 0)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!45, !782, !817, !815}
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1183, file: !1096, line: 161)
!1183 = !DISubprogram(name: "qsort", scope: !1091, file: !1091, line: 970, type: !1184, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !865, !815, !815, !1136}
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1187, file: !1096, line: 164)
!1187 = !DISubprogram(name: "quick_exit", scope: !1091, file: !1091, line: 762, type: !1148, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1189, file: !1096, line: 167)
!1189 = !DISubprogram(name: "rand", scope: !1091, file: !1091, line: 573, type: !1190, flags: DIFlagPrototyped, spFlags: 0)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!45}
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1193, file: !1096, line: 168)
!1193 = !DISubprogram(name: "realloc", scope: !1091, file: !1091, line: 683, type: !1194, flags: DIFlagPrototyped, spFlags: 0)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!865, !865, !815}
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1197, file: !1096, line: 169)
!1197 = !DISubprogram(name: "srand", scope: !1091, file: !1091, line: 575, type: !1198, flags: DIFlagPrototyped, spFlags: 0)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !54}
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1201, file: !1096, line: 170)
!1201 = !DISubprogram(name: "strtod", scope: !1091, file: !1091, line: 118, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!939, !817, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1207, file: !1096, line: 171)
!1207 = !DISubprogram(name: "strtol", linkageName: "__isoc23_strtol", scope: !1091, file: !1091, line: 215, type: !1208, flags: DIFlagPrototyped, spFlags: 0)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!349, !817, !1204, !45}
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1211, file: !1096, line: 172)
!1211 = !DISubprogram(name: "strtoul", linkageName: "__isoc23_strtoul", scope: !1091, file: !1091, line: 219, type: !1212, flags: DIFlagPrototyped, spFlags: 0)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!584, !817, !1204, !45}
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1215, file: !1096, line: 173)
!1215 = !DISubprogram(name: "system", scope: !1091, file: !1091, line: 923, type: !1124, flags: DIFlagPrototyped, spFlags: 0)
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1217, file: !1096, line: 175)
!1217 = !DISubprogram(name: "wcstombs", scope: !1091, file: !1091, line: 1077, type: !1218, flags: DIFlagPrototyped, spFlags: 0)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!815, !887, !792, !815}
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1221, file: !1096, line: 176)
!1221 = !DISubprogram(name: "wctomb", scope: !1091, file: !1091, line: 1069, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!45, !888, !781}
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1225, file: !1096, line: 204)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1091, line: 81, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1091, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !1227, identifier: "_ZTS7lldiv_t")
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1226, file: !1091, line: 79, baseType: !1011, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1226, file: !1091, line: 80, baseType: !1011, size: 64, offset: 64)
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1231, file: !1096, line: 210)
!1231 = !DISubprogram(name: "_Exit", scope: !1091, file: !1091, line: 768, type: !1148, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1233, file: !1096, line: 214)
!1233 = !DISubprogram(name: "llabs", scope: !1091, file: !1091, line: 984, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1011, !1011}
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1237, file: !1096, line: 220)
!1237 = !DISubprogram(name: "lldiv", scope: !1091, file: !1091, line: 998, type: !1238, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1225, !1011, !1011}
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1241, file: !1096, line: 231)
!1241 = !DISubprogram(name: "atoll", scope: !1091, file: !1091, line: 113, type: !1242, flags: DIFlagPrototyped, spFlags: 0)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!1011, !818}
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1245, file: !1096, line: 232)
!1245 = !DISubprogram(name: "strtoll", linkageName: "__isoc23_strtoll", scope: !1091, file: !1091, line: 238, type: !1246, flags: DIFlagPrototyped, spFlags: 0)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1011, !817, !1204, !45}
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1249, file: !1096, line: 233)
!1249 = !DISubprogram(name: "strtoull", linkageName: "__isoc23_strtoull", scope: !1091, file: !1091, line: 243, type: !1250, flags: DIFlagPrototyped, spFlags: 0)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1016, !817, !1204, !45}
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1253, file: !1096, line: 235)
!1253 = !DISubprogram(name: "strtof", scope: !1091, file: !1091, line: 124, type: !1254, flags: DIFlagPrototyped, spFlags: 0)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!946, !817, !1204}
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1257, file: !1096, line: 236)
!1257 = !DISubprogram(name: "strtold", scope: !1091, file: !1091, line: 127, type: !1258, flags: DIFlagPrototyped, spFlags: 0)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1006, !817, !1204}
!1260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1225, file: !1096, line: 244)
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1231, file: !1096, line: 246)
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1233, file: !1096, line: 248)
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1264, file: !1096, line: 249)
!1264 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !1002, file: !1096, line: 217, type: !1238, flags: DIFlagPrototyped, spFlags: 0)
!1265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1237, file: !1096, line: 250)
!1266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1241, file: !1096, line: 252)
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1253, file: !1096, line: 253)
!1268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1245, file: !1096, line: 254)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1249, file: !1096, line: 255)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1257, file: !1096, line: 256)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1272, file: !1274, line: 98)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1273, line: 7, baseType: !775)
!1273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1274 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1276, file: !1274, line: 99)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1277, line: 85, baseType: !1278)
!1277 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1279, line: 14, baseType: !1280)
!1279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1279, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1282, file: !1274, line: 101)
!1282 = !DISubprogram(name: "clearerr", scope: !1277, file: !1277, line: 860, type: !1283, flags: DIFlagPrototyped, spFlags: 0)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1285}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1287, file: !1274, line: 102)
!1287 = !DISubprogram(name: "fclose", scope: !1277, file: !1277, line: 184, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!45, !1285}
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1291, file: !1274, line: 103)
!1291 = !DISubprogram(name: "feof", scope: !1277, file: !1277, line: 862, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1293, file: !1274, line: 104)
!1293 = !DISubprogram(name: "ferror", scope: !1277, file: !1277, line: 864, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1295, file: !1274, line: 105)
!1295 = !DISubprogram(name: "fflush", scope: !1277, file: !1277, line: 236, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1297, file: !1274, line: 106)
!1297 = !DISubprogram(name: "fgetc", scope: !1277, file: !1277, line: 575, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1299, file: !1274, line: 107)
!1299 = !DISubprogram(name: "fgetpos", scope: !1277, file: !1277, line: 829, type: !1300, flags: DIFlagPrototyped, spFlags: 0)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!45, !1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1285)
!1303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1306, file: !1274, line: 108)
!1306 = !DISubprogram(name: "fgets", scope: !1277, file: !1277, line: 654, type: !1307, flags: DIFlagPrototyped, spFlags: 0)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!888, !887, !45, !1302}
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1310, file: !1274, line: 109)
!1310 = !DISubprogram(name: "fopen", scope: !1277, file: !1277, line: 264, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!1285, !817, !817}
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1314, file: !1274, line: 110)
!1314 = !DISubprogram(name: "fprintf", scope: !1277, file: !1277, line: 357, type: !1315, flags: DIFlagPrototyped, spFlags: 0)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!45, !1302, !817, null}
!1317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1318, file: !1274, line: 111)
!1318 = !DISubprogram(name: "fputc", scope: !1277, file: !1277, line: 611, type: !1319, flags: DIFlagPrototyped, spFlags: 0)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!45, !45, !1285}
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1322, file: !1274, line: 112)
!1322 = !DISubprogram(name: "fputs", scope: !1277, file: !1277, line: 717, type: !1323, flags: DIFlagPrototyped, spFlags: 0)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!45, !817, !1302}
!1325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1326, file: !1274, line: 113)
!1326 = !DISubprogram(name: "fread", scope: !1277, file: !1277, line: 738, type: !1327, flags: DIFlagPrototyped, spFlags: 0)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!815, !1329, !815, !815, !1302}
!1329 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !865)
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1331, file: !1274, line: 114)
!1331 = !DISubprogram(name: "freopen", scope: !1277, file: !1277, line: 271, type: !1332, flags: DIFlagPrototyped, spFlags: 0)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!1285, !817, !817, !1302}
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1335, file: !1274, line: 115)
!1335 = !DISubprogram(name: "fscanf", linkageName: "__isoc23_fscanf", scope: !1277, file: !1277, line: 442, type: !1315, flags: DIFlagPrototyped, spFlags: 0)
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1337, file: !1274, line: 116)
!1337 = !DISubprogram(name: "fseek", scope: !1277, file: !1277, line: 779, type: !1338, flags: DIFlagPrototyped, spFlags: 0)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!45, !1285, !349, !45}
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1341, file: !1274, line: 117)
!1341 = !DISubprogram(name: "fsetpos", scope: !1277, file: !1277, line: 835, type: !1342, flags: DIFlagPrototyped, spFlags: 0)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!45, !1285, !1344}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1347, file: !1274, line: 118)
!1347 = !DISubprogram(name: "ftell", scope: !1277, file: !1277, line: 785, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!349, !1285}
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1351, file: !1274, line: 119)
!1351 = !DISubprogram(name: "fwrite", scope: !1277, file: !1277, line: 745, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!815, !1354, !815, !815, !1302}
!1354 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1134)
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1356, file: !1274, line: 120)
!1356 = !DISubprogram(name: "getc", scope: !1277, file: !1277, line: 576, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1358, file: !1274, line: 121)
!1358 = !DISubprogram(name: "getchar", scope: !1277, file: !1277, line: 582, type: !1190, flags: DIFlagPrototyped, spFlags: 0)
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1360, file: !1274, line: 126)
!1360 = !DISubprogram(name: "perror", scope: !1277, file: !1277, line: 878, type: !1361, flags: DIFlagPrototyped, spFlags: 0)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !818}
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1364, file: !1274, line: 127)
!1364 = !DISubprogram(name: "printf", scope: !1277, file: !1277, line: 363, type: !1365, flags: DIFlagPrototyped, spFlags: 0)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!45, !817, null}
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1368, file: !1274, line: 128)
!1368 = !DISubprogram(name: "putc", scope: !1277, file: !1277, line: 612, type: !1319, flags: DIFlagPrototyped, spFlags: 0)
!1369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1370, file: !1274, line: 129)
!1370 = !DISubprogram(name: "putchar", scope: !1277, file: !1277, line: 618, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1372, file: !1274, line: 130)
!1372 = !DISubprogram(name: "puts", scope: !1277, file: !1277, line: 724, type: !1124, flags: DIFlagPrototyped, spFlags: 0)
!1373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1374, file: !1274, line: 131)
!1374 = !DISubprogram(name: "remove", scope: !1277, file: !1277, line: 158, type: !1124, flags: DIFlagPrototyped, spFlags: 0)
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1376, file: !1274, line: 132)
!1376 = !DISubprogram(name: "rename", scope: !1277, file: !1277, line: 160, type: !1377, flags: DIFlagPrototyped, spFlags: 0)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!45, !818, !818}
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1380, file: !1274, line: 133)
!1380 = !DISubprogram(name: "rewind", scope: !1277, file: !1277, line: 790, type: !1283, flags: DIFlagPrototyped, spFlags: 0)
!1381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1382, file: !1274, line: 134)
!1382 = !DISubprogram(name: "scanf", linkageName: "__isoc23_scanf", scope: !1277, file: !1277, line: 445, type: !1365, flags: DIFlagPrototyped, spFlags: 0)
!1383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1384, file: !1274, line: 135)
!1384 = !DISubprogram(name: "setbuf", scope: !1277, file: !1277, line: 334, type: !1385, flags: DIFlagPrototyped, spFlags: 0)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !1302, !887}
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1388, file: !1274, line: 136)
!1388 = !DISubprogram(name: "setvbuf", scope: !1277, file: !1277, line: 339, type: !1389, flags: DIFlagPrototyped, spFlags: 0)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!45, !1302, !887, !45, !815}
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1392, file: !1274, line: 137)
!1392 = !DISubprogram(name: "sprintf", scope: !1277, file: !1277, line: 365, type: !1393, flags: DIFlagPrototyped, spFlags: 0)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!45, !887, !817, null}
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1396, file: !1274, line: 138)
!1396 = !DISubprogram(name: "sscanf", linkageName: "__isoc23_sscanf", scope: !1277, file: !1277, line: 447, type: !1397, flags: DIFlagPrototyped, spFlags: 0)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!45, !817, !817, null}
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1400, file: !1274, line: 139)
!1400 = !DISubprogram(name: "tmpfile", scope: !1277, file: !1277, line: 194, type: !1401, flags: DIFlagPrototyped, spFlags: 0)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1285}
!1403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1404, file: !1274, line: 141)
!1404 = !DISubprogram(name: "tmpnam", scope: !1277, file: !1277, line: 211, type: !1405, flags: DIFlagPrototyped, spFlags: 0)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!888, !888}
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1408, file: !1274, line: 143)
!1408 = !DISubprogram(name: "ungetc", scope: !1277, file: !1277, line: 731, type: !1319, flags: DIFlagPrototyped, spFlags: 0)
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1410, file: !1274, line: 144)
!1410 = !DISubprogram(name: "vfprintf", scope: !1277, file: !1277, line: 372, type: !1411, flags: DIFlagPrototyped, spFlags: 0)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!45, !1302, !817, !859}
!1413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1414, file: !1274, line: 145)
!1414 = !DISubprogram(name: "vprintf", scope: !1277, file: !1277, line: 378, type: !1415, flags: DIFlagPrototyped, spFlags: 0)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!45, !817, !859}
!1417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1418, file: !1274, line: 146)
!1418 = !DISubprogram(name: "vsprintf", scope: !1277, file: !1277, line: 380, type: !1419, flags: DIFlagPrototyped, spFlags: 0)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!45, !887, !817, !859}
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1422, file: !1274, line: 175)
!1422 = !DISubprogram(name: "snprintf", scope: !1277, file: !1277, line: 385, type: !1423, flags: DIFlagPrototyped, spFlags: 0)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!45, !887, !815, !817, null}
!1425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1426, file: !1274, line: 176)
!1426 = !DISubprogram(name: "vfscanf", linkageName: "__isoc23_vfscanf", scope: !1277, file: !1277, line: 511, type: !1411, flags: DIFlagPrototyped, spFlags: 0)
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1428, file: !1274, line: 177)
!1428 = !DISubprogram(name: "vscanf", linkageName: "__isoc23_vscanf", scope: !1277, file: !1277, line: 516, type: !1415, flags: DIFlagPrototyped, spFlags: 0)
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1430, file: !1274, line: 178)
!1430 = !DISubprogram(name: "vsnprintf", scope: !1277, file: !1277, line: 389, type: !1431, flags: DIFlagPrototyped, spFlags: 0)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!45, !887, !815, !817, !859}
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1002, entity: !1434, file: !1274, line: 179)
!1434 = !DISubprogram(name: "vsscanf", linkageName: "__isoc23_vsscanf", scope: !1277, file: !1277, line: 519, type: !1435, flags: DIFlagPrototyped, spFlags: 0)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!45, !817, !817, !859}
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1422, file: !1274, line: 185)
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1426, file: !1274, line: 186)
!1439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1428, file: !1274, line: 187)
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1430, file: !1274, line: 188)
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1434, file: !1274, line: 189)
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1443, file: !1449, line: 58)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !1444, line: 24, baseType: !1445)
!1444 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_max_align_t.h", directory: "", checksumkind: CSK_MD5, checksum: "3c0a2f19d136d39aa835c737c7105def")
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1444, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !1446, identifier: "_ZTS11max_align_t")
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !1445, file: !1444, line: 20, baseType: !1011, size: 64, align: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !1445, file: !1444, line: 22, baseType: !1006, size: 128, align: 128, offset: 128)
!1449 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1451, file: !1457, line: 82)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1452, line: 48, baseType: !1453)
!1452 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "eff95da6508e8f67a3c7b77d9d8ab229")
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1456, line: 41, baseType: !45)
!1456 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!1457 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1459, file: !1457, line: 83)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1460, line: 38, baseType: !584)
!1460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "7f19501745f9a1fbbace8f0f185de59a")
!1461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !761, file: !1457, line: 84)
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1463, file: !1457, line: 86)
!1463 = !DISubprogram(name: "iswalnum", scope: !1460, file: !1460, line: 95, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1465, file: !1457, line: 87)
!1465 = !DISubprogram(name: "iswalpha", scope: !1460, file: !1460, line: 101, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1467, file: !1457, line: 89)
!1467 = !DISubprogram(name: "iswblank", scope: !1460, file: !1460, line: 146, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1469, file: !1457, line: 91)
!1469 = !DISubprogram(name: "iswcntrl", scope: !1460, file: !1460, line: 104, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1471, file: !1457, line: 92)
!1471 = !DISubprogram(name: "iswctype", scope: !1460, file: !1460, line: 159, type: !1472, flags: DIFlagPrototyped, spFlags: 0)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!45, !761, !1459}
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1475, file: !1457, line: 93)
!1475 = !DISubprogram(name: "iswdigit", scope: !1460, file: !1460, line: 108, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1477, file: !1457, line: 94)
!1477 = !DISubprogram(name: "iswgraph", scope: !1460, file: !1460, line: 112, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1479, file: !1457, line: 95)
!1479 = !DISubprogram(name: "iswlower", scope: !1460, file: !1460, line: 117, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1481, file: !1457, line: 96)
!1481 = !DISubprogram(name: "iswprint", scope: !1460, file: !1460, line: 120, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1483, file: !1457, line: 97)
!1483 = !DISubprogram(name: "iswpunct", scope: !1460, file: !1460, line: 125, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1485, file: !1457, line: 98)
!1485 = !DISubprogram(name: "iswspace", scope: !1460, file: !1460, line: 130, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1487, file: !1457, line: 99)
!1487 = !DISubprogram(name: "iswupper", scope: !1460, file: !1460, line: 135, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1489, file: !1457, line: 100)
!1489 = !DISubprogram(name: "iswxdigit", scope: !1460, file: !1460, line: 140, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1491, file: !1457, line: 101)
!1491 = !DISubprogram(name: "towctrans", scope: !1452, file: !1452, line: 55, type: !1492, flags: DIFlagPrototyped, spFlags: 0)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!761, !761, !1451}
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1495, file: !1457, line: 102)
!1495 = !DISubprogram(name: "towlower", scope: !1460, file: !1460, line: 166, type: !1496, flags: DIFlagPrototyped, spFlags: 0)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!761, !761}
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1499, file: !1457, line: 103)
!1499 = !DISubprogram(name: "towupper", scope: !1460, file: !1460, line: 169, type: !1496, flags: DIFlagPrototyped, spFlags: 0)
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1501, file: !1457, line: 104)
!1501 = !DISubprogram(name: "wctrans", scope: !1452, file: !1452, line: 52, type: !1502, flags: DIFlagPrototyped, spFlags: 0)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1451, !818}
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1505, file: !1457, line: 105)
!1505 = !DISubprogram(name: "wctype", scope: !1460, file: !1460, line: 155, type: !1506, flags: DIFlagPrototyped, spFlags: 0)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1459, !818}
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1509, file: !1513, line: 51)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1510, line: 24, baseType: !1511)
!1510 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "649b383a60bfa3eb90e85840b2b0be20")
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1456, line: 37, baseType: !1512)
!1512 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1513 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdint", directory: "")
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1515, file: !1513, line: 52)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1510, line: 25, baseType: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1456, line: 39, baseType: !1517)
!1517 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1519, file: !1513, line: 53)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1510, line: 26, baseType: !1455)
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1521, file: !1513, line: 54)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1510, line: 27, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1456, line: 44, baseType: !349)
!1523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1524, file: !1513, line: 56)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1525, line: 47, baseType: !1512)
!1525 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "bfb03fa9c46a839e35c32b929fbdbb8e")
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1527, file: !1513, line: 57)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1525, line: 49, baseType: !349)
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1529, file: !1513, line: 58)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1525, line: 50, baseType: !349)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1531, file: !1513, line: 59)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1525, line: 51, baseType: !349)
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1533, file: !1513, line: 61)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1534, line: 25, baseType: !1535)
!1534 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-least.h", directory: "", checksumkind: CSK_MD5, checksum: "a866be81c480920b0293bd5f6336a0a3")
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1456, line: 52, baseType: !1511)
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1537, file: !1513, line: 62)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1534, line: 26, baseType: !1538)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1456, line: 54, baseType: !1516)
!1539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1540, file: !1513, line: 63)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1534, line: 27, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1456, line: 56, baseType: !1455)
!1542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1543, file: !1513, line: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1534, line: 28, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1456, line: 58, baseType: !1522)
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1546, file: !1513, line: 66)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1525, line: 90, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1456, line: 72, baseType: !349)
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1549, file: !1513, line: 67)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1525, line: 76, baseType: !349)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1551, file: !1513, line: 69)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1552, line: 24, baseType: !1553)
!1552 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1456, line: 38, baseType: !1554)
!1554 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1556, file: !1513, line: 70)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1552, line: 25, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1456, line: 40, baseType: !1558)
!1558 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1560, file: !1513, line: 71)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1552, line: 26, baseType: !1561)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1456, line: 42, baseType: !54)
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1563, file: !1513, line: 72)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1552, line: 27, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1456, line: 45, baseType: !584)
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1566, file: !1513, line: 74)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1525, line: 60, baseType: !1554)
!1567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1568, file: !1513, line: 75)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1525, line: 62, baseType: !584)
!1569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1570, file: !1513, line: 76)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1525, line: 63, baseType: !584)
!1571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1572, file: !1513, line: 77)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1525, line: 64, baseType: !584)
!1573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1574, file: !1513, line: 79)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1534, line: 31, baseType: !1575)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1456, line: 53, baseType: !1553)
!1576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1577, file: !1513, line: 80)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1534, line: 32, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1456, line: 55, baseType: !1557)
!1579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1580, file: !1513, line: 81)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1534, line: 33, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1456, line: 57, baseType: !1561)
!1582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1583, file: !1513, line: 82)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1534, line: 34, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1456, line: 59, baseType: !1564)
!1585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1586, file: !1513, line: 84)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1525, line: 91, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1456, line: 73, baseType: !584)
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !1589, file: !1513, line: 85)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1525, line: 79, baseType: !584)
!1590 = !{i32 7, !"Dwarf Version", i32 5}
!1591 = !{i32 2, !"Debug Info Version", i32 3}
!1592 = !{i32 1, !"wchar_size", i32 4}
!1593 = !{i32 8, !"PIC Level", i32 2}
!1594 = !{i32 7, !"PIE Level", i32 2}
!1595 = !{i32 7, !"uwtable", i32 2}
!1596 = !{i32 7, !"frame-pointer", i32 2}
!1597 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!1598 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 9, type: !1190, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !326)
!1599 = !DILocalVariable(name: "dq", scope: !1598, file: !2, line: 10, type: !62)
!1600 = !DILocation(line: 10, column: 32, scope: !1598)
!1601 = !DILocalVariable(name: "a", scope: !1598, file: !2, line: 12, type: !341)
!1602 = !DILocation(line: 12, column: 7, scope: !1598)
!1603 = !DILocalVariable(name: "b", scope: !1598, file: !2, line: 13, type: !341)
!1604 = !DILocation(line: 13, column: 7, scope: !1598)
!1605 = !DILocalVariable(name: "was_empty_1", scope: !1598, file: !2, line: 15, type: !144)
!1606 = !DILocation(line: 15, column: 8, scope: !1598)
!1607 = !DILocation(line: 15, column: 25, scope: !1598)
!1608 = !DILocalVariable(name: "was_empty_2", scope: !1598, file: !2, line: 16, type: !144)
!1609 = !DILocation(line: 16, column: 8, scope: !1598)
!1610 = !DILocation(line: 16, column: 25, scope: !1598)
!1611 = !DILocation(line: 18, column: 13, scope: !1598)
!1612 = !DILocation(line: 18, column: 49, scope: !1598)
!1613 = !DILocation(line: 18, column: 46, scope: !1598)
!1614 = !DILocation(line: 18, column: 61, scope: !1598)
!1615 = !DILocation(line: 19, column: 13, scope: !1598)
!1616 = !DILocation(line: 19, column: 49, scope: !1598)
!1617 = !DILocation(line: 19, column: 46, scope: !1598)
!1618 = !DILocation(line: 19, column: 61, scope: !1598)
!1619 = !DILocalVariable(name: "r1", scope: !1598, file: !2, line: 21, type: !676)
!1620 = !DILocation(line: 21, column: 8, scope: !1598)
!1621 = !DILocation(line: 21, column: 16, scope: !1598)
!1622 = !DILocalVariable(name: "r2", scope: !1598, file: !2, line: 22, type: !676)
!1623 = !DILocation(line: 22, column: 8, scope: !1598)
!1624 = !DILocation(line: 22, column: 16, scope: !1598)
!1625 = !DILocation(line: 24, column: 10, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 24, column: 7)
!1627 = !DILocation(line: 24, column: 16, scope: !1626)
!1628 = !DILocation(line: 24, column: 7, scope: !1598)
!1629 = !DILocation(line: 25, column: 15, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 24, column: 28)
!1631 = !DILocation(line: 25, column: 47, scope: !1630)
!1632 = !DILocation(line: 25, column: 54, scope: !1630)
!1633 = !DILocation(line: 25, column: 41, scope: !1630)
!1634 = !DILocation(line: 26, column: 15, scope: !1630)
!1635 = !DILocation(line: 26, column: 37, scope: !1630)
!1636 = !DILocation(line: 26, column: 31, scope: !1630)
!1637 = !DILocation(line: 26, column: 44, scope: !1630)
!1638 = !DILocation(line: 27, column: 3, scope: !1630)
!1639 = !DILocation(line: 28, column: 15, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 27, column: 10)
!1641 = !DILocation(line: 29, column: 15, scope: !1640)
!1642 = !DILocation(line: 29, column: 37, scope: !1640)
!1643 = !DILocation(line: 29, column: 31, scope: !1640)
!1644 = !DILocation(line: 29, column: 44, scope: !1640)
!1645 = !DILocation(line: 32, column: 10, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 32, column: 7)
!1647 = !DILocation(line: 32, column: 16, scope: !1646)
!1648 = !DILocation(line: 32, column: 7, scope: !1598)
!1649 = !DILocation(line: 33, column: 15, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 32, column: 28)
!1651 = !DILocation(line: 33, column: 47, scope: !1650)
!1652 = !DILocation(line: 33, column: 54, scope: !1650)
!1653 = !DILocation(line: 33, column: 41, scope: !1650)
!1654 = !DILocation(line: 34, column: 15, scope: !1650)
!1655 = !DILocation(line: 34, column: 37, scope: !1650)
!1656 = !DILocation(line: 34, column: 31, scope: !1650)
!1657 = !DILocation(line: 34, column: 44, scope: !1650)
!1658 = !DILocation(line: 35, column: 3, scope: !1650)
!1659 = !DILocation(line: 36, column: 15, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 35, column: 10)
!1661 = !DILocation(line: 37, column: 15, scope: !1660)
!1662 = !DILocation(line: 37, column: 37, scope: !1660)
!1663 = !DILocation(line: 37, column: 31, scope: !1660)
!1664 = !DILocation(line: 37, column: 44, scope: !1660)
!1665 = !DILocation(line: 40, column: 3, scope: !1598)
!1666 = distinct !DISubprogram(name: "Deque", linkageName: "_ZN6parlay8internal5DequeI3JobEC2Ev", scope: !62, file: !36, line: 46, type: !667, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !666, retainedNodes: !326)
!1667 = !DILocalVariable(name: "this", arg: 1, scope: !1666, type: !1668, flags: DIFlagArtificial | DIFlagObjectPointer)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1669 = !DILocation(line: 0, scope: !1666)
!1670 = !DILocation(line: 46, column: 13, scope: !1666)
!1671 = !DILocation(line: 46, column: 21, scope: !1666)
!1672 = !DILocation(line: 46, column: 30, scope: !1666)
!1673 = !DILocation(line: 46, column: 3, scope: !1666)
!1674 = !DILocation(line: 46, column: 39, scope: !1666)
!1675 = distinct !DISubprogram(name: "push_bottom", linkageName: "_ZN6parlay8internal5DequeI3JobE11push_bottomEPS2_", scope: !62, file: !36, line: 53, type: !671, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !670, retainedNodes: !326)
!1676 = !DILocalVariable(name: "this", arg: 1, scope: !1675, type: !1668, flags: DIFlagArtificial | DIFlagObjectPointer)
!1677 = !DILocation(line: 0, scope: !1675)
!1678 = !DILocalVariable(name: "job", arg: 2, scope: !1675, file: !36, line: 53, type: !340)
!1679 = !DILocation(line: 53, column: 25, scope: !1675)
!1680 = !DILocalVariable(name: "local_bot", scope: !1675, file: !36, line: 54, type: !77)
!1681 = !DILocation(line: 54, column: 10, scope: !1675)
!1682 = !DILocation(line: 54, column: 22, scope: !1675)
!1683 = !DILocalVariable(name: "this", arg: 1, scope: !1684, type: !1685, flags: DIFlagArtificial | DIFlagObjectPointer)
!1684 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseIjE4loadESt12memory_order", scope: !73, file: !43, line: 498, type: !155, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !154, retainedNodes: !326)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1686 = !DILocation(line: 0, scope: !1684, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 54, column: 26, scope: !1675)
!1688 = !DILocalVariable(name: "__m", arg: 2, scope: !1684, file: !43, line: 498, type: !42)
!1689 = !DILocation(line: 498, column: 25, scope: !1684, inlinedAt: !1687)
!1690 = !DILocalVariable(name: "__b", scope: !1684, file: !43, line: 500, type: !42)
!1691 = !DILocation(line: 500, column: 15, scope: !1684, inlinedAt: !1687)
!1692 = !DILocation(line: 501, column: 6, scope: !1684, inlinedAt: !1687)
!1693 = !DILocation(line: 501, column: 10, scope: !1684, inlinedAt: !1687)
!1694 = !DILocation(line: 505, column: 36, scope: !1684, inlinedAt: !1687)
!1695 = !DILocation(line: 505, column: 9, scope: !1684, inlinedAt: !1687)
!1696 = !DILocation(line: 55, column: 5, scope: !1675)
!1697 = !DILocation(line: 55, column: 9, scope: !1675)
!1698 = !DILocation(line: 55, column: 20, scope: !1675)
!1699 = !DILocation(line: 55, column: 30, scope: !1675)
!1700 = !DILocation(line: 55, column: 24, scope: !1675)
!1701 = !DILocation(line: 56, column: 15, scope: !1675)
!1702 = !DILocation(line: 57, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1675, file: !36, line: 57, column: 9)
!1704 = !DILocation(line: 57, column: 19, scope: !1703)
!1705 = !DILocation(line: 57, column: 9, scope: !1675)
!1706 = !DILocation(line: 58, column: 17, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !36, line: 57, column: 30)
!1708 = !DILocation(line: 59, column: 7, scope: !1707)
!1709 = !DILocation(line: 61, column: 5, scope: !1675)
!1710 = !DILocation(line: 61, column: 15, scope: !1675)
!1711 = !DILocalVariable(name: "this", arg: 1, scope: !1712, type: !1713, flags: DIFlagArtificial | DIFlagObjectPointer)
!1712 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseIjE5storeEjSt12memory_order", scope: !73, file: !43, line: 473, type: !149, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !148, retainedNodes: !326)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1714 = !DILocation(line: 0, scope: !1712, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 61, column: 9, scope: !1675)
!1716 = !DILocalVariable(name: "__i", arg: 2, scope: !1712, file: !43, line: 473, type: !77)
!1717 = !DILocation(line: 473, column: 24, scope: !1712, inlinedAt: !1715)
!1718 = !DILocalVariable(name: "__m", arg: 3, scope: !1712, file: !43, line: 473, type: !42)
!1719 = !DILocation(line: 473, column: 42, scope: !1712, inlinedAt: !1715)
!1720 = !DILocalVariable(name: "__b", scope: !1712, file: !43, line: 475, type: !42)
!1721 = !DILocation(line: 475, column: 15, scope: !1712, inlinedAt: !1715)
!1722 = !DILocation(line: 476, column: 6, scope: !1712, inlinedAt: !1715)
!1723 = !DILocation(line: 476, column: 10, scope: !1712, inlinedAt: !1715)
!1724 = !DILocation(line: 481, column: 35, scope: !1712, inlinedAt: !1715)
!1725 = !DILocation(line: 481, column: 26, scope: !1712, inlinedAt: !1715)
!1726 = !DILocation(line: 481, column: 2, scope: !1712, inlinedAt: !1715)
!1727 = !DILocation(line: 62, column: 13, scope: !1675)
!1728 = !DILocation(line: 62, column: 23, scope: !1675)
!1729 = !DILocation(line: 62, column: 5, scope: !1675)
!1730 = distinct !DISubprogram(name: "pop_top", linkageName: "_ZN6parlay8internal5DequeI3JobE7pop_topEv", scope: !62, file: !36, line: 70, type: !674, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !673, retainedNodes: !326)
!1731 = !DILocalVariable(name: "this", arg: 1, scope: !1730, type: !1668, flags: DIFlagArtificial | DIFlagObjectPointer)
!1732 = !DILocation(line: 0, scope: !1730)
!1733 = !DILocalVariable(name: "old_age", scope: !1730, file: !36, line: 71, type: !61)
!1734 = !DILocation(line: 71, column: 10, scope: !1730)
!1735 = !DILocation(line: 71, column: 20, scope: !1730)
!1736 = !DILocation(line: 71, column: 24, scope: !1730)
!1737 = !DILocalVariable(name: "local_bot", scope: !1730, file: !36, line: 72, type: !77)
!1738 = !DILocation(line: 72, column: 10, scope: !1730)
!1739 = !DILocation(line: 72, column: 22, scope: !1730)
!1740 = !DILocation(line: 0, scope: !1684, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 72, column: 26, scope: !1730)
!1742 = !DILocation(line: 498, column: 25, scope: !1684, inlinedAt: !1741)
!1743 = !DILocation(line: 500, column: 15, scope: !1684, inlinedAt: !1741)
!1744 = !DILocation(line: 501, column: 6, scope: !1684, inlinedAt: !1741)
!1745 = !DILocation(line: 501, column: 10, scope: !1684, inlinedAt: !1741)
!1746 = !DILocation(line: 505, column: 36, scope: !1684, inlinedAt: !1741)
!1747 = !DILocation(line: 505, column: 9, scope: !1684, inlinedAt: !1741)
!1748 = !DILocation(line: 73, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1730, file: !36, line: 73, column: 9)
!1750 = !DILocation(line: 73, column: 29, scope: !1749)
!1751 = !DILocation(line: 73, column: 19, scope: !1749)
!1752 = !DILocation(line: 73, column: 9, scope: !1730)
!1753 = !DILocalVariable(name: "job", scope: !1754, file: !36, line: 74, type: !487)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !36, line: 73, column: 34)
!1755 = !DILocation(line: 74, column: 12, scope: !1754)
!1756 = !DILocation(line: 74, column: 18, scope: !1754)
!1757 = !DILocation(line: 74, column: 30, scope: !1754)
!1758 = !DILocation(line: 74, column: 22, scope: !1754)
!1759 = !DILocation(line: 74, column: 35, scope: !1754)
!1760 = !DILocation(line: 74, column: 39, scope: !1754)
!1761 = !DILocalVariable(name: "new_age", scope: !1754, file: !36, line: 75, type: !61)
!1762 = !DILocation(line: 75, column: 12, scope: !1754)
!1763 = !DILocation(line: 75, column: 22, scope: !1754)
!1764 = !DILocation(line: 76, column: 29, scope: !1754)
!1765 = !DILocation(line: 76, column: 33, scope: !1754)
!1766 = !DILocation(line: 76, column: 15, scope: !1754)
!1767 = !DILocation(line: 76, column: 19, scope: !1754)
!1768 = !DILocation(line: 77, column: 11, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1754, file: !36, line: 77, column: 11)
!1770 = !DILocation(line: 77, column: 48, scope: !1769)
!1771 = !DILocation(line: 77, column: 15, scope: !1769)
!1772 = !DILocation(line: 77, column: 11, scope: !1754)
!1773 = !DILocation(line: 78, column: 23, scope: !1769)
!1774 = !DILocation(line: 78, column: 44, scope: !1769)
!1775 = !DILocation(line: 78, column: 48, scope: !1769)
!1776 = !DILocation(line: 78, column: 33, scope: !1769)
!1777 = !DILocation(line: 78, column: 22, scope: !1769)
!1778 = !DILocation(line: 78, column: 16, scope: !1769)
!1779 = !DILocation(line: 78, column: 9, scope: !1769)
!1780 = !DILocation(line: 80, column: 17, scope: !1769)
!1781 = !DILocation(line: 80, column: 27, scope: !1769)
!1782 = !DILocation(line: 80, column: 48, scope: !1769)
!1783 = !DILocation(line: 80, column: 52, scope: !1769)
!1784 = !DILocation(line: 80, column: 37, scope: !1769)
!1785 = !DILocation(line: 80, column: 26, scope: !1769)
!1786 = !DILocation(line: 80, column: 16, scope: !1769)
!1787 = !DILocation(line: 80, column: 9, scope: !1769)
!1788 = !DILocation(line: 82, column: 13, scope: !1730)
!1789 = !DILocation(line: 82, column: 22, scope: !1730)
!1790 = !DILocation(line: 82, column: 12, scope: !1730)
!1791 = !DILocation(line: 82, column: 5, scope: !1730)
!1792 = !DILocation(line: 83, column: 3, scope: !1730)
!1793 = distinct !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicIjEC2Ej", scope: !69, file: !70, line: 856, type: !222, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !221, retainedNodes: !326)
!1794 = !DILocalVariable(name: "this", arg: 1, scope: !1793, type: !1795, flags: DIFlagArtificial | DIFlagObjectPointer)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1796 = !DILocation(line: 0, scope: !1793)
!1797 = !DILocalVariable(name: "__i", arg: 2, scope: !1793, file: !70, line: 856, type: !224)
!1798 = !DILocation(line: 856, column: 40, scope: !1793)
!1799 = !DILocation(line: 856, column: 68, scope: !1793)
!1800 = !DILocation(line: 856, column: 56, scope: !1793)
!1801 = !DILocation(line: 856, column: 75, scope: !1793)
!1802 = distinct !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEEC2ES5_", scope: !228, file: !70, line: 233, type: !254, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !253, retainedNodes: !326)
!1803 = !DILocalVariable(name: "this", arg: 1, scope: !1802, type: !1804, flags: DIFlagArtificial | DIFlagObjectPointer)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1805 = !DILocation(line: 0, scope: !1802)
!1806 = !DILocalVariable(name: "__i", arg: 2, scope: !1802, file: !70, line: 233, type: !61)
!1807 = !DILocation(line: 233, column: 28, scope: !1802)
!1808 = !DILocation(line: 233, column: 44, scope: !1802)
!1809 = !DILocation(line: 239, column: 7, scope: !1802)
!1810 = distinct !DISubprogram(name: "array", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEC2Ev", scope: !320, file: !321, line: 94, type: !1811, scopeLine: 94, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !1813, retainedNodes: !326)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !591}
!1813 = !DISubprogram(name: "array", scope: !320, type: !1811, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1814 = !DILocalVariable(name: "this", arg: 1, scope: !1810, type: !1815, flags: DIFlagArtificial | DIFlagObjectPointer)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!1816 = !DILocation(line: 0, scope: !1810)
!1817 = !DILocation(line: 94, column: 12, scope: !1810)
!1818 = distinct !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseIjEC2Ej", scope: !73, file: !43, line: 362, type: !98, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !97, retainedNodes: !326)
!1819 = !DILocalVariable(name: "this", arg: 1, scope: !1818, type: !1713, flags: DIFlagArtificial | DIFlagObjectPointer)
!1820 = !DILocation(line: 0, scope: !1818)
!1821 = !DILocalVariable(name: "__i", arg: 2, scope: !1818, file: !43, line: 362, type: !77)
!1822 = !DILocation(line: 362, column: 42, scope: !1818)
!1823 = !DILocation(line: 362, column: 58, scope: !1818)
!1824 = !DILocation(line: 362, column: 64, scope: !1818)
!1825 = !DILocation(line: 362, column: 71, scope: !1818)
!1826 = distinct !DISubprogram(name: "padded_job", linkageName: "_ZN6parlay8internal5DequeI3JobE10padded_jobC2Ev", scope: !329, file: !36, line: 37, type: !1827, scopeLine: 37, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !1830, retainedNodes: !326)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1830 = !DISubprogram(name: "padded_job", scope: !329, type: !1827, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1831 = !DILocalVariable(name: "this", arg: 1, scope: !1826, type: !1832, flags: DIFlagArtificial | DIFlagObjectPointer)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1833 = !DILocation(line: 0, scope: !1826)
!1834 = !DILocation(line: 37, column: 22, scope: !1826)
!1835 = distinct !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicIP3JobEC2Ev", scope: !332, file: !70, line: 422, type: !466, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !465, retainedNodes: !326)
!1836 = !DILocalVariable(name: "this", arg: 1, scope: !1835, type: !1837, flags: DIFlagArtificial | DIFlagObjectPointer)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1838 = !DILocation(line: 0, scope: !1835)
!1839 = !DILocation(line: 422, column: 7, scope: !1835)
!1840 = !DILocation(line: 422, column: 33, scope: !1835)
!1841 = distinct !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseIP3JobEC2Ev", scope: !336, file: !43, line: 701, type: !359, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !358, retainedNodes: !326)
!1842 = !DILocalVariable(name: "this", arg: 1, scope: !1841, type: !1843, flags: DIFlagArtificial | DIFlagObjectPointer)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!1844 = !DILocation(line: 0, scope: !1841)
!1845 = !DILocation(line: 691, column: 23, scope: !1841)
!1846 = !DILocation(line: 701, column: 40, scope: !1841)
!1847 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt5arrayIN6parlay8internal5DequeI3JobE10padded_jobELm1000EEixEm", scope: !320, file: !321, line: 200, type: !640, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !639, retainedNodes: !326)
!1848 = !DILocalVariable(name: "this", arg: 1, scope: !1847, type: !1815, flags: DIFlagArtificial | DIFlagObjectPointer)
!1849 = !DILocation(line: 0, scope: !1847)
!1850 = !DILocalVariable(name: "__n", arg: 2, scope: !1847, file: !321, line: 200, type: !633)
!1851 = !DILocation(line: 200, column: 28, scope: !1847)
!1852 = !DILocation(line: 203, column: 9, scope: !1847)
!1853 = !DILocation(line: 203, column: 18, scope: !1847)
!1854 = !DILocation(line: 203, column: 2, scope: !1847)
!1855 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt6atomicIP3JobE5storeES1_St12memory_order", scope: !332, file: !70, line: 566, type: !534, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !533, retainedNodes: !326)
!1856 = !DILocalVariable(name: "this", arg: 1, scope: !1855, type: !1837, flags: DIFlagArtificial | DIFlagObjectPointer)
!1857 = !DILocation(line: 0, scope: !1855)
!1858 = !DILocalVariable(name: "__p", arg: 2, scope: !1855, file: !70, line: 566, type: !487)
!1859 = !DILocation(line: 566, column: 28, scope: !1855)
!1860 = !DILocalVariable(name: "__m", arg: 3, scope: !1855, file: !70, line: 567, type: !42)
!1861 = !DILocation(line: 567, column: 19, scope: !1855)
!1862 = !DILocation(line: 568, column: 16, scope: !1855)
!1863 = !DILocation(line: 568, column: 27, scope: !1855)
!1864 = !DILocation(line: 568, column: 32, scope: !1855)
!1865 = !DILocalVariable(name: "this", arg: 1, scope: !1866, type: !1843, flags: DIFlagArtificial | DIFlagObjectPointer)
!1866 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseIP3JobE5storeES1_St12memory_order", scope: !336, file: !43, line: 803, type: !421, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !420, retainedNodes: !326)
!1867 = !DILocation(line: 0, scope: !1866, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 568, column: 21, scope: !1855)
!1869 = !DILocalVariable(name: "__p", arg: 2, scope: !1866, file: !43, line: 803, type: !339)
!1870 = !DILocation(line: 803, column: 28, scope: !1866, inlinedAt: !1868)
!1871 = !DILocalVariable(name: "__m", arg: 3, scope: !1866, file: !43, line: 804, type: !42)
!1872 = !DILocation(line: 804, column: 19, scope: !1866, inlinedAt: !1868)
!1873 = !DILocalVariable(name: "__b", scope: !1866, file: !43, line: 806, type: !42)
!1874 = !DILocation(line: 806, column: 15, scope: !1866, inlinedAt: !1868)
!1875 = !DILocation(line: 807, column: 6, scope: !1866, inlinedAt: !1868)
!1876 = !DILocation(line: 807, column: 10, scope: !1866, inlinedAt: !1868)
!1877 = !DILocation(line: 813, column: 35, scope: !1866, inlinedAt: !1868)
!1878 = !DILocation(line: 813, column: 26, scope: !1866, inlinedAt: !1868)
!1879 = !DILocation(line: 813, column: 2, scope: !1866, inlinedAt: !1868)
!1880 = !DILocation(line: 568, column: 9, scope: !1855)
!1881 = distinct !DISubprogram(name: "operator&", linkageName: "_ZStanSt12memory_orderSt23__memory_order_modifier", scope: !44, file: !43, line: 107, type: !1882, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !326)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!42, !42, !53}
!1884 = !DILocalVariable(name: "__m", arg: 1, scope: !1881, file: !43, line: 107, type: !42)
!1885 = !DILocation(line: 107, column: 26, scope: !1881)
!1886 = !DILocalVariable(name: "__mod", arg: 2, scope: !1881, file: !43, line: 107, type: !53)
!1887 = !DILocation(line: 107, column: 55, scope: !1881)
!1888 = !DILocation(line: 109, column: 29, scope: !1881)
!1889 = !DILocation(line: 109, column: 40, scope: !1881)
!1890 = !DILocation(line: 109, column: 34, scope: !1881)
!1891 = !DILocation(line: 109, column: 5, scope: !1881)
!1892 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE4loadESt12memory_order", scope: !228, file: !70, line: 293, type: !284, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !283, retainedNodes: !326)
!1893 = !DILocalVariable(name: "this", arg: 1, scope: !1892, type: !1894, flags: DIFlagArtificial | DIFlagObjectPointer)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1895 = !DILocation(line: 0, scope: !1892)
!1896 = !DILocalVariable(name: "__m", arg: 2, scope: !1892, file: !70, line: 293, type: !42)
!1897 = !DILocation(line: 293, column: 25, scope: !1892)
!1898 = !DILocalVariable(name: "__buf", scope: !1892, file: !70, line: 295, type: !1899, align: 64)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1554, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DISubrange(count: 8)
!1902 = !DILocation(line: 295, column: 29, scope: !1892)
!1903 = !DILocalVariable(name: "__ptr", scope: !1892, file: !70, line: 296, type: !729)
!1904 = !DILocation(line: 296, column: 7, scope: !1892)
!1905 = !DILocation(line: 296, column: 38, scope: !1892)
!1906 = !DILocation(line: 297, column: 33, scope: !1892)
!1907 = !DILocation(line: 297, column: 51, scope: !1892)
!1908 = !DILocation(line: 297, column: 40, scope: !1892)
!1909 = !DILocation(line: 297, column: 2, scope: !1892)
!1910 = !DILocation(line: 298, column: 10, scope: !1892)
!1911 = !DILocation(line: 298, column: 9, scope: !1892)
!1912 = !DILocation(line: 298, column: 2, scope: !1892)
!1913 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt6atomicIP3JobE4loadESt12memory_order", scope: !332, file: !70, line: 576, type: !540, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !539, retainedNodes: !326)
!1914 = !DILocalVariable(name: "this", arg: 1, scope: !1913, type: !1915, flags: DIFlagArtificial | DIFlagObjectPointer)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!1916 = !DILocation(line: 0, scope: !1913)
!1917 = !DILocalVariable(name: "__m", arg: 2, scope: !1913, file: !70, line: 576, type: !42)
!1918 = !DILocation(line: 576, column: 25, scope: !1913)
!1919 = !DILocation(line: 577, column: 16, scope: !1913)
!1920 = !DILocation(line: 577, column: 26, scope: !1913)
!1921 = !DILocalVariable(name: "this", arg: 1, scope: !1922, type: !1923, flags: DIFlagArtificial | DIFlagObjectPointer)
!1922 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseIP3JobE4loadESt12memory_order", scope: !336, file: !43, line: 830, type: !427, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !426, retainedNodes: !326)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!1924 = !DILocation(line: 0, scope: !1922, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 577, column: 21, scope: !1913)
!1926 = !DILocalVariable(name: "__m", arg: 2, scope: !1922, file: !43, line: 830, type: !42)
!1927 = !DILocation(line: 830, column: 25, scope: !1922, inlinedAt: !1925)
!1928 = !DILocalVariable(name: "__b", scope: !1922, file: !43, line: 832, type: !42)
!1929 = !DILocation(line: 832, column: 15, scope: !1922, inlinedAt: !1925)
!1930 = !DILocation(line: 833, column: 6, scope: !1922, inlinedAt: !1925)
!1931 = !DILocation(line: 833, column: 10, scope: !1922, inlinedAt: !1925)
!1932 = !DILocation(line: 837, column: 36, scope: !1922, inlinedAt: !1925)
!1933 = !DILocation(line: 837, column: 9, scope: !1922, inlinedAt: !1925)
!1934 = !DILocation(line: 577, column: 9, scope: !1913)
!1935 = distinct !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_order", scope: !228, file: !70, line: 378, type: !303, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !310, retainedNodes: !326)
!1936 = !DILocalVariable(name: "this", arg: 1, scope: !1935, type: !1804, flags: DIFlagArtificial | DIFlagObjectPointer)
!1937 = !DILocation(line: 0, scope: !1935)
!1938 = !DILocalVariable(name: "__e", arg: 2, scope: !1935, file: !70, line: 378, type: !298)
!1939 = !DILocation(line: 378, column: 36, scope: !1935)
!1940 = !DILocalVariable(name: "__i", arg: 3, scope: !1935, file: !70, line: 378, type: !61)
!1941 = !DILocation(line: 378, column: 45, scope: !1935)
!1942 = !DILocalVariable(name: "__m", arg: 4, scope: !1935, file: !70, line: 379, type: !42)
!1943 = !DILocation(line: 379, column: 24, scope: !1935)
!1944 = !DILocation(line: 380, column: 40, scope: !1935)
!1945 = !DILocation(line: 380, column: 45, scope: !1935)
!1946 = !DILocation(line: 380, column: 50, scope: !1935)
!1947 = !DILocation(line: 381, column: 64, scope: !1935)
!1948 = !DILocation(line: 381, column: 40, scope: !1935)
!1949 = !DILocation(line: 380, column: 16, scope: !1935)
!1950 = !DILocation(line: 380, column: 9, scope: !1935)
!1951 = distinct !DISubprogram(name: "pair<Job *&, bool>", linkageName: "_ZNSt4pairIP3JobbEC2IRS1_bQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS5_S6_EEEEOT_OT0_", scope: !676, file: !677, line: 315, type: !1952, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, templateParams: !1957, declaration: !1956, retainedNodes: !326)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !689, !1954, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !340, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !144, size: 64)
!1956 = !DISubprogram(name: "pair<Job *&, bool>", scope: !676, file: !677, line: 315, type: !1952, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1957)
!1957 = !{!1958, !683}
!1958 = !DITemplateTypeParameter(name: "_U1", type: !1954)
!1959 = !DILocalVariable(name: "this", arg: 1, scope: !1951, type: !1960, flags: DIFlagArtificial | DIFlagObjectPointer)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1961 = !DILocation(line: 0, scope: !1951)
!1962 = !DILocalVariable(name: "__x", arg: 2, scope: !1951, file: !677, line: 315, type: !1954)
!1963 = !DILocation(line: 315, column: 13, scope: !1951)
!1964 = !DILocalVariable(name: "__y", arg: 3, scope: !1951, file: !677, line: 315, type: !1955)
!1965 = !DILocation(line: 315, column: 24, scope: !1951)
!1966 = !DILocation(line: 317, column: 4, scope: !1951)
!1967 = !DILocation(line: 317, column: 28, scope: !1951)
!1968 = !DILocation(line: 317, column: 10, scope: !1951)
!1969 = !DILocation(line: 317, column: 35, scope: !1951)
!1970 = !DILocation(line: 317, column: 60, scope: !1951)
!1971 = !DILocation(line: 317, column: 42, scope: !1951)
!1972 = !DILocation(line: 318, column: 4, scope: !1951)
!1973 = distinct !DISubprogram(name: "pair<std::nullptr_t, bool>", linkageName: "_ZNSt4pairIP3JobbEC2IDnbQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS4_S5_EEEEOT_OT0_", scope: !676, file: !677, line: 315, type: !1974, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, templateParams: !1979, declaration: !1978, retainedNodes: !326)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !689, !1976, !1955}
!1976 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1977, size: 64)
!1977 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!1978 = !DISubprogram(name: "pair<std::nullptr_t, bool>", scope: !676, file: !677, line: 315, type: !1974, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1979)
!1979 = !{!1980, !683}
!1980 = !DITemplateTypeParameter(name: "_U1", type: !1977)
!1981 = !DILocalVariable(name: "this", arg: 1, scope: !1973, type: !1960, flags: DIFlagArtificial | DIFlagObjectPointer)
!1982 = !DILocation(line: 0, scope: !1973)
!1983 = !DILocalVariable(name: "__x", arg: 2, scope: !1973, file: !677, line: 315, type: !1976)
!1984 = !DILocation(line: 315, column: 13, scope: !1973)
!1985 = !DILocalVariable(name: "__y", arg: 3, scope: !1973, file: !677, line: 315, type: !1955)
!1986 = !DILocation(line: 315, column: 24, scope: !1973)
!1987 = !DILocation(line: 317, column: 4, scope: !1973)
!1988 = !DILocation(line: 317, column: 28, scope: !1973)
!1989 = !DILocation(line: 317, column: 35, scope: !1973)
!1990 = !DILocation(line: 317, column: 60, scope: !1973)
!1991 = !DILocation(line: 317, column: 42, scope: !1973)
!1992 = !DILocation(line: 318, column: 4, scope: !1973)
!1993 = distinct !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt6atomicIN6parlay8internal5DequeI3JobE5age_tEE23compare_exchange_strongERS5_S5_St12memory_orderS8_", scope: !228, file: !70, line: 362, type: !296, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, declaration: !308, retainedNodes: !326)
!1994 = !DILocalVariable(name: "this", arg: 1, scope: !1993, type: !1804, flags: DIFlagArtificial | DIFlagObjectPointer)
!1995 = !DILocation(line: 0, scope: !1993)
!1996 = !DILocalVariable(name: "__e", arg: 2, scope: !1993, file: !70, line: 362, type: !298)
!1997 = !DILocation(line: 362, column: 36, scope: !1993)
!1998 = !DILocalVariable(name: "__i", arg: 3, scope: !1993, file: !70, line: 362, type: !61)
!1999 = !DILocation(line: 362, column: 45, scope: !1993)
!2000 = !DILocalVariable(name: "__s", arg: 4, scope: !1993, file: !70, line: 362, type: !42)
!2001 = !DILocation(line: 362, column: 63, scope: !1993)
!2002 = !DILocalVariable(name: "__f", arg: 5, scope: !1993, file: !70, line: 363, type: !42)
!2003 = !DILocation(line: 363, column: 23, scope: !1993)
!2004 = !DILocation(line: 365, column: 43, scope: !1993)
!2005 = !DILocation(line: 365, column: 49, scope: !1993)
!2006 = !DILocation(line: 366, column: 8, scope: !1993)
!2007 = !DILocation(line: 366, column: 13, scope: !1993)
!2008 = !DILocalVariable(name: "__val", arg: 1, scope: !2009, file: !43, line: 992, type: !298)
!2009 = distinct !DISubprogram(name: "__compare_exchange<parlay::internal::Deque<Job>::age_t>", linkageName: "_ZNSt13__atomic_impl18__compare_exchangeIN6parlay8internal5DequeI3JobE5age_tEEEbRT_RNSt15remove_volatileIS7_E4typeESC_bSt12memory_orderSD_", scope: !2010, file: !43, line: 992, type: !2011, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, templateParams: !317, retainedNodes: !326)
!2010 = !DINamespace(name: "__atomic_impl", scope: !44)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!144, !298, !2013, !2013, !144, !42, !42}
!2013 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Val<parlay::internal::Deque<Job>::age_t>", scope: !2010, file: !43, line: 988, baseType: !2015)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2017, file: !2016, line: 1533, baseType: !61)
!2016 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/type_traits", directory: "")
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_volatile<parlay::internal::Deque<Job>::age_t>", scope: !44, file: !2016, line: 1532, size: 8, flags: DIFlagTypePassByValue, elements: !326, templateParams: !317, identifier: "_ZTSSt15remove_volatileIN6parlay8internal5DequeI3JobE5age_tEE")
!2018 = !DILocation(line: 992, column: 31, scope: !2009, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 365, column: 9, scope: !1993)
!2020 = !DILocalVariable(name: "__e", arg: 2, scope: !2009, file: !43, line: 992, type: !2013)
!2021 = !DILocation(line: 992, column: 49, scope: !2009, inlinedAt: !2019)
!2022 = !DILocalVariable(name: "__i", arg: 3, scope: !2009, file: !43, line: 992, type: !2013)
!2023 = !DILocation(line: 992, column: 65, scope: !2009, inlinedAt: !2019)
!2024 = !DILocalVariable(name: "__is_weak", arg: 4, scope: !2009, file: !43, line: 993, type: !144)
!2025 = !DILocation(line: 993, column: 10, scope: !2009, inlinedAt: !2019)
!2026 = !DILocalVariable(name: "__s", arg: 5, scope: !2009, file: !43, line: 994, type: !42)
!2027 = !DILocation(line: 994, column: 18, scope: !2009, inlinedAt: !2019)
!2028 = !DILocalVariable(name: "__f", arg: 6, scope: !2009, file: !43, line: 994, type: !42)
!2029 = !DILocation(line: 994, column: 36, scope: !2009, inlinedAt: !2019)
!2030 = !DILocation(line: 1015, column: 54, scope: !2031, inlinedAt: !2019)
!2031 = distinct !DILexicalBlock(scope: !2009, file: !43, line: 1000, column: 27)
!2032 = !DILocation(line: 1018, column: 24, scope: !2031, inlinedAt: !2019)
!2033 = !DILocation(line: 1016, column: 26, scope: !2031, inlinedAt: !2019)
!2034 = !DILocation(line: 1017, column: 26, scope: !2031, inlinedAt: !2019)
!2035 = !DILocation(line: 1018, column: 34, scope: !2031, inlinedAt: !2019)
!2036 = !DILocation(line: 1018, column: 9, scope: !2031, inlinedAt: !2019)
!2037 = !DILocation(line: 1015, column: 11, scope: !2031, inlinedAt: !2019)
!2038 = !DILocation(line: 365, column: 2, scope: !1993)
!2039 = distinct !DISubprogram(name: "__cmpexch_failure_order", linkageName: "_ZSt23__cmpexch_failure_orderSt12memory_order", scope: !44, file: !43, line: 123, type: !2040, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !326)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!42, !42}
!2042 = !DILocalVariable(name: "__m", arg: 1, scope: !2039, file: !43, line: 123, type: !42)
!2043 = !DILocation(line: 123, column: 40, scope: !2039)
!2044 = !DILocation(line: 125, column: 50, scope: !2039)
!2045 = !DILocation(line: 125, column: 54, scope: !2039)
!2046 = !DILocation(line: 125, column: 25, scope: !2039)
!2047 = !DILocation(line: 126, column: 33, scope: !2039)
!2048 = !DILocation(line: 126, column: 37, scope: !2039)
!2049 = !DILocation(line: 126, column: 7, scope: !2039)
!2050 = !DILocation(line: 125, column: 5, scope: !2039)
!2051 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt12memory_orderSt23__memory_order_modifier", scope: !44, file: !43, line: 101, type: !1882, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !326)
!2052 = !DILocalVariable(name: "__m", arg: 1, scope: !2051, file: !43, line: 101, type: !42)
!2053 = !DILocation(line: 101, column: 26, scope: !2051)
!2054 = !DILocalVariable(name: "__mod", arg: 2, scope: !2051, file: !43, line: 101, type: !53)
!2055 = !DILocation(line: 101, column: 55, scope: !2051)
!2056 = !DILocation(line: 103, column: 29, scope: !2051)
!2057 = !DILocation(line: 103, column: 40, scope: !2051)
!2058 = !DILocation(line: 103, column: 34, scope: !2051)
!2059 = !DILocation(line: 103, column: 5, scope: !2051)
!2060 = distinct !DISubprogram(name: "__cmpexch_failure_order2", linkageName: "_ZSt24__cmpexch_failure_order2St12memory_order", scope: !44, file: !43, line: 116, type: !2040, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !326)
!2061 = !DILocalVariable(name: "__m", arg: 1, scope: !2060, file: !43, line: 116, type: !42)
!2062 = !DILocation(line: 116, column: 41, scope: !2060)
!2063 = !DILocation(line: 118, column: 12, scope: !2060)
!2064 = !DILocation(line: 118, column: 16, scope: !2060)
!2065 = !DILocation(line: 119, column: 9, scope: !2060)
!2066 = !DILocation(line: 119, column: 13, scope: !2060)
!2067 = !DILocation(line: 119, column: 62, scope: !2060)
!2068 = !DILocation(line: 118, column: 5, scope: !2060)
