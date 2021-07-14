; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @kernel_kernel(float* %0, float* %1, i64 %2, i64 %3, i64 %4, float* %5, float* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, float* %12, float* %13, i64 %14, i64 %15, i64 %16) !dbg !3 {
  %18 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %0, 0, !dbg !7
  %19 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, float* %1, 1, !dbg !9
  %20 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %19, i64 %2, 2, !dbg !10
  %21 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %20, i64 %3, 3, 0, !dbg !11
  %22 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %21, i64 %4, 4, 0, !dbg !12
  %23 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } undef, float* %5, 0, !dbg !13
  %24 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %23, float* %6, 1, !dbg !14
  %25 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %24, i64 %7, 2, !dbg !15
  %26 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %25, i64 %8, 3, 0, !dbg !16
  %27 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %26, i64 %10, 4, 0, !dbg !17
  %28 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %27, i64 %9, 3, 1, !dbg !18
  %29 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %28, i64 %11, 4, 1, !dbg !19
  %30 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %12, 0, !dbg !20
  %31 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %30, float* %13, 1, !dbg !21
  %32 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %31, i64 %14, 2, !dbg !22
  %33 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %32, i64 %15, 3, 0, !dbg !23
  %34 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %33, i64 %16, 4, 0, !dbg !24
  br label %35, !dbg !25

35:                                               ; preds = %67, %17
  %36 = phi i64 [ %68, %67 ], [ 0, %17 ]
  %37 = icmp slt i64 %36, 1024, !dbg !26
  br i1 %37, label %38, label %69, !dbg !27

38:                                               ; preds = %35
  %39 = srem i64 %36, 32, !dbg !28
  %40 = sdiv i64 %36, 32, !dbg !29
  %41 = mul i64 %40, 32, !dbg !30
  %42 = add i64 %41, %39, !dbg !31
  %43 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %22, 1, !dbg !32
  %44 = getelementptr float, float* %43, i64 %42, !dbg !33
  %45 = load float, float* %44, align 4, !dbg !34
  br label %46, !dbg !35

46:                                               ; preds = %49, %38
  %47 = phi i64 [ %66, %49 ], [ 0, %38 ]
  %48 = icmp slt i64 %47, 4, !dbg !36
  br i1 %48, label %49, label %67, !dbg !37

49:                                               ; preds = %46
  %50 = mul i64 %39, 4, !dbg !38
  %51 = add i64 %50, %47, !dbg !39
  %52 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %29, 1, !dbg !40
  %53 = mul i64 %40, 4, !dbg !41
  %54 = add i64 %53, %47, !dbg !42
  %55 = getelementptr float, float* %52, i64 %54, !dbg !43
  %56 = load float, float* %55, align 4, !dbg !44
  %57 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %34, 1, !dbg !45
  %58 = getelementptr float, float* %57, i64 %51, !dbg !46
  %59 = load float, float* %58, align 4, !dbg !47
  %60 = fmul float %45, %59, !dbg !48
  %61 = fadd float %56, %60, !dbg !49
  %62 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %29, 1, !dbg !50
  %63 = mul i64 %40, 4, !dbg !51
  %64 = add i64 %63, %47, !dbg !52
  %65 = getelementptr float, float* %62, i64 %64, !dbg !53
  store float %61, float* %65, align 4, !dbg !54
  %66 = add i64 %47, 1, !dbg !55
  br label %46, !dbg !56

67:                                               ; preds = %46
  %68 = add i64 %36, 1, !dbg !57
  br label %35, !dbg !58

69:                                               ; preds = %35
  ret void, !dbg !59
}

define void @_mlir_ciface_kernel_kernel({ float*, float*, i64, [1 x i64], [1 x i64] }* %0, { float*, float*, i64, [2 x i64], [2 x i64] }* %1, { float*, float*, i64, [1 x i64], [1 x i64] }* %2) !dbg !60 {
  %4 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %0, align 8, !dbg !61
  %5 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %4, 0, !dbg !63
  %6 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %4, 1, !dbg !64
  %7 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %4, 2, !dbg !65
  %8 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %4, 3, 0, !dbg !66
  %9 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %4, 4, 0, !dbg !67
  %10 = load { float*, float*, i64, [2 x i64], [2 x i64] }, { float*, float*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !68
  %11 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %10, 0, !dbg !69
  %12 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %10, 1, !dbg !70
  %13 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %10, 2, !dbg !71
  %14 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %10, 3, 0, !dbg !72
  %15 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %10, 3, 1, !dbg !73
  %16 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %10, 4, 0, !dbg !74
  %17 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %10, 4, 1, !dbg !75
  %18 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !76
  %19 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 0, !dbg !77
  %20 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 1, !dbg !78
  %21 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 2, !dbg !79
  %22 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 3, 0, !dbg !80
  %23 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %18, 4, 0, !dbg !81
  call void @kernel_kernel(float* %5, float* %6, i64 %7, i64 %8, i64 %9, float* %11, float* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, float* %19, float* %20, i64 %21, i64 %22, i64 %23), !dbg !82
  ret void, !dbg !83
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_kernel", linkageName: "kernel_kernel", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "07_llvm.mlir", directory: "/home/nico/Development/soda/builds/tmp/cheng/mlir/gcn-microkernels/AH_dd")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 4, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 5, column: 10, scope: !8)
!10 = !DILocation(line: 6, column: 10, scope: !8)
!11 = !DILocation(line: 7, column: 10, scope: !8)
!12 = !DILocation(line: 8, column: 10, scope: !8)
!13 = !DILocation(line: 10, column: 10, scope: !8)
!14 = !DILocation(line: 11, column: 10, scope: !8)
!15 = !DILocation(line: 12, column: 10, scope: !8)
!16 = !DILocation(line: 13, column: 11, scope: !8)
!17 = !DILocation(line: 14, column: 11, scope: !8)
!18 = !DILocation(line: 15, column: 11, scope: !8)
!19 = !DILocation(line: 16, column: 11, scope: !8)
!20 = !DILocation(line: 18, column: 11, scope: !8)
!21 = !DILocation(line: 19, column: 11, scope: !8)
!22 = !DILocation(line: 20, column: 11, scope: !8)
!23 = !DILocation(line: 21, column: 11, scope: !8)
!24 = !DILocation(line: 22, column: 11, scope: !8)
!25 = !DILocation(line: 28, column: 5, scope: !8)
!26 = !DILocation(line: 30, column: 11, scope: !8)
!27 = !DILocation(line: 31, column: 5, scope: !8)
!28 = !DILocation(line: 33, column: 11, scope: !8)
!29 = !DILocation(line: 34, column: 11, scope: !8)
!30 = !DILocation(line: 35, column: 11, scope: !8)
!31 = !DILocation(line: 36, column: 11, scope: !8)
!32 = !DILocation(line: 37, column: 11, scope: !8)
!33 = !DILocation(line: 38, column: 11, scope: !8)
!34 = !DILocation(line: 39, column: 11, scope: !8)
!35 = !DILocation(line: 40, column: 5, scope: !8)
!36 = !DILocation(line: 42, column: 11, scope: !8)
!37 = !DILocation(line: 43, column: 5, scope: !8)
!38 = !DILocation(line: 45, column: 11, scope: !8)
!39 = !DILocation(line: 46, column: 11, scope: !8)
!40 = !DILocation(line: 47, column: 11, scope: !8)
!41 = !DILocation(line: 49, column: 11, scope: !8)
!42 = !DILocation(line: 50, column: 11, scope: !8)
!43 = !DILocation(line: 51, column: 11, scope: !8)
!44 = !DILocation(line: 52, column: 11, scope: !8)
!45 = !DILocation(line: 53, column: 11, scope: !8)
!46 = !DILocation(line: 54, column: 11, scope: !8)
!47 = !DILocation(line: 55, column: 11, scope: !8)
!48 = !DILocation(line: 56, column: 11, scope: !8)
!49 = !DILocation(line: 57, column: 11, scope: !8)
!50 = !DILocation(line: 58, column: 11, scope: !8)
!51 = !DILocation(line: 60, column: 11, scope: !8)
!52 = !DILocation(line: 61, column: 11, scope: !8)
!53 = !DILocation(line: 62, column: 11, scope: !8)
!54 = !DILocation(line: 63, column: 5, scope: !8)
!55 = !DILocation(line: 64, column: 11, scope: !8)
!56 = !DILocation(line: 65, column: 5, scope: !8)
!57 = !DILocation(line: 67, column: 11, scope: !8)
!58 = !DILocation(line: 68, column: 5, scope: !8)
!59 = !DILocation(line: 70, column: 5, scope: !8)
!60 = distinct !DISubprogram(name: "_mlir_ciface_kernel_kernel", linkageName: "_mlir_ciface_kernel_kernel", scope: null, file: !4, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!61 = !DILocation(line: 73, column: 10, scope: !62)
!62 = !DILexicalBlockFile(scope: !60, file: !4, discriminator: 0)
!63 = !DILocation(line: 74, column: 10, scope: !62)
!64 = !DILocation(line: 75, column: 10, scope: !62)
!65 = !DILocation(line: 76, column: 10, scope: !62)
!66 = !DILocation(line: 77, column: 10, scope: !62)
!67 = !DILocation(line: 78, column: 10, scope: !62)
!68 = !DILocation(line: 79, column: 10, scope: !62)
!69 = !DILocation(line: 80, column: 10, scope: !62)
!70 = !DILocation(line: 81, column: 10, scope: !62)
!71 = !DILocation(line: 82, column: 10, scope: !62)
!72 = !DILocation(line: 83, column: 11, scope: !62)
!73 = !DILocation(line: 84, column: 11, scope: !62)
!74 = !DILocation(line: 85, column: 11, scope: !62)
!75 = !DILocation(line: 86, column: 11, scope: !62)
!76 = !DILocation(line: 87, column: 11, scope: !62)
!77 = !DILocation(line: 88, column: 11, scope: !62)
!78 = !DILocation(line: 89, column: 11, scope: !62)
!79 = !DILocation(line: 90, column: 11, scope: !62)
!80 = !DILocation(line: 91, column: 11, scope: !62)
!81 = !DILocation(line: 92, column: 11, scope: !62)
!82 = !DILocation(line: 93, column: 5, scope: !62)
!83 = !DILocation(line: 94, column: 5, scope: !62)
