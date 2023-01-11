#include <stdio.h>

int main(void) {
	int i = 0;
	int* a = &i;
	printf("i = %d\n", i);
	incI(a);
	printf("i = %d", i);

	return 0;
}

void incI(int *i) {
}