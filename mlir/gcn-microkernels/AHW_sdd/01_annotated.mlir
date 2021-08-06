// RUN: mlir-opt --linalg-generalize-named-ops 01_annotated.mlir -o 02_generic.mlir

#DS = #sparse_tensor.encoding<{dimLevelType = [ "dense", "compressed"]}>
#DD = #sparse_tensor.encoding<{dimLevelType = [ "dense", "dense" ]}>

func @kernel(%A: tensor<32x32xf32, #DS>,
             %H: tensor<32x4xf32, #DD>,
             %W: tensor<4x2xf32, #DD>,
	           %Result: tensor<32x2xf32> {linalg.inplaceable = true}) -> tensor<32x2xf32> {

  %Init = linalg.init_tensor [32, 4] : tensor<32x4xf32>
  %cst = constant 0.000000e+00 : f32
  %Fill = linalg.fill(%cst, %Init) : f32, tensor<32x4xf32> -> tensor<32x4xf32>

  %AH = linalg.matmul ins(%A, %H: tensor<32x32xf32, #DS>, tensor<32x4xf32, #DD>)
                     outs(%Fill: tensor<32x4xf32>) -> tensor<32x4xf32>
  
  %1 = linalg.matmul ins(%AH, %W: tensor<32x4xf32>, tensor<4x2xf32, #DD>)
                     outs(%Result: tensor<32x2xf32>) -> tensor<32x2xf32>
  return %1 : tensor<32x2xf32>
}