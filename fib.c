#include<stdio.h>

#define N 10

int fibonacci(int f0, int f1, int f2){
	int i;
	for(i=0; i<N; i++){
		f2 = f1 + f0;
		f0 = f1;
		f1 = f2;
	}
	return f2;
}
