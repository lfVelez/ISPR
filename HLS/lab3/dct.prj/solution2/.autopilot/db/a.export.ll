; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00"
@Xpose_Row_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00"
@Xpose_Col_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00"
@WR_Loop_Row_WR_Loop_s = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00"
@RD_Loop_Row_RD_Loop_s = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00"
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2
  %col_outbuf = alloca [64 x i16], align 2
  %col_inbuf = alloca [64 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]
  %tmp = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_4 = add i4 %i, 1
  br i1 %tmp, label %.preheader2.preheader.preheader, label %2

.preheader2.preheader.preheader:                  ; preds = %1
  br label %.preheader2.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind
  call fastcc void @dct_1d2([64 x i16]* %in_block, i4 %i, [64 x i16]* %row_outbuf, i4 %i)
  br label %1

.preheader2.preheader:                            ; preds = %.preheader2.preheader.preheader, %.preheader2
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ]
  %j = phi i4 [ %tmp_3_mid2_v, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ]
  %i_1 = phi i4 [ %i_6, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader1.preheader, label %.preheader2

.preheader1.preheader:                            ; preds = %.preheader2.preheader
  br label %.preheader1

.preheader2:                                      ; preds = %.preheader2.preheader
  %j_2 = add i4 %j, 1
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %tmp_1 = icmp eq i4 %i_1, -8
  %i_1_mid2 = select i1 %tmp_1, i4 0, i4 %i_1
  %tmp_3_mid2_v = select i1 %tmp_1, i4 %j_2, i4 %j
  %tmp_3_mid2_cast = zext i4 %tmp_3_mid2_v to i8
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_3_mid2_v, i3 0)
  %tmp_3_cast = zext i7 %tmp_2 to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_7_cast = zext i4 %i_1_mid2 to i8
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0)
  %tmp_9_cast = zext i7 %tmp_8 to i8
  %tmp_3 = add i8 %tmp_3_mid2_cast, %tmp_9_cast
  %tmp_11_cast = zext i8 %tmp_3 to i64
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_11_cast
  %tmp_5 = add i8 %tmp_7_cast, %tmp_3_cast
  %tmp_13_cast = zext i8 %tmp_5 to i64
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_13_cast
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_6)
  %i_6 = add i4 %i_1_mid2, 1
  br label %.preheader2.preheader

.preheader1:                                      ; preds = %.preheader1.preheader, %3
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader1.preheader ]
  %tmp_4 = icmp eq i4 %i_2, -8
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_5 = add i4 %i_2, 1
  br i1 %tmp_4, label %.preheader.preheader.preheader, label %3

.preheader.preheader.preheader:                   ; preds = %.preheader1
  br label %.preheader.preheader

; <label>:3                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind
  call fastcc void @dct_1d2([64 x i16]* %col_inbuf, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2)
  br label %.preheader1

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %.preheader
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader.preheader.preheader ]
  %j_1 = phi i4 [ %tmp_9_mid2_v, %.preheader ], [ 0, %.preheader.preheader.preheader ]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader.preheader.preheader ]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %j_3 = add i4 %j_1, 1
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %tmp_7 = icmp eq i4 %i_3, -8
  %i_3_mid2 = select i1 %tmp_7, i4 0, i4 %i_3
  %tmp_9_mid2_v = select i1 %tmp_7, i4 %j_3, i4 %j_1
  %tmp_9_mid2_cast = zext i4 %tmp_9_mid2_v to i8
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_9_mid2_v, i3 0)
  %tmp_15_cast = zext i7 %tmp_9 to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_10_cast = zext i4 %i_3_mid2 to i8
  %tmp_10 = add i8 %tmp_10_cast, %tmp_15_cast
  %tmp_16_cast = zext i8 %tmp_10 to i64
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_16_cast
  %tmp_11 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0)
  %tmp_18_cast = zext i7 %tmp_11 to i8
  %tmp_12 = add i8 %tmp_9_mid2_cast, %tmp_18_cast
  %tmp_19_cast = zext i8 %tmp_12 to i64
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_19_cast
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_s)
  %i_7 = add i4 %i_3_mid2, 1
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void
}

define internal fastcc void @dct_1d2([64 x i16]* nocapture %src, i4 %tmp_6, [64 x i16]* nocapture %dst, i4 %tmp_61) {
  %tmp_61_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_61)
  %tmp_6_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_6)
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_61_read, i3 0)
  %tmp_21_cast = zext i7 %tmp_s to i8
  %tmp_15 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_6_read, i3 0)
  %tmp_23_cast = zext i7 %tmp_15 to i8
  br label %1

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]
  %tmp = icmp eq i4 %k, -8
  %k_1 = add i4 %k, 1
  br i1 %tmp, label %6, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  %tmp_cast = zext i4 %k to i8
  %tmp_16 = add i8 %tmp_cast, %tmp_21_cast
  %tmp_24_cast = zext i8 %tmp_16 to i64
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_24_cast
  %tmp_19 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0)
  %tmp_26_cast = zext i7 %tmp_19 to i8
  br label %3

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_1, %4 ]
  %tmp_11 = icmp eq i4 %n, -8
  %n_1 = add i4 %n, 1
  br i1 %tmp_11, label %5, label %4

; <label>:4                                       ; preds = %3
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_15_cast = zext i4 %n to i8
  %tmp_20 = add i8 %tmp_23_cast, %tmp_15_cast
  %tmp_27_cast = zext i8 %tmp_20 to i64
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_27_cast
  %tmp_21 = add i8 %tmp_26_cast, %tmp_15_cast
  %tmp_28_cast = zext i8 %tmp_21 to i64
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_28_cast
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2
  %coeff_cast = sext i15 %dct_coeff_table_load to i31
  %src_load = load i16* %src_addr, align 2
  %tmp_16_cast = sext i16 %src_load to i31
  %tmp_17 = mul i31 %coeff_cast, %tmp_16_cast
  %tmp_17_cast = sext i31 %tmp_17 to i32
  %tmp_1 = add nsw i32 %tmp1, %tmp_17_cast
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1, i32 %tmp_18) nounwind
  br label %3

; <label>:5                                       ; preds = %3
  %tmp_2 = trunc i32 %tmp1 to i29
  %tmp_12 = add i29 4096, %tmp_2
  %tmp_14 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_12, i32 13, i32 28)
  store i16 %tmp_14, i16* %dst_addr, align 2
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_13) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define void @dct([64 x i16]* %input_r, [64 x i16]* %output_r) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input_r) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output_r) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2
  %buf_2d_out = alloca [64 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r_i = phi i4 [ 0, %0 ], [ %tmp_i_mid2_v_v, %.reset ]
  %c_i = phi i4 [ 0, %0 ], [ %c, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %read_data.exit, label %.reset

.reset:                                           ; preds = %1
  %r = add i4 1, %r_i
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_s)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i = icmp eq i4 %c_i, -8
  %c_i_mid2 = select i1 %exitcond_i, i4 0, i4 %c_i
  %tmp_i_mid2_v_v = select i1 %exitcond_i, i4 %r, i4 %r_i
  %tmp = trunc i4 %tmp_i_mid2_v_v to i3
  %tmp_i_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0)
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_i_mid2_v_v, i3 0)
  %tmp_30_cast = zext i7 %tmp_s to i8
  %c_i_cast6 = zext i4 %c_i_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind
  %tmp_10_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_9_i = add i6 %c_i_cast6, %tmp_i_mid2
  %tmp_i = zext i6 %tmp_9_i to i64
  %input_addr = getelementptr [64 x i16]* %input_r, i64 0, i64 %tmp_i
  %input_load = load i16* %input_addr, align 2
  %tmp_1_i_cast = zext i4 %c_i_mid2 to i8
  %tmp_22 = add i8 %tmp_30_cast, %tmp_1_i_cast
  %tmp_31_cast = zext i8 %tmp_22 to i64
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_31_cast
  store i16 %input_load, i16* %buf_2d_in_addr, align 2
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_10_i) nounwind
  %c = add i4 1, %c_i_mid2
  br label %1

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([64 x i16]* %buf_2d_in, [64 x i16]* %buf_2d_out) nounwind
  br label %2

; <label>:2                                       ; preds = %read_data.exit, %.reset10
  %indvar_flatten2 = phi i7 [ 0, %read_data.exit ], [ %indvar_flatten_next2, %.reset10 ]
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %tmp_i4_mid2_v, %.reset10 ]
  %c_i6 = phi i4 [ 0, %read_data.exit ], [ %c_1, %.reset10 ]
  %exitcond_flatten2 = icmp eq i7 %indvar_flatten2, -64
  %indvar_flatten_next2 = add i7 %indvar_flatten2, 1
  br i1 %exitcond_flatten2, label %write_data.exit, label %.reset10

.reset10:                                         ; preds = %2
  %r_1 = add i4 1, %r_i2
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_s)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i1 = icmp eq i4 %c_i6, -8
  %c_i6_mid2 = select i1 %exitcond_i1, i4 0, i4 %c_i6
  %tmp_i4_mid2_v = select i1 %exitcond_i1, i4 %r_1, i4 %r_i2
  %tmp_23 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_i4_mid2_v, i3 0)
  %tmp_33_cast = zext i7 %tmp_23 to i8
  %tmp_3 = trunc i4 %tmp_i4_mid2_v to i3
  %tmp_1_i5_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0)
  %c_i6_cast2 = zext i4 %c_i6_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_3_i_cast = zext i4 %c_i6_mid2 to i8
  %tmp_24 = add i8 %tmp_33_cast, %tmp_3_i_cast
  %tmp_35_cast = zext i8 %tmp_24 to i64
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_35_cast
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2
  %tmp_4_i = add i6 %c_i6_cast2, %tmp_1_i5_mid2
  %tmp_5_i = zext i6 %tmp_4_i to i64
  %output_addr = getelementptr [64 x i16]* %output_r, i64 0, i64 %tmp_5_i
  store i16 %buf_2d_out_load, i16* %output_addr, align 2
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_6_i) nounwind
  %c_1 = add i4 1, %c_i6_mid2
  br label %2

write_data.exit:                                  ; preds = %2
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_16 = trunc i29 %empty to i16
  ret i16 %empty_16
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_17 = zext i3 %1 to i7
  %empty_18 = shl i7 %empty, 3
  %empty_19 = or i7 %empty_18, %empty_17
  ret i7 %empty_19
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_20 = zext i3 %1 to i6
  %empty_21 = shl i6 %empty, 3
  %empty_22 = or i6 %empty_21, %empty_20
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
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 15, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"input", metadata !23, metadata !"short", i32 0, i32 15}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, i32 1}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 15, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"output", metadata !23, metadata !"short", i32 0, i32 15}
