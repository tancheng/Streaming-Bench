// RUN: mlir-opt 02_generic.mlir -sparsification --sparse-tensor-conversion -o 03_lowered.mlir

#map0 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
module  {
  func @kernel(%arg0: tensor<32x32xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "compressed" ], pointerBitWidth = 0, indexBitWidth = 0 }>>, %arg1: tensor<32x4xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "dense" ], pointerBitWidth = 0, indexBitWidth = 0 }>>, %arg2: tensor<32x4xf32> {linalg.inplaceable = true}) -> tensor<32x4xf32> {
    %0 = linalg.generic {indexing_maps = [#map0, #map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%arg0, %arg1 : tensor<32x32xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "compressed" ], pointerBitWidth = 0, indexBitWidth = 0 }>>, tensor<32x4xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "dense" ], pointerBitWidth = 0, indexBitWidth = 0 }>>) outs(%arg2 : tensor<32x4xf32>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):  // no predecessors
      %1 = mulf %arg3, %arg4 : f32
      %2 = addf %arg5, %1 : f32
      linalg.yield %2 : f32
    } -> tensor<32x4xf32>
    return %0 : tensor<32x4xf32>
  }
}

