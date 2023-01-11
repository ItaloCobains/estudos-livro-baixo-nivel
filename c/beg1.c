#include <stdio.h>

const int arr[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

int main ( void ) {
  int i;
  int sum = 0;
  for ( i = 0; i < 10; i++ ) 
    sum += arr[i];  
  
  printf(" The Sum is: %d\n", sum);
  return 0;
}