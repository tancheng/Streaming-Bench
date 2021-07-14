// RUN: soda-opt 04_searched.mlir --soda-outline-bambu-code --soda-generate-bambu-accelcode --canonicalize -o 05_isolated.mlir

#map0 = affine_map<(d0, d1) -> ()>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
module  {
  func private @sparseValuesF32(!llvm.ptr<i8>) -> memref<?xf32>
  func private @sparseIndices(!llvm.ptr<i8>, index) -> memref<?xindex>
  func private @sparsePointers(!llvm.ptr<i8>, index) -> memref<?xindex>
  func @kernel(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>, %arg3: tensor<32x2xf32> {linalg.inplaceable = true}) -> tensor<32x2xf32> {
    %cst = constant 0.000000e+00 : f32
    %c4 = constant 4 : index
    %c32 = constant 32 : index
    %c2 = constant 2 : index
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %0 = linalg.init_tensor [32, 4] : tensor<32x4xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst : f32) outs(%0 : tensor<32x4xf32>) {
    ^bb0(%arg4: f32, %arg5: f32):  // no predecessors
      linalg.yield %arg4 : f32
    } -> tensor<32x4xf32>
    %2 = call @sparsePointers(%arg0, %c1) : (!llvm.ptr<i8>, index) -> memref<?xindex>
    %3 = call @sparseIndices(%arg0, %c1) : (!llvm.ptr<i8>, index) -> memref<?xindex>
    %4 = call @sparseValuesF32(%arg0) : (!llvm.ptr<i8>) -> memref<?xf32>
    %5 = call @sparseValuesF32(%arg1) : (!llvm.ptr<i8>) -> memref<?xf32>
    %6 = memref.buffer_cast %1 : memref<32x4xf32>
    %7 = memref.alloc() : memref<32x4xf32>
    linalg.copy(%6, %7) : memref<32x4xf32>, memref<32x4xf32> 
    %8 = call @sparseValuesF32(%arg2) : (!llvm.ptr<i8>) -> memref<?xf32>
    %9 = memref.buffer_cast %arg3 : memref<32x2xf32>

    soda.launch {
    scf.for %arg4 = %c0 to %c32 step %c1 {
      %11 = memref.load %2[%arg4] : memref<?xindex>
      %12 = addi %arg4, %c1 : index
      %13 = memref.load %2[%12] : memref<?xindex>
      scf.for %arg5 = %11 to %13 step %c1 {
        %14 = memref.load %3[%arg5] : memref<?xindex>
        %15 = memref.load %4[%arg5] : memref<?xf32>
        scf.for %arg6 = %c0 to %c4 step %c1 {
          %16 = muli %14, %c4 : index
          %17 = addi %16, %arg6 : index
          %18 = memref.load %7[%arg4, %arg6] : memref<32x4xf32>
          %19 = memref.load %5[%17] : memref<?xf32>
          %20 = mulf %15, %19 : f32
          %21 = addf %18, %20 : f32
          memref.store %21, %7[%arg4, %arg6] : memref<32x4xf32>
        }
      }
    }
    scf.for %arg4 = %c0 to %c32 step %c1 {
      scf.for %arg5 = %c0 to %c4 step %c1 {
        %11 = memref.load %7[%arg4, %arg5] : memref<32x4xf32>
        scf.for %arg6 = %c0 to %c2 step %c1 {
          %12 = muli %arg5, %c2 : index
          %13 = addi %12, %arg6 : index
          %14 = memref.load %9[%arg4, %arg6] : memref<32x2xf32>
          %15 = memref.load %8[%13] : memref<?xf32>
          %16 = mulf %11, %15 : f32
          %17 = addf %14, %16 : f32
          memref.store %17, %9[%arg4, %arg6] : memref<32x2xf32>
        }
      }
    }
      soda.terminator
    }
    %10 = memref.tensor_load %9 : memref<32x2xf32>
    return %10 : tensor<32x2xf32>
  }
}

