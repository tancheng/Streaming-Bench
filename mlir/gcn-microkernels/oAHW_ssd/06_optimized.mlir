// RUN: mlir-opt 06_optimized.mlir --convert-scf-to-std --convert-memref-to-llvm -convert-std-to-llvm='emit-c-wrappers=1' -o 07_llvm.mlir

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
      %2 = memref.load %arg0[%arg8] : memref<?xindex>
      %3 = addi %arg8, %c1 : index
      %4 = memref.load %arg0[%3] : memref<?xindex>
      scf.for %arg9 = %2 to %4 step %c1 {
        %5 = memref.load %arg1[%arg9] : memref<?xindex>
        %6 = memref.load %arg2[%arg9] : memref<?xf32>
        scf.for %arg10 = %c0 to %c4 step %c1 {
          %7 = muli %5, %c4 : index
          %8 = addi %7, %arg10 : index
          %9 = memref.load %arg3[%arg8, %arg10] : memref<32x4xf32>
          %10 = memref.load %arg4[%8] : memref<?xf32>
          %11 = mulf %6, %10 : f32
          %12 = addf %9, %11 : f32
          memref.store %12, %arg3[%arg8, %arg10] : memref<32x4xf32>
        }
      }
    }
    %0 = muli %c32, %c4 : index
    scf.for %arg8 = %c0 to %0 step %c1 {
      %2 = remi_signed %arg8, %c4 : index
      %3 = divi_signed %arg8, %c4 : index
      %4 = memref.load %arg3[%3, %2] : memref<32x4xf32>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %5 = muli %2, %c2 : index
        %6 = addi %5, %arg9 : index
        %7 = memref.load %arg5[%3, %arg9] : memref<32x2xf32>
        %8 = memref.load %arg6[%6] : memref<?xf32>
        %9 = mulf %4, %8 : f32
        %10 = addf %7, %9 : f32
        memref.store %10, %arg5[%3, %arg9] : memref<32x2xf32>
      }
    }
    %1 = muli %c32, %c2 : index
    scf.for %arg8 = %c0 to %1 step %c1 {
      %2 = remi_signed %arg8, %c2 : index
      %3 = divi_signed %arg8, %c2 : index
      %4 = memref.load %arg5[%3, %2] : memref<32x2xf32>
      %5 = cmpf olt, %4, %cst_0 : f32
      %6 = select %5, %cst_0, %4 : f32
      %7 = cmpf olt, %cst, %4 : f32
      %8 = select %7, %cst, %6 : f32
      memref.store %8, %arg7[%3, %2] : memref<32x2xf32>
    }
    return
  }
}

