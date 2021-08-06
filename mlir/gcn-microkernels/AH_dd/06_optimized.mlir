// RUN: mlir-opt 06_optimized.mlir --convert-scf-to-std --convert-memref-to-llvm -convert-std-to-llvm='emit-c-wrappers=1' -o 07_llvm.mlir

module attributes {soda.bambu.container_module, soda.container_module}  {
  func @kernel_kernel(%arg0: memref<?xf32>, %arg1: memref<32x4xf32>, %arg2: memref<?xf32>) {
    %c1 = constant 1 : index
    %c0 = constant 0 : index
    %c4 = constant 4 : index
    %c32 = constant 32 : index
    %0 = muli %c32, %c32 : index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %1 = remi_signed %arg3, %c32 : index
      %2 = divi_signed %arg3, %c32 : index
      %3 = muli %2, %c32 : index
      %4 = addi %3, %1 : index
      %5 = memref.load %arg0[%4] : memref<?xf32>
      scf.for %arg4 = %c0 to %c4 step %c1 {
        %6 = muli %1, %c4 : index
        %7 = addi %6, %arg4 : index
        %8 = memref.load %arg1[%2, %arg4] : memref<32x4xf32>
        %9 = memref.load %arg2[%7] : memref<?xf32>
        %10 = mulf %5, %9 : f32
        %11 = addf %8, %10 : f32
        memref.store %11, %arg1[%2, %arg4] : memref<32x4xf32>
      }
    }
    return
  }
}

