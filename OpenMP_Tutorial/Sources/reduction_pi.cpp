#include <omp.h>

#include <iostream>

static long num_steps = 1000000000;
double step;

int main() {
  int i;
  double pi, sum = 0.0;

  step = 1.0 / (double)num_steps;

omp_set_num_threads(4);
#pragma omp parallel
  {
    double x;
#pragma omp parallel for reduction(+ : sum)
    for (int i = 0; i < num_steps; ++i) {
      x = (i + 0.5) * step;
      // sum = sum + 4.0/(1.0+x*x);
      sum += 4.0 / (1.0 + x * x);
    }
  }
  pi = step * sum;
  std::cout << "Pi is:" << pi << "\n";
}