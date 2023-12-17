#include <omp.h>
#include <iostream>

static long num_steps = 1000000;
#define NUM_THREADS 12

double start;
double end;

void vectorAddition() {
	double a[num_steps];
	double b[num_steps];
	int i;

	#pragma omp parallel
	#pragma omp for
	for (i = 0; i < num_steps; i++)
	{
		a[i] = i;
		b[i] = i + 1;
	}
}
int main(int argc, char const *argv[]) {
  omp_set_num_threads(NUM_THREADS);
  vectorAddition();
  return 0;
}