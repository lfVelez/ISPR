; ModuleID = 'C:/Users/luisf/Documents/PROYECTOS/labs/lab4/fir.prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@shift_reg = internal unnamed_addr global [58 x i16] zeroinitializer, align 2 ; [#uses=4 type=[58 x i16]*]
@fir.str = internal unnamed_addr constant [4 x i8] c"fir\00" ; [#uses=1 type=[4 x i8]*]
@c = internal unnamed_addr constant [59 x i16] [i16 -378, i16 -73, i16 27, i16 170, i16 298, i16 352, i16 302, i16 168, i16 14, i16 -80, i16 -64, i16 53, i16 186, i16 216, i16 40, i16 -356, i16 -867, i16 -1283, i16 -1366, i16 -954, i16 -51, i16 1132, i16 2227, i16 2829, i16 2647, i16 1633, i16 25, i16 -1712, i16 -3042, i16 29229, i16 -3042, i16 -1712, i16 25, i16 1633, i16 2647, i16 2829, i16 2227, i16 1132, i16 -51, i16 -954, i16 -1366, i16 -1283, i16 -867, i16 -356, i16 40, i16 216, i16 186, i16 53, i16 -64, i16 -80, i16 14, i16 168, i16 302, i16 352, i16 298, i16 170, i16 27, i16 -73, i16 -378], align 2 ; [#uses=1 type=[59 x i16]*]
@.str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"fir_io\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fir(i16* %y, i16 signext %x) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fir.str) nounwind
  call void @llvm.dbg.value(metadata !{i16* %y}, i64 0, metadata !33), !dbg !34 ; [debug line = 4:11] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !35), !dbg !36 ; [debug line = 5:10] [debug variable = x]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !37 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i16* %y, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !37 ; [debug line = 7:1]
  %tmp = sext i16 %x to i32, !dbg !37             ; [#uses=1 type=i32] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !37 ; [debug line = 7:1]
  %shift_reg.load = load i16* getelementptr inbounds ([58 x i16]* @shift_reg, i32 0, i32 57), align 2, !dbg !39 ; [#uses=2 type=i16] [debug line = 16:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %shift_reg.load) nounwind
  %tmp.1 = sext i16 %shift_reg.load to i38, !dbg !39 ; [#uses=1 type=i38] [debug line = 16:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -378) nounwind
  %acc = mul nsw i38 %tmp.1, -378, !dbg !39       ; [#uses=1 type=i38] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i38 %acc}, i64 0, metadata !40), !dbg !39 ; [debug line = 16:3] [debug variable = acc]
  br label %1, !dbg !44                           ; [debug line = 17:14]

; <label>:1                                       ; preds = %2, %0
  %acc1 = phi i38 [ %acc, %0 ], [ %acc.3, %2 ]    ; [#uses=2 type=i38]
  %i = phi i32 [ 57, %0 ], [ %i.1, %2 ]           ; [#uses=4 type=i32]
  %tmp.3 = icmp eq i32 %i, 0, !dbg !44            ; [#uses=1 type=i1] [debug line = 17:14]
  br i1 %tmp.3, label %3, label %2, !dbg !44      ; [debug line = 17:14]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)), !dbg !46 ; [debug line = 17:33]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !46 ; [#uses=1 type=i32] [debug line = 17:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !48 ; [debug line = 18:1]
  %i.1 = add nsw i32 %i, -1, !dbg !49             ; [#uses=2 type=i32] [debug line = 18:5]
  %shift_reg.addr = getelementptr inbounds [58 x i16]* @shift_reg, i32 0, i32 %i.1, !dbg !49 ; [#uses=1 type=i16*] [debug line = 18:5]
  %shift_reg.load.1 = load i16* %shift_reg.addr, align 2, !dbg !49 ; [#uses=4 type=i16] [debug line = 18:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %shift_reg.load.1) nounwind
  %tmp.10 = sext i16 %shift_reg.load.1 to i38, !dbg !49 ; [#uses=1 type=i38] [debug line = 18:5]
  %c.addr = getelementptr inbounds [59 x i16]* @c, i32 0, i32 %i, !dbg !49 ; [#uses=1 type=i16*] [debug line = 18:5]
  %c.load = load i16* %c.addr, align 2, !dbg !49  ; [#uses=2 type=i16] [debug line = 18:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %c.load) nounwind
  %tmp.11 = sext i16 %c.load to i38, !dbg !49     ; [#uses=1 type=i38] [debug line = 18:5]
  %tmp.12 = mul nsw i38 %tmp.11, %tmp.10, !dbg !49 ; [#uses=1 type=i38] [debug line = 18:5]
  %acc.3 = add nsw i38 %tmp.12, %acc1, !dbg !49   ; [#uses=1 type=i38] [debug line = 18:5]
  call void @llvm.dbg.value(metadata !{i38 %acc.3}, i64 0, metadata !40), !dbg !49 ; [debug line = 18:5] [debug variable = acc]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %shift_reg.load.1) nounwind
  %shift_reg.addr.1 = getelementptr inbounds [58 x i16]* @shift_reg, i32 0, i32 %i, !dbg !50 ; [#uses=1 type=i16*] [debug line = 19:5]
  store i16 %shift_reg.load.1, i16* %shift_reg.addr.1, align 2, !dbg !50 ; [debug line = 19:5]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !51 ; [#uses=0 type=i32] [debug line = 20:3]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !52), !dbg !54 ; [debug line = 17:27] [debug variable = i]
  br label %1, !dbg !54                           ; [debug line = 17:27]

; <label>:3                                       ; preds = %1
  %acc.0.lcssa = phi i38 [ %acc1, %1 ]            ; [#uses=1 type=i38]
  %tmp.4 = sext i16 %x to i38, !dbg !55           ; [#uses=1 type=i38] [debug line = 21:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -378) nounwind
  %tmp.5 = mul nsw i38 %tmp.4, -378, !dbg !55     ; [#uses=1 type=i38] [debug line = 21:3]
  %acc.2 = add nsw i38 %acc.0.lcssa, %tmp.5, !dbg !55 ; [#uses=1 type=i38] [debug line = 21:3]
  call void @llvm.dbg.value(metadata !{i38 %acc.2}, i64 0, metadata !40), !dbg !55 ; [debug line = 21:3] [debug variable = acc]
  store i16 %x, i16* getelementptr inbounds ([58 x i16]* @shift_reg, i32 0, i32 0), align 2, !dbg !56 ; [debug line = 22:3]
  %tmp.7 = lshr i38 %acc.2, 15, !dbg !57          ; [#uses=1 type=i38] [debug line = 23:3]
  %tmp.8 = trunc i38 %tmp.7 to i16, !dbg !57      ; [#uses=1 type=i16] [debug line = 23:3]
  store i16 %tmp.8, i16* %y, align 2, !dbg !57    ; [debug line = 23:3]
  ret void, !dbg !58                              ; [debug line = 24:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=6]
declare void @_ssdm_SpecKeepArrayLoad(...)

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
!16 = metadata !{i32 786484, i32 0, metadata !5, metadata !"c", metadata !"c", metadata !"", metadata !6, i32 7, metadata !17, i32 1, i32 1, [59 x i16]* @c} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 944, i64 16, i32 0, i32 0, metadata !18, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!18 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ]
!19 = metadata !{i32 786454, null, metadata !"coef_t", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 58}       ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 786484, i32 0, metadata !5, metadata !"shift_reg", metadata !"shift_reg", metadata !"", metadata !6, i32 12, metadata !23, i32 1, i32 1, [58 x i16]* @shift_reg} ; [ DW_TAG_variable ]
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
!39 = metadata !{i32 16, i32 3, metadata !38, null}
!40 = metadata !{i32 786688, metadata !38, metadata !"acc", metadata !6, i32 13, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 786454, null, metadata !"acc_t", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 786454, null, metadata !"int38", metadata !6, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 786468, null, metadata !"int38", null, i32 0, i64 38, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 17, i32 14, metadata !45, null}
!45 = metadata !{i32 786443, metadata !38, i32 17, i32 9, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 17, i32 33, metadata !47, null}
!47 = metadata !{i32 786443, metadata !45, i32 17, i32 32, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 18, i32 1, metadata !47, null}
!49 = metadata !{i32 18, i32 5, metadata !47, null}
!50 = metadata !{i32 19, i32 5, metadata !47, null}
!51 = metadata !{i32 20, i32 3, metadata !47, null}
!52 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !6, i32 14, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 17, i32 27, metadata !45, null}
!55 = metadata !{i32 21, i32 3, metadata !38, null}
!56 = metadata !{i32 22, i32 3, metadata !38, null}
!57 = metadata !{i32 23, i32 3, metadata !38, null}
!58 = metadata !{i32 24, i32 1, metadata !38, null}
