#include <iostream>
#include <array>
#include "parlay/internal/work_stealing_deque.h"

struct Job {
  int id;
};

int main() {
  parlay::internal::Deque<Job> dq;

  Job a{1};
  Job b{2};

  bool was_empty_1 = dq.push_bottom(&a);
  bool was_empty_2 = dq.push_bottom(&b);

  std::cout << "push_bottom(a) was_empty = " << was_empty_1 << "\n";
  std::cout << "push_bottom(b) was_empty = " << was_empty_2 << "\n";

  auto r1 = dq.pop_top();
  auto r2 = dq.pop_top();

  if (r1.first != nullptr) {
    std::cout << "pop_top #1 job id = " << r1.first->id
              << ", empty = " << r1.second << "\n";
  } else {
    std::cout << "pop_top #1 job = null"
              << ", empty = " << r1.second << "\n";
  }

  if (r2.first != nullptr) {
    std::cout << "pop_top #2 job id = " << r2.first->id
              << ", empty = " << r2.second << "\n";
  } else {
    std::cout << "pop_top #2 job = null"
              << ", empty = " << r2.second << "\n";
  }

  return 0;
}