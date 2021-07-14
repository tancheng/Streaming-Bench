// RUN: soda-opt 04_searched.mlir --soda-outline-bambu-code --soda-generate-bambu-accelcode --canonicalize -o 05_isolated.mlir

module  {
  func private @sparseValuesF32(!llvm.ptr<i8>) -> memref<?xf32>
  func @kernel(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: tensor<32x4xf32> {linalg.inplaceable = true}) -> tensor<32x4xf32> {
    %c32 = constant 32 : index
    %c4 = constant 4 : index
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %0 = call @sparseValuesF32(%arg0) : (!llvm.ptr<i8>) -> memref<?xf32>
    %1 = call @sparseValuesF32(%arg1) : (!llvm.ptr<i8>) -> memref<?xf32>
    %2 = memref.buffer_cast %arg2 : memref<32x4xf32>
    soda.launch {
    scf.for %arg3 = %c0 to %c32 step %c1 {
      scf.for %arg4 = %c0 to %c32 step %c1 {
        %4 = muli %arg3, %c32 : index
        %5 = addi %4, %arg4 : index
        %6 = memref.load %0[%5] : memref<?xf32>
        scf.for %arg5 = %c0 to %c4 step %c1 {
          %7 = muli %arg4, %c4 : index
          %8 = addi %7, %arg5 : index
          %9 = memref.load %2[%arg3, %arg5] : memref<32x4xf32>
          %10 = memref.load %1[%8] : memref<?xf32>
          %11 = mulf %6, %10 : f32
          %12 = addf %9, %11 : f32
          memref.store %12, %2[%arg3, %arg5] : memref<32x4xf32>
        }
      }
    }
    soda.terminator
    }
    %3 = memref.tensor_load %2 : memref<32x4xf32>
    return %3 : tensor<32x4xf32>
  }
}

