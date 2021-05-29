; ModuleID = 'C:/Users/luisf/Documents/PROYECTOS/labs/lab4/fir.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@shift_reg = internal unnamed_addr global [58 x i16] zeroinitializer, align 2 ; [#uses=4 type=[58 x i16]*]
@fir.str = internal unnamed_addr constant [4 x i8] c"fir\00" ; [#uses=1 type=[4 x i8]*]
@c = internal unnamed_addr constant [59 x i16] [i16 -378, i16 -73, i16 27, i16 170, i16 298, i16 352, i16 302, i16 168, i16 14, i16 -80, i16 -64, i16 53, i16 186, i16 216, i16 40, i16 -356, i16 -867, i16 -1283, i16 -1366, i16 -954, i16 -51, i16 1132, i16 2227, i16 2829, i16 2647, i16 1633, i16 25, i16 -1712, i16 -3042, i16 29229, i16 -3042, i16 -1712, i16 25, i16 1633, i16 2647, i16 2829, i16 2227, i16 1132, i16 -51, i16 -954, i16 -1366, i16 -1283, i16 -867, i16 -356, i16 40, i16 216, i16 186, i16 53, i16 -64, i16 -80, i16 14, i16 168, i16 302, i16 352, i16 298, i16 170, i16 27, i16 -73, i16 -378], align 2 ; [#uses=1 type=[59 x i16]*]
@.str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"fir_io\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=16 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=3 type=[10 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fir(i16* %y, i16 signext %x) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %y) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %x) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fir.str) nounwind
  call void @llvm.dbg.value(metadata !{i16* %y}, i64 0, metadata !41), !dbg !42 ; [debug line = 4:11] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !43), !dbg !44 ; [debug line = 5:10] [debug variable = x]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [7 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !45 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i16* %y, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [7 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !45 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i16 %x, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [7 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !45 ; [debug line = 7:1]
  %shift_reg.load = load i16* getelementptr inbounds ([58 x i16]* @shift_reg, i32 0, i32 57), align 2, !dbg !47 ; [#uses=1 type=i16] [debug line = 16:3]
  %tmp.1.cast = sext i16 %shift_reg.load to i26, !dbg !47 ; [#uses=1 type=i26] [debug line = 16:3]
  %acc = mul i26 %tmp.1.cast, -378, !dbg !47      ; [#uses=1 type=i26] [debug line = 16:3]
  %acc.cast = sext i26 %acc to i37, !dbg !47      ; [#uses=1 type=i37] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i26 %acc}, i64 0, metadata !48), !dbg !47 ; [debug line = 16:3] [debug variable = acc]
  br label %1, !dbg !52                           ; [debug line = 17:14]

; <label>:1                                       ; preds = %3, %0
  %acc1 = phi i37 [ %acc.cast, %0 ], [ %acc.2, %3 ] ; [#uses=2 type=i37]
  %i = phi i6 [ -7, %0 ], [ %i.1, %3 ]            ; [#uses=3 type=i6]
  %acc1.cast = trunc i37 %acc1 to i31, !dbg !52   ; [#uses=1 type=i31] [debug line = 17:14]
  %i.cast1 = zext i6 %i to i32, !dbg !52          ; [#uses=2 type=i32] [debug line = 17:14]
  %tmp.3 = icmp eq i6 %i, 0, !dbg !52             ; [#uses=1 type=i1] [debug line = 17:14]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 57, i64 57, i64 57) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.3, label %5, label %3, !dbg !52      ; [debug line = 17:14]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str3) nounwind, !dbg !54 ; [debug line = 17:33]
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str3) nounwind, !dbg !54 ; [#uses=1 type=i32] [debug line = 17:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !56 ; [debug line = 18:1]
  %i.1 = add i6 %i, -1, !dbg !57                  ; [#uses=2 type=i6] [debug line = 18:5]
  %i.1.cast = zext i6 %i.1 to i32, !dbg !57       ; [#uses=1 type=i32] [debug line = 18:5]
  %shift_reg.addr = getelementptr inbounds [58 x i16]* @shift_reg, i32 0, i32 %i.1.cast, !dbg !57 ; [#uses=1 type=i16*] [debug line = 18:5]
  %shift_reg.load.1 = load i16* %shift_reg.addr, align 2, !dbg !57 ; [#uses=2 type=i16] [debug line = 18:5]
  %tmp..cast = sext i16 %shift_reg.load.1 to i32, !dbg !57 ; [#uses=1 type=i32] [debug line = 18:5]
  %c.addr = getelementptr inbounds [59 x i16]* @c, i32 0, i32 %i.cast1, !dbg !57 ; [#uses=1 type=i16*] [debug line = 18:5]
  %c.load = load i16* %c.addr, align 2, !dbg !57  ; [#uses=1 type=i16] [debug line = 18:5]
  %tmp.2.cast = sext i16 %c.load to i32, !dbg !57 ; [#uses=1 type=i32] [debug line = 18:5]
  %tmp.6 = mul i32 %tmp..cast, %tmp.2.cast, !dbg !57 ; [#uses=1 type=i32] [debug line = 18:5]
  %tmp.6.cast = sext i32 %tmp.6 to i37, !dbg !57  ; [#uses=1 type=i37] [debug line = 18:5]
  %acc.2 = add i37 %acc1, %tmp.6.cast, !dbg !57   ; [#uses=1 type=i37] [debug line = 18:5]
  call void @llvm.dbg.value(metadata !{i37 %acc.2}, i64 0, metadata !48), !dbg !57 ; [debug line = 18:5] [debug variable = acc]
  %shift_reg.addr.1 = getelementptr inbounds [58 x i16]* @shift_reg, i32 0, i32 %i.cast1, !dbg !58 ; [#uses=1 type=i16*] [debug line = 19:5]
  store i16 %shift_reg.load.1, i16* %shift_reg.addr.1, align 2, !dbg !58 ; [debug line = 19:5]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str3, i32 %tmp) nounwind, !dbg !59 ; [#uses=0 type=i32] [debug line = 20:3]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !60), !dbg !62 ; [debug line = 17:27] [debug variable = i]
  br label %1, !dbg !62                           ; [debug line = 17:27]

; <label>:5                                       ; preds = %1
  %acc1.cast.lcssa = phi i31 [ %acc1.cast, %1 ]   ; [#uses=1 type=i31]
  %tmp.4.cast = sext i16 %x to i26, !dbg !63      ; [#uses=1 type=i26] [debug line = 21:3]
  %tmp.5 = mul i26 %tmp.4.cast, -378, !dbg !63    ; [#uses=1 type=i26] [debug line = 21:3]
  %tmp.5.cast = sext i26 %tmp.5 to i31, !dbg !63  ; [#uses=1 type=i31] [debug line = 21:3]
  %acc.1 = add i31 %tmp.5.cast, %acc1.cast.lcssa, !dbg !63 ; [#uses=1 type=i31] [debug line = 21:3]
  call void @llvm.dbg.value(metadata !{i31 %acc.1}, i64 0, metadata !48), !dbg !63 ; [debug line = 21:3] [debug variable = acc]
  store i16 %x, i16* getelementptr inbounds ([58 x i16]* @shift_reg, i32 0, i32 0), align 2, !dbg !64 ; [debug line = 22:3]
  %tmp.7 = lshr i31 %acc.1, 15, !dbg !65          ; [#uses=1 type=i31] [debug line = 23:3]
  %tmp.8 = trunc i31 %tmp.7 to i16, !dbg !65      ; [#uses=1 type=i16] [debug line = 23:3]
  store i16 %tmp.8, i16* %y, align 2, !dbg !65    ; [debug line = 23:3]
  ret void, !dbg !66                              ; [debug line = 24:1]
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
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!7}

!0 = metadata !{void (i16*, i16)* @fir, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"data_t*", metadata !"data_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/luisf/Documents/PROYECTOS/labs/lab4/fir.prj/solution1/.autopilot/db/fir.pragma.2.c", metadata !"C:\5CUsers\5Cluisf\5CDocuments\5CPROYECTOS\5Clabs\5Clab4", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !8} ; [ DW_TAG_compile_unit ]
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !10, metadata !25}
!10 = metadata !{i32 786484, i32 0, metadata !11, metadata !"c", metadata !"c", metadata !"", metadata !12, i32 7, metadata !20, i32 1, i32 1, [59 x i16]* @c} ; [ DW_TAG_variable ]
!11 = metadata !{i32 786478, i32 0, metadata !12, metadata !"fir", metadata !"fir", metadata !"", metadata !12, i32 3, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16)* @fir, null, null, metadata !18, i32 6} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 786473, metadata !"fir.c", metadata !"C:\5CUsers\5Cluisf\5CDocuments\5CPROYECTOS\5Clabs\5Clab4", null} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !16}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"data_t", metadata !12, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 944, i64 16, i32 0, i32 0, metadata !21, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ]
!22 = metadata !{i32 786454, null, metadata !"coef_t", metadata !12, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 58}       ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 786484, i32 0, metadata !11, metadata !"shift_reg", metadata !"shift_reg", metadata !"", metadata !12, i32 12, metadata !26, i32 1, i32 1, [58 x i16]* @shift_reg} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 928, i64 16, i32 0, i32 0, metadata !16, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 57}       ; [ DW_TAG_subrange_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 15, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"y", metadata !33, metadata !"short", i32 0, i32 15}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, i32 1}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 15, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"x", metadata !39, metadata !"short", i32 0, i32 15}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, i32 0}
!41 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !12, i32 16777220, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 4, i32 11, metadata !11, null}
!43 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !12, i32 33554437, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 5, i32 10, metadata !11, null}
!45 = metadata !{i32 7, i32 1, metadata !46, null}
!46 = metadata !{i32 786443, metadata !11, i32 6, i32 5, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 16, i32 3, metadata !46, null}
!48 = metadata !{i32 786688, metadata !46, metadata !"acc", metadata !12, i32 13, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786454, null, metadata !"acc_t", metadata !12, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 786454, null, metadata !"int38", metadata !12, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ]
!51 = metadata !{i32 786468, null, metadata !"int38", null, i32 0, i64 38, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 17, i32 14, metadata !53, null}
!53 = metadata !{i32 786443, metadata !46, i32 17, i32 9, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 17, i32 33, metadata !55, null}
!55 = metadata !{i32 786443, metadata !53, i32 17, i32 32, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 18, i32 1, metadata !55, null}
!57 = metadata !{i32 18, i32 5, metadata !55, null}
!58 = metadata !{i32 19, i32 5, metadata !55, null}
!59 = metadata !{i32 20, i32 3, metadata !55, null}
!60 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !12, i32 14, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{i32 17, i32 27, metadata !53, null}
!63 = metadata !{i32 21, i32 3, metadata !46, null}
!64 = metadata !{i32 22, i32 3, metadata !46, null}
!65 = metadata !{i32 23, i32 3, metadata !46, null}
!66 = metadata !{i32 24, i32 1, metadata !46, null}
