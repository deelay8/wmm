#ifndef WMMON_H
#define WMMON_H

#include <cstdint>

#ifdef __cplusplus
extern "C" {
#endif

void wmmon_load(
    void* addr,
    uint32_t mo,
    const char* func,
    const char* file,
    uint32_t line);

void wmmon_store(
    void* addr,
    uint32_t mo,
    const char* func,
    const char* file,
    uint32_t line);

void wmmon_cmpxchg(
    void* addr,
    uint32_t succ_mo,
    uint32_t fail_mo,
    uint32_t is_weak,
    const char* func,
    const char* file,
    uint32_t line);

#ifdef __cplusplus
}
#endif

#endif