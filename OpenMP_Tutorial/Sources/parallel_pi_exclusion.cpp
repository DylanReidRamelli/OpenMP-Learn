#include <omp.h>

#include <iostream>

// SINGLE PROGRAM MULTIUPLE DATA programming pattern SPMD
static long num_steps = 1000000000;
double step;
#define NUM_THREADS 4
// #define PAD 8 // Assume 64 byte L1 cache line size

double start;
double end;

void parallelPi() {
  double pi = 0.0;
  int nthreads;

  start = omp_get_wtime();

#pragma omp parallel
  {
    int ID = omp_get_thread_num();
    int i;
    double x, sum;
    int nthrds = omp_get_num_threads();

    if (ID == 0) nthreads = nthrds;

    for (i = ID, sum = 0.0; i < num_steps; i = i + nthrds) {
      x = (i + 0.5) * step;
      sum += 4.0 / (1.0 + x * x);
    }


// Another way to do this.
//     sum = sum * step;

// #pragma omp atomic
//     pi += sum;

#pragma omp critical
    pi += sum * step;
  }
  end = omp_get_wtime();
  std::cout << " Method 1: Work with " << NUM_THREADS
            << " threads took: " << end - start << "seconds."
            << "\n";
  std::cout << pi << "\n";
}

int main(int argc, char const *argv[]) {
  double pi = 0.0;
  double sum[NUM_THREADS];

  step = 1.0 / (double)num_steps;
  omp_set_num_threads(NUM_THREADS);

  parallelPi();
}