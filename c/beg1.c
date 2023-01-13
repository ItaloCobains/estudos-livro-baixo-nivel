#include <stdio.h>

const int g_array[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

int array_sum ( const int* arr, size_t count ) {
  size_t i;
  int sum = 0;
  for( i= 0; i < count; i++ ) {
    sum += arr[i];
  }
  return sum;
}

int main ( void ) {
  printf(
    "The sum is: %d\n",
    array_sum(g_array, sizeof(g_array) / sizeof(int))
  );
  return 0;
}