; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/lab1/matrixmul.prj/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"Product\00", align 1 ; [#uses=1 type=[8 x i8]*]
@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=0]
define void @_Z9matrixmulPA3_cS0_PA3_s([3 x i8]* %a, [3 x i8]* %b, [3 x i16]* %res) nounwind uwtable {
  %1 = alloca [3 x i8]*, align 8                  ; [#uses=3 type=[3 x i8]**]
  %2 = alloca [3 x i8]*, align 8                  ; [#uses=3 type=[3 x i8]**]
  %3 = alloca [3 x i16]*, align 8                 ; [#uses=4 type=[3 x i16]**]
  %i = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %k = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store [3 x i8]* %a, [3 x i8]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !36), !dbg !37 ; [debug line = 70:15] [debug variable = a]
  store [3 x i8]* %b, [3 x i8]** %2, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %2}, metadata !38), !dbg !39 ; [debug line = 71:15] [debug variable = b]
  store [3 x i16]* %res, [3 x i16]** %3, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i16]** %3}, metadata !40), !dbg !41 ; [debug line = 72:16] [debug variable = res]
  %4 = load [3 x i8]** %1, align 8, !dbg !42      ; [#uses=1 type=[3 x i8]*] [debug line = 73:2]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %4, i32 3) nounwind, !dbg !42 ; [debug line = 73:2]
  %5 = load [3 x i16]** %3, align 8, !dbg !44     ; [#uses=1 type=[3 x i16]*] [debug line = 73:30]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i16]* %5, i32 3) nounwind, !dbg !44 ; [debug line = 73:30]
  %6 = load [3 x i8]** %2, align 8, !dbg !45      ; [#uses=1 type=[3 x i8]*] [debug line = 73:60]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %6, i32 3) nounwind, !dbg !45 ; [debug line = 73:60]
  br label %7, !dbg !45                           ; [debug line = 73:60]

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !46), !dbg !48 ; [debug line = 75:16] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !49         ; [debug line = 75:21]
  br label %8, !dbg !49                           ; [debug line = 75:21]

; <label>:8                                       ; preds = %67, %7
  %9 = load i32* %i, align 4, !dbg !49            ; [#uses=1 type=i32] [debug line = 75:21]
  %10 = icmp slt i32 %9, 3, !dbg !49              ; [#uses=1 type=i1] [debug line = 75:21]
  br i1 %10, label %11, label %70, !dbg !49       ; [debug line = 75:21]

; <label>:11                                      ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !50 ; [debug line = 75:36]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !50 ; [debug line = 75:36]
  br label %12, !dbg !50                          ; [debug line = 75:36]

; <label>:12                                      ; preds = %11
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !52), !dbg !54 ; [debug line = 77:18] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !55         ; [debug line = 77:23]
  br label %13, !dbg !55                          ; [debug line = 77:23]

; <label>:13                                      ; preds = %63, %12
  %14 = load i32* %j, align 4, !dbg !55           ; [#uses=1 type=i32] [debug line = 77:23]
  %15 = icmp slt i32 %14, 3, !dbg !55             ; [#uses=1 type=i1] [debug line = 77:23]
  br i1 %15, label %16, label %66, !dbg !55       ; [debug line = 77:23]

; <label>:16                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !56 ; [debug line = 77:38]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !56 ; [debug line = 77:38]
  %17 = load i32* %j, align 4, !dbg !58           ; [#uses=1 type=i32] [debug line = 79:7]
  %18 = sext i32 %17 to i64, !dbg !58             ; [#uses=1 type=i64] [debug line = 79:7]
  %19 = load i32* %i, align 4, !dbg !58           ; [#uses=1 type=i32] [debug line = 79:7]
  %20 = sext i32 %19 to i64, !dbg !58             ; [#uses=1 type=i64] [debug line = 79:7]
  %21 = load [3 x i16]** %3, align 8, !dbg !58    ; [#uses=1 type=[3 x i16]*] [debug line = 79:7]
  %22 = getelementptr inbounds [3 x i16]* %21, i64 %20, !dbg !58 ; [#uses=1 type=[3 x i16]*] [debug line = 79:7]
  %23 = getelementptr inbounds [3 x i16]* %22, i32 0, i64 %18, !dbg !58 ; [#uses=1 type=i16*] [debug line = 79:7]
  store i16 0, i16* %23, align 2, !dbg !58        ; [debug line = 79:7]
  br label %24, !dbg !58                          ; [debug line = 79:7]

; <label>:24                                      ; preds = %16
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !59), !dbg !61 ; [debug line = 80:24] [debug variable = k]
  store i32 0, i32* %k, align 4, !dbg !62         ; [debug line = 80:29]
  br label %25, !dbg !62                          ; [debug line = 80:29]

; <label>:25                                      ; preds = %59, %24
  %26 = load i32* %k, align 4, !dbg !62           ; [#uses=1 type=i32] [debug line = 80:29]
  %27 = icmp slt i32 %26, 3, !dbg !62             ; [#uses=1 type=i1] [debug line = 80:29]
  br i1 %27, label %28, label %62, !dbg !62       ; [debug line = 80:29]

; <label>:28                                      ; preds = %25
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 80:44]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 80:44]
  %29 = load i32* %k, align 4, !dbg !65           ; [#uses=1 type=i32] [debug line = 81:9]
  %30 = sext i32 %29 to i64, !dbg !65             ; [#uses=1 type=i64] [debug line = 81:9]
  %31 = load i32* %i, align 4, !dbg !65           ; [#uses=1 type=i32] [debug line = 81:9]
  %32 = sext i32 %31 to i64, !dbg !65             ; [#uses=1 type=i64] [debug line = 81:9]
  %33 = load [3 x i8]** %1, align 8, !dbg !65     ; [#uses=1 type=[3 x i8]*] [debug line = 81:9]
  %34 = getelementptr inbounds [3 x i8]* %33, i64 %32, !dbg !65 ; [#uses=1 type=[3 x i8]*] [debug line = 81:9]
  %35 = getelementptr inbounds [3 x i8]* %34, i32 0, i64 %30, !dbg !65 ; [#uses=1 type=i8*] [debug line = 81:9]
  %36 = load i8* %35, align 1, !dbg !65           ; [#uses=1 type=i8] [debug line = 81:9]
  %37 = sext i8 %36 to i32, !dbg !65              ; [#uses=1 type=i32] [debug line = 81:9]
  %38 = load i32* %j, align 4, !dbg !65           ; [#uses=1 type=i32] [debug line = 81:9]
  %39 = sext i32 %38 to i64, !dbg !65             ; [#uses=1 type=i64] [debug line = 81:9]
  %40 = load i32* %k, align 4, !dbg !65           ; [#uses=1 type=i32] [debug line = 81:9]
  %41 = sext i32 %40 to i64, !dbg !65             ; [#uses=1 type=i64] [debug line = 81:9]
  %42 = load [3 x i8]** %2, align 8, !dbg !65     ; [#uses=1 type=[3 x i8]*] [debug line = 81:9]
  %43 = getelementptr inbounds [3 x i8]* %42, i64 %41, !dbg !65 ; [#uses=1 type=[3 x i8]*] [debug line = 81:9]
  %44 = getelementptr inbounds [3 x i8]* %43, i32 0, i64 %39, !dbg !65 ; [#uses=1 type=i8*] [debug line = 81:9]
  %45 = load i8* %44, align 1, !dbg !65           ; [#uses=1 type=i8] [debug line = 81:9]
  %46 = sext i8 %45 to i32, !dbg !65              ; [#uses=1 type=i32] [debug line = 81:9]
  %47 = mul nsw i32 %37, %46, !dbg !65            ; [#uses=1 type=i32] [debug line = 81:9]
  %48 = load i32* %j, align 4, !dbg !65           ; [#uses=1 type=i32] [debug line = 81:9]
  %49 = sext i32 %48 to i64, !dbg !65             ; [#uses=1 type=i64] [debug line = 81:9]
  %50 = load i32* %i, align 4, !dbg !65           ; [#uses=1 type=i32] [debug line = 81:9]
  %51 = sext i32 %50 to i64, !dbg !65             ; [#uses=1 type=i64] [debug line = 81:9]
  %52 = load [3 x i16]** %3, align 8, !dbg !65    ; [#uses=1 type=[3 x i16]*] [debug line = 81:9]
  %53 = getelementptr inbounds [3 x i16]* %52, i64 %51, !dbg !65 ; [#uses=1 type=[3 x i16]*] [debug line = 81:9]
  %54 = getelementptr inbounds [3 x i16]* %53, i32 0, i64 %49, !dbg !65 ; [#uses=2 type=i16*] [debug line = 81:9]
  %55 = load i16* %54, align 2, !dbg !65          ; [#uses=1 type=i16] [debug line = 81:9]
  %56 = sext i16 %55 to i32, !dbg !65             ; [#uses=1 type=i32] [debug line = 81:9]
  %57 = add nsw i32 %56, %47, !dbg !65            ; [#uses=1 type=i32] [debug line = 81:9]
  %58 = trunc i32 %57 to i16, !dbg !65            ; [#uses=1 type=i16] [debug line = 81:9]
  store i16 %58, i16* %54, align 2, !dbg !65      ; [debug line = 81:9]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !66 ; [debug line = 82:7]
  br label %59, !dbg !66                          ; [debug line = 82:7]

; <label>:59                                      ; preds = %28
  %60 = load i32* %k, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 80:38]
  %61 = add nsw i32 %60, 1, !dbg !67              ; [#uses=1 type=i32] [debug line = 80:38]
  store i32 %61, i32* %k, align 4, !dbg !67       ; [debug line = 80:38]
  br label %25, !dbg !67                          ; [debug line = 80:38]

; <label>:62                                      ; preds = %25
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 83:5]
  br label %63, !dbg !68                          ; [debug line = 83:5]

; <label>:63                                      ; preds = %62
  %64 = load i32* %j, align 4, !dbg !69           ; [#uses=1 type=i32] [debug line = 77:32]
  %65 = add nsw i32 %64, 1, !dbg !69              ; [#uses=1 type=i32] [debug line = 77:32]
  store i32 %65, i32* %j, align 4, !dbg !69       ; [debug line = 77:32]
  br label %13, !dbg !69                          ; [debug line = 77:32]

; <label>:66                                      ; preds = %13
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 84:3]
  br label %67, !dbg !70                          ; [debug line = 84:3]

; <label>:67                                      ; preds = %66
  %68 = load i32* %i, align 4, !dbg !71           ; [#uses=1 type=i32] [debug line = 75:30]
  %69 = add nsw i32 %68, 1, !dbg !71              ; [#uses=1 type=i32] [debug line = 75:30]
  store i32 %69, i32* %i, align 4, !dbg !71       ; [debug line = 75:30]
  br label %8, !dbg !71                           ; [debug line = 75:30]

; <label>:70                                      ; preds = %8
  ret void, !dbg !72                              ; [debug line = 85:1]
}

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!29}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/lfvelez/Documentos/ISPR/HLS/lab1/matrixmul.prj/solution1/.autopilot/db/matrixmul.pragma.2.cpp", metadata !"/home/lfvelez/Documentos/ISPR/HLS/lab1", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !6, i32 69, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*, [3 x i8]*, [3 x i16]*)* @_Z9matrixmulPA3_cS0_PA3_s, null, null, metadata !22, i32 73} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../labsource/labs/lab1/matrixmul.cpp", metadata !"/home/lfvelez/Documentos/ISPR/HLS/lab1", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !15, metadata !18}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786454, null, metadata !"mat_a_t", metadata !6, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !17, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{i32 786454, null, metadata !"mat_b_t", metadata !6, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 48, i64 16, i32 0, i32 0, metadata !20, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786454, null, metadata !"result_t", metadata !6, i32 82, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !27, i32 773, metadata !28, i32 0, i32 1, i32* @signgam} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/lfvelez/Documentos/ISPR/HLS/lab1", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{void ([3 x i8]*, [3 x i8]*, [3 x i16]*)* @_Z9matrixmulPA3_cS0_PA3_s, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"mat_a_t [3]*", metadata !"mat_b_t [3]*", metadata !"result_t [3]*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"res"}
!35 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!36 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777286, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 70, i32 15, metadata !5, null}
!38 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554503, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 71, i32 15, metadata !5, null}
!40 = metadata !{i32 786689, metadata !5, metadata !"res", metadata !6, i32 50331720, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 72, i32 16, metadata !5, null}
!42 = metadata !{i32 73, i32 2, metadata !43, null}
!43 = metadata !{i32 786443, metadata !5, i32 73, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 73, i32 30, metadata !43, null}
!45 = metadata !{i32 73, i32 60, metadata !43, null}
!46 = metadata !{i32 786688, metadata !47, metadata !"i", metadata !6, i32 75, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 786443, metadata !43, i32 75, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 75, i32 16, metadata !47, null}
!49 = metadata !{i32 75, i32 21, metadata !47, null}
!50 = metadata !{i32 75, i32 36, metadata !51, null}
!51 = metadata !{i32 786443, metadata !47, i32 75, i32 35, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786688, metadata !53, metadata !"j", metadata !6, i32 77, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 786443, metadata !51, i32 77, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 77, i32 18, metadata !53, null}
!55 = metadata !{i32 77, i32 23, metadata !53, null}
!56 = metadata !{i32 77, i32 38, metadata !57, null}
!57 = metadata !{i32 786443, metadata !53, i32 77, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 79, i32 7, metadata !57, null}
!59 = metadata !{i32 786688, metadata !60, metadata !"k", metadata !6, i32 80, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 786443, metadata !57, i32 80, i32 16, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 80, i32 24, metadata !60, null}
!62 = metadata !{i32 80, i32 29, metadata !60, null}
!63 = metadata !{i32 80, i32 44, metadata !64, null}
!64 = metadata !{i32 786443, metadata !60, i32 80, i32 43, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 81, i32 9, metadata !64, null}
!66 = metadata !{i32 82, i32 7, metadata !64, null}
!67 = metadata !{i32 80, i32 38, metadata !60, null}
!68 = metadata !{i32 83, i32 5, metadata !57, null}
!69 = metadata !{i32 77, i32 32, metadata !53, null}
!70 = metadata !{i32 84, i32 3, metadata !51, null}
!71 = metadata !{i32 75, i32 30, metadata !47, null}
!72 = metadata !{i32 85, i32 1, metadata !43, null}
