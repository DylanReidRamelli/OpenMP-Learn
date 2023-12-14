#include <iostream>
#include <omp.h>


void pooh(const int ID, double A[]){
	std::cout << "Hello" << ID << "\n";
	std::cout << "World" << "\n";

}

int main(int argc, char const *argv[])
{

	double A[1000];
	omp_set_num_threads(4);
	#pragma omp parallel 
	{
		// A single copy of A is shared between all threads.
		int ID = omp_get_thread_num();
		pooh(ID, A);
	};
	std::cout << "All done." << "\n";
	// Another way to set num_threads for a parallel operation.
	// #pragma omp parallel num_threads(4)
	// {

	// }
	return 0;
}