// RUN: Manually create a file (01_annotated.mlir) and add the sparse encodings

func @kernel(%A: tensor<32x32xf32>,
             %H: tensor<32x4xf32>,
             %W: tensor<4x2xf32>,
	           %Result: tensor<32x2xf32>) -> tensor<32x2xf32> {

  %Init = linalg.init_tensor [32, 4] : tensor<32x4xf32>
  %cst = constant 0.000000e+00 : f32
  %Fill = linalg.fill(%cst, %Init) : f32, tensor<32x4xf32> -> tensor<32x4xf32>

  %AH = linalg.matmul ins(%A, %H: tensor<32x32xf32>, tensor<32x4xf32>)
                     outs(%Fill: tensor<32x4xf32>) -> tensor<32x4xf32>
  
  %1 = linalg.matmul ins(%AH, %W: tensor<32x4xf32>, tensor<4x2xf32>)
                     outs(%Result: tensor<32x2xf32>) -> tensor<32x2xf32>
  return %1 : tensor<32x2xf32>
}