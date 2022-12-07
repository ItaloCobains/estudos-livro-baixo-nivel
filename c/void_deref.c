#include<stdio.h>

int main() {

	int a = 10;
	void* pa = &a;

	printf("%d\n", *((int*) pa));

	return 0;
}

int func(int array[static 10]) {
	return array;
}

int whitespace[256] = {
	[' '] = 1,
	['\t'] = 1,
	['\r'] = 1,
	['\f'] = 1,
	['\n'] = 1
};

enum colors {
	RED,
	GREEN,
	BLUE,
	MAGENTA,
};

int good[5] = {
	[RED] = 1,
	[GREEN] = 2,
	[BLUE] = 3,
	[MAGENTA] = 4,
};

typedef unsigned short int mytype_t;