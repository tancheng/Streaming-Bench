// RUN: mlir-opt 02_generic.mlir -sparsification -linalg-bufferize --convert-linalg-to-loops --sparse-tensor-conversion -o 03_lowered.mlir

#map0 = affine_map<(d0, d1) -> ()>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module  {
  func @kernel(%arg0: tensor<32x32xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "compressed" ], pointerBitWidth = 0, indexBitWidth = 0 }>>, %arg1: tensor<32x4xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "dense" ], pointerBitWidth = 0, indexBitWidth = 0 }>>, %arg2: tensor<4x2xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "dense" ], pointerBitWidth = 0, indexBitWidth = 0 }>>, %arg3: tensor<32x2xf32> {linalg.inplaceable = true}) -> tensor<32x2xf32> {
    %cst = constant 0.000000e+00 : f32
    %cst_0 = constant 3.40282347E+38 : f32
    %0 = linalg.init_tensor [32, 4] : tensor<32x4xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst : f32) outs(%0 : tensor<32x4xf32>) {
    ^bb0(%arg4: f32, %arg5: f32):  // no predecessors
      linalg.yield %arg4 : f32
    } -> tensor<32x4xf32>
    %2 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "reduction"]} ins(%arg0, %arg1 : tensor<32x32xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "compressed" ], pointerBitWidth = 0, indexBitWidth = 0 }>>, tensor<32x4xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "dense" ], pointerBitWidth = 0, indexBitWidth = 0 }>>) outs(%1 : tensor<32x4xf32>) {
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):  // no predecessors
      %7 = mulf %arg4, %arg5 : f32
      %8 = addf %arg6, %7 : f32
      linalg.yield %8 : f32
    } -> tensor<32x4xf32>
    %3 = linalg.init_tensor [32, 2] : tensor<32x2xf32>
    %4 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst : f32) outs(%3 : tensor<32x2xf32>) {
    ^bb0(%arg4: f32, %arg5: f32):  // no predecessors
      linalg.yield %arg4 : f32
    } -> tensor<32x2xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2, %arg2 : tensor<32x4xf32>, tensor<4x2xf32, #sparse_tensor.encoding<{ dimLevelType = [ "dense", "dense" ], pointerBitWidth = 0, indexBitWidth = 0 }>>) outs(%4 : tensor<32x2xf32>) {
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):  // no predecessors
      %7 = mulf %arg4, %arg5 : f32
      %8 = addf %arg6, %7 : f32
      linalg.yield %8 : f32
    } -> tensor<32x2xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%5 : tensor<32x2xf32>) outs(%arg3 : tensor<32x2xf32>) {
    ^bb0(%arg4: f32, %arg5: f32):  // no predecessors
      %7 = cmpf olt, %arg4, %cst : f32
      %8 = select %7, %cst, %arg4 : f32
      %9 = cmpf olt, %cst_0, %arg4 : f32
      %10 = select %9, %cst_0, %8 : f32
      linalg.yield %10 : f32
    } -> tensor<32x2xf32>
    return %6 : tensor<32x2xf32>
  }
}

