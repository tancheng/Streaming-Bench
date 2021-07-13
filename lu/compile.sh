clang -emit-llvm -fno-unroll-loops -O3 -o lu.bc -c lu.cpp
#llvm-dis fir.bc -o fir.ll
