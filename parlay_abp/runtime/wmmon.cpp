#include "wmmon.h"

#include <cstdio>
#include <thread>
#include <functional>

static const char* mo_to_str(uint32_t mo) {
    switch (mo) {
        case 0: return "relaxed_or_monotonic";
        case 1: return "acquire";
        case 2: return "release";
        case 3: return "acq_rel";
        case 4: return "seq_cst";
        default: return "unknown";
    }
}

static unsigned long long get_tid() {
    return (unsigned long long)std::hash<std::thread::id>{}(std::this_thread::get_id());
}

extern "C" void wmmon_load(
    void* addr,
    uint32_t mo,
    const char* func,
    const char* file,
    uint32_t line) {

    std::fprintf(
        stderr,
        "[WMMON] tid=%llu LOAD addr=%p mo=%s func=%s file=%s line=%u\n",
        get_tid(),
        addr,
        mo_to_str(mo),
        func ? func : "(null)",
        file ? file : "(null)",
        line);
}

extern "C" void wmmon_store(
    void* addr,
    uint32_t mo,
    const char* func,
    const char* file,
    uint32_t line) {

    std::fprintf(
        stderr,
        "[WMMON] tid=%llu STORE addr=%p mo=%s func=%s file=%s line=%u\n",
        get_tid(),
        addr,
        mo_to_str(mo),
        func ? func : "(null)",
        file ? file : "(null)",
        line);
}

extern "C" void wmmon_cmpxchg(
    void* addr,
    uint32_t succ_mo,
    uint32_t fail_mo,
    uint32_t is_weak,
    const char* func,
    const char* file,
    uint32_t line) {

    std::fprintf(
        stderr,
        "[WMMON] tid=%llu CMPXCHG addr=%p succ=%s fail=%s weak=%u func=%s file=%s line=%u\n",
        get_tid(),
        addr,
        mo_to_str(succ_mo),
        mo_to_str(fail_mo),
        is_weak,
        func ? func : "(null)",
        file ? file : "(null)",
        line);
}