#include <omp.h>

#include <iostream>

#define N 1000000
#define N_THREADS 2


void serial_fib(){
	// Fibbonacci with an accumulator "result".
	long result = 0;
	for (int i = 0; i < N; ++i)
	{
		long tmp = result;
		result = tmp + i;
	}
	std::cout << "Serial fibbonacci of N: " << N << " is " << result << "\n";
}

void parallel_fib(){
	long result = 0;
	omp_set_num_threads(N_THREADS);
	#pragma omp parallel for reduction(+:result)
	for (int i = 0; i < N; ++i){
		result += i;
	}
	std::cout << "Parallel fibbonacci of N: " << N << " is " << result << "\n";
}


int main(int argc, char const *argv[])
{
	double start;
	double end;


	start = omp_get_wtime();
	serial_fib();
	end = omp_get_wtime();

	std::cout << "Serial took: " << end - start << "\n";

	start = omp_get_wtime();
	parallel_fib();
	end = omp_get_wtime();

	std::cout << "Parallel took: " << end - start << "\n";
	return 0;
}