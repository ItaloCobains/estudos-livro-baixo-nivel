#include <stdio.h>

const int arr1[] = {1,2,3};
const int arr2[] = {4,5,6};

int calcula_produto_escalar(const int arr1[], const int arr2[], size_t count) {
  int result = 0;
  size_t i;
  for (i = 0; i < count; i++) {
    result += arr1[i] * arr2[i];
  }
  return result;
}

int main(int argc, char ** argv){
  printf("Calcula produto escalar: %d\n", calcula_produto_escalar(arr1, arr2, sizeof(arr1) / sizeof(int)));
  return 0;
}