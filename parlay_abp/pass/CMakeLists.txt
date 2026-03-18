cmake_minimum_required(VERSION 3.13)
project(AtomicTracePass CXX)

find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

add_library(AtomicTracePass MODULE AtomicTracePass.cpp)

set_target_properties(AtomicTracePass PROPERTIES
  CXX_STANDARD 17
  CXX_STANDARD_REQUIRED YES
  PREFIX ""
)

target_compile_definitions(AtomicTracePass PRIVATE _GNU_SOURCE)