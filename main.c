#include<stdio.h>

#define N 10


int main(){

	int f0 = 1;
	int f1 = 1;
	int f2 = 0;

	int result = fibonacci(f0,f1,f2);

	printf("FIB %d : %d\n", N, result);
	return 0;
}
