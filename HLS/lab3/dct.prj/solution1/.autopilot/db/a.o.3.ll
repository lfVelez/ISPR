; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260] ; [#uses=1 type=[64 x i15]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@p_str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str8 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str5 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@p_str3 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %in_block}, i64 0, metadata !19), !dbg !34 ; [debug line = 23:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !35), !dbg !36 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_inbuf}, metadata !37), !dbg !39 ; [debug line = 27:109] [debug variable = col_inbuf]
  br label %1, !dbg !40                           ; [debug line = 32:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %i, -8, !dbg !40              ; [#uses=1 type=i1] [debug line = 32:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !42                   ; [#uses=1 type=i4] [debug line = 32:60]
  br i1 %tmp, label %.preheader2.preheader, label %2, !dbg !40 ; [debug line = 32:8]

.preheader2.preheader:                            ; preds = %1
  br label %.preheader2, !dbg !43                 ; [debug line = 37:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind, !dbg !45 ; [debug line = 32:66]
  call fastcc void @dct_1d2([64 x i16]* %in_block, i4 %i, [64 x i16]* %row_outbuf, i4 %i), !dbg !47 ; [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !48), !dbg !42 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !42                           ; [debug line = 32:60]

.preheader2:                                      ; preds = %6, %.preheader2.preheader
  %j = phi i4 [ %j_2, %6 ], [ 0, %.preheader2.preheader ] ; [#uses=4 type=i4]
  %tmp_2 = icmp eq i4 %j, -8, !dbg !43            ; [#uses=1 type=i1] [debug line = 37:9]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_2 = add i4 %j, 1, !dbg !50                   ; [#uses=1 type=i4] [debug line = 37:61]
  br i1 %tmp_2, label %.preheader1.preheader, label %3, !dbg !43 ; [debug line = 37:9]

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1, !dbg !51                 ; [debug line = 43:9]

; <label>:3                                       ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str3) nounwind, !dbg !53 ; [debug line = 38:1]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str3), !dbg !53 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp_3_cast = zext i4 %j to i8                  ; [#uses=1 type=i8]
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j, i3 0) ; [#uses=1 type=i7]
  %tmp_12_cast = zext i7 %tmp_3 to i8, !dbg !55   ; [#uses=1 type=i8] [debug line = 39:11]
  br label %4, !dbg !55                           ; [debug line = 39:11]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ 0, %3 ], [ %i_6, %5 ]           ; [#uses=4 type=i4]
  %tmp_5 = icmp eq i4 %i_1, -8, !dbg !55          ; [#uses=1 type=i1] [debug line = 39:11]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_6 = add i4 %i_1, 1, !dbg !57                 ; [#uses=1 type=i4] [debug line = 39:63]
  br i1 %tmp_5, label %6, label %5, !dbg !55      ; [debug line = 39:11]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str4) nounwind, !dbg !58 ; [debug line = 40:10]
  %tmp_7_cast = zext i4 %i_1 to i8, !dbg !58      ; [#uses=1 type=i8] [debug line = 40:10]
  %tmp_7 = add i8 %tmp_7_cast, %tmp_12_cast, !dbg !58 ; [#uses=1 type=i8] [debug line = 40:10]
  %tmp_13_cast = zext i8 %tmp_7 to i64, !dbg !58  ; [#uses=1 type=i64] [debug line = 40:10]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_13_cast, !dbg !58 ; [#uses=1 type=i16*] [debug line = 40:10]
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1, i3 0) ; [#uses=1 type=i7]
  %tmp_15_cast = zext i7 %tmp_9 to i8, !dbg !58   ; [#uses=1 type=i8] [debug line = 40:10]
  %tmp_10 = add i8 %tmp_3_cast, %tmp_15_cast, !dbg !58 ; [#uses=1 type=i8] [debug line = 40:10]
  %tmp_16_cast = zext i8 %tmp_10 to i64, !dbg !58 ; [#uses=1 type=i64] [debug line = 40:10]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_16_cast, !dbg !58 ; [#uses=1 type=i16*] [debug line = 40:10]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !58 ; [#uses=1 type=i16] [debug line = 40:10]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !58 ; [debug line = 40:10]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !48), !dbg !57 ; [debug line = 39:63] [debug variable = i]
  br label %4, !dbg !57                           ; [debug line = 39:63]

; <label>:6                                       ; preds = %4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str3, i32 %tmp_s), !dbg !60 ; [#uses=0 type=i32] [debug line = 40:43]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !61), !dbg !50 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader2, !dbg !50                 ; [debug line = 37:61]

.preheader1:                                      ; preds = %7, %.preheader1.preheader
  %i_2 = phi i4 [ %i_5, %7 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i4]
  %tmp_4 = icmp eq i4 %i_2, -8, !dbg !51          ; [#uses=1 type=i1] [debug line = 43:9]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !62                 ; [#uses=1 type=i4] [debug line = 43:61]
  br i1 %tmp_4, label %.preheader.preheader, label %7, !dbg !51 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !63                  ; [debug line = 48:9]

; <label>:7                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str5) nounwind, !dbg !65 ; [debug line = 43:67]
  call fastcc void @dct_1d2([64 x i16]* %col_inbuf, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2), !dbg !67 ; [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !48), !dbg !62 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader1, !dbg !62                 ; [debug line = 43:61]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %j_1 = phi i4 [ %j_3, %11 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i4]
  %tmp_8 = icmp eq i4 %j_1, -8, !dbg !63          ; [#uses=1 type=i1] [debug line = 48:9]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_3 = add i4 %j_1, 1, !dbg !68                 ; [#uses=1 type=i4] [debug line = 48:61]
  br i1 %tmp_8, label %12, label %8, !dbg !63     ; [debug line = 48:9]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !69 ; [debug line = 49:1]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6), !dbg !69 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp_9_cast = zext i4 %j_1 to i8                ; [#uses=1 type=i8]
  %tmp_11 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1, i3 0) ; [#uses=1 type=i7]
  %tmp_18_cast = zext i7 %tmp_11 to i8, !dbg !71  ; [#uses=1 type=i8] [debug line = 50:11]
  br label %9, !dbg !71                           ; [debug line = 50:11]

; <label>:9                                       ; preds = %10, %8
  %i_3 = phi i4 [ 0, %8 ], [ %i_7, %10 ]          ; [#uses=4 type=i4]
  %tmp_1 = icmp eq i4 %i_3, -8, !dbg !71          ; [#uses=1 type=i1] [debug line = 50:11]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_7 = add i4 %i_3, 1, !dbg !73                 ; [#uses=1 type=i4] [debug line = 50:63]
  br i1 %tmp_1, label %11, label %10, !dbg !71    ; [debug line = 50:11]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str7) nounwind, !dbg !74 ; [debug line = 51:10]
  %tmp_10_cast = zext i4 %i_3 to i8, !dbg !74     ; [#uses=1 type=i8] [debug line = 51:10]
  %tmp_12 = add i8 %tmp_10_cast, %tmp_18_cast, !dbg !74 ; [#uses=1 type=i8] [debug line = 51:10]
  %tmp_19_cast = zext i8 %tmp_12 to i64, !dbg !74 ; [#uses=1 type=i64] [debug line = 51:10]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_19_cast, !dbg !74 ; [#uses=1 type=i16*] [debug line = 51:10]
  %tmp_13 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3, i3 0) ; [#uses=1 type=i7]
  %tmp_21_cast = zext i7 %tmp_13 to i8, !dbg !74  ; [#uses=1 type=i8] [debug line = 51:10]
  %tmp_14 = add i8 %tmp_9_cast, %tmp_21_cast, !dbg !74 ; [#uses=1 type=i8] [debug line = 51:10]
  %tmp_22_cast = zext i8 %tmp_14 to i64, !dbg !74 ; [#uses=1 type=i64] [debug line = 51:10]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_22_cast, !dbg !74 ; [#uses=1 type=i16*] [debug line = 51:10]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !74 ; [#uses=1 type=i16] [debug line = 51:10]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !74 ; [debug line = 51:10]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !48), !dbg !73 ; [debug line = 50:63] [debug variable = i]
  br label %9, !dbg !73                           ; [debug line = 50:63]

; <label>:11                                      ; preds = %9
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_6), !dbg !76 ; [#uses=0 type=i32] [debug line = 51:43]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !61), !dbg !68 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !68                  ; [debug line = 48:61]

; <label>:12                                      ; preds = %.preheader
  ret void, !dbg !77                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d2([64 x i16]* nocapture %src, i4 %tmp_6, [64 x i16]* nocapture %dst, i4 %tmp_61) {
  %tmp_61_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_61) ; [#uses=1 type=i4]
  %tmp_6_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_6) ; [#uses=1 type=i4]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_61_read, i3 0) ; [#uses=1 type=i7]
  %tmp_24_cast = zext i7 %tmp_s to i8             ; [#uses=1 type=i8]
  %tmp_15 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_6_read, i3 0) ; [#uses=1 type=i7]
  %tmp_26_cast = zext i7 %tmp_15 to i8, !dbg !78  ; [#uses=1 type=i8] [debug line = 4:24]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %src}, i64 0, metadata !83), !dbg !78 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !85), !dbg !86 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !87                           ; [debug line = 13:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %k, -8, !dbg !87              ; [#uses=1 type=i1] [debug line = 13:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %k_1 = add i4 %k, 1, !dbg !90                   ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %tmp, label %6, label %2, !dbg !87        ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !91 ; [debug line = 13:67]
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !91 ; [#uses=1 type=i32] [debug line = 13:67]
  %tmp_cast = zext i4 %k to i8, !dbg !93          ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_16 = add i8 %tmp_cast, %tmp_24_cast, !dbg !93 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_27_cast = zext i8 %tmp_16 to i64, !dbg !93 ; [#uses=1 type=i64] [debug line = 19:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_27_cast, !dbg !93 ; [#uses=1 type=i16*] [debug line = 19:7]
  %tmp_18 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0) ; [#uses=1 type=i7]
  %tmp_29_cast = zext i7 %tmp_18 to i8, !dbg !94  ; [#uses=1 type=i8] [debug line = 15:11]
  br label %3, !dbg !94                           ; [debug line = 15:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_1, %4 ]       ; [#uses=2 type=i32]
  %tmp_11 = icmp eq i4 %n, -8, !dbg !94           ; [#uses=1 type=i1] [debug line = 15:11]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %n_1 = add i4 %n, 1, !dbg !96                   ; [#uses=1 type=i4] [debug line = 15:72]
  br i1 %tmp_11, label %5, label %4, !dbg !94     ; [debug line = 15:11]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !97 ; [debug line = 15:78]
  %tmp_15_cast = zext i4 %n to i8, !dbg !99       ; [#uses=2 type=i8] [debug line = 17:10]
  %tmp_19 = add i8 %tmp_26_cast, %tmp_15_cast, !dbg !99 ; [#uses=1 type=i8] [debug line = 17:10]
  %tmp_30_cast = zext i8 %tmp_19 to i64, !dbg !99 ; [#uses=1 type=i64] [debug line = 17:10]
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_30_cast, !dbg !99 ; [#uses=1 type=i16*] [debug line = 17:10]
  %tmp_20 = add i8 %tmp_29_cast, %tmp_15_cast, !dbg !100 ; [#uses=1 type=i8] [debug line = 16:48]
  %tmp_31_cast = zext i8 %tmp_20 to i64, !dbg !100 ; [#uses=1 type=i64] [debug line = 16:48]
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_31_cast, !dbg !100 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2, !dbg !100 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_cast = sext i15 %dct_coeff_table_load to i31, !dbg !100 ; [#uses=1 type=i31] [debug line = 16:48]
  %src_load = load i16* %src_addr, align 2, !dbg !99 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_16_cast = sext i16 %src_load to i31, !dbg !99 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_17 = mul i31 %coeff_cast, %tmp_16_cast, !dbg !99 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_17_cast = sext i31 %tmp_17 to i32, !dbg !99 ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp_1 = add nsw i32 %tmp1, %tmp_17_cast, !dbg !99 ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp_1}, i64 0, metadata !101), !dbg !99 ; [debug line = 17:10] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i4 %n_1}, i64 0, metadata !103), !dbg !96 ; [debug line = 15:72] [debug variable = n]
  br label %3, !dbg !96                           ; [debug line = 15:72]

; <label>:5                                       ; preds = %3
  %tmp_2 = trunc i32 %tmp1 to i29, !dbg !94       ; [#uses=1 type=i29] [debug line = 15:11]
  %tmp_12 = add i29 4096, %tmp_2, !dbg !93        ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_14 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_12, i32 13, i32 28), !dbg !93 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_14, i16* %dst_addr, align 2, !dbg !93 ; [debug line = 19:7]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_13) nounwind, !dbg !104 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !105), !dbg !90 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !90                           ; [debug line = 13:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !106                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !107
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !113
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !117), !dbg !125 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !126), !dbg !127 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !128), !dbg !131 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !132) nounwind, !dbg !139 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf_2d_in}, i64 0, metadata !140) nounwind, !dbg !141 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !142                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %5, %0
  %r_i = phi i4 [ 0, %0 ], [ %r, %5 ]             ; [#uses=4 type=i4]
  %exitcond1_i = icmp eq i4 %r_i, -8, !dbg !142   ; [#uses=1 type=i1] [debug line = 59:9@85:4]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %r = add i4 %r_i, 1, !dbg !145                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  br i1 %exitcond1_i, label %read_data.exit, label %2, !dbg !142 ; [debug line = 59:9@85:4]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str8) nounwind, !dbg !146 ; [debug line = 59:67@85:4]
  %tmp_3_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind, !dbg !146 ; [#uses=1 type=i32] [debug line = 59:67@85:4]
  %tmp = trunc i4 %r_i to i3                      ; [#uses=1 type=i3]
  %tmp_i = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !148 ; [#uses=1 type=i6] [debug line = 62:10@85:4]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i, i3 0) ; [#uses=1 type=i7]
  %tmp_33_cast = zext i7 %tmp_s to i8, !dbg !151  ; [#uses=1 type=i8] [debug line = 61:12@85:4]
  br label %3, !dbg !151                          ; [debug line = 61:12@85:4]

; <label>:3                                       ; preds = %4, %2
  %c_i = phi i4 [ 0, %2 ], [ %c, %4 ]             ; [#uses=4 type=i4]
  %c_i_cast6 = zext i4 %c_i to i6, !dbg !151      ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  %exitcond_i = icmp eq i4 %c_i, -8, !dbg !151    ; [#uses=1 type=i1] [debug line = 61:12@85:4]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %c = add i4 %c_i, 1, !dbg !152                  ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  br i1 %exitcond_i, label %5, label %4, !dbg !151 ; [debug line = 61:12@85:4]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str9) nounwind, !dbg !148 ; [debug line = 62:10@85:4]
  %tmp_9_i = add i6 %c_i_cast6, %tmp_i, !dbg !148 ; [#uses=1 type=i6] [debug line = 62:10@85:4]
  %tmp_i_15 = zext i6 %tmp_9_i to i64, !dbg !148  ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_i_15, !dbg !148 ; [#uses=1 type=i16*] [debug line = 62:10@85:4]
  %input_load = load i16* %input_addr, align 2, !dbg !148 ; [#uses=1 type=i16] [debug line = 62:10@85:4]
  %tmp_1_i_cast = zext i4 %c_i to i8, !dbg !148   ; [#uses=1 type=i8] [debug line = 62:10@85:4]
  %tmp_22 = add i8 %tmp_33_cast, %tmp_1_i_cast, !dbg !148 ; [#uses=1 type=i8] [debug line = 62:10@85:4]
  %tmp_37_cast = zext i8 %tmp_22 to i64, !dbg !148 ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_37_cast, !dbg !148 ; [#uses=1 type=i16*] [debug line = 62:10@85:4]
  store i16 %input_load, i16* %buf_2d_in_addr, align 2, !dbg !148 ; [debug line = 62:10@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !153) nounwind, !dbg !152 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %3, !dbg !152                          ; [debug line = 61:64@85:4]

; <label>:5                                       ; preds = %3
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_3_i) nounwind, !dbg !154 ; [#uses=0 type=i32] [debug line = 63:4@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !155) nounwind, !dbg !145 ; [debug line = 59:61@85:4] [debug variable = r]
  br label %1, !dbg !145                          ; [debug line = 59:61@85:4]

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([64 x i16]* %buf_2d_in, [64 x i16]* %buf_2d_out) nounwind, !dbg !156 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !157) nounwind, !dbg !162 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %6, !dbg !163                          ; [debug line = 71:9@90:4]

; <label>:6                                       ; preds = %10, %read_data.exit
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %r_1, %10 ] ; [#uses=4 type=i4]
  %exitcond1_i3 = icmp eq i4 %r_i2, -8, !dbg !163 ; [#uses=1 type=i1] [debug line = 71:9@90:4]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %r_1 = add i4 %r_i2, 1, !dbg !166               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  br i1 %exitcond1_i3, label %write_data.exit, label %7, !dbg !163 ; [debug line = 71:9@90:4]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !167 ; [debug line = 71:67@90:4]
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind, !dbg !167 ; [#uses=1 type=i32] [debug line = 71:67@90:4]
  %tmp_21 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i2, i3 0) ; [#uses=1 type=i7]
  %tmp_35_cast = zext i7 %tmp_21 to i8            ; [#uses=1 type=i8]
  %tmp_3 = trunc i4 %r_i2 to i3                   ; [#uses=1 type=i3]
  %tmp_1_i5 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0), !dbg !169 ; [#uses=1 type=i6] [debug line = 74:10@90:4]
  br label %8, !dbg !172                          ; [debug line = 73:12@90:4]

; <label>:8                                       ; preds = %9, %7
  %c_i6 = phi i4 [ 0, %7 ], [ %c_1, %9 ]          ; [#uses=4 type=i4]
  %c_i6_cast2 = zext i4 %c_i6 to i6, !dbg !172    ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %exitcond_i7 = icmp eq i4 %c_i6, -8, !dbg !172  ; [#uses=1 type=i1] [debug line = 73:12@90:4]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %c_1 = add i4 %c_i6, 1, !dbg !173               ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  br i1 %exitcond_i7, label %10, label %9, !dbg !172 ; [debug line = 73:12@90:4]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind, !dbg !169 ; [debug line = 74:10@90:4]
  %tmp_3_i8_cast = zext i4 %c_i6 to i8, !dbg !169 ; [#uses=1 type=i8] [debug line = 74:10@90:4]
  %tmp_23 = add i8 %tmp_35_cast, %tmp_3_i8_cast, !dbg !169 ; [#uses=1 type=i8] [debug line = 74:10@90:4]
  %tmp_38_cast = zext i8 %tmp_23 to i64, !dbg !169 ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_38_cast, !dbg !169 ; [#uses=1 type=i16*] [debug line = 74:10@90:4]
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2, !dbg !169 ; [#uses=1 type=i16] [debug line = 74:10@90:4]
  %tmp_4_i = add i6 %c_i6_cast2, %tmp_1_i5, !dbg !169 ; [#uses=1 type=i6] [debug line = 74:10@90:4]
  %tmp_5_i = zext i6 %tmp_4_i to i64, !dbg !169   ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_5_i, !dbg !169 ; [#uses=1 type=i16*] [debug line = 74:10@90:4]
  store i16 %buf_2d_out_load, i16* %output_addr, align 2, !dbg !169 ; [debug line = 74:10@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !174) nounwind, !dbg !173 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %8, !dbg !173                          ; [debug line = 73:64@90:4]

; <label>:10                                      ; preds = %8
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_2_i) nounwind, !dbg !175 ; [#uses=0 type=i32] [debug line = 75:4@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !176) nounwind, !dbg !166 ; [debug line = 71:61@90:4] [debug variable = r]
  br label %6, !dbg !166                          ; [debug line = 71:61@90:4]

write_data.exit:                                  ; preds = %6
  ret void, !dbg !177                             ; [debug line = 91:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=12]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=12]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=0]
declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_20 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_20
}

; [#uses=9]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_21 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_22 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_23 = or i7 %empty_22, %empty_21          ; [#uses=1 type=i7]
  ret i7 %empty_23
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_24 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_25 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_26 = or i6 %empty_25, %empty_24          ; [#uses=1 type=i6]
  ret i6 %empty_26
}

!opencl.kernels = !{!0, !7, !10, !13, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"dct_data_t*", metadata !"dct_data_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"dst"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"dct_data_t [8]*", metadata !"dct_data_t [8]*"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"in_block", metadata !"out_block"}
!10 = metadata !{null, metadata !1, metadata !2, metadata !11, metadata !4, metadata !12, metadata !6}
!11 = metadata !{metadata !"kernel_arg_type", metadata !"short*", metadata !"short [8]*"}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"buf"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"short [8]*", metadata !"short*"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"output"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"short*", metadata !"short*"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!19 = metadata !{i32 786689, metadata !20, metadata !"in_block", null, i32 23, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !21, i32 23, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 25} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"dct.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !26, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !21, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !26, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{metadata !29, metadata !29}
!34 = metadata !{i32 23, i32 24, metadata !20, null}
!35 = metadata !{i32 786689, metadata !20, metadata !"out_block", null, i32 24, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 24, i32 18, metadata !20, null}
!37 = metadata !{i32 786688, metadata !38, metadata !"col_inbuf", metadata !21, i32 27, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 786443, metadata !20, i32 25, i32 1, metadata !21, i32 5} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 27, i32 109, metadata !38, null}
!40 = metadata !{i32 32, i32 8, metadata !41, null}
!41 = metadata !{i32 786443, metadata !38, i32 32, i32 4, metadata !21, i32 6} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 32, i32 60, metadata !41, null}
!43 = metadata !{i32 37, i32 9, metadata !44, null}
!44 = metadata !{i32 786443, metadata !38, i32 37, i32 4, metadata !21, i32 8} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 32, i32 66, metadata !46, null}
!46 = metadata !{i32 786443, metadata !41, i32 32, i32 65, metadata !21, i32 7} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 33, i32 7, metadata !46, null}
!48 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !21, i32 28, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 37, i32 61, metadata !44, null}
!51 = metadata !{i32 43, i32 9, metadata !52, null}
!52 = metadata !{i32 786443, metadata !38, i32 43, i32 4, metadata !21, i32 12} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 38, i32 1, metadata !54, null}
!54 = metadata !{i32 786443, metadata !44, i32 38, i32 1, metadata !21, i32 9} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 39, i32 11, metadata !56, null}
!56 = metadata !{i32 786443, metadata !54, i32 39, i32 7, metadata !21, i32 10} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 39, i32 63, metadata !56, null}
!58 = metadata !{i32 40, i32 10, metadata !59, null}
!59 = metadata !{i32 786443, metadata !56, i32 40, i32 10, metadata !21, i32 11} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 40, i32 43, metadata !56, null}
!61 = metadata !{i32 786688, metadata !38, metadata !"j", metadata !21, i32 28, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 43, i32 61, metadata !52, null}
!63 = metadata !{i32 48, i32 9, metadata !64, null}
!64 = metadata !{i32 786443, metadata !38, i32 48, i32 4, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 43, i32 67, metadata !66, null}
!66 = metadata !{i32 786443, metadata !52, i32 43, i32 66, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 44, i32 7, metadata !66, null}
!68 = metadata !{i32 48, i32 61, metadata !64, null}
!69 = metadata !{i32 49, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !64, i32 49, i32 1, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 50, i32 11, metadata !72, null}
!72 = metadata !{i32 786443, metadata !70, i32 50, i32 7, metadata !21, i32 16} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 50, i32 63, metadata !72, null}
!74 = metadata !{i32 51, i32 10, metadata !75, null}
!75 = metadata !{i32 786443, metadata !72, i32 51, i32 10, metadata !21, i32 17} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 51, i32 43, metadata !72, null}
!77 = metadata !{i32 52, i32 1, metadata !38, null}
!78 = metadata !{i32 4, i32 24, metadata !79, null}
!79 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !21, i32 4, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 5} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !82, metadata !82}
!82 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!83 = metadata !{i32 786689, metadata !79, metadata !"src", null, i32 4, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !26, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!85 = metadata !{i32 786689, metadata !79, metadata !"dst", null, i32 4, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 4, i32 81, metadata !79, null}
!87 = metadata !{i32 13, i32 9, metadata !88, null}
!88 = metadata !{i32 786443, metadata !89, i32 13, i32 4, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !79, i32 5, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 13, i32 61, metadata !88, null}
!91 = metadata !{i32 13, i32 67, metadata !92, null}
!92 = metadata !{i32 786443, metadata !88, i32 13, i32 66, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 19, i32 7, metadata !92, null}
!94 = metadata !{i32 15, i32 11, metadata !95, null}
!95 = metadata !{i32 786443, metadata !92, i32 15, i32 7, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 15, i32 72, metadata !95, null}
!97 = metadata !{i32 15, i32 78, metadata !98, null}
!98 = metadata !{i32 786443, metadata !95, i32 15, i32 77, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 17, i32 10, metadata !98, null}
!100 = metadata !{i32 16, i32 48, metadata !98, null}
!101 = metadata !{i32 786688, metadata !89, metadata !"tmp", metadata !21, i32 7, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!103 = metadata !{i32 786688, metadata !89, metadata !"n", metadata !21, i32 6, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 20, i32 4, metadata !92, null}
!105 = metadata !{i32 786688, metadata !89, metadata !"k", metadata !21, i32 6, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 21, i32 1, metadata !89, null}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 15, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"input", metadata !111, metadata !"short", i32 0, i32 15}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 63, i32 1}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 15, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"output", metadata !111, metadata !"short", i32 0, i32 15}
!117 = metadata !{i32 786689, metadata !118, metadata !"input", null, i32 78, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct", metadata !"dct", metadata !"", metadata !21, i32 78, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 79} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{null, metadata !121, metadata !121}
!121 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!122 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!125 = metadata !{i32 78, i32 16, metadata !118, null}
!126 = metadata !{i32 786689, metadata !118, metadata !"output", null, i32 78, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 78, i32 38, metadata !118, null}
!128 = metadata !{i32 786688, metadata !129, metadata !"buf_2d_in", metadata !21, i32 81, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 786443, metadata !118, i32 79, i32 1, metadata !21, i32 28} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!131 = metadata !{i32 81, i32 10, metadata !129, null}
!132 = metadata !{i32 786689, metadata !133, metadata !"input", null, i32 54, metadata !122, i32 0, metadata !138} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read_data", metadata !"read_data", metadata !"", metadata !21, i32 54, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 55} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{null, metadata !121, metadata !136}
!136 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ]
!137 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !27, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!138 = metadata !{i32 85, i32 4, metadata !129, null}
!139 = metadata !{i32 54, i32 22, metadata !133, metadata !138}
!140 = metadata !{i32 786689, metadata !133, metadata !"buf", null, i32 54, metadata !130, i32 0, metadata !138} ; [ DW_TAG_arg_variable ]
!141 = metadata !{i32 54, i32 44, metadata !133, metadata !138}
!142 = metadata !{i32 59, i32 9, metadata !143, metadata !138}
!143 = metadata !{i32 786443, metadata !144, i32 59, i32 4, metadata !21, i32 19} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 786443, metadata !133, i32 55, i32 1, metadata !21, i32 18} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 59, i32 61, metadata !143, metadata !138}
!146 = metadata !{i32 59, i32 67, metadata !147, metadata !138}
!147 = metadata !{i32 786443, metadata !143, i32 59, i32 66, metadata !21, i32 20} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 62, i32 10, metadata !149, metadata !138}
!149 = metadata !{i32 786443, metadata !150, i32 62, i32 10, metadata !21, i32 22} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !147, i32 61, i32 7, metadata !21, i32 21} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 61, i32 12, metadata !150, metadata !138}
!152 = metadata !{i32 61, i32 64, metadata !150, metadata !138}
!153 = metadata !{i32 786688, metadata !144, metadata !"c", metadata !21, i32 56, metadata !102, i32 0, metadata !138} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 63, i32 4, metadata !147, metadata !138}
!155 = metadata !{i32 786688, metadata !144, metadata !"r", metadata !21, i32 56, metadata !102, i32 0, metadata !138} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 87, i32 4, metadata !129, null}
!157 = metadata !{i32 786689, metadata !158, metadata !"output", null, i32 66, metadata !122, i32 0, metadata !161} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write_data", metadata !"write_data", metadata !"", metadata !21, i32 66, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 67} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!160 = metadata !{null, metadata !136, metadata !121}
!161 = metadata !{i32 90, i32 4, metadata !129, null}
!162 = metadata !{i32 66, i32 116, metadata !158, metadata !161}
!163 = metadata !{i32 71, i32 9, metadata !164, metadata !161}
!164 = metadata !{i32 786443, metadata !165, i32 71, i32 4, metadata !21, i32 24} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 786443, metadata !158, i32 67, i32 1, metadata !21, i32 23} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 71, i32 61, metadata !164, metadata !161}
!167 = metadata !{i32 71, i32 67, metadata !168, metadata !161}
!168 = metadata !{i32 786443, metadata !164, i32 71, i32 66, metadata !21, i32 25} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 74, i32 10, metadata !170, metadata !161}
!170 = metadata !{i32 786443, metadata !171, i32 74, i32 10, metadata !21, i32 27} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !168, i32 73, i32 7, metadata !21, i32 26} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 73, i32 12, metadata !171, metadata !161}
!173 = metadata !{i32 73, i32 64, metadata !171, metadata !161}
!174 = metadata !{i32 786688, metadata !165, metadata !"c", metadata !21, i32 68, metadata !102, i32 0, metadata !161} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 75, i32 4, metadata !168, metadata !161}
!176 = metadata !{i32 786688, metadata !165, metadata !"r", metadata !21, i32 68, metadata !102, i32 0, metadata !161} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 91, i32 1, metadata !129, null}
