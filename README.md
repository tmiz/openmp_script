

# The script to build OpenMP Script on Mavericks.

## Preparation

Please install "Command Line Tools for OSX 10.9" from Apple Developer Site.


## How to make
```
$ make
```
## Output files

include directory is located on
```
include/
```
created library is located on
```
lib/
```

## Output Binary Spec
```
$ file lib/libiomp5.dylib 
lib/libiomp5.dylib: Mach-O universal binary with 2 architectures
lib/libiomp5.dylib (for architecture i386):	Mach-O dynamically linked shared library i386
lib/libiomp5.dylib (for architecture x86_64):	   Mach-O 64-bit dynamically linked shared library x86_64
```

## Remaining tasks

* build and install OpenMP(R)/Clang

http://clang-omp.github.io

* test

** create a C file 
```
include <omp.h>
#include <stdio.h>
int main() {
#pragma omp parallel
printf("Hello from thread %d, nthreads %d\n", omp_get_thread_num(), omp_get_num_threads());
}
```

** compile with libs

```
$ /usr/local/bin/clang -fopenmp test.c -o hello -I/<cloned_dir>/openmp_script/include -L/<cloned_dir>/openmp_script/lib
```

*** execute
```
$ OMP_NUM_THREADS=5 ./hello 
Hello from thread 2, nthreads 5
Hello from thread 3, nthreads 5
Hello from thread 0, nthreads 5
Hello from thread 4, nthreads 5
Hello from thread 1, nthreads 5
$ OMP_NUM_THREADS=3 ./hello 
Hello from thread 0, nthreads 3
Hello from thread 1, nthreads 3
Hello from thread 2, nthreads 3
$ OMP_NUM_THREADS=2 ./hello 
Hello from thread 0, nthreads 2
Hello from thread 1, nthreads 2
```
