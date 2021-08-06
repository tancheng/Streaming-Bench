// RUN: mlir-translate 07_llvm.mlir --mlir-to-llvmir -o 08_kernel.ll

module attributes {llvm.data_layout = "", soda.bambu.container_module, soda.container_module}  {
  llvm.func @kernel_kernel(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i64>, %arg6: !llvm.ptr<i64>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr<f32>, %arg11: !llvm.ptr<f32>, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.ptr<f32>, %arg16: !llvm.ptr<f32>, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<f32>, %arg23: !llvm.ptr<f32>, %arg24: i64, %arg25: i64, %arg26: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.insertvalue %arg9, %10[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg10, %12[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.insertvalue %arg11, %13[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg12, %14[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %arg13, %15[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %arg14, %16[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %19 = llvm.insertvalue %arg15, %18[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %20 = llvm.insertvalue %arg16, %19[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %arg17, %20[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %22 = llvm.insertvalue %arg18, %21[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %23 = llvm.insertvalue %arg20, %22[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %24 = llvm.insertvalue %arg19, %23[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %arg21, %24[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %arg22, %26[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.insertvalue %arg23, %27[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.insertvalue %arg24, %28[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %arg25, %29[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %arg26, %30[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.mlir.constant(32 : index) : i64
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%33 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb8
    %37 = llvm.icmp "slt" %36, %32 : i64
    llvm.cond_br %37, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %38 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.getelementptr %38[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %40 = llvm.load %39 : !llvm.ptr<i64>
    %41 = llvm.add %36, %35  : i64
    %42 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.getelementptr %42[%41] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %44 = llvm.load %43 : !llvm.ptr<i64>
    llvm.br ^bb3(%40 : i64)
  ^bb3(%45: i64):  // 2 preds: ^bb2, ^bb7
    %46 = llvm.icmp "slt" %45, %44 : i64
    llvm.cond_br %46, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %47 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.getelementptr %47[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.getelementptr %50[%45] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %52 = llvm.load %51 : !llvm.ptr<f32>
    llvm.br ^bb5(%33 : i64)
  ^bb5(%53: i64):  // 2 preds: ^bb4, ^bb6
    %54 = llvm.icmp "slt" %53, %34 : i64
    llvm.cond_br %54, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %55 = llvm.mul %49, %34  : i64
    %56 = llvm.add %55, %53  : i64
    %57 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.mul %36, %58  : i64
    %60 = llvm.add %59, %53  : i64
    %61 = llvm.getelementptr %57[%60] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %62 = llvm.load %61 : !llvm.ptr<f32>
    %63 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %64 = llvm.getelementptr %63[%56] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %65 = llvm.load %64 : !llvm.ptr<f32>
    %66 = llvm.fmul %52, %65  : f32
    %67 = llvm.fadd %62, %66  : f32
    %68 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %69 = llvm.mlir.constant(4 : index) : i64
    %70 = llvm.mul %36, %69  : i64
    %71 = llvm.add %70, %53  : i64
    %72 = llvm.getelementptr %68[%71] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %67, %72 : !llvm.ptr<f32>
    %73 = llvm.add %53, %35  : i64
    llvm.br ^bb5(%73 : i64)
  ^bb7:  // pred: ^bb5
    %74 = llvm.add %45, %35  : i64
    llvm.br ^bb3(%74 : i64)
  ^bb8:  // pred: ^bb3
    %75 = llvm.add %36, %35  : i64
    llvm.br ^bb1(%75 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @_mlir_ciface_kernel_kernel(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>) {
    %0 = llvm.load %arg0 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %20 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.extractvalue %18[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %22 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %23 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %24 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %26 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>
    %27 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.extractvalue %26[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.call @kernel_kernel(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %19, %20, %21, %22, %23, %24, %25, %27, %28, %29, %30, %31) : (!llvm.ptr<i64>, !llvm.ptr<i64>, i64, i64, i64, !llvm.ptr<i64>, !llvm.ptr<i64>, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64) -> ()
    llvm.return
  }
}

