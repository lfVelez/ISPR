; ModuleID = 'C:/Users/luisf/Documents/PROYECTOS/labs/lab4/fir.prj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"fir_io\00", align 1 ; [#uses=1 type=[7 x i8]*]
@fir.c = internal constant [59 x i16] [i16 -378, i16 -73, i16 27, i16 170, i16 298, i16 352, i16 302, i16 168, i16 14, i16 -80, i16 -64, i16 53, i16 186, i16 216, i16 40, i16 -356, i16 -867, i16 -1283, i16 -1366, i16 -954, i16 -51, i16 1132, i16 2227, i16 2829, i16 2647, i16 1633, i16 25, i16 -1712, i16 -3042, i16 29229, i16 -3042, i16 -1712, i16 25, i16 1633, i16 2647, i16 2829, i16 2227, i16 1132, i16 -51, i16 -954, i16 -1366, i16 -1283, i16 -867, i16 -356, i16 40, i16 216, i16 186, i16 53, i16 -64, i16 -80, i16 14, i16 168, i16 302, i16 352, i16 298, i16 170, i16 27, i16 -73, i16 -378], align 2 ; [#uses=3 type=[59 x i16]*]
@fir.shift_reg = internal global [58 x i16] zeroinitializer, align 2 ; [#uses=5 type=[58 x i16]*]
@.str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=0]
define void @fir(i16* %y, i16 signext %x) nounwind {
  %1 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %2 = alloca i16, align 2                        ; [#uses=4 type=i16*]
  %acc = alloca i38, align 8                      ; [#uses=6 type=i38*]
  %i = alloca i32, align 4                        ; [#uses=8 type=i32*]
  store i16* %y, i16** %1, align 4
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !33), !dbg !34 ; [debug line = 4:11] [debug variable = y]
  store i16 %x, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !35), !dbg !36 ; [debug line = 5:10] [debug variable = x]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !37 ; [debug line = 7:1]
  %3 = load i16** %1, align 4, !dbg !37           ; [#uses=1 type=i16*] [debug line = 7:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i16*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i16* %3, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !37 ; [debug line = 7:1]
  %4 = load i16* %2, align 2, !dbg !37            ; [#uses=1 type=i16] [debug line = 7:1]
  %5 = sext i16 %4 to i32, !dbg !37               ; [#uses=1 type=i32] [debug line = 7:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %5, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !37 ; [debug line = 7:1]
  call void bitcast (void (...)* @_ssdm_SpecConstant to void (i16*)*)(i16* getelementptr inbounds ([59 x i16]* @fir.c, i32 0, i32 0)) nounwind, !dbg !39 ; [debug line = 10:1]
  call void @llvm.dbg.declare(metadata !{i38* %acc}, metadata !40), !dbg !44 ; [debug line = 13:9] [debug variable = acc]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !45), !dbg !47 ; [debug line = 14:7] [debug variable = i]
  %6 = load i16* getelementptr inbounds ([58 x i16]* @fir.shift_reg, i32 0, i32 57), align 2, !dbg !48 ; [#uses=1 type=i16] [debug line = 16:3]
  %7 = sext i16 %6 to i38, !dbg !48               ; [#uses=1 type=i38] [debug line = 16:3]
  %8 = load i16* getelementptr inbounds ([59 x i16]* @fir.c, i32 0, i32 58), align 2, !dbg !48 ; [#uses=1 type=i16] [debug line = 16:3]
  %9 = sext i16 %8 to i38, !dbg !48               ; [#uses=1 type=i38] [debug line = 16:3]
  %10 = mul nsw i38 %7, %9, !dbg !48              ; [#uses=1 type=i38] [debug line = 16:3]
  store i38 %10, i38* %acc, align 8, !dbg !48     ; [debug line = 16:3]
  br label %11, !dbg !48                          ; [debug line = 16:3]

; <label>:11                                      ; preds = %0
  store i32 57, i32* %i, align 4, !dbg !49        ; [debug line = 17:14]
  br label %12, !dbg !49                          ; [debug line = 17:14]

; <label>:12                                      ; preds = %34, %11
  %13 = load i32* %i, align 4, !dbg !49           ; [#uses=1 type=i32] [debug line = 17:14]
  %14 = icmp ne i32 %13, 0, !dbg !49              ; [#uses=1 type=i1] [debug line = 17:14]
  br i1 %14, label %15, label %37, !dbg !49       ; [debug line = 17:14]

; <label>:15                                      ; preds = %12
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 17:33]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 17:33]
  call void bitcast (void (...)* @_ssdm_op_SpecPipeline to void (i32, i32, i32, i32, i8*)*)(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !53 ; [debug line = 18:1]
  %16 = load i32* %i, align 4, !dbg !54           ; [#uses=1 type=i32] [debug line = 18:5]
  %17 = sub nsw i32 %16, 1, !dbg !54              ; [#uses=1 type=i32] [debug line = 18:5]
  %18 = getelementptr inbounds [58 x i16]* @fir.shift_reg, i32 0, i32 %17, !dbg !54 ; [#uses=1 type=i16*] [debug line = 18:5]
  %19 = load i16* %18, align 2, !dbg !54          ; [#uses=1 type=i16] [debug line = 18:5]
  %20 = sext i16 %19 to i38, !dbg !54             ; [#uses=1 type=i38] [debug line = 18:5]
  %21 = load i32* %i, align 4, !dbg !54           ; [#uses=1 type=i32] [debug line = 18:5]
  %22 = getelementptr inbounds [59 x i16]* @fir.c, i32 0, i32 %21, !dbg !54 ; [#uses=1 type=i16*] [debug line = 18:5]
  %23 = load i16* %22, align 2, !dbg !54          ; [#uses=1 type=i16] [debug line = 18:5]
  %24 = sext i16 %23 to i38, !dbg !54             ; [#uses=1 type=i38] [debug line = 18:5]
  %25 = mul nsw i38 %20, %24, !dbg !54            ; [#uses=1 type=i38] [debug line = 18:5]
  %26 = load i38* %acc, align 8, !dbg !54         ; [#uses=1 type=i38] [debug line = 18:5]
  %27 = add nsw i38 %26, %25, !dbg !54            ; [#uses=1 type=i38] [debug line = 18:5]
  store i38 %27, i38* %acc, align 8, !dbg !54     ; [debug line = 18:5]
  %28 = load i32* %i, align 4, !dbg !55           ; [#uses=1 type=i32] [debug line = 19:5]
  %29 = sub nsw i32 %28, 1, !dbg !55              ; [#uses=1 type=i32] [debug line = 19:5]
  %30 = getelementptr inbounds [58 x i16]* @fir.shift_reg, i32 0, i32 %29, !dbg !55 ; [#uses=1 type=i16*] [debug line = 19:5]
  %31 = load i16* %30, align 2, !dbg !55          ; [#uses=1 type=i16] [debug line = 19:5]
  %32 = load i32* %i, align 4, !dbg !55           ; [#uses=1 type=i32] [debug line = 19:5]
  %33 = getelementptr inbounds [58 x i16]* @fir.shift_reg, i32 0, i32 %32, !dbg !55 ; [#uses=1 type=i16*] [debug line = 19:5]
  store i16 %31, i16* %33, align 2, !dbg !55      ; [debug line = 19:5]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !56 ; [debug line = 20:3]
  br label %34, !dbg !56                          ; [debug line = 20:3]

; <label>:34                                      ; preds = %15
  %35 = load i32* %i, align 4, !dbg !57           ; [#uses=1 type=i32] [debug line = 17:27]
  %36 = add nsw i32 %35, -1, !dbg !57             ; [#uses=1 type=i32] [debug line = 17:27]
  store i32 %36, i32* %i, align 4, !dbg !57       ; [debug line = 17:27]
  br label %12, !dbg !57                          ; [debug line = 17:27]

; <label>:37                                      ; preds = %12
  %38 = load i16* %2, align 2, !dbg !58           ; [#uses=1 type=i16] [debug line = 21:3]
  %39 = sext i16 %38 to i38, !dbg !58             ; [#uses=1 type=i38] [debug line = 21:3]
  %40 = load i16* getelementptr inbounds ([59 x i16]* @fir.c, i32 0, i32 0), align 2, !dbg !58 ; [#uses=1 type=i16] [debug line = 21:3]
  %41 = sext i16 %40 to i38, !dbg !58             ; [#uses=1 type=i38] [debug line = 21:3]
  %42 = mul nsw i38 %39, %41, !dbg !58            ; [#uses=1 type=i38] [debug line = 21:3]
  %43 = load i38* %acc, align 8, !dbg !58         ; [#uses=1 type=i38] [debug line = 21:3]
  %44 = add nsw i38 %43, %42, !dbg !58            ; [#uses=1 type=i38] [debug line = 21:3]
  store i38 %44, i38* %acc, align 8, !dbg !58     ; [debug line = 21:3]
  %45 = load i16* %2, align 2, !dbg !59           ; [#uses=1 type=i16] [debug line = 22:3]
  store i16 %45, i16* getelementptr inbounds ([58 x i16]* @fir.shift_reg, i32 0, i32 0), align 2, !dbg !59 ; [debug line = 22:3]
  %46 = load i38* %acc, align 8, !dbg !60         ; [#uses=1 type=i38] [debug line = 23:3]
  %47 = ashr i38 %46, 15, !dbg !60                ; [#uses=1 type=i38] [debug line = 23:3]
  %48 = trunc i38 %47 to i16, !dbg !60            ; [#uses=1 type=i16] [debug line = 23:3]
  %49 = load i16** %1, align 4, !dbg !60          ; [#uses=1 type=i16*] [debug line = 23:3]
  store i16 %48, i16* %49, align 2, !dbg !60      ; [debug line = 23:3]
  ret void, !dbg !61                              ; [debug line = 24:1]
}

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!26}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/luisf/Documents/PROYECTOS/labs/lab4/fir.prj/solution1/.autopilot/db/fir.pragma.2.c", metadata !"C:\5CUsers\5Cluisf\5CDocuments\5CPROYECTOS\5Clabs\5Clab4", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !14} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fir", metadata !"fir", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16)* @fir, null, null, metadata !12, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"fir.c", metadata !"C:\5CUsers\5Cluisf\5CDocuments\5CPROYECTOS\5Clabs\5Clab4", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !10}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"data_t", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !16, metadata !22}
!16 = metadata !{i32 786484, i32 0, metadata !5, metadata !"c", metadata !"c", metadata !"", metadata !6, i32 7, metadata !17, i32 1, i32 1, [59 x i16]* @fir.c} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 944, i64 16, i32 0, i32 0, metadata !18, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!18 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ]
!19 = metadata !{i32 786454, null, metadata !"coef_t", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 58}       ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 786484, i32 0, metadata !5, metadata !"shift_reg", metadata !"shift_reg", metadata !"", metadata !6, i32 12, metadata !23, i32 1, i32 1, [58 x i16]* @fir.shift_reg} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 928, i64 16, i32 0, i32 0, metadata !10, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 57}       ; [ DW_TAG_subrange_type ]
!26 = metadata !{void (i16*, i16)* @fir, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"data_t*", metadata !"data_t"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!32 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!33 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 4, i32 11, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 33554437, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 5, i32 10, metadata !5, null}
!37 = metadata !{i32 7, i32 1, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 6, i32 5, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 10, i32 1, metadata !38, null}
!40 = metadata !{i32 786688, metadata !38, metadata !"acc", metadata !6, i32 13, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 786454, null, metadata !"acc_t", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 786454, null, metadata !"int38", metadata !6, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 786468, null, metadata !"int38", null, i32 0, i64 38, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 13, i32 9, metadata !38, null}
!45 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !6, i32 14, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!47 = metadata !{i32 14, i32 7, metadata !38, null}
!48 = metadata !{i32 16, i32 3, metadata !38, null}
!49 = metadata !{i32 17, i32 14, metadata !50, null}
!50 = metadata !{i32 786443, metadata !38, i32 17, i32 9, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 17, i32 33, metadata !52, null}
!52 = metadata !{i32 786443, metadata !50, i32 17, i32 32, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 18, i32 1, metadata !52, null}
!54 = metadata !{i32 18, i32 5, metadata !52, null}
!55 = metadata !{i32 19, i32 5, metadata !52, null}
!56 = metadata !{i32 20, i32 3, metadata !52, null}
!57 = metadata !{i32 17, i32 27, metadata !50, null}
!58 = metadata !{i32 21, i32 3, metadata !38, null}
!59 = metadata !{i32 22, i32 3, metadata !38, null}
!60 = metadata !{i32 23, i32 3, metadata !38, null}
!61 = metadata !{i32 24, i32 1, metadata !38, null}
