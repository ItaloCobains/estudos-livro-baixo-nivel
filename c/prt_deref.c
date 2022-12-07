#include<stdio.h>

int main(void) {
	int x = 10;
	int* px = &x;

	*px = 42; /*modificamos o valor x*/ 
	printf("*px = %d\n", *px);
	printf("x = %d\n", x);

		return 0;
}