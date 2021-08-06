// RUN: mlir-translate 07_llvm.mlir --mlir-to-llvmir -o 08_kernel.ll

module attributes {llvm.data_layout = "", soda.bambu.container_module, soda.container_module}  {
  llvm.func @kernel_kernel(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i64>, %arg6: !llvm.ptr<i64>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr<f32>, %arg11: !llvm.ptr<f32>, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.ptr<f32>, %arg16: !llvm.ptr<f32>, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<f32>, %arg23: !llvm.ptr<f32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: !llvm.ptr<f32>, %arg28: !llvm.ptr<f32>, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: !llvm.ptr<f32>, %arg35: !llvm.ptr<f32>, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: !llvm.ptr<f32>, %arg40: !llvm.ptr<f32>, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: i64, %arg45: i64) {
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
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %arg27, %32[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %34 = llvm.insertvalue %arg28, %33[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.insertvalue %arg29, %34[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %36 = llvm.insertvalue %arg30, %35[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %37 = llvm.insertvalue %arg32, %36[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %38 = llvm.insertvalue %arg31, %37[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.insertvalue %arg33, %38[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.insertvalue %arg34, %40[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %arg35, %41[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.insertvalue %arg36, %42[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %arg37, %43[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %arg38, %44[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %47 = llvm.insertvalue %arg39, %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %48 = llvm.insertvalue %arg40, %47[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.insertvalue %arg41, %48[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %50 = llvm.insertvalue %arg42, %49[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %51 = llvm.insertvalue %arg44, %50[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %arg43, %51[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %53 = llvm.insertvalue %arg45, %52[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %54 = llvm.mlir.constant(3.40282347E+38 : f32) : f32
    %55 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.mlir.constant(32 : index) : i64
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.constant(4 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%58 : i64)
  ^bb1(%61: i64):  // 2 preds: ^bb0, ^bb8
    %62 = llvm.icmp "slt" %61, %57 : i64
    llvm.cond_br %62, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %63 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %64 = llvm.getelementptr %63[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %65 = llvm.load %64 : !llvm.ptr<i64>
    %66 = llvm.add %61, %60  : i64
    %67 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.getelementptr %67[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    llvm.br ^bb3(%65 : i64)
  ^bb3(%70: i64):  // 2 preds: ^bb2, ^bb7
    %71 = llvm.icmp "slt" %70, %69 : i64
    llvm.cond_br %71, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %72 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %73 = llvm.getelementptr %72[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %74 = llvm.load %73 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %76 = llvm.getelementptr %75[%70] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %77 = llvm.load %76 : !llvm.ptr<f32>
    llvm.br ^bb5(%58 : i64)
  ^bb5(%78: i64):  // 2 preds: ^bb4, ^bb6
    %79 = llvm.icmp "slt" %78, %59 : i64
    llvm.cond_br %79, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %80 = llvm.mul %74, %59  : i64
    %81 = llvm.add %80, %78  : i64
    %82 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %83 = llvm.mlir.constant(4 : index) : i64
    %84 = llvm.mul %61, %83  : i64
    %85 = llvm.add %84, %78  : i64
    %86 = llvm.getelementptr %82[%85] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %87 = llvm.load %86 : !llvm.ptr<f32>
    %88 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %89 = llvm.getelementptr %88[%81] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %90 = llvm.load %89 : !llvm.ptr<f32>
    %91 = llvm.fmul %77, %90  : f32
    %92 = llvm.fadd %87, %91  : f32
    %93 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mul %61, %94  : i64
    %96 = llvm.add %95, %78  : i64
    %97 = llvm.getelementptr %93[%96] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %92, %97 : !llvm.ptr<f32>
    %98 = llvm.add %78, %60  : i64
    llvm.br ^bb5(%98 : i64)
  ^bb7:  // pred: ^bb5
    %99 = llvm.add %70, %60  : i64
    llvm.br ^bb3(%99 : i64)
  ^bb8:  // pred: ^bb3
    %100 = llvm.add %61, %60  : i64
    llvm.br ^bb1(%100 : i64)
  ^bb9:  // pred: ^bb1
    %101 = llvm.mlir.constant(128 : index) : i64
    llvm.br ^bb10(%58 : i64)
  ^bb10(%102: i64):  // 2 preds: ^bb9, ^bb14
    %103 = llvm.icmp "slt" %102, %101 : i64
    llvm.cond_br %103, ^bb11, ^bb15
  ^bb11:  // pred: ^bb10
    %104 = llvm.srem %102, %59  : i64
    %105 = llvm.sdiv %102, %59  : i64
    %106 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mul %105, %107  : i64
    %109 = llvm.add %108, %104  : i64
    %110 = llvm.getelementptr %106[%109] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %111 = llvm.load %110 : !llvm.ptr<f32>
    llvm.br ^bb12(%58 : i64)
  ^bb12(%112: i64):  // 2 preds: ^bb11, ^bb13
    %113 = llvm.icmp "slt" %112, %56 : i64
    llvm.cond_br %113, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %114 = llvm.mul %104, %56  : i64
    %115 = llvm.add %114, %112  : i64
    %116 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mul %105, %117  : i64
    %119 = llvm.add %118, %112  : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %121 = llvm.load %120 : !llvm.ptr<f32>
    %122 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %123 = llvm.getelementptr %122[%115] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %124 = llvm.load %123 : !llvm.ptr<f32>
    %125 = llvm.fmul %111, %124  : f32
    %126 = llvm.fadd %121, %125  : f32
    %127 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mul %105, %128  : i64
    %130 = llvm.add %129, %112  : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %126, %131 : !llvm.ptr<f32>
    %132 = llvm.add %112, %60  : i64
    llvm.br ^bb12(%132 : i64)
  ^bb14:  // pred: ^bb12
    %133 = llvm.add %102, %60  : i64
    llvm.br ^bb10(%133 : i64)
  ^bb15:  // pred: ^bb10
    %134 = llvm.mlir.constant(64 : index) : i64
    llvm.br ^bb16(%58 : i64)
  ^bb16(%135: i64):  // 2 preds: ^bb15, ^bb17
    %136 = llvm.icmp "slt" %135, %134 : i64
    llvm.cond_br %136, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %137 = llvm.srem %135, %56  : i64
    %138 = llvm.sdiv %135, %56  : i64
    %139 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %138, %140  : i64
    %142 = llvm.add %141, %137  : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %144 = llvm.load %143 : !llvm.ptr<f32>
    %145 = llvm.fcmp "olt" %144, %55 : f32
    %146 = llvm.select %145, %55, %144 : i1, f32
    %147 = llvm.fcmp "olt" %54, %144 : f32
    %148 = llvm.select %147, %54, %146 : i1, f32
    %149 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mul %138, %150  : i64
    %152 = llvm.add %151, %137  : i64
    %153 = llvm.getelementptr %149[%152] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %148, %153 : !llvm.ptr<f32>
    %154 = llvm.add %135, %60  : i64
    llvm.br ^bb16(%154 : i64)
  ^bb18:  // pred: ^bb16
    llvm.return
  }
  llvm.func @_mlir_ciface_kernel_kernel(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg6: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg7: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>) {
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
    %32 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %33 = llvm.extractvalue %32[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %34 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.extractvalue %32[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %36 = llvm.extractvalue %32[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %37 = llvm.extractvalue %32[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %38 = llvm.extractvalue %32[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.extractvalue %32[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %40 = llvm.load %arg6 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>>
    %41 = llvm.extractvalue %40[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.extractvalue %40[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.extractvalue %40[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.extractvalue %40[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.load %arg7 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %47 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %48 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.extractvalue %46[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %50 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %51 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %53 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    llvm.call @kernel_kernel(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %19, %20, %21, %22, %23, %24, %25, %27, %28, %29, %30, %31, %33, %34, %35, %36, %37, %38, %39, %41, %42, %43, %44, %45, %47, %48, %49, %50, %51, %52, %53) : (!llvm.ptr<i64>, !llvm.ptr<i64>, i64, i64, i64, !llvm.ptr<i64>, !llvm.ptr<i64>, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
}

