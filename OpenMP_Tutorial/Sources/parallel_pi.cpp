#include <omp.h>

#include <iostream>

static long num_steps = 10000000;
double step;
#define NUM_THREADS 8
#define PAD 8  // Assume 64 byte L1 cache line size

double start;
double end;

void parallelPiOne() {
  double pi = 0.0;
  double sum[NUM_THREADS];
  int nthreads;

  start = omp_get_wtime();

#pragma omp parallel
  {
    int ID = omp_get_thread_num();
    int i;
    double x;
    int nthrds = omp_get_num_threads();

    // Do this because we did not necessarily get MAX_THREADS. It depends on how
    // many threads are available at the moment.
    if (ID == 0) nthreads = nthrds;

    for (i = ID, sum[ID] = 0.0; i < num_steps; i = i + nthrds) {
      x = (i + 0.5) * step;
      sum[ID] += 4.0 / (1.0 + x * x);
    }
  }

  for (int i = 0; i < nthreads; ++i) {
    pi += sum[i] * step;
  }

  end = omp_get_wtime();
  std::cout << " Method 1: Work with " << NUM_THREADS
            << " threads took: " << end - start << "seconds."
            << "\n";
  std::cout << pi << "\n";
}

void parallelPiTwo() {
  double pi = 0.0;
  double sum[NUM_THREADS][PAD];
  int nthreads;

  start = omp_get_wtime();

#pragma omp parallel
  {
    int ID = omp_get_thread_num();
    int i;
    double x;
    int nthrds = omp_get_num_threads();

    if (ID == 0) nthreads = nthrds;

    for (i = ID, sum[ID][0] = 0.0; i < num_steps; i = i + nthrds) {
      x = (i + 0.5) * step;
      sum[ID][0] += 4.0 / (1.0 + x * x);
    }
  }

  for (int i = 0; i < nthreads; ++i) {
    pi += sum[i][0] * step;
  }

  end = omp_get_wtime();
  std::cout << " Method 2: Work with " << NUM_THREADS
            << " threads took: " << end - start << "seconds."
            << "\n";
  std::cout << pi << "\n";
}

int main(int argc, char const *argv[]) {
  double pi = 0.0;
  double sum[NUM_THREADS];

  step = 1.0 / (double)num_steps;
  omp_set_num_threads(NUM_THREADS);

  parallelPiOne();
  parallelPiTwo();
}