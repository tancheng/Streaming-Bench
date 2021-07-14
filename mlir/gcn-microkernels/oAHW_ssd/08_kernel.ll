; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @kernel_kernel(i64* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6, i64 %7, i64 %8, i64 %9, float* %10, float* %11, i64 %12, i64 %13, i64 %14, float* %15, float* %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, float* %22, float* %23, i64 %24, i64 %25, i64 %26, float* %27, float* %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, float* %34, float* %35, i64 %36, i64 %37, i64 %38) !dbg !3 {
  %40 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } undef, i64* %0, 0, !dbg !7
  %41 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %40, i64* %1, 1, !dbg !9
  %42 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %41, i64 %2, 2, !dbg !10
  %43 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %42, i64 %3, 3, 0, !dbg !11
  %44 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %43, i64 %4, 4, 0, !dbg !12
  %45 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } undef, i64* %5, 0, !dbg !13
  %46 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %45, i64* %6, 1, !dbg !14
  %47 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %46, i64 %7, 2, !dbg !15
  %48 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %47, i64 %8, 3, 0, !dbg !16
  %49 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %48, i64 %9, 4, 0, !dbg !17
  %50 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %10, 0, !dbg !18
  %51 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %50, float* %11, 1, !dbg !19
  %52 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %51, i64 %12, 2, !dbg !20
  %53 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %52, i64 %13, 3, 0, !dbg !21
  %54 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %53, i64 %14, 4, 0, !dbg !22
  %55 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } undef, float* %15, 0, !dbg !23
  %56 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %55, float* %16, 1, !dbg !24
  %57 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %56, i64 %17, 2, !dbg !25
  %58 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %57, i64 %18, 3, 0, !dbg !26
  %59 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %58, i64 %20, 4, 0, !dbg !27
  %60 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %59, i64 %19, 3, 1, !dbg !28
  %61 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %60, i64 %21, 4, 1, !dbg !29
  %62 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %22, 0, !dbg !30
  %63 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %62, float* %23, 1, !dbg !31
  %64 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %63, i64 %24, 2, !dbg !32
  %65 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %64, i64 %25, 3, 0, !dbg !33
  %66 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %65, i64 %26, 4, 0, !dbg !34
  %67 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } undef, float* %27, 0, !dbg !35
  %68 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %67, float* %28, 1, !dbg !36
  %69 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %68, i64 %29, 2, !dbg !37
  %70 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %69, i64 %30, 3, 0, !dbg !38
  %71 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %70, i64 %32, 4, 0, !dbg !39
  %72 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %71, i64 %31, 3, 1, !dbg !40
  %73 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %72, i64 %33, 4, 1, !dbg !41
  %74 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %34, 0, !dbg !42
  %75 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %74, float* %35, 1, !dbg !43
  %76 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %75, i64 %36, 2, !dbg !44
  %77 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %76, i64 %37, 3, 0, !dbg !45
  %78 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %77, i64 %38, 4, 0, !dbg !46
  br label %79, !dbg !47

79:                                               ; preds = %123, %39
  %80 = phi i64 [ %124, %123 ], [ 0, %39 ]
  %81 = icmp slt i64 %80, 32, !dbg !48
  br i1 %81, label %82, label %125, !dbg !49

82:                                               ; preds = %79
  %83 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %44, 1, !dbg !50
  %84 = getelementptr i64, i64* %83, i64 %80, !dbg !51
  %85 = load i64, i64* %84, align 4, !dbg !52
  %86 = add i64 %80, 1, !dbg !53
  %87 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %44, 1, !dbg !54
  %88 = getelementptr i64, i64* %87, i64 %86, !dbg !55
  %89 = load i64, i64* %88, align 4, !dbg !56
  br label %90, !dbg !57

90:                                               ; preds = %121, %82
  %91 = phi i64 [ %122, %121 ], [ %85, %82 ]
  %92 = icmp slt i64 %91, %89, !dbg !58
  br i1 %92, label %93, label %123, !dbg !59

93:                                               ; preds = %90
  %94 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %49, 1, !dbg !60
  %95 = getelementptr i64, i64* %94, i64 %91, !dbg !61
  %96 = load i64, i64* %95, align 4, !dbg !62
  %97 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %54, 1, !dbg !63
  %98 = getelementptr float, float* %97, i64 %91, !dbg !64
  %99 = load float, float* %98, align 4, !dbg !65
  br label %100, !dbg !66

100:                                              ; preds = %103, %93
  %101 = phi i64 [ %120, %103 ], [ 0, %93 ]
  %102 = icmp slt i64 %101, 4, !dbg !67
  br i1 %102, label %103, label %121, !dbg !68

103:                                              ; preds = %100
  %104 = mul i64 %96, 4, !dbg !69
  %105 = add i64 %104, %101, !dbg !70
  %106 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %61, 1, !dbg !71
  %107 = mul i64 %80, 4, !dbg !72
  %108 = add i64 %107, %101, !dbg !73
  %109 = getelementptr float, float* %106, i64 %108, !dbg !74
  %110 = load float, float* %109, align 4, !dbg !75
  %111 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %66, 1, !dbg !76
  %112 = getelementptr float, float* %111, i64 %105, !dbg !77
  %113 = load float, float* %112, align 4, !dbg !78
  %114 = fmul float %99, %113, !dbg !79
  %115 = fadd float %110, %114, !dbg !80
  %116 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %61, 1, !dbg !81
  %117 = mul i64 %80, 4, !dbg !82
  %118 = add i64 %117, %101, !dbg !83
  %119 = getelementptr float, float* %116, i64 %118, !dbg !84
  store float %115, float* %119, align 4, !dbg !85
  %120 = add i64 %101, 1, !dbg !86
  br label %100, !dbg !87

121:                                              ; preds = %100
  %122 = add i64 %91, 1, !dbg !88
  br label %90, !dbg !89

123:                                              ; preds = %90
  %124 = add i64 %80, 1, !dbg !90
  br label %79, !dbg !91

125:                                              ; preds = %79
  br label %126, !dbg !92

126:                                              ; preds = %158, %125
  %127 = phi i64 [ %159, %158 ], [ 0, %125 ]
  %128 = icmp slt i64 %127, 128, !dbg !93
  br i1 %128, label %129, label %160, !dbg !94

129:                                              ; preds = %126
  %130 = srem i64 %127, 4, !dbg !95
  %131 = sdiv i64 %127, 4, !dbg !96
  %132 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %61, 1, !dbg !97
  %133 = mul i64 %131, 4, !dbg !98
  %134 = add i64 %133, %130, !dbg !99
  %135 = getelementptr float, float* %132, i64 %134, !dbg !100
  %136 = load float, float* %135, align 4, !dbg !101
  br label %137, !dbg !102

137:                                              ; preds = %140, %129
  %138 = phi i64 [ %157, %140 ], [ 0, %129 ]
  %139 = icmp slt i64 %138, 2, !dbg !103
  br i1 %139, label %140, label %158, !dbg !104

140:                                              ; preds = %137
  %141 = mul i64 %130, 2, !dbg !105
  %142 = add i64 %141, %138, !dbg !106
  %143 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %73, 1, !dbg !107
  %144 = mul i64 %131, 2, !dbg !108
  %145 = add i64 %144, %138, !dbg !109
  %146 = getelementptr float, float* %143, i64 %145, !dbg !110
  %147 = load float, float* %146, align 4, !dbg !111
  %148 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %78, 1, !dbg !112
  %149 = getelementptr float, float* %148, i64 %142, !dbg !113
  %150 = load float, float* %149, align 4, !dbg !114
  %151 = fmul float %136, %150, !dbg !115
  %152 = fadd float %147, %151, !dbg !116
  %153 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %73, 1, !dbg !117
  %154 = mul i64 %131, 2, !dbg !118
  %155 = add i64 %154, %138, !dbg !119
  %156 = getelementptr float, float* %153, i64 %155, !dbg !120
  store float %152, float* %156, align 4, !dbg !121
  %157 = add i64 %138, 1, !dbg !122
  br label %137, !dbg !123

158:                                              ; preds = %137
  %159 = add i64 %127, 1, !dbg !124
  br label %126, !dbg !125

160:                                              ; preds = %126
  ret void, !dbg !126
}

define void @_mlir_ciface_kernel_kernel({ i64*, i64*, i64, [1 x i64], [1 x i64] }* %0, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %1, { float*, float*, i64, [1 x i64], [1 x i64] }* %2, { float*, float*, i64, [2 x i64], [2 x i64] }* %3, { float*, float*, i64, [1 x i64], [1 x i64] }* %4, { float*, float*, i64, [2 x i64], [2 x i64] }* %5, { float*, float*, i64, [1 x i64], [1 x i64] }* %6) !dbg !127 {
  %8 = load { i64*, i64*, i64, [1 x i64], [1 x i64] }, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %0, align 8, !dbg !128
  %9 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %8, 0, !dbg !130
  %10 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %8, 1, !dbg !131
  %11 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %8, 2, !dbg !132
  %12 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %8, 3, 0, !dbg !133
  %13 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %8, 4, 0, !dbg !134
  %14 = load { i64*, i64*, i64, [1 x i64], [1 x i64] }, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !135
  %15 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %14, 0, !dbg !136
  %16 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !137
  %17 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %14, 2, !dbg !138
  %18 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %14, 3, 0, !dbg !139
  %19 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %14, 4, 0, !dbg !140
  %20 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !141
  %21 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %20, 0, !dbg !142
  %22 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %20, 1, !dbg !143
  %23 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %20, 2, !dbg !144
  %24 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %20, 3, 0, !dbg !145
  %25 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %20, 4, 0, !dbg !146
  %26 = load { float*, float*, i64, [2 x i64], [2 x i64] }, { float*, float*, i64, [2 x i64], [2 x i64] }* %3, align 8, !dbg !147
  %27 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %26, 0, !dbg !148
  %28 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %26, 1, !dbg !149
  %29 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %26, 2, !dbg !150
  %30 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %26, 3, 0, !dbg !151
  %31 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %26, 3, 1, !dbg !152
  %32 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %26, 4, 0, !dbg !153
  %33 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %26, 4, 1, !dbg !154
  %34 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %4, align 8, !dbg !155
  %35 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %34, 0, !dbg !156
  %36 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %34, 1, !dbg !157
  %37 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %34, 2, !dbg !158
  %38 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %34, 3, 0, !dbg !159
  %39 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %34, 4, 0, !dbg !160
  %40 = load { float*, float*, i64, [2 x i64], [2 x i64] }, { float*, float*, i64, [2 x i64], [2 x i64] }* %5, align 8, !dbg !161
  %41 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %40, 0, !dbg !162
  %42 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %40, 1, !dbg !163
  %43 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %40, 2, !dbg !164
  %44 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %40, 3, 0, !dbg !165
  %45 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %40, 3, 1, !dbg !166
  %46 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %40, 4, 0, !dbg !167
  %47 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %40, 4, 1, !dbg !168
  %48 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %6, align 8, !dbg !169
  %49 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %48, 0, !dbg !170
  %50 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %48, 1, !dbg !171
  %51 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %48, 2, !dbg !172
  %52 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %48, 3, 0, !dbg !173
  %53 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %48, 4, 0, !dbg !174
  call void @kernel_kernel(i64* %9, i64* %10, i64 %11, i64 %12, i64 %13, i64* %15, i64* %16, i64 %17, i64 %18, i64 %19, float* %21, float* %22, i64 %23, i64 %24, i64 %25, float* %27, float* %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, float* %35, float* %36, i64 %37, i64 %38, i64 %39, float* %41, float* %42, i64 %43, i64 %44, i64 %45, i64 %46, i64 %47, float* %49, float* %50, i64 %51, i64 %52, i64 %53), !dbg !175
  ret void, !dbg !176
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_kernel", linkageName: "kernel_kernel", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "07_llvm.mlir", directory: "/home/nico/Development/soda/builds/tmp/cheng/mlir/gcn-microkernels/AHW_sdd")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 6, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 7, column: 10, scope: !8)
!10 = !DILocation(line: 8, column: 10, scope: !8)
!11 = !DILocation(line: 9, column: 10, scope: !8)
!12 = !DILocation(line: 10, column: 10, scope: !8)
!13 = !DILocation(line: 12, column: 10, scope: !8)
!14 = !DILocation(line: 13, column: 10, scope: !8)
!15 = !DILocation(line: 14, column: 10, scope: !8)
!16 = !DILocation(line: 15, column: 11, scope: !8)
!17 = !DILocation(line: 16, column: 11, scope: !8)
!18 = !DILocation(line: 18, column: 11, scope: !8)
!19 = !DILocation(line: 19, column: 11, scope: !8)
!20 = !DILocation(line: 20, column: 11, scope: !8)
!21 = !DILocation(line: 21, column: 11, scope: !8)
!22 = !DILocation(line: 22, column: 11, scope: !8)
!23 = !DILocation(line: 24, column: 11, scope: !8)
!24 = !DILocation(line: 25, column: 11, scope: !8)
!25 = !DILocation(line: 26, column: 11, scope: !8)
!26 = !DILocation(line: 27, column: 11, scope: !8)
!27 = !DILocation(line: 28, column: 11, scope: !8)
!28 = !DILocation(line: 29, column: 11, scope: !8)
!29 = !DILocation(line: 30, column: 11, scope: !8)
!30 = !DILocation(line: 32, column: 11, scope: !8)
!31 = !DILocation(line: 33, column: 11, scope: !8)
!32 = !DILocation(line: 34, column: 11, scope: !8)
!33 = !DILocation(line: 35, column: 11, scope: !8)
!34 = !DILocation(line: 36, column: 11, scope: !8)
!35 = !DILocation(line: 38, column: 11, scope: !8)
!36 = !DILocation(line: 39, column: 11, scope: !8)
!37 = !DILocation(line: 40, column: 11, scope: !8)
!38 = !DILocation(line: 41, column: 11, scope: !8)
!39 = !DILocation(line: 42, column: 11, scope: !8)
!40 = !DILocation(line: 43, column: 11, scope: !8)
!41 = !DILocation(line: 44, column: 11, scope: !8)
!42 = !DILocation(line: 46, column: 11, scope: !8)
!43 = !DILocation(line: 47, column: 11, scope: !8)
!44 = !DILocation(line: 48, column: 11, scope: !8)
!45 = !DILocation(line: 49, column: 11, scope: !8)
!46 = !DILocation(line: 50, column: 11, scope: !8)
!47 = !DILocation(line: 56, column: 5, scope: !8)
!48 = !DILocation(line: 58, column: 11, scope: !8)
!49 = !DILocation(line: 59, column: 5, scope: !8)
!50 = !DILocation(line: 61, column: 11, scope: !8)
!51 = !DILocation(line: 62, column: 11, scope: !8)
!52 = !DILocation(line: 63, column: 11, scope: !8)
!53 = !DILocation(line: 64, column: 11, scope: !8)
!54 = !DILocation(line: 65, column: 11, scope: !8)
!55 = !DILocation(line: 66, column: 11, scope: !8)
!56 = !DILocation(line: 67, column: 11, scope: !8)
!57 = !DILocation(line: 68, column: 5, scope: !8)
!58 = !DILocation(line: 70, column: 11, scope: !8)
!59 = !DILocation(line: 71, column: 5, scope: !8)
!60 = !DILocation(line: 73, column: 11, scope: !8)
!61 = !DILocation(line: 74, column: 11, scope: !8)
!62 = !DILocation(line: 75, column: 11, scope: !8)
!63 = !DILocation(line: 76, column: 11, scope: !8)
!64 = !DILocation(line: 77, column: 11, scope: !8)
!65 = !DILocation(line: 78, column: 11, scope: !8)
!66 = !DILocation(line: 79, column: 5, scope: !8)
!67 = !DILocation(line: 81, column: 11, scope: !8)
!68 = !DILocation(line: 82, column: 5, scope: !8)
!69 = !DILocation(line: 84, column: 11, scope: !8)
!70 = !DILocation(line: 85, column: 11, scope: !8)
!71 = !DILocation(line: 86, column: 11, scope: !8)
!72 = !DILocation(line: 88, column: 11, scope: !8)
!73 = !DILocation(line: 89, column: 11, scope: !8)
!74 = !DILocation(line: 90, column: 11, scope: !8)
!75 = !DILocation(line: 91, column: 11, scope: !8)
!76 = !DILocation(line: 92, column: 11, scope: !8)
!77 = !DILocation(line: 93, column: 11, scope: !8)
!78 = !DILocation(line: 94, column: 11, scope: !8)
!79 = !DILocation(line: 95, column: 11, scope: !8)
!80 = !DILocation(line: 96, column: 11, scope: !8)
!81 = !DILocation(line: 97, column: 11, scope: !8)
!82 = !DILocation(line: 99, column: 11, scope: !8)
!83 = !DILocation(line: 100, column: 11, scope: !8)
!84 = !DILocation(line: 101, column: 11, scope: !8)
!85 = !DILocation(line: 102, column: 5, scope: !8)
!86 = !DILocation(line: 103, column: 11, scope: !8)
!87 = !DILocation(line: 104, column: 5, scope: !8)
!88 = !DILocation(line: 106, column: 11, scope: !8)
!89 = !DILocation(line: 107, column: 5, scope: !8)
!90 = !DILocation(line: 109, column: 11, scope: !8)
!91 = !DILocation(line: 110, column: 5, scope: !8)
!92 = !DILocation(line: 113, column: 5, scope: !8)
!93 = !DILocation(line: 115, column: 11, scope: !8)
!94 = !DILocation(line: 116, column: 5, scope: !8)
!95 = !DILocation(line: 118, column: 11, scope: !8)
!96 = !DILocation(line: 119, column: 11, scope: !8)
!97 = !DILocation(line: 120, column: 11, scope: !8)
!98 = !DILocation(line: 122, column: 11, scope: !8)
!99 = !DILocation(line: 123, column: 11, scope: !8)
!100 = !DILocation(line: 124, column: 12, scope: !8)
!101 = !DILocation(line: 125, column: 12, scope: !8)
!102 = !DILocation(line: 126, column: 5, scope: !8)
!103 = !DILocation(line: 128, column: 12, scope: !8)
!104 = !DILocation(line: 129, column: 5, scope: !8)
!105 = !DILocation(line: 131, column: 12, scope: !8)
!106 = !DILocation(line: 132, column: 12, scope: !8)
!107 = !DILocation(line: 133, column: 12, scope: !8)
!108 = !DILocation(line: 135, column: 12, scope: !8)
!109 = !DILocation(line: 136, column: 12, scope: !8)
!110 = !DILocation(line: 137, column: 12, scope: !8)
!111 = !DILocation(line: 138, column: 12, scope: !8)
!112 = !DILocation(line: 139, column: 12, scope: !8)
!113 = !DILocation(line: 140, column: 12, scope: !8)
!114 = !DILocation(line: 141, column: 12, scope: !8)
!115 = !DILocation(line: 142, column: 12, scope: !8)
!116 = !DILocation(line: 143, column: 12, scope: !8)
!117 = !DILocation(line: 144, column: 12, scope: !8)
!118 = !DILocation(line: 146, column: 12, scope: !8)
!119 = !DILocation(line: 147, column: 12, scope: !8)
!120 = !DILocation(line: 148, column: 12, scope: !8)
!121 = !DILocation(line: 149, column: 5, scope: !8)
!122 = !DILocation(line: 150, column: 12, scope: !8)
!123 = !DILocation(line: 151, column: 5, scope: !8)
!124 = !DILocation(line: 153, column: 12, scope: !8)
!125 = !DILocation(line: 154, column: 5, scope: !8)
!126 = !DILocation(line: 156, column: 5, scope: !8)
!127 = distinct !DISubprogram(name: "_mlir_ciface_kernel_kernel", linkageName: "_mlir_ciface_kernel_kernel", scope: null, file: !4, line: 158, type: !5, scopeLine: 158, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!128 = !DILocation(line: 159, column: 10, scope: !129)
!129 = !DILexicalBlockFile(scope: !127, file: !4, discriminator: 0)
!130 = !DILocation(line: 160, column: 10, scope: !129)
!131 = !DILocation(line: 161, column: 10, scope: !129)
!132 = !DILocation(line: 162, column: 10, scope: !129)
!133 = !DILocation(line: 163, column: 10, scope: !129)
!134 = !DILocation(line: 164, column: 10, scope: !129)
!135 = !DILocation(line: 165, column: 10, scope: !129)
!136 = !DILocation(line: 166, column: 10, scope: !129)
!137 = !DILocation(line: 167, column: 10, scope: !129)
!138 = !DILocation(line: 168, column: 10, scope: !129)
!139 = !DILocation(line: 169, column: 11, scope: !129)
!140 = !DILocation(line: 170, column: 11, scope: !129)
!141 = !DILocation(line: 171, column: 11, scope: !129)
!142 = !DILocation(line: 172, column: 11, scope: !129)
!143 = !DILocation(line: 173, column: 11, scope: !129)
!144 = !DILocation(line: 174, column: 11, scope: !129)
!145 = !DILocation(line: 175, column: 11, scope: !129)
!146 = !DILocation(line: 176, column: 11, scope: !129)
!147 = !DILocation(line: 177, column: 11, scope: !129)
!148 = !DILocation(line: 178, column: 11, scope: !129)
!149 = !DILocation(line: 179, column: 11, scope: !129)
!150 = !DILocation(line: 180, column: 11, scope: !129)
!151 = !DILocation(line: 181, column: 11, scope: !129)
!152 = !DILocation(line: 182, column: 11, scope: !129)
!153 = !DILocation(line: 183, column: 11, scope: !129)
!154 = !DILocation(line: 184, column: 11, scope: !129)
!155 = !DILocation(line: 185, column: 11, scope: !129)
!156 = !DILocation(line: 186, column: 11, scope: !129)
!157 = !DILocation(line: 187, column: 11, scope: !129)
!158 = !DILocation(line: 188, column: 11, scope: !129)
!159 = !DILocation(line: 189, column: 11, scope: !129)
!160 = !DILocation(line: 190, column: 11, scope: !129)
!161 = !DILocation(line: 191, column: 11, scope: !129)
!162 = !DILocation(line: 192, column: 11, scope: !129)
!163 = !DILocation(line: 193, column: 11, scope: !129)
!164 = !DILocation(line: 194, column: 11, scope: !129)
!165 = !DILocation(line: 195, column: 11, scope: !129)
!166 = !DILocation(line: 196, column: 11, scope: !129)
!167 = !DILocation(line: 197, column: 11, scope: !129)
!168 = !DILocation(line: 198, column: 11, scope: !129)
!169 = !DILocation(line: 199, column: 11, scope: !129)
!170 = !DILocation(line: 200, column: 11, scope: !129)
!171 = !DILocation(line: 201, column: 11, scope: !129)
!172 = !DILocation(line: 202, column: 11, scope: !129)
!173 = !DILocation(line: 203, column: 11, scope: !129)
!174 = !DILocation(line: 204, column: 11, scope: !129)
!175 = !DILocation(line: 205, column: 5, scope: !129)
!176 = !DILocation(line: 206, column: 5, scope: !129)
