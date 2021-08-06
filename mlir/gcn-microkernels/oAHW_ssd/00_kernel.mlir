// RUN: Manually create a file (01_annotated.mlir) and add the sparse encodings

#Identity = affine_map<(d0, d1) -> (d0, d1)>

func @kernel(%A: tensor<32x32xf32>,
             %H: tensor<32x4xf32>,
             %W: tensor<4x2xf32>,
	           %Result: tensor<32x2xf32>) -> tensor<32x2xf32> {

  %cst = constant 0.000000e+00 : f32
  
  %Init1 = linalg.init_tensor [32, 4] : tensor<32x4xf32>
  %Fill1 = linalg.fill(%cst, %Init1) : f32, tensor<32x4xf32> -> tensor<32x4xf32>
  %AH = linalg.matmul ins(%A, %H: tensor<32x32xf32>, tensor<32x4xf32>)
                     outs(%Fill1: tensor<32x4xf32>) -> tensor<32x4xf32>
  
  %Init2 = linalg.init_tensor [32, 2] : tensor<32x2xf32>
  %Fill2 = linalg.fill(%cst, %Init2) : f32, tensor<32x2xf32> -> tensor<32x2xf32>
  %1 = linalg.matmul ins(%AH, %W: tensor<32x4xf32>, tensor<4x2xf32>)
                     outs(%Fill2: tensor<32x2xf32>) -> tensor<32x2xf32>


  // Relu operation
  %2 = linalg.generic {indexing_maps = [#Identity, #Identity], iterator_types = ["parallel", "parallel"]} 
                ins(%1 : tensor<32x2xf32>) outs(%Result : tensor<32x2xf32>) {
    ^bb0(%arg4: f32, %arg5: f32):  // no predecessors
      %cst_0 = constant 0.000000e+00 : f32
      %cst_1 = constant 3.40282347E+38 : f32
      %6 = cmpf olt, %arg4, %cst_0 : f32
      %7 = select %6, %cst_0, %arg4 : f32
      %8 = cmpf olt, %cst_1, %arg4 : f32
      %9 = select %8, %cst_1, %7 : f32
      linalg.yield %9 : f32
    } -> tensor<32x2xf32>


  return %2 : tensor<32x2xf32>
}