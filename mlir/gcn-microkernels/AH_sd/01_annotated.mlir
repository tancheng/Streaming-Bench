// RUN: mlir-opt --linalg-generalize-named-ops 01_annotated.mlir -o 02_generic.mlir

#DD = #sparse_tensor.encoding<{dimLevelType = [ "dense", "dense" ]}>


func @kernel(%A: tensor<32x32xf32, #DD>,
             %H: tensor<32x4xf32, #DD>,
	     %Result: tensor<32x4xf32> {linalg.inplaceable = true}) -> tensor<32x4xf32> {
  %0 = linalg.matmul ins(%A, %H: tensor<32x32xf32, #DD>, tensor<32x4xf32, #DD>)
                     outs(%Result: tensor<32x4xf32>) -> tensor<32x4xf32>
  return %0 : tensor<32x4xf32>
}