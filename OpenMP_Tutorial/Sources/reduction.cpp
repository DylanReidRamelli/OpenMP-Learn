#include <omp.h>

#include <iostream>

#define MAX 10

int main(int argc, char const *argv[])
{
	double ave = 0.0, A[MAX] = {0,1,2,3,4,5,6,7,8,9};
	int i;
	#pragma omp parallel for reduction (+:ave)
	for (int i = 0; i < MAX; ++i)
	{
		ave += A[i];
	}

	ave = ave/MAX;
	std::cout << "Result: " << ave << "\n";

	return 0;
}