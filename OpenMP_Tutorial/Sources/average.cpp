#include <omp.h>
#define MAX 100

int main(int argc, char const *argv[]) {
  double ave = 0.0, A[MAX];
  int i;

#pragma omp parallel for reduction(+ : ave)
  for (int i = 0; i < MAX; ++i) {
    ave += A[i];
  }
  ave = ave / MAX;
  return 0;
}