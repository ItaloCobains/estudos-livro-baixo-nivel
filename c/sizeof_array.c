#include <stdio.h>

const int arr[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };



int main( int argc, char* argv[] ) {
  printf("%lu \n", sizeof( arr )); 
  printf("%lu \n", sizeof( arr[0] )); 

  return 0;
}