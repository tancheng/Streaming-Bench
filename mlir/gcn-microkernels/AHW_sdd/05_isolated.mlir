// RUN: mlir-opt 05_isolated.mlir  --loop-coalescing -o 06_optimized.mlir

module attributes {soda.bambu.container_module, soda.container_module}  {
  func @kernel_kernel(%arg0: memref<?xindex>, %arg1: memref<?xindex>, %arg2: memref<?xf32>, %arg3: memref<32x4xf32>, %arg4: memref<?xf32>) {
    %c32 = constant 32 : index
    %c0 = constant 0 : index
    %c4 = constant 4 : index
    %c1 = constant 1 : index
    scf.for %arg5 = %c0 to %c32 step %c1 {
      %0 = memref.load %arg0[%arg5] : memref<?xindex>
      %1 = addi %arg5, %c1 : index
      %2 = memref.load %arg0[%1] : memref<?xindex>
      scf.for %arg6 = %0 to %2 step %c1 {
        %3 = memref.load %arg1[%arg6] : memref<?xindex>
        %4 = memref.load %arg2[%arg6] : memref<?xf32>
        scf.for %arg7 = %c0 to %c4 step %c1 {
          %5 = muli %3, %c4 : index
          %6 = addi %5, %arg7 : index
          %7 = memref.load %arg3[%arg5, %arg7] : memref<32x4xf32>
          %8 = memref.load %arg4[%6] : memref<?xf32>
          %9 = mulf %4, %8 : f32
          %10 = addf %7, %9 : f32
          memref.store %10, %arg3[%arg5, %arg7] : memref<32x4xf32>
        }
      }
    }
    return
  }
}

