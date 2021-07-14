// RUN: mlir-opt 05_isolated.mlir  --loop-coalescing -o 06_optimized.mlir

module attributes {soda.bambu.container_module, soda.container_module}  {
  func @kernel_kernel(%arg0: memref<?xindex>, %arg1: memref<?xindex>, %arg2: memref<?xf32>, %arg3: memref<32x4xf32>, %arg4: memref<?xf32>, %arg5: memref<32x2xf32>, %arg6: memref<?xf32>, %arg7: memref<32x2xf32>) {
    %cst = constant 3.40282347E+38 : f32
    %cst_0 = constant 0.000000e+00 : f32
    %c2 = constant 2 : index
    %c32 = constant 32 : index
    %c0 = constant 0 : index
    %c4 = constant 4 : index
    %c1 = constant 1 : index
    scf.for %arg8 = %c0 to %c32 step %c1 {
      %0 = memref.load %arg0[%arg8] : memref<?xindex>
      %1 = addi %arg8, %c1 : index
      %2 = memref.load %arg0[%1] : memref<?xindex>
      scf.for %arg9 = %0 to %2 step %c1 {
        %3 = memref.load %arg1[%arg9] : memref<?xindex>
        %4 = memref.load %arg2[%arg9] : memref<?xf32>
        scf.for %arg10 = %c0 to %c4 step %c1 {
          %5 = muli %3, %c4 : index
          %6 = addi %5, %arg10 : index
          %7 = memref.load %arg3[%arg8, %arg10] : memref<32x4xf32>
          %8 = memref.load %arg4[%6] : memref<?xf32>
          %9 = mulf %4, %8 : f32
          %10 = addf %7, %9 : f32
          memref.store %10, %arg3[%arg8, %arg10] : memref<32x4xf32>
        }
      }
    }
    scf.for %arg8 = %c0 to %c32 step %c1 {
      scf.for %arg9 = %c0 to %c4 step %c1 {
        %0 = memref.load %arg3[%arg8, %arg9] : memref<32x4xf32>
        scf.for %arg10 = %c0 to %c2 step %c1 {
          %1 = muli %arg9, %c2 : index
          %2 = addi %1, %arg10 : index
          %3 = memref.load %arg5[%arg8, %arg10] : memref<32x2xf32>
          %4 = memref.load %arg6[%2] : memref<?xf32>
          %5 = mulf %0, %4 : f32
          %6 = addf %3, %5 : f32
          memref.store %6, %arg5[%arg8, %arg10] : memref<32x2xf32>
        }
      }
    }
    scf.for %arg8 = %c0 to %c32 step %c1 {
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %0 = memref.load %arg5[%arg8, %arg9] : memref<32x2xf32>
        %1 = cmpf olt, %0, %cst_0 : f32
        %2 = select %1, %cst_0, %0 : f32
        %3 = cmpf olt, %cst, %0 : f32
        %4 = select %3, %cst, %2 : f32
        memref.store %4, %arg7[%arg8, %arg9] : memref<32x2xf32>
      }
    }
    return
  }
}

