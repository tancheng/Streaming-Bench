; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @kernel_kernel(i64* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6, i64 %7, i64 %8, i64 %9, float* %10, float* %11, i64 %12, i64 %13, i64 %14, float* %15, float* %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, float* %22, float* %23, i64 %24, i64 %25, i64 %26, float* %27, float* %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, float* %34, float* %35, i64 %36, i64 %37, i64 %38, float* %39, float* %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45) !dbg !3 {
  %47 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } undef, i64* %0, 0, !dbg !7
  %48 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %47, i64* %1, 1, !dbg !9
  %49 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %48, i64 %2, 2, !dbg !10
  %50 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %49, i64 %3, 3, 0, !dbg !11
  %51 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %50, i64 %4, 4, 0, !dbg !12
  %52 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } undef, i64* %5, 0, !dbg !13
  %53 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %52, i64* %6, 1, !dbg !14
  %54 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %53, i64 %7, 2, !dbg !15
  %55 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %54, i64 %8, 3, 0, !dbg !16
  %56 = insertvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %55, i64 %9, 4, 0, !dbg !17
  %57 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %10, 0, !dbg !18
  %58 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %57, float* %11, 1, !dbg !19
  %59 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %58, i64 %12, 2, !dbg !20
  %60 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %59, i64 %13, 3, 0, !dbg !21
  %61 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %60, i64 %14, 4, 0, !dbg !22
  %62 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } undef, float* %15, 0, !dbg !23
  %63 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %62, float* %16, 1, !dbg !24
  %64 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %63, i64 %17, 2, !dbg !25
  %65 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %64, i64 %18, 3, 0, !dbg !26
  %66 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %65, i64 %20, 4, 0, !dbg !27
  %67 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %66, i64 %19, 3, 1, !dbg !28
  %68 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %67, i64 %21, 4, 1, !dbg !29
  %69 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %22, 0, !dbg !30
  %70 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %69, float* %23, 1, !dbg !31
  %71 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %70, i64 %24, 2, !dbg !32
  %72 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %71, i64 %25, 3, 0, !dbg !33
  %73 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %72, i64 %26, 4, 0, !dbg !34
  %74 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } undef, float* %27, 0, !dbg !35
  %75 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %74, float* %28, 1, !dbg !36
  %76 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %75, i64 %29, 2, !dbg !37
  %77 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %76, i64 %30, 3, 0, !dbg !38
  %78 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %77, i64 %32, 4, 0, !dbg !39
  %79 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %78, i64 %31, 3, 1, !dbg !40
  %80 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %79, i64 %33, 4, 1, !dbg !41
  %81 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } undef, float* %34, 0, !dbg !42
  %82 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %81, float* %35, 1, !dbg !43
  %83 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %82, i64 %36, 2, !dbg !44
  %84 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %83, i64 %37, 3, 0, !dbg !45
  %85 = insertvalue { float*, float*, i64, [1 x i64], [1 x i64] } %84, i64 %38, 4, 0, !dbg !46
  %86 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } undef, float* %39, 0, !dbg !47
  %87 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %86, float* %40, 1, !dbg !48
  %88 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %87, i64 %41, 2, !dbg !49
  %89 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %88, i64 %42, 3, 0, !dbg !50
  %90 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %89, i64 %44, 4, 0, !dbg !51
  %91 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %90, i64 %43, 3, 1, !dbg !52
  %92 = insertvalue { float*, float*, i64, [2 x i64], [2 x i64] } %91, i64 %45, 4, 1, !dbg !53
  br label %93, !dbg !54

93:                                               ; preds = %137, %46
  %94 = phi i64 [ %138, %137 ], [ 0, %46 ]
  %95 = icmp slt i64 %94, 32, !dbg !55
  br i1 %95, label %96, label %139, !dbg !56

96:                                               ; preds = %93
  %97 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %51, 1, !dbg !57
  %98 = getelementptr i64, i64* %97, i64 %94, !dbg !58
  %99 = load i64, i64* %98, align 4, !dbg !59
  %100 = add i64 %94, 1, !dbg !60
  %101 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %51, 1, !dbg !61
  %102 = getelementptr i64, i64* %101, i64 %100, !dbg !62
  %103 = load i64, i64* %102, align 4, !dbg !63
  br label %104, !dbg !64

104:                                              ; preds = %135, %96
  %105 = phi i64 [ %136, %135 ], [ %99, %96 ]
  %106 = icmp slt i64 %105, %103, !dbg !65
  br i1 %106, label %107, label %137, !dbg !66

107:                                              ; preds = %104
  %108 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %56, 1, !dbg !67
  %109 = getelementptr i64, i64* %108, i64 %105, !dbg !68
  %110 = load i64, i64* %109, align 4, !dbg !69
  %111 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %61, 1, !dbg !70
  %112 = getelementptr float, float* %111, i64 %105, !dbg !71
  %113 = load float, float* %112, align 4, !dbg !72
  br label %114, !dbg !73

114:                                              ; preds = %117, %107
  %115 = phi i64 [ %134, %117 ], [ 0, %107 ]
  %116 = icmp slt i64 %115, 4, !dbg !74
  br i1 %116, label %117, label %135, !dbg !75

117:                                              ; preds = %114
  %118 = mul i64 %110, 4, !dbg !76
  %119 = add i64 %118, %115, !dbg !77
  %120 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %68, 1, !dbg !78
  %121 = mul i64 %94, 4, !dbg !79
  %122 = add i64 %121, %115, !dbg !80
  %123 = getelementptr float, float* %120, i64 %122, !dbg !81
  %124 = load float, float* %123, align 4, !dbg !82
  %125 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %73, 1, !dbg !83
  %126 = getelementptr float, float* %125, i64 %119, !dbg !84
  %127 = load float, float* %126, align 4, !dbg !85
  %128 = fmul float %113, %127, !dbg !86
  %129 = fadd float %124, %128, !dbg !87
  %130 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %68, 1, !dbg !88
  %131 = mul i64 %94, 4, !dbg !89
  %132 = add i64 %131, %115, !dbg !90
  %133 = getelementptr float, float* %130, i64 %132, !dbg !91
  store float %129, float* %133, align 4, !dbg !92
  %134 = add i64 %115, 1, !dbg !93
  br label %114, !dbg !94

135:                                              ; preds = %114
  %136 = add i64 %105, 1, !dbg !95
  br label %104, !dbg !96

137:                                              ; preds = %104
  %138 = add i64 %94, 1, !dbg !97
  br label %93, !dbg !98

139:                                              ; preds = %93
  br label %140, !dbg !99

140:                                              ; preds = %172, %139
  %141 = phi i64 [ %173, %172 ], [ 0, %139 ]
  %142 = icmp slt i64 %141, 128, !dbg !100
  br i1 %142, label %143, label %174, !dbg !101

143:                                              ; preds = %140
  %144 = srem i64 %141, 4, !dbg !102
  %145 = sdiv i64 %141, 4, !dbg !103
  %146 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %68, 1, !dbg !104
  %147 = mul i64 %145, 4, !dbg !105
  %148 = add i64 %147, %144, !dbg !106
  %149 = getelementptr float, float* %146, i64 %148, !dbg !107
  %150 = load float, float* %149, align 4, !dbg !108
  br label %151, !dbg !109

151:                                              ; preds = %154, %143
  %152 = phi i64 [ %171, %154 ], [ 0, %143 ]
  %153 = icmp slt i64 %152, 2, !dbg !110
  br i1 %153, label %154, label %172, !dbg !111

154:                                              ; preds = %151
  %155 = mul i64 %144, 2, !dbg !112
  %156 = add i64 %155, %152, !dbg !113
  %157 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %80, 1, !dbg !114
  %158 = mul i64 %145, 2, !dbg !115
  %159 = add i64 %158, %152, !dbg !116
  %160 = getelementptr float, float* %157, i64 %159, !dbg !117
  %161 = load float, float* %160, align 4, !dbg !118
  %162 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %85, 1, !dbg !119
  %163 = getelementptr float, float* %162, i64 %156, !dbg !120
  %164 = load float, float* %163, align 4, !dbg !121
  %165 = fmul float %150, %164, !dbg !122
  %166 = fadd float %161, %165, !dbg !123
  %167 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %80, 1, !dbg !124
  %168 = mul i64 %145, 2, !dbg !125
  %169 = add i64 %168, %152, !dbg !126
  %170 = getelementptr float, float* %167, i64 %169, !dbg !127
  store float %166, float* %170, align 4, !dbg !128
  %171 = add i64 %152, 1, !dbg !129
  br label %151, !dbg !130

172:                                              ; preds = %151
  %173 = add i64 %141, 1, !dbg !131
  br label %140, !dbg !132

174:                                              ; preds = %140
  br label %175, !dbg !133

175:                                              ; preds = %178, %174
  %176 = phi i64 [ %194, %178 ], [ 0, %174 ]
  %177 = icmp slt i64 %176, 64, !dbg !134
  br i1 %177, label %178, label %195, !dbg !135

178:                                              ; preds = %175
  %179 = srem i64 %176, 2, !dbg !136
  %180 = sdiv i64 %176, 2, !dbg !137
  %181 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %80, 1, !dbg !138
  %182 = mul i64 %180, 2, !dbg !139
  %183 = add i64 %182, %179, !dbg !140
  %184 = getelementptr float, float* %181, i64 %183, !dbg !141
  %185 = load float, float* %184, align 4, !dbg !142
  %186 = fcmp olt float %185, 0.000000e+00, !dbg !143
  %187 = select i1 %186, float 0.000000e+00, float %185, !dbg !144
  %188 = fcmp olt float 0x47EFFFFFE0000000, %185, !dbg !145
  %189 = select i1 %188, float 0x47EFFFFFE0000000, float %187, !dbg !146
  %190 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %92, 1, !dbg !147
  %191 = mul i64 %180, 2, !dbg !148
  %192 = add i64 %191, %179, !dbg !149
  %193 = getelementptr float, float* %190, i64 %192, !dbg !150
  store float %189, float* %193, align 4, !dbg !151
  %194 = add i64 %176, 1, !dbg !152
  br label %175, !dbg !153

195:                                              ; preds = %175
  ret void, !dbg !154
}

define void @_mlir_ciface_kernel_kernel({ i64*, i64*, i64, [1 x i64], [1 x i64] }* %0, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %1, { float*, float*, i64, [1 x i64], [1 x i64] }* %2, { float*, float*, i64, [2 x i64], [2 x i64] }* %3, { float*, float*, i64, [1 x i64], [1 x i64] }* %4, { float*, float*, i64, [2 x i64], [2 x i64] }* %5, { float*, float*, i64, [1 x i64], [1 x i64] }* %6, { float*, float*, i64, [2 x i64], [2 x i64] }* %7) !dbg !155 {
  %9 = load { i64*, i64*, i64, [1 x i64], [1 x i64] }, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %0, align 8, !dbg !156
  %10 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %9, 0, !dbg !158
  %11 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %9, 1, !dbg !159
  %12 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %9, 2, !dbg !160
  %13 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %9, 3, 0, !dbg !161
  %14 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %9, 4, 0, !dbg !162
  %15 = load { i64*, i64*, i64, [1 x i64], [1 x i64] }, { i64*, i64*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !163
  %16 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %15, 0, !dbg !164
  %17 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %15, 1, !dbg !165
  %18 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %15, 2, !dbg !166
  %19 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %15, 3, 0, !dbg !167
  %20 = extractvalue { i64*, i64*, i64, [1 x i64], [1 x i64] } %15, 4, 0, !dbg !168
  %21 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !169
  %22 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %21, 0, !dbg !170
  %23 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !171
  %24 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %21, 2, !dbg !172
  %25 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %21, 3, 0, !dbg !173
  %26 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %21, 4, 0, !dbg !174
  %27 = load { float*, float*, i64, [2 x i64], [2 x i64] }, { float*, float*, i64, [2 x i64], [2 x i64] }* %3, align 8, !dbg !175
  %28 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %27, 0, !dbg !176
  %29 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %27, 1, !dbg !177
  %30 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %27, 2, !dbg !178
  %31 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %27, 3, 0, !dbg !179
  %32 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %27, 3, 1, !dbg !180
  %33 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %27, 4, 0, !dbg !181
  %34 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %27, 4, 1, !dbg !182
  %35 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %4, align 8, !dbg !183
  %36 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %35, 0, !dbg !184
  %37 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %35, 1, !dbg !185
  %38 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %35, 2, !dbg !186
  %39 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %35, 3, 0, !dbg !187
  %40 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %35, 4, 0, !dbg !188
  %41 = load { float*, float*, i64, [2 x i64], [2 x i64] }, { float*, float*, i64, [2 x i64], [2 x i64] }* %5, align 8, !dbg !189
  %42 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %41, 0, !dbg !190
  %43 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %41, 1, !dbg !191
  %44 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %41, 2, !dbg !192
  %45 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %41, 3, 0, !dbg !193
  %46 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %41, 3, 1, !dbg !194
  %47 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %41, 4, 0, !dbg !195
  %48 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %41, 4, 1, !dbg !196
  %49 = load { float*, float*, i64, [1 x i64], [1 x i64] }, { float*, float*, i64, [1 x i64], [1 x i64] }* %6, align 8, !dbg !197
  %50 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %49, 0, !dbg !198
  %51 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %49, 1, !dbg !199
  %52 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %49, 2, !dbg !200
  %53 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %49, 3, 0, !dbg !201
  %54 = extractvalue { float*, float*, i64, [1 x i64], [1 x i64] } %49, 4, 0, !dbg !202
  %55 = load { float*, float*, i64, [2 x i64], [2 x i64] }, { float*, float*, i64, [2 x i64], [2 x i64] }* %7, align 8, !dbg !203
  %56 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %55, 0, !dbg !204
  %57 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %55, 1, !dbg !205
  %58 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %55, 2, !dbg !206
  %59 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %55, 3, 0, !dbg !207
  %60 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %55, 3, 1, !dbg !208
  %61 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %55, 4, 0, !dbg !209
  %62 = extractvalue { float*, float*, i64, [2 x i64], [2 x i64] } %55, 4, 1, !dbg !210
  call void @kernel_kernel(i64* %10, i64* %11, i64 %12, i64 %13, i64 %14, i64* %16, i64* %17, i64 %18, i64 %19, i64 %20, float* %22, float* %23, i64 %24, i64 %25, i64 %26, float* %28, float* %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, float* %36, float* %37, i64 %38, i64 %39, i64 %40, float* %42, float* %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48, float* %50, float* %51, i64 %52, i64 %53, i64 %54, float* %56, float* %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62), !dbg !211
  ret void, !dbg !212
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_kernel", linkageName: "kernel_kernel", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "07_llvm.mlir", directory: "/home/nico/Development/soda/builds/tmp/cheng/mlir/gcn-microkernels/oAHW_ssd")
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
!47 = !DILocation(line: 52, column: 11, scope: !8)
!48 = !DILocation(line: 53, column: 11, scope: !8)
!49 = !DILocation(line: 54, column: 11, scope: !8)
!50 = !DILocation(line: 55, column: 11, scope: !8)
!51 = !DILocation(line: 56, column: 11, scope: !8)
!52 = !DILocation(line: 57, column: 11, scope: !8)
!53 = !DILocation(line: 58, column: 11, scope: !8)
!54 = !DILocation(line: 66, column: 5, scope: !8)
!55 = !DILocation(line: 68, column: 11, scope: !8)
!56 = !DILocation(line: 69, column: 5, scope: !8)
!57 = !DILocation(line: 71, column: 11, scope: !8)
!58 = !DILocation(line: 72, column: 11, scope: !8)
!59 = !DILocation(line: 73, column: 11, scope: !8)
!60 = !DILocation(line: 74, column: 11, scope: !8)
!61 = !DILocation(line: 75, column: 11, scope: !8)
!62 = !DILocation(line: 76, column: 11, scope: !8)
!63 = !DILocation(line: 77, column: 11, scope: !8)
!64 = !DILocation(line: 78, column: 5, scope: !8)
!65 = !DILocation(line: 80, column: 11, scope: !8)
!66 = !DILocation(line: 81, column: 5, scope: !8)
!67 = !DILocation(line: 83, column: 11, scope: !8)
!68 = !DILocation(line: 84, column: 11, scope: !8)
!69 = !DILocation(line: 85, column: 11, scope: !8)
!70 = !DILocation(line: 86, column: 11, scope: !8)
!71 = !DILocation(line: 87, column: 11, scope: !8)
!72 = !DILocation(line: 88, column: 11, scope: !8)
!73 = !DILocation(line: 89, column: 5, scope: !8)
!74 = !DILocation(line: 91, column: 11, scope: !8)
!75 = !DILocation(line: 92, column: 5, scope: !8)
!76 = !DILocation(line: 94, column: 11, scope: !8)
!77 = !DILocation(line: 95, column: 11, scope: !8)
!78 = !DILocation(line: 96, column: 11, scope: !8)
!79 = !DILocation(line: 98, column: 11, scope: !8)
!80 = !DILocation(line: 99, column: 11, scope: !8)
!81 = !DILocation(line: 100, column: 11, scope: !8)
!82 = !DILocation(line: 101, column: 11, scope: !8)
!83 = !DILocation(line: 102, column: 11, scope: !8)
!84 = !DILocation(line: 103, column: 11, scope: !8)
!85 = !DILocation(line: 104, column: 11, scope: !8)
!86 = !DILocation(line: 105, column: 11, scope: !8)
!87 = !DILocation(line: 106, column: 11, scope: !8)
!88 = !DILocation(line: 107, column: 11, scope: !8)
!89 = !DILocation(line: 109, column: 11, scope: !8)
!90 = !DILocation(line: 110, column: 11, scope: !8)
!91 = !DILocation(line: 111, column: 11, scope: !8)
!92 = !DILocation(line: 112, column: 5, scope: !8)
!93 = !DILocation(line: 113, column: 11, scope: !8)
!94 = !DILocation(line: 114, column: 5, scope: !8)
!95 = !DILocation(line: 116, column: 11, scope: !8)
!96 = !DILocation(line: 117, column: 5, scope: !8)
!97 = !DILocation(line: 119, column: 12, scope: !8)
!98 = !DILocation(line: 120, column: 5, scope: !8)
!99 = !DILocation(line: 123, column: 5, scope: !8)
!100 = !DILocation(line: 125, column: 12, scope: !8)
!101 = !DILocation(line: 126, column: 5, scope: !8)
!102 = !DILocation(line: 128, column: 12, scope: !8)
!103 = !DILocation(line: 129, column: 12, scope: !8)
!104 = !DILocation(line: 130, column: 12, scope: !8)
!105 = !DILocation(line: 132, column: 12, scope: !8)
!106 = !DILocation(line: 133, column: 12, scope: !8)
!107 = !DILocation(line: 134, column: 12, scope: !8)
!108 = !DILocation(line: 135, column: 12, scope: !8)
!109 = !DILocation(line: 136, column: 5, scope: !8)
!110 = !DILocation(line: 138, column: 12, scope: !8)
!111 = !DILocation(line: 139, column: 5, scope: !8)
!112 = !DILocation(line: 141, column: 12, scope: !8)
!113 = !DILocation(line: 142, column: 12, scope: !8)
!114 = !DILocation(line: 143, column: 12, scope: !8)
!115 = !DILocation(line: 145, column: 12, scope: !8)
!116 = !DILocation(line: 146, column: 12, scope: !8)
!117 = !DILocation(line: 147, column: 12, scope: !8)
!118 = !DILocation(line: 148, column: 12, scope: !8)
!119 = !DILocation(line: 149, column: 12, scope: !8)
!120 = !DILocation(line: 150, column: 12, scope: !8)
!121 = !DILocation(line: 151, column: 12, scope: !8)
!122 = !DILocation(line: 152, column: 12, scope: !8)
!123 = !DILocation(line: 153, column: 12, scope: !8)
!124 = !DILocation(line: 154, column: 12, scope: !8)
!125 = !DILocation(line: 156, column: 12, scope: !8)
!126 = !DILocation(line: 157, column: 12, scope: !8)
!127 = !DILocation(line: 158, column: 12, scope: !8)
!128 = !DILocation(line: 159, column: 5, scope: !8)
!129 = !DILocation(line: 160, column: 12, scope: !8)
!130 = !DILocation(line: 161, column: 5, scope: !8)
!131 = !DILocation(line: 163, column: 12, scope: !8)
!132 = !DILocation(line: 164, column: 5, scope: !8)
!133 = !DILocation(line: 167, column: 5, scope: !8)
!134 = !DILocation(line: 169, column: 12, scope: !8)
!135 = !DILocation(line: 170, column: 5, scope: !8)
!136 = !DILocation(line: 172, column: 12, scope: !8)
!137 = !DILocation(line: 173, column: 12, scope: !8)
!138 = !DILocation(line: 174, column: 12, scope: !8)
!139 = !DILocation(line: 176, column: 12, scope: !8)
!140 = !DILocation(line: 177, column: 12, scope: !8)
!141 = !DILocation(line: 178, column: 12, scope: !8)
!142 = !DILocation(line: 179, column: 12, scope: !8)
!143 = !DILocation(line: 180, column: 12, scope: !8)
!144 = !DILocation(line: 181, column: 12, scope: !8)
!145 = !DILocation(line: 182, column: 12, scope: !8)
!146 = !DILocation(line: 183, column: 12, scope: !8)
!147 = !DILocation(line: 184, column: 12, scope: !8)
!148 = !DILocation(line: 186, column: 12, scope: !8)
!149 = !DILocation(line: 187, column: 12, scope: !8)
!150 = !DILocation(line: 188, column: 12, scope: !8)
!151 = !DILocation(line: 189, column: 5, scope: !8)
!152 = !DILocation(line: 190, column: 12, scope: !8)
!153 = !DILocation(line: 191, column: 5, scope: !8)
!154 = !DILocation(line: 193, column: 5, scope: !8)
!155 = distinct !DISubprogram(name: "_mlir_ciface_kernel_kernel", linkageName: "_mlir_ciface_kernel_kernel", scope: null, file: !4, line: 195, type: !5, scopeLine: 195, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!156 = !DILocation(line: 196, column: 10, scope: !157)
!157 = !DILexicalBlockFile(scope: !155, file: !4, discriminator: 0)
!158 = !DILocation(line: 197, column: 10, scope: !157)
!159 = !DILocation(line: 198, column: 10, scope: !157)
!160 = !DILocation(line: 199, column: 10, scope: !157)
!161 = !DILocation(line: 200, column: 10, scope: !157)
!162 = !DILocation(line: 201, column: 10, scope: !157)
!163 = !DILocation(line: 202, column: 10, scope: !157)
!164 = !DILocation(line: 203, column: 10, scope: !157)
!165 = !DILocation(line: 204, column: 10, scope: !157)
!166 = !DILocation(line: 205, column: 10, scope: !157)
!167 = !DILocation(line: 206, column: 11, scope: !157)
!168 = !DILocation(line: 207, column: 11, scope: !157)
!169 = !DILocation(line: 208, column: 11, scope: !157)
!170 = !DILocation(line: 209, column: 11, scope: !157)
!171 = !DILocation(line: 210, column: 11, scope: !157)
!172 = !DILocation(line: 211, column: 11, scope: !157)
!173 = !DILocation(line: 212, column: 11, scope: !157)
!174 = !DILocation(line: 213, column: 11, scope: !157)
!175 = !DILocation(line: 214, column: 11, scope: !157)
!176 = !DILocation(line: 215, column: 11, scope: !157)
!177 = !DILocation(line: 216, column: 11, scope: !157)
!178 = !DILocation(line: 217, column: 11, scope: !157)
!179 = !DILocation(line: 218, column: 11, scope: !157)
!180 = !DILocation(line: 219, column: 11, scope: !157)
!181 = !DILocation(line: 220, column: 11, scope: !157)
!182 = !DILocation(line: 221, column: 11, scope: !157)
!183 = !DILocation(line: 222, column: 11, scope: !157)
!184 = !DILocation(line: 223, column: 11, scope: !157)
!185 = !DILocation(line: 224, column: 11, scope: !157)
!186 = !DILocation(line: 225, column: 11, scope: !157)
!187 = !DILocation(line: 226, column: 11, scope: !157)
!188 = !DILocation(line: 227, column: 11, scope: !157)
!189 = !DILocation(line: 228, column: 11, scope: !157)
!190 = !DILocation(line: 229, column: 11, scope: !157)
!191 = !DILocation(line: 230, column: 11, scope: !157)
!192 = !DILocation(line: 231, column: 11, scope: !157)
!193 = !DILocation(line: 232, column: 11, scope: !157)
!194 = !DILocation(line: 233, column: 11, scope: !157)
!195 = !DILocation(line: 234, column: 11, scope: !157)
!196 = !DILocation(line: 235, column: 11, scope: !157)
!197 = !DILocation(line: 236, column: 11, scope: !157)
!198 = !DILocation(line: 237, column: 11, scope: !157)
!199 = !DILocation(line: 238, column: 11, scope: !157)
!200 = !DILocation(line: 239, column: 11, scope: !157)
!201 = !DILocation(line: 240, column: 11, scope: !157)
!202 = !DILocation(line: 241, column: 11, scope: !157)
!203 = !DILocation(line: 242, column: 11, scope: !157)
!204 = !DILocation(line: 243, column: 11, scope: !157)
!205 = !DILocation(line: 244, column: 11, scope: !157)
!206 = !DILocation(line: 245, column: 11, scope: !157)
!207 = !DILocation(line: 246, column: 11, scope: !157)
!208 = !DILocation(line: 247, column: 11, scope: !157)
!209 = !DILocation(line: 248, column: 11, scope: !157)
!210 = !DILocation(line: 249, column: 11, scope: !157)
!211 = !DILocation(line: 250, column: 5, scope: !157)
!212 = !DILocation(line: 251, column: 5, scope: !157)
