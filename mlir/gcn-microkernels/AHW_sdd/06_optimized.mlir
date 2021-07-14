// RUN: mlir-opt 06_optimized.mlir --convert-scf-to-std --convert-memref-to-llvm -convert-std-to-llvm='emit-c-wrappers=1' -o 07_llvm.mlir

module attributes {soda.bambu.container_module, soda.container_module}  {
  func @kernel_kernel(%arg0: memref<?xindex>, %arg1: memref<?xindex>, %arg2: memref<?xf32>, %arg3: memref<32x4xf32>, %arg4: memref<?xf32>, %arg5: memref<32x2xf32>, %arg6: memref<?xf32>) {
    %c2 = constant 2 : index
    %c32 = constant 32 : index
    %c0 = constant 0 : index
    %c4 = constant 4 : index
    %c1 = constant 1 : index
    scf.for %arg7 = %c0 to %c32 step %c1 {
      %1 = memref.load %arg0[%arg7] : memref<?xindex>
      %2 = addi %arg7, %c1 : index
      %3 = memref.load %arg0[%2] : memref<?xindex>
      scf.for %arg8 = %1 to %3 step %c1 {
        %4 = memref.load %arg1[%arg8] : memref<?xindex>
        %5 = memref.load %arg2[%arg8] : memref<?xf32>
        scf.for %arg9 = %c0 to %c4 step %c1 {
          %6 = muli %4, %c4 : index
          %7 = addi %6, %arg9 : index
          %8 = memref.load %arg3[%arg7, %arg9] : memref<32x4xf32>
          %9 = memref.load %arg4[%7] : memref<?xf32>
          %10 = mulf %5, %9 : f32
          %11 = addf %8, %10 : f32
          memref.store %11, %arg3[%arg7, %arg9] : memref<32x4xf32>
        }
      }
    }
    %0 = muli %c32, %c4 : index
    scf.for %arg7 = %c0 to %0 step %c1 {
      %1 = remi_signed %arg7, %c4 : index
      %2 = divi_signed %arg7, %c4 : index
      %3 = memref.load %arg3[%2, %1] : memref<32x4xf32>
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %4 = muli %1, %c2 : index
        %5 = addi %4, %arg8 : index
        %6 = memref.load %arg5[%2, %arg8] : memref<32x2xf32>
        %7 = memref.load %arg6[%5] : memref<?xf32>
        %8 = mulf %3, %7 : f32
        %9 = addf %6, %8 : f32
        memref.store %9, %arg5[%2, %arg8] : memref<32x2xf32>
      }
    }
    return
  }
}

