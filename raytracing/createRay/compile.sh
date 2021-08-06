#clang -emit-llvm -fno-unroll-loops -o main.bc -c main.cpp
clang -emit-llvm -fno-unroll-loops -O3 -o main.bc -c main.cpp
#llvm-dis fir.bc -o fir.ll
