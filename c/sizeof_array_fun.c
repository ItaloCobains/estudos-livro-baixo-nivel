#include <stdio.h>

const int arr[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

void f ( int const arr[] ) {
  printf("%lu \n", sizeof(arr));
}

int main(void) {
  f(arr);
  return 0;
}