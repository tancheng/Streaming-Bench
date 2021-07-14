// RUN: Manually create a file  04_searched and add soda outlining functions

module  {
  func private @sparseValuesF32(!llvm.ptr<i8>) -> memref<?xf32>
  func private @sparseIndices(!llvm.ptr<i8>, index) -> memref<?xindex>
  func private @sparsePointers(!llvm.ptr<i8>, index) -> memref<?xindex>
  func @kernel(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: tensor<32x4xf32> {linalg.inplaceable = true}) -> tensor<32x4xf32> {
    %c32 = constant 32 : index
    %c4 = constant 4 : index
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %0 = call @sparsePointers(%arg0, %c1) : (!llvm.ptr<i8>, index) -> memref<?xindex>
    %1 = call @sparseIndices(%arg0, %c1) : (!llvm.ptr<i8>, index) -> memref<?xindex>
    %2 = call @sparseValuesF32(%arg0) : (!llvm.ptr<i8>) -> memref<?xf32>
    %3 = call @sparseValuesF32(%arg1) : (!llvm.ptr<i8>) -> memref<?xf32>
    %4 = memref.buffer_cast %arg2 : memref<32x4xf32>
    scf.for %arg3 = %c0 to %c32 step %c1 {
      %6 = memref.load %0[%arg3] : memref<?xindex>
      %7 = addi %arg3, %c1 : index
      %8 = memref.load %0[%7] : memref<?xindex>
      scf.for %arg4 = %6 to %8 step %c1 {
        %9 = memref.load %1[%arg4] : memref<?xindex>
        %10 = memref.load %2[%arg4] : memref<?xf32>
        scf.for %arg5 = %c0 to %c4 step %c1 {
          %11 = muli %9, %c4 : index
          %12 = addi %11, %arg5 : index
          %13 = memref.load %4[%arg3, %arg5] : memref<32x4xf32>
          %14 = memref.load %3[%12] : memref<?xf32>
          %15 = mulf %10, %14 : f32
          %16 = addf %13, %15 : f32
          memref.store %16, %4[%arg3, %arg5] : memref<32x4xf32>
        }
      }
    }
    %5 = memref.tensor_load %4 : memref<32x4xf32>
    return %5 : tensor<32x4xf32>
  }
}

