; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @kernel_kernel(i64* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6, i64 %7, i64 %8, i64 %9, float* %10, float* %11, i64 %12, i64 %13, i64 %14, float* %15, float* %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, float* %22, float* %23, i64 %24, i64 %25, i64 %26) !dbg !3 {
  %28 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } undef, i64* %0, 0, !dbg !7
  %29 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %28, i64* %1, 1, !dbg !9
  %30 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %29, i64 %2, 2, !dbg !10
  %31 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %30, i64 %3, 3, 0, !dbg !11
  %32 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %31, i64 %4, 4, 0, !dbg !12
  %33 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } undef, i64* %5, 0, !dbg !13
  %34 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %33, i64* %6, 1, !dbg !14
  %35 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %34, i64 %7, 2, !dbg !15
  %36 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %35, i64 %8, 3, 0, !dbg !16
  %37 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %36, i64 %9, 4, 0, !dbg !17
  %38 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %10, 0, !dbg !18
  %39 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %38, float* %11, 1, !dbg !19
  %40 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %39, i64 %12, 2, !dbg !20
  %41 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %40, i64 %13, 3, 0, !dbg !21
  %42 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %41, i64 %14, 4, 0, !dbg !22
  %43 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } undef, float* %15, 0, !dbg !23
  %44 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %43, float* %16, 1, !dbg !24
  %45 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %44, i64 %17, 2, !dbg !25
  %46 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %45, i64 %18, 3, 0, !dbg !26
  %47 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %46, i64 %20, 4, 0, !dbg !27
  %48 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %47, i64 %19, 3, 1, !dbg !28
  %49 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %48, i64 %21, 4, 1, !dbg !29
  %50 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %22, 0, !dbg !30
  %51 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %50, float* %23, 1, !dbg !31
  %52 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %51, i64 %24, 2, !dbg !32
  %53 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %52, i64 %25, 3, 0, !dbg !33
  %54 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %53, i64 %26, 4, 0, !dbg !34
  br label %55, !dbg !35

55:                                               ; preds = %99, %27
  %56 = phi i64 [ %100, %99 ], [ 0, %27 ]
  %57 = icmp slt i64 %56, 32, !dbg !36
  br i1 %57, label %58, label %101, !dbg !37

58:                                               ; preds = %55
  %59 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %32, 1, !dbg !38
  %60 = getelementptr i64, i64* %59, i64 %56, !dbg !39
  %61 = load i64, i64* %60, align 4, !dbg !40
  %62 = add i64 %56, 1, !dbg !41
  %63 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %32, 1, !dbg !42
  %64 = getelementptr i64, i64* %63, i64 %62, !dbg !43
  %65 = load i64, i64* %64, align 4, !dbg !44
  br label %66, !dbg !45

66:                                               ; preds = %97, %58
  %67 = phi i64 [ %98, %97 ], [ %61, %58 ]
  %68 = icmp slt i64 %67, %65, !dbg !46
  br i1 %68, label %69, label %99, !dbg !47

69:                                               ; preds = %66
  %70 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %37, 1, !dbg !48
  %71 = getelementptr i64, i64* %70, i64 %67, !dbg !49
  %72 = load i64, i64* %71, align 4, !dbg !50
  %73 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %42, 1, !dbg !51
  %74 = getelementptr float, float* %73, i64 %67, !dbg !52
  %75 = load float, float* %74, align 4, !dbg !53
  br label %76, !dbg !54

76:                                               ; preds = %79, %69
  %77 = phi i64 [ %96, %79 ], [ 0, %69 ]
  %78 = icmp slt i64 %77, 4, !dbg !55
  br i1 %78, label %79, label %97, !dbg !56

79:                                               ; preds = %76
  %80 = mul i64 %72, 4, !dbg !57
  %81 = add i64 %80, %77, !dbg !58
  %82 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %49, 1, !dbg !59
  %83 = mul i64 %56, 4, !dbg !60
  %84 = add i64 %83, %77, !dbg !61
  %85 = getelementptr float, float* %82, i64 %84, !dbg !62
  %86 = load float, float* %85, align 4, !dbg !63
  %87 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %54, 1, !dbg !64
  %88 = getelementptr float, float* %87, i64 %81, !dbg !65
  %89 = load float, float* %88, align 4, !dbg !66
  %90 = fmul float %75, %89, !dbg !67
  %91 = fadd float %86, %90, !dbg !68
  %92 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %49, 1, !dbg !69
  %93 = mul i64 %56, 4, !dbg !70
  %94 = add i64 %93, %77, !dbg !71
  %95 = getelementptr float, float* %92, i64 %94, !dbg !72
  store float %91, float* %95, align 4, !dbg !73
  %96 = add i64 %77, 1, !dbg !74
  br label %76, !dbg !75

97:                                               ; preds = %76
  %98 = add i64 %67, 1, !dbg !76
  br label %66, !dbg !77

99:                                               ; preds = %66
  %100 = add i64 %56, 1, !dbg !78
  br label %55, !dbg !79

101:                                              ; preds = %55
  ret void, !dbg !80
}

define void @_mlir_ciface_kernel_kernel({ i64*, i64*, i64, [1 x i64], [1 x i64] }* %0, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %1, { float*, float*, i64, [1 x i64], [1 x i64] }* %2, { float*, float*, i64, [2 x i64], [2 x i64] }* %3, { float*, float*, i64, [1 x i64], [1 x i64] }* %4) !dbg !81 {
  %6 = load { i64*, i64*, i64, [1 x i64], [1 x i64] }, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %0, align 8, !dbg !82
  %7 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %6, 0, !dbg !84
  %8 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %6, 1, !dbg !85
  %9 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %6, 2, !dbg !86
  %10 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %6, 3, 0, !dbg !87
  %11 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %6, 4, 0, !dbg !88
  %12 = load { i64*, i64*, i64, [1 x i64], [1 x i64] }, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !89
  %13 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %12, 0, !dbg !90
  %14 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %12, 1, !dbg !91
  %15 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %12, 2, !dbg !92
  %16 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %12, 3, 0, !dbg !93
  %17 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %12, 4, 0, !dbg !94
  %18 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !95
  %19 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 0, !dbg !96
  %20 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 1, !dbg !97
  %21 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 2, !dbg !98
  %22 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 3, 0, !dbg !99
  %23 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 4, 0, !dbg !100
  %24 = load { float*, float*, i64, [2 x i64], [2 x i64] }, { float*, float*, i64, [2 x i64], [2 x i64] }* %3, align 8, !dbg !101
  %25 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %24, 0, !dbg !102
  %26 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %24, 1, !dbg !103
  %27 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %24, 2, !dbg !104
  %28 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %24, 3, 0, !dbg !105
  %29 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %24, 3, 1, !dbg !106
  %30 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %24, 4, 0, !dbg !107
  %31 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %24, 4, 1, !dbg !108
  %32 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %4, align 8, !dbg !109
  %33 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %32, 0, !dbg !110
  %34 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %32, 1, !dbg !111
  %35 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %32, 2, !dbg !112
  %36 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %32, 3, 0, !dbg !113
  %37 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %32, 4, 0, !dbg !114
  call void @kernel_kernel(i64* %7, i64* %8, i64 %9, i64 %10, i64 %11, i64* %13, i64* %14, i64 %15, i64 %16, i64 %17, float* %19, float* %20, i64 %21, i64 %22, i64 %23, float* %25, float* %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, float* %33, float* %34, i64 %35, i64 %36, i64 %37), !dbg !115
  ret void, !dbg !116
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_kernel", linkageName: "kernel_kernel", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "07_llvm.mlir", directory: "/home/nico/Development/soda/builds/tmp/cheng/mlir/gcn-microkernels/AH_sd")
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
!35 = !DILocation(line: 41, column: 5, scope: !8)
!36 = !DILocation(line: 43, column: 11, scope: !8)
!37 = !DILocation(line: 44, column: 5, scope: !8)
!38 = !DILocation(line: 46, column: 11, scope: !8)
!39 = !DILocation(line: 47, column: 11, scope: !8)
!40 = !DILocation(line: 48, column: 11, scope: !8)
!41 = !DILocation(line: 49, column: 11, scope: !8)
!42 = !DILocation(line: 50, column: 11, scope: !8)
!43 = !DILocation(line: 51, column: 11, scope: !8)
!44 = !DILocation(line: 52, column: 11, scope: !8)
!45 = !DILocation(line: 53, column: 5, scope: !8)
!46 = !DILocation(line: 55, column: 11, scope: !8)
!47 = !DILocation(line: 56, column: 5, scope: !8)
!48 = !DILocation(line: 58, column: 11, scope: !8)
!49 = !DILocation(line: 59, column: 11, scope: !8)
!50 = !DILocation(line: 60, column: 11, scope: !8)
!51 = !DILocation(line: 61, column: 11, scope: !8)
!52 = !DILocation(line: 62, column: 11, scope: !8)
!53 = !DILocation(line: 63, column: 11, scope: !8)
!54 = !DILocation(line: 64, column: 5, scope: !8)
!55 = !DILocation(line: 66, column: 11, scope: !8)
!56 = !DILocation(line: 67, column: 5, scope: !8)
!57 = !DILocation(line: 69, column: 11, scope: !8)
!58 = !DILocation(line: 70, column: 11, scope: !8)
!59 = !DILocation(line: 71, column: 11, scope: !8)
!60 = !DILocation(line: 73, column: 11, scope: !8)
!61 = !DILocation(line: 74, column: 11, scope: !8)
!62 = !DILocation(line: 75, column: 11, scope: !8)
!63 = !DILocation(line: 76, column: 11, scope: !8)
!64 = !DILocation(line: 77, column: 11, scope: !8)
!65 = !DILocation(line: 78, column: 11, scope: !8)
!66 = !DILocation(line: 79, column: 11, scope: !8)
!67 = !DILocation(line: 80, column: 11, scope: !8)
!68 = !DILocation(line: 81, column: 11, scope: !8)
!69 = !DILocation(line: 82, column: 11, scope: !8)
!70 = !DILocation(line: 84, column: 11, scope: !8)
!71 = !DILocation(line: 85, column: 11, scope: !8)
!72 = !DILocation(line: 86, column: 11, scope: !8)
!73 = !DILocation(line: 87, column: 5, scope: !8)
!74 = !DILocation(line: 88, column: 11, scope: !8)
!75 = !DILocation(line: 89, column: 5, scope: !8)
!76 = !DILocation(line: 91, column: 11, scope: !8)
!77 = !DILocation(line: 92, column: 5, scope: !8)
!78 = !DILocation(line: 94, column: 11, scope: !8)
!79 = !DILocation(line: 95, column: 5, scope: !8)
!80 = !DILocation(line: 97, column: 5, scope: !8)
!81 = distinct !DISubprogram(name: "_mlir_ciface_kernel_kernel", linkageName: "_mlir_ciface_kernel_kernel", scope: null, file: !4, line: 99, type: !5, scopeLine: 99, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!82 = !DILocation(line: 100, column: 10, scope: !83)
!83 = !DILexicalBlockFile(scope: !81, file: !4, discriminator: 0)
!84 = !DILocation(line: 101, column: 10, scope: !83)
!85 = !DILocation(line: 102, column: 10, scope: !83)
!86 = !DILocation(line: 103, column: 10, scope: !83)
!87 = !DILocation(line: 104, column: 10, scope: !83)
!88 = !DILocation(line: 105, column: 10, scope: !83)
!89 = !DILocation(line: 106, column: 10, scope: !83)
!90 = !DILocation(line: 107, column: 10, scope: !83)
!91 = !DILocation(line: 108, column: 10, scope: !83)
!92 = !DILocation(line: 109, column: 10, scope: !83)
!93 = !DILocation(line: 110, column: 11, scope: !83)
!94 = !DILocation(line: 111, column: 11, scope: !83)
!95 = !DILocation(line: 112, column: 11, scope: !83)
!96 = !DILocation(line: 113, column: 11, scope: !83)
!97 = !DILocation(line: 114, column: 11, scope: !83)
!98 = !DILocation(line: 115, column: 11, scope: !83)
!99 = !DILocation(line: 116, column: 11, scope: !83)
!100 = !DILocation(line: 117, column: 11, scope: !83)
!101 = !DILocation(line: 118, column: 11, scope: !83)
!102 = !DILocation(line: 119, column: 11, scope: !83)
!103 = !DILocation(line: 120, column: 11, scope: !83)
!104 = !DILocation(line: 121, column: 11, scope: !83)
!105 = !DILocation(line: 122, column: 11, scope: !83)
!106 = !DILocation(line: 123, column: 11, scope: !83)
!107 = !DILocation(line: 124, column: 11, scope: !83)
!108 = !DILocation(line: 125, column: 11, scope: !83)
!109 = !DILocation(line: 126, column: 11, scope: !83)
!110 = !DILocation(line: 127, column: 11, scope: !83)
!111 = !DILocation(line: 128, column: 11, scope: !83)
!112 = !DILocation(line: 129, column: 11, scope: !83)
!113 = !DILocation(line: 130, column: 11, scope: !83)
!114 = !DILocation(line: 131, column: 11, scope: !83)
!115 = !DILocation(line: 132, column: 5, scope: !83)
!116 = !DILocation(line: 133, column: 5, scope: !83)
