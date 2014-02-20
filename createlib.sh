#!/bin/bash

curl -O https://www.openmprtl.org/sites/default/files/libomp_20131209_oss.tgz
tar -xvzf libomp_20131209_oss.tgz
rm libomp_20131209_oss.tgz
patch -u libomp_oss/tools/check-tools.pl < check-tool.patch 
cd libomp_oss/
make arch=i386 compiler=clang
make arch=x86_64 compiler=clang
cd ../
