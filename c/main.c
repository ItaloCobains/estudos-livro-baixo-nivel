#include<stdio.h>

int main() {
	int n;
	for (n=0;n < 20;n++) {
		if (n % 2 == 0) continue;
		printf("%d is odd", n);
	}

	return 0;
}