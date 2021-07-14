// RUN: mlir-opt 05_isolated.mlir  --loop-coalescing -o 06_optimized.mlir

module attributes {soda.bambu.container_module, soda.container_module}  {
  func @kernel_kernel(%arg0: memref<?xf32>, %arg1: memref<32x4xf32>, %arg2: memref<?xf32>) {
    %c1 = constant 1 : index
    %c0 = constant 0 : index
    %c4 = constant 4 : index
    %c32 = constant 32 : index
    scf.for %arg3 = %c0 to %c32 step %c1 {
      scf.for %arg4 = %c0 to %c32 step %c1 {
        %0 = muli %arg3, %c32 : index
        %1 = addi %0, %arg4 : index
        %2 = memref.load %arg0[%1] : memref<?xf32>
        scf.for %arg5 = %c0 to %c4 step %c1 {
          %3 = muli %arg4, %c4 : index
          %4 = addi %3, %arg5 : index
          %5 = memref.load %arg1[%arg3, %arg5] : memref<32x4xf32>
          %6 = memref.load %arg2[%4] : memref<?xf32>
          %7 = mulf %2, %6 : f32
          %8 = addf %5, %7 : f32
          memref.store %8, %arg1[%arg3, %arg5] : memref<32x4xf32>
        }
      }
    }
    return
  }
}

