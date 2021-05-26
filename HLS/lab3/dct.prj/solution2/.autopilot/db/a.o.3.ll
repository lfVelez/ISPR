; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260] ; [#uses=1 type=[64 x i15]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@Xpose_Row_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Xpose_Col_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@WR_Loop_Row_WR_Loop_s = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@RD_Loop_Row_RD_Loop_s = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
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
  br i1 %tmp, label %.preheader2.preheader.preheader, label %2, !dbg !40 ; [debug line = 32:8]

.preheader2.preheader.preheader:                  ; preds = %1
  br label %.preheader2.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind, !dbg !43 ; [debug line = 32:66]
  call fastcc void @dct_1d2([64 x i16]* %in_block, i4 %i, [64 x i16]* %row_outbuf, i4 %i), !dbg !45 ; [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !46), !dbg !42 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !42                           ; [debug line = 32:60]

.preheader2.preheader:                            ; preds = %.preheader2, %.preheader2.preheader.preheader
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i7]
  %j = phi i4 [ %tmp_3_mid2_v, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i4]
  %i_1 = phi i4 [ %i_6, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader1.preheader, label %.preheader2

.preheader1.preheader:                            ; preds = %.preheader2.preheader
  br label %.preheader1, !dbg !48                 ; [debug line = 43:9]

.preheader2:                                      ; preds = %.preheader2.preheader
  %j_2 = add i4 %j, 1, !dbg !50                   ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !52), !dbg !50 ; [debug line = 37:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %tmp_1 = icmp eq i4 %i_1, -8, !dbg !53          ; [#uses=2 type=i1] [debug line = 39:11]
  %i_1_mid2 = select i1 %tmp_1, i4 0, i4 %i_1     ; [#uses=3 type=i4]
  %tmp_3_mid2_v = select i1 %tmp_1, i4 %j_2, i4 %j, !dbg !56 ; [#uses=3 type=i4] [debug line = 40:1]
  %tmp_3_mid2_cast = zext i4 %tmp_3_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_3_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_3_cast = zext i7 %tmp_2 to i8, !dbg !58    ; [#uses=1 type=i8] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind, !dbg !58 ; [debug line = 40:2]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5), !dbg !58 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !59 ; [debug line = 41:1]
  %tmp_7_cast = zext i4 %i_1_mid2 to i8           ; [#uses=1 type=i8]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_9_cast = zext i7 %tmp_8 to i8, !dbg !56    ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_3 = add i8 %tmp_3_mid2_cast, %tmp_9_cast, !dbg !56 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_11_cast = zext i8 %tmp_3 to i64, !dbg !56  ; [#uses=1 type=i64] [debug line = 40:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_11_cast, !dbg !56 ; [#uses=1 type=i16*] [debug line = 40:1]
  %tmp_5 = add i8 %tmp_7_cast, %tmp_3_cast, !dbg !56 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_13_cast = zext i8 %tmp_5 to i64, !dbg !56  ; [#uses=1 type=i64] [debug line = 40:1]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_13_cast, !dbg !56 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !56 ; [#uses=1 type=i16] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !56 ; [debug line = 40:1]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_6), !dbg !60 ; [#uses=0 type=i32] [debug line = 40:34]
  %i_6 = add i4 %i_1_mid2, 1, !dbg !61            ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !46), !dbg !61 ; [debug line = 39:63] [debug variable = i]
  br label %.preheader2.preheader

.preheader1:                                      ; preds = %3, %.preheader1.preheader
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i4]
  %tmp_4 = icmp eq i4 %i_2, -8, !dbg !48          ; [#uses=1 type=i1] [debug line = 43:9]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !62                 ; [#uses=1 type=i4] [debug line = 43:61]
  br i1 %tmp_4, label %.preheader.preheader.preheader, label %3, !dbg !48 ; [debug line = 43:9]

.preheader.preheader.preheader:                   ; preds = %.preheader1
  br label %.preheader.preheader

; <label>:3                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind, !dbg !63 ; [debug line = 43:67]
  call fastcc void @dct_1d2([64 x i16]* %col_inbuf, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2), !dbg !65 ; [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !46), !dbg !62 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader1, !dbg !62                 ; [debug line = 43:61]

.preheader.preheader:                             ; preds = %.preheader, %.preheader.preheader.preheader
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i7]
  %j_1 = phi i4 [ %tmp_9_mid2_v, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i4]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i4]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %j_3 = add i4 %j_1, 1, !dbg !66                 ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !52), !dbg !66 ; [debug line = 48:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %tmp_7 = icmp eq i4 %i_3, -8, !dbg !68          ; [#uses=2 type=i1] [debug line = 50:11]
  %i_3_mid2 = select i1 %tmp_7, i4 0, i4 %i_3     ; [#uses=3 type=i4]
  %tmp_9_mid2_v = select i1 %tmp_7, i4 %j_3, i4 %j_1, !dbg !71 ; [#uses=3 type=i4] [debug line = 51:1]
  %tmp_9_mid2_cast = zext i4 %tmp_9_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_9_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_15_cast = zext i7 %tmp_9 to i8, !dbg !73   ; [#uses=1 type=i8] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind, !dbg !73 ; [debug line = 51:2]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8), !dbg !73 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !74 ; [debug line = 52:1]
  %tmp_10_cast = zext i4 %i_3_mid2 to i8, !dbg !71 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_10 = add i8 %tmp_10_cast, %tmp_15_cast, !dbg !71 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_16_cast = zext i8 %tmp_10 to i64, !dbg !71 ; [#uses=1 type=i64] [debug line = 51:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_16_cast, !dbg !71 ; [#uses=1 type=i16*] [debug line = 51:1]
  %tmp_11 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_18_cast = zext i7 %tmp_11 to i8, !dbg !71  ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_12 = add i8 %tmp_9_mid2_cast, %tmp_18_cast, !dbg !71 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_19_cast = zext i8 %tmp_12 to i64, !dbg !71 ; [#uses=1 type=i64] [debug line = 51:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_19_cast, !dbg !71 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !71 ; [#uses=1 type=i16] [debug line = 51:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !71 ; [debug line = 51:1]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_s), !dbg !75 ; [#uses=0 type=i32] [debug line = 51:34]
  %i_7 = add i4 %i_3_mid2, 1, !dbg !76            ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !46), !dbg !76 ; [debug line = 50:63] [debug variable = i]
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void, !dbg !77                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d2([64 x i16]* nocapture %src, i4 %tmp_6, [64 x i16]* nocapture %dst, i4 %tmp_61) {
  %tmp_61_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_61) ; [#uses=1 type=i4]
  %tmp_6_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_6) ; [#uses=1 type=i4]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_61_read, i3 0) ; [#uses=1 type=i7]
  %tmp_21_cast = zext i7 %tmp_s to i8             ; [#uses=1 type=i8]
  %tmp_15 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_6_read, i3 0) ; [#uses=1 type=i7]
  %tmp_23_cast = zext i7 %tmp_15 to i8, !dbg !78  ; [#uses=1 type=i8] [debug line = 4:24]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %src}, i64 0, metadata !83), !dbg !78 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !85), !dbg !86 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !87                           ; [debug line = 13:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %k, -8, !dbg !87              ; [#uses=1 type=i1] [debug line = 13:9]
  %k_1 = add i4 %k, 1, !dbg !90                   ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %tmp, label %6, label %2, !dbg !87        ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !91 ; [debug line = 13:67]
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !91 ; [#uses=1 type=i32] [debug line = 13:67]
  %tmp_cast = zext i4 %k to i8, !dbg !93          ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_16 = add i8 %tmp_cast, %tmp_21_cast, !dbg !93 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_24_cast = zext i8 %tmp_16 to i64, !dbg !93 ; [#uses=1 type=i64] [debug line = 19:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_24_cast, !dbg !93 ; [#uses=1 type=i16*] [debug line = 19:7]
  %tmp_19 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0) ; [#uses=1 type=i7]
  %tmp_26_cast = zext i7 %tmp_19 to i8, !dbg !94  ; [#uses=1 type=i8] [debug line = 15:11]
  br label %3, !dbg !94                           ; [debug line = 15:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_1, %4 ]       ; [#uses=2 type=i32]
  %tmp_11 = icmp eq i4 %n, -8, !dbg !94           ; [#uses=1 type=i1] [debug line = 15:11]
  %n_1 = add i4 %n, 1, !dbg !96                   ; [#uses=1 type=i4] [debug line = 15:72]
  br i1 %tmp_11, label %5, label %4, !dbg !94     ; [debug line = 15:11]

; <label>:4                                       ; preds = %3
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !97 ; [debug line = 15:78]
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1) nounwind, !dbg !97 ; [#uses=1 type=i32] [debug line = 15:78]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !99 ; [debug line = 16:1]
  %tmp_15_cast = zext i4 %n to i8, !dbg !100      ; [#uses=2 type=i8] [debug line = 17:10]
  %tmp_20 = add i8 %tmp_23_cast, %tmp_15_cast, !dbg !100 ; [#uses=1 type=i8] [debug line = 17:10]
  %tmp_27_cast = zext i8 %tmp_20 to i64, !dbg !100 ; [#uses=1 type=i64] [debug line = 17:10]
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_27_cast, !dbg !100 ; [#uses=1 type=i16*] [debug line = 17:10]
  %tmp_21 = add i8 %tmp_26_cast, %tmp_15_cast, !dbg !101 ; [#uses=1 type=i8] [debug line = 16:48]
  %tmp_28_cast = zext i8 %tmp_21 to i64, !dbg !101 ; [#uses=1 type=i64] [debug line = 16:48]
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_28_cast, !dbg !101 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2, !dbg !101 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_cast = sext i15 %dct_coeff_table_load to i31, !dbg !101 ; [#uses=1 type=i31] [debug line = 16:48]
  %src_load = load i16* %src_addr, align 2, !dbg !100 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_16_cast = sext i16 %src_load to i31, !dbg !100 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_17 = mul i31 %coeff_cast, %tmp_16_cast, !dbg !100 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_17_cast = sext i31 %tmp_17 to i32, !dbg !100 ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp_1 = add nsw i32 %tmp1, %tmp_17_cast, !dbg !100 ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp_1}, i64 0, metadata !102), !dbg !100 ; [debug line = 17:10] [debug variable = tmp]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1, i32 %tmp_18) nounwind, !dbg !104 ; [#uses=0 type=i32] [debug line = 18:7]
  call void @llvm.dbg.value(metadata !{i4 %n_1}, i64 0, metadata !105), !dbg !96 ; [debug line = 15:72] [debug variable = n]
  br label %3, !dbg !96                           ; [debug line = 15:72]

; <label>:5                                       ; preds = %3
  %tmp_2 = trunc i32 %tmp1 to i29, !dbg !94       ; [#uses=1 type=i29] [debug line = 15:11]
  %tmp_12 = add i29 4096, %tmp_2, !dbg !93        ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_14 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_12, i32 13, i32 28), !dbg !93 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_14, i16* %dst_addr, align 2, !dbg !93 ; [debug line = 19:7]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_13) nounwind, !dbg !106 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !107), !dbg !90 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !90                           ; [debug line = 13:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !108                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !109
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !115
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !119), !dbg !127 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !128), !dbg !129 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !130), !dbg !133 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !134) nounwind, !dbg !141 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf_2d_in}, i64 0, metadata !142) nounwind, !dbg !143 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !144                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r_i = phi i4 [ 0, %0 ], [ %tmp_i_mid2_v_v, %.reset ] ; [#uses=2 type=i4]
  %c_i = phi i4 [ 0, %0 ], [ %c, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %read_data.exit, label %.reset

.reset:                                           ; preds = %1
  %r = add i4 1, %r_i, !dbg !147                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !148) nounwind, !dbg !147 ; [debug line = 59:61@85:4] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_s)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i = icmp eq i4 %c_i, -8, !dbg !149    ; [#uses=2 type=i1] [debug line = 61:12@85:4]
  %c_i_mid2 = select i1 %exitcond_i, i4 0, i4 %c_i ; [#uses=3 type=i4]
  %tmp_i_mid2_v_v = select i1 %exitcond_i, i4 %r, i4 %r_i, !dbg !152 ; [#uses=3 type=i4] [debug line = 62:1@85:4]
  %tmp = trunc i4 %tmp_i_mid2_v_v to i3           ; [#uses=1 type=i3]
  %tmp_i_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !152 ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_i_mid2_v_v, i3 0) ; [#uses=1 type=i7]
  %tmp_30_cast = zext i7 %tmp_s to i8, !dbg !149  ; [#uses=1 type=i8] [debug line = 61:12@85:4]
  %c_i_cast6 = zext i4 %c_i_mid2 to i6, !dbg !149 ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !154 ; [debug line = 62:2@85:4]
  %tmp_10_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind, !dbg !154 ; [#uses=1 type=i32] [debug line = 62:2@85:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !155 ; [debug line = 63:1@85:4]
  %tmp_9_i = add i6 %c_i_cast6, %tmp_i_mid2, !dbg !152 ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %tmp_i = zext i6 %tmp_9_i to i64, !dbg !152     ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_i, !dbg !152 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  %input_load = load i16* %input_addr, align 2, !dbg !152 ; [#uses=1 type=i16] [debug line = 62:1@85:4]
  %tmp_1_i_cast = zext i4 %c_i_mid2 to i8, !dbg !152 ; [#uses=1 type=i8] [debug line = 62:1@85:4]
  %tmp_22 = add i8 %tmp_30_cast, %tmp_1_i_cast, !dbg !152 ; [#uses=1 type=i8] [debug line = 62:1@85:4]
  %tmp_31_cast = zext i8 %tmp_22 to i64, !dbg !152 ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_31_cast, !dbg !152 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  store i16 %input_load, i16* %buf_2d_in_addr, align 2, !dbg !152 ; [debug line = 62:1@85:4]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_10_i) nounwind, !dbg !156 ; [#uses=0 type=i32] [debug line = 62:66@85:4]
  %c = add i4 1, %c_i_mid2, !dbg !157             ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !158) nounwind, !dbg !157 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %1

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([64 x i16]* %buf_2d_in, [64 x i16]* %buf_2d_out) nounwind, !dbg !159 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !160) nounwind, !dbg !165 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %2, !dbg !166                          ; [debug line = 71:9@90:4]

; <label>:2                                       ; preds = %.reset10, %read_data.exit
  %indvar_flatten2 = phi i7 [ 0, %read_data.exit ], [ %indvar_flatten_next2, %.reset10 ] ; [#uses=2 type=i7]
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %tmp_i4_mid2_v, %.reset10 ] ; [#uses=2 type=i4]
  %c_i6 = phi i4 [ 0, %read_data.exit ], [ %c_1, %.reset10 ] ; [#uses=2 type=i4]
  %exitcond_flatten2 = icmp eq i7 %indvar_flatten2, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next2 = add i7 %indvar_flatten2, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten2, label %write_data.exit, label %.reset10

.reset10:                                         ; preds = %2
  %r_1 = add i4 1, %r_i2, !dbg !169               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !170) nounwind, !dbg !169 ; [debug line = 71:61@90:4] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_s)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i1 = icmp eq i4 %c_i6, -8, !dbg !171  ; [#uses=2 type=i1] [debug line = 73:12@90:4]
  %c_i6_mid2 = select i1 %exitcond_i1, i4 0, i4 %c_i6 ; [#uses=3 type=i4]
  %tmp_i4_mid2_v = select i1 %exitcond_i1, i4 %r_1, i4 %r_i2, !dbg !174 ; [#uses=3 type=i4] [debug line = 74:1@90:4]
  %tmp_23 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_i4_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_33_cast = zext i7 %tmp_23 to i8            ; [#uses=1 type=i8]
  %tmp_3 = trunc i4 %tmp_i4_mid2_v to i3          ; [#uses=1 type=i3]
  %tmp_1_i5_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0), !dbg !174 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %c_i6_cast2 = zext i4 %c_i6_mid2 to i6, !dbg !171 ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind, !dbg !176 ; [debug line = 74:2@90:4]
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind, !dbg !176 ; [#uses=1 type=i32] [debug line = 74:2@90:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !177 ; [debug line = 75:1@90:4]
  %tmp_3_i_cast = zext i4 %c_i6_mid2 to i8, !dbg !174 ; [#uses=1 type=i8] [debug line = 74:1@90:4]
  %tmp_24 = add i8 %tmp_33_cast, %tmp_3_i_cast, !dbg !174 ; [#uses=1 type=i8] [debug line = 74:1@90:4]
  %tmp_35_cast = zext i8 %tmp_24 to i64, !dbg !174 ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_35_cast, !dbg !174 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2, !dbg !174 ; [#uses=1 type=i16] [debug line = 74:1@90:4]
  %tmp_4_i = add i6 %c_i6_cast2, %tmp_1_i5_mid2, !dbg !174 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %tmp_5_i = zext i6 %tmp_4_i to i64, !dbg !174   ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_5_i, !dbg !174 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  store i16 %buf_2d_out_load, i16* %output_addr, align 2, !dbg !174 ; [debug line = 74:1@90:4]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_6_i) nounwind, !dbg !178 ; [#uses=0 type=i32] [debug line = 74:67@90:4]
  %c_1 = add i4 1, %c_i6_mid2, !dbg !179          ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !180) nounwind, !dbg !179 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %2

write_data.exit:                                  ; preds = %2
  ret void, !dbg !181                             ; [debug line = 91:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=8]
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
  %empty_16 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_16
}

; [#uses=9]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_17 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_18 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_19 = or i7 %empty_18, %empty_17          ; [#uses=1 type=i7]
  ret i7 %empty_19
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_20 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_21 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_22 = or i6 %empty_21, %empty_20          ; [#uses=1 type=i6]
  ret i6 %empty_22
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
!43 = metadata !{i32 32, i32 66, metadata !44, null}
!44 = metadata !{i32 786443, metadata !41, i32 32, i32 65, metadata !21, i32 7} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 33, i32 7, metadata !44, null}
!46 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !21, i32 28, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 43, i32 9, metadata !49, null}
!49 = metadata !{i32 786443, metadata !38, i32 43, i32 4, metadata !21, i32 12} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 37, i32 61, metadata !51, null}
!51 = metadata !{i32 786443, metadata !38, i32 37, i32 4, metadata !21, i32 8} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786688, metadata !38, metadata !"j", metadata !21, i32 28, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 39, i32 11, metadata !54, null}
!54 = metadata !{i32 786443, metadata !55, i32 39, i32 7, metadata !21, i32 10} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !51, i32 38, i32 1, metadata !21, i32 9} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 40, i32 1, metadata !57, null}
!57 = metadata !{i32 786443, metadata !54, i32 40, i32 1, metadata !21, i32 11} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 40, i32 2, metadata !57, null}
!59 = metadata !{i32 41, i32 1, metadata !57, null}
!60 = metadata !{i32 40, i32 34, metadata !57, null}
!61 = metadata !{i32 39, i32 63, metadata !54, null}
!62 = metadata !{i32 43, i32 61, metadata !49, null}
!63 = metadata !{i32 43, i32 67, metadata !64, null}
!64 = metadata !{i32 786443, metadata !49, i32 43, i32 66, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 44, i32 7, metadata !64, null}
!66 = metadata !{i32 48, i32 61, metadata !67, null}
!67 = metadata !{i32 786443, metadata !38, i32 48, i32 4, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 50, i32 11, metadata !69, null}
!69 = metadata !{i32 786443, metadata !70, i32 50, i32 7, metadata !21, i32 16} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !67, i32 49, i32 1, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 51, i32 1, metadata !72, null}
!72 = metadata !{i32 786443, metadata !69, i32 51, i32 1, metadata !21, i32 17} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 51, i32 2, metadata !72, null}
!74 = metadata !{i32 52, i32 1, metadata !72, null}
!75 = metadata !{i32 51, i32 34, metadata !72, null}
!76 = metadata !{i32 50, i32 63, metadata !69, null}
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
!99 = metadata !{i32 16, i32 1, metadata !98, null}
!100 = metadata !{i32 17, i32 10, metadata !98, null}
!101 = metadata !{i32 16, i32 48, metadata !98, null}
!102 = metadata !{i32 786688, metadata !89, metadata !"tmp", metadata !21, i32 7, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!104 = metadata !{i32 18, i32 7, metadata !98, null}
!105 = metadata !{i32 786688, metadata !89, metadata !"n", metadata !21, i32 6, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 20, i32 4, metadata !92, null}
!107 = metadata !{i32 786688, metadata !89, metadata !"k", metadata !21, i32 6, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 21, i32 1, metadata !89, null}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 15, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"input", metadata !113, metadata !"short", i32 0, i32 15}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 63, i32 1}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 15, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"output", metadata !113, metadata !"short", i32 0, i32 15}
!119 = metadata !{i32 786689, metadata !120, metadata !"input", null, i32 78, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct", metadata !"dct", metadata !"", metadata !21, i32 78, metadata !121, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 79} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{null, metadata !123, metadata !123}
!123 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!124 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !125, i32 0, i32 0} ; [ DW_TAG_array_type ]
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!127 = metadata !{i32 78, i32 16, metadata !120, null}
!128 = metadata !{i32 786689, metadata !120, metadata !"output", null, i32 78, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 78, i32 38, metadata !120, null}
!130 = metadata !{i32 786688, metadata !131, metadata !"buf_2d_in", metadata !21, i32 81, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 786443, metadata !120, i32 79, i32 1, metadata !21, i32 28} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!133 = metadata !{i32 81, i32 10, metadata !131, null}
!134 = metadata !{i32 786689, metadata !135, metadata !"input", null, i32 54, metadata !124, i32 0, metadata !140} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read_data", metadata !"read_data", metadata !"", metadata !21, i32 54, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 55} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !123, metadata !138}
!138 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!139 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !27, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!140 = metadata !{i32 85, i32 4, metadata !131, null}
!141 = metadata !{i32 54, i32 22, metadata !135, metadata !140}
!142 = metadata !{i32 786689, metadata !135, metadata !"buf", null, i32 54, metadata !132, i32 0, metadata !140} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 54, i32 44, metadata !135, metadata !140}
!144 = metadata !{i32 59, i32 9, metadata !145, metadata !140}
!145 = metadata !{i32 786443, metadata !146, i32 59, i32 4, metadata !21, i32 19} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786443, metadata !135, i32 55, i32 1, metadata !21, i32 18} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 59, i32 61, metadata !145, metadata !140}
!148 = metadata !{i32 786688, metadata !146, metadata !"r", metadata !21, i32 56, metadata !103, i32 0, metadata !140} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 61, i32 12, metadata !150, metadata !140}
!150 = metadata !{i32 786443, metadata !151, i32 61, i32 7, metadata !21, i32 21} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786443, metadata !145, i32 59, i32 66, metadata !21, i32 20} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 62, i32 1, metadata !153, metadata !140}
!153 = metadata !{i32 786443, metadata !150, i32 62, i32 1, metadata !21, i32 22} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 62, i32 2, metadata !153, metadata !140}
!155 = metadata !{i32 63, i32 1, metadata !153, metadata !140}
!156 = metadata !{i32 62, i32 66, metadata !153, metadata !140}
!157 = metadata !{i32 61, i32 64, metadata !150, metadata !140}
!158 = metadata !{i32 786688, metadata !146, metadata !"c", metadata !21, i32 56, metadata !103, i32 0, metadata !140} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 87, i32 4, metadata !131, null}
!160 = metadata !{i32 786689, metadata !161, metadata !"output", null, i32 66, metadata !124, i32 0, metadata !164} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write_data", metadata !"write_data", metadata !"", metadata !21, i32 66, metadata !162, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 67} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!163 = metadata !{null, metadata !138, metadata !123}
!164 = metadata !{i32 90, i32 4, metadata !131, null}
!165 = metadata !{i32 66, i32 116, metadata !161, metadata !164}
!166 = metadata !{i32 71, i32 9, metadata !167, metadata !164}
!167 = metadata !{i32 786443, metadata !168, i32 71, i32 4, metadata !21, i32 24} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 786443, metadata !161, i32 67, i32 1, metadata !21, i32 23} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 71, i32 61, metadata !167, metadata !164}
!170 = metadata !{i32 786688, metadata !168, metadata !"r", metadata !21, i32 68, metadata !103, i32 0, metadata !164} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 73, i32 12, metadata !172, metadata !164}
!172 = metadata !{i32 786443, metadata !173, i32 73, i32 7, metadata !21, i32 26} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786443, metadata !167, i32 71, i32 66, metadata !21, i32 25} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 74, i32 1, metadata !175, metadata !164}
!175 = metadata !{i32 786443, metadata !172, i32 74, i32 1, metadata !21, i32 27} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 74, i32 2, metadata !175, metadata !164}
!177 = metadata !{i32 75, i32 1, metadata !175, metadata !164}
!178 = metadata !{i32 74, i32 67, metadata !175, metadata !164}
!179 = metadata !{i32 73, i32 64, metadata !172, metadata !164}
!180 = metadata !{i32 786688, metadata !168, metadata !"c", metadata !21, i32 68, metadata !103, i32 0, metadata !164} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 91, i32 1, metadata !131, null}
