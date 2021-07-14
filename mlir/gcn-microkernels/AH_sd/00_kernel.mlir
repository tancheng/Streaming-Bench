// RUN: Manually create a file (01_annotated.mlir) and add the sparse encodings
func @kernel(%A: tensor<32x32xf32>,
             %H: tensor<32x4xf32>,
	     %Result: tensor<32x4xf32>) -> tensor<32x4xf32> {
  %0 = linalg.matmul ins(%A, %H: tensor<32x32xf32>, tensor<32x4xf32>)
                     outs(%Result: tensor<32x4xf32>) -> tensor<32x4xf32>
  return %0 : tensor<32x4xf32>
}