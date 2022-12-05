#include <stdio.h>

int f(void) { puts("f"); return 0; }
int g(void) { puts("g"); return 1; }

int main(void) {
	f() && g();
	return 0;
}