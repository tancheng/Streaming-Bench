// RUN: mlir-translate 07_llvm.mlir --mlir-to-llvmir -o 08_kernel.ll

module attributes {llvm.data_layout = "", soda.bambu.container_module, soda.container_module}  {
  llvm.func @kernel_kernel(%arg0: !llvm.ptr<f32>, %arg1: !llvm.ptr<f32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<f32>, %arg6: !llvm.ptr<f32>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr<f32>, %arg13: !llvm.ptr<f32>, %arg14: i64, %arg15: i64, %arg16: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg10, %10[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg12, %14[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %arg13, %15[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %arg14, %16[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %arg15, %17[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %arg16, %18[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.mlir.constant(32 : index) : i64
    %24 = llvm.mlir.constant(1024 : index) : i64
    llvm.br ^bb1(%21 : i64)
  ^bb1(%25: i64):  // 2 preds: ^bb0, ^bb5
    %26 = llvm.icmp "slt" %25, %24 : i64
    llvm.cond_br %26, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %27 = llvm.srem %25, %23  : i64
    %28 = llvm.sdiv %25, %23  : i64
    %29 = llvm.mul %28, %23  : i64
    %30 = llvm.add %29, %27  : i64
    %31 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.getelementptr %31[%30] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %33 = llvm.load %32 : !llvm.ptr<f32>
    llvm.br ^bb3(%21 : i64)
  ^bb3(%34: i64):  // 2 preds: ^bb2, ^bb4
    %35 = llvm.icmp "slt" %34, %22 : i64
    llvm.cond_br %35, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %36 = llvm.mul %27, %22  : i64
    %37 = llvm.add %36, %34  : i64
    %38 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mul %28, %39  : i64
    %41 = llvm.add %40, %34  : i64
    %42 = llvm.getelementptr %38[%41] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %43 = llvm.load %42 : !llvm.ptr<f32>
    %44 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.getelementptr %44[%37] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %46 = llvm.load %45 : !llvm.ptr<f32>
    %47 = llvm.fmul %33, %46  : f32
    %48 = llvm.fadd %43, %47  : f32
    %49 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.mul %28, %50  : i64
    %52 = llvm.add %51, %34  : i64
    %53 = llvm.getelementptr %49[%52] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %48, %53 : !llvm.ptr<f32>
    %54 = llvm.add %34, %20  : i64
    llvm.br ^bb3(%54 : i64)
  ^bb5:  // pred: ^bb3
    %55 = llvm.add %25, %20  : i64
    llvm.br ^bb1(%55 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @_mlir_ciface_kernel_kernel(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>) {
    %0 = llvm.load %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %12 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.call @kernel_kernel(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19) : (!llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64) -> ()
    llvm.return
  }
}

