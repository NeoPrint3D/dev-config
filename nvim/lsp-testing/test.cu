#include <stdio.h>

__global__ void hello_kernel() {
  printf("Hello from block %d, thread %d\n", blockIdx.x, threadIdx.x);
}

int main() {
  printf("Hello from the CPU\n");

  hello_kernel<<<1, 10>>>();

  cudaDeviceReset();

  return 0;
}
