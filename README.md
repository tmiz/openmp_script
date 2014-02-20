

# The script to build OpenMP Script on Mavericks.

## How to make
$ make

## Output files

include directory is located on
include/

created library is located on
lib/

## Output Binary Spec
```
$ file lib/libiomp5.dylib 
lib/libiomp5.dylib: Mach-O universal binary with 2 architectures
lib/libiomp5.dylib (for architecture i386):	Mach-O dynamically linked shared library i386
lib/libiomp5.dylib (for architecture x86_64):	   Mach-O 64-bit dynamically linked shared library x86_64
```