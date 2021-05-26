; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution7/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table = internal unnamed_addr constant [8 x i127] [i127 42535944912128296218691764462974672896, i127 -58990447664026830905795916450469172125, i127 55573504569212691703635314403542378959, i127 -50012024272023034652441485723554798175, i127 42539839273422690665195578862551965696, i127 -33416722235422479620126768456641144540, i127 23021796304660295749636480429053776209, i127 -11734080920250769989864363945147758380]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00"
@Xpose_Row_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00"
@Xpose_Col_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00"
@WR_Loop_Row_WR_Loop_s = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00"
@RD_Loop_Row_RD_Loop_s = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00"
@p_str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1
@p_str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
@p_str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1
@p_str2 = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1
@p_str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1
@p_str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc void @write_data([64 x i16]* nocapture %buf_r, [64 x i16]* nocapture %output_r) {
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v, %.reset ]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %r_1 = add i4 1, %r
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_s)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond2 = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond2, i4 0, i4 %c
  %tmp_mid2_v = select i1 %exitcond2, i4 %r_1, i4 %r
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_mid2_v, i3 0)
  %tmp_1_cast = zext i7 %tmp to i8
  %tmp_1 = trunc i4 %tmp_mid2_v to i3
  %tmp_1_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_1, i3 0)
  %c_cast6 = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_3_cast = zext i4 %c_mid2 to i8
  %tmp_7 = add i8 %tmp_1_cast, %tmp_3_cast
  %tmp_7_cast = zext i8 %tmp_7 to i64
  %buf_addr = getelementptr [64 x i16]* %buf_r, i64 0, i64 %tmp_7_cast
  %buf_load = load i16* %buf_addr, align 2
  %tmp_4 = add i6 %c_cast6, %tmp_1_mid2
  %tmp_5 = zext i6 %tmp_4 to i64
  %output_addr = getelementptr [64 x i16]* %output_r, i64 0, i64 %tmp_5
  store i16 %buf_load, i16* %output_addr, align 2
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_6)
  %c_1 = add i4 1, %c_mid2
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define internal fastcc void @read_data([64 x i16]* nocapture %input_r, [8 x i128]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v_v, %.reset ]
  %c = phi i4 [ 0, %0 ], [ %c_2, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %r_2 = add i4 1, %r
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_s)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond5 = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond5, i4 0, i4 %c
  %tmp_mid2_v_v = select i1 %exitcond5, i4 %r_2, i4 %r
  %tmp = trunc i4 %tmp_mid2_v_v to i3
  %tmp_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0)
  %tmp_7_mid2 = zext i4 %tmp_mid2_v_v to i64
  %c_cast2 = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_9 = add i6 %c_cast2, %tmp_mid2
  %tmp_s = zext i6 %tmp_9 to i64
  %input_addr = getelementptr [64 x i16]* %input_r, i64 0, i64 %tmp_s
  %input_load = load i16* %input_addr, align 2
  %buf_addr = getelementptr [8 x i128]* %buf_r, i64 0, i64 %tmp_7_mid2
  %buf_load = load i128* %buf_addr, align 8
  %tmp_4 = trunc i4 %c_mid2 to i3
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_4, i4 0)
  %tmp_3 = or i7 %tmp_2, 15
  %tmp_5 = icmp ugt i7 %tmp_2, %tmp_3
  %tmp_6 = zext i7 %tmp_2 to i8
  %tmp_7 = zext i7 %tmp_3 to i8
  %tmp_8 = zext i16 %input_load to i128
  %tmp_10 = xor i8 %tmp_6, 127
  %tmp_11 = select i1 %tmp_5, i8 %tmp_6, i8 %tmp_7
  %tmp_12 = select i1 %tmp_5, i8 %tmp_7, i8 %tmp_6
  %tmp_13 = select i1 %tmp_5, i8 %tmp_10, i8 %tmp_6
  %tmp_14 = xor i8 %tmp_11, 127
  %tmp_15 = zext i8 %tmp_13 to i128
  %tmp_16 = zext i8 %tmp_12 to i128
  %tmp_17 = zext i8 %tmp_14 to i128
  %tmp_18 = shl i128 %tmp_8, %tmp_15
  %tmp_19 = call i128 @llvm.part.select.i128(i128 %tmp_18, i32 127, i32 0)
  %tmp_20 = select i1 %tmp_5, i128 %tmp_19, i128 %tmp_18
  %tmp_21 = shl i128 -1, %tmp_16
  %tmp_22 = lshr i128 -1, %tmp_17
  %p_demorgan = and i128 %tmp_21, %tmp_22
  %tmp_23 = xor i128 %p_demorgan, -1
  %tmp_24 = and i128 %buf_load, %tmp_23
  %tmp_25 = and i128 %tmp_20, %p_demorgan
  %tmp_26 = or i128 %tmp_24, %tmp_25
  store i128 %tmp_26, i128* %buf_addr, align 8
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_1)
  %c_2 = add i4 1, %c_mid2
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

declare i127 @llvm.part.select.i127(i127, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @dct([64 x i16]* %input_r, [64 x i16]* %output_r) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input_r) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output_r) nounwind, !map !25
  %row_outbuf_i = alloca [64 x i16], align 2
  %col_outbuf_i = alloca [64 x i16], align 2
  %col_inbuf = alloca [8 x i128], align 8
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [8 x i128], align 8
  %buf_2d_out = alloca [64 x i16], align 2
  call fastcc void @read_data([64 x i16]* %input_r, [8 x i128]* %buf_2d_in) nounwind
  call fastcc void @Loop_Row_DCT_Loop_pr([8 x i128]* %buf_2d_in, [64 x i16]* %row_outbuf_i)
  call fastcc void @Loop_Xpose_Row_Outer([64 x i16]* %row_outbuf_i, [8 x i128]* %col_inbuf)
  call fastcc void @Loop_Col_DCT_Loop_pr([8 x i128]* %col_inbuf, [64 x i16]* %col_outbuf_i)
  call fastcc void @Loop_Xpose_Col_Outer([64 x i16]* %col_outbuf_i, [64 x i16]* %buf_2d_out)
  call fastcc void @write_data([64 x i16]* %buf_2d_out, [64 x i16]* %output_r) nounwind
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

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_11 = trunc i29 %empty to i16
  ret i16 %empty_11
}

define weak i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128, i9, i9) nounwind readnone {
entry:
  %empty = zext i9 %1 to i32
  %empty_12 = zext i9 %2 to i32
  %empty_13 = call i128 @llvm.part.select.i128(i128 %0, i32 %empty, i32 %empty_12)
  %empty_14 = trunc i128 %empty_13 to i16
  ret i16 %empty_14
}

declare i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127, i32, i32) nounwind readnone {
entry:
  %empty = call i127 @llvm.part.select.i127(i127 %0, i32 %1, i32 %2)
  %empty_15 = trunc i127 %empty to i16
  ret i16 %empty_15
}

define weak i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127, i32, i32) nounwind readnone {
entry:
  %empty = call i127 @llvm.part.select.i127(i127 %0, i32 %1, i32 %2)
  %empty_16 = trunc i127 %empty to i15
  ret i15 %empty_16
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_17 = zext i3 %1 to i7
  %empty_18 = shl i7 %empty, 3
  %empty_19 = or i7 %empty_18, %empty_17
  ret i7 %empty_19
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %0 to i7
  %empty_20 = zext i4 %1 to i7
  %empty_21 = shl i7 %empty, 4
  %empty_22 = or i7 %empty_21, %empty_20
  ret i7 %empty_22
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_23 = zext i3 %1 to i6
  %empty_24 = shl i6 %empty, 3
  %empty_25 = or i6 %empty_24, %empty_23
  ret i6 %empty_25
}

define internal fastcc void @Loop_Xpose_Row_Outer([64 x i16]* nocapture %row_outbuf_i, [8 x i128]* nocapture %col_inbuf) nounwind {
newFuncRoot:
  br label %0

.preheader1.i.exitStub:                           ; preds = %0
  ret void

.preheader2.i:                                    ; preds = %0
  %j = add i4 1, %j_0_i
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %tmp_s = icmp eq i4 %i_1_i, -8
  %i_1_i_mid2 = select i1 %tmp_s, i4 0, i4 %i_1_i
  %tmp_3_mid2_v = select i1 %tmp_s, i4 %j, i4 %j_0_i
  %tmp_3_mid2 = zext i4 %tmp_3_mid2_v to i64
  %tmp_3_mid2_cast = zext i4 %tmp_3_mid2_v to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0)
  %tmp_9_cast = zext i7 %tmp to i8
  %tmp_1 = add i8 %tmp_9_cast, %tmp_3_mid2_cast
  %tmp_10_cast = zext i8 %tmp_1 to i64
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_10_cast
  %row_outbuf_i_load = load i16* %row_outbuf_i_addr, align 2
  %col_inbuf_addr = getelementptr [8 x i128]* %col_inbuf, i64 0, i64 %tmp_3_mid2
  %col_inbuf_load = load i128* %col_inbuf_addr, align 8
  %tmp_27 = trunc i4 %i_1_i_mid2 to i3
  %tmp_4 = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_27, i4 0)
  %tmp_5 = or i7 %tmp_4, 15
  %tmp_28 = icmp ugt i7 %tmp_4, %tmp_5
  %tmp_29 = zext i7 %tmp_4 to i8
  %tmp_30 = zext i7 %tmp_5 to i8
  %tmp_31 = zext i16 %row_outbuf_i_load to i128
  %tmp_32 = xor i8 %tmp_29, 127
  %tmp_33 = select i1 %tmp_28, i8 %tmp_29, i8 %tmp_30
  %tmp_34 = select i1 %tmp_28, i8 %tmp_30, i8 %tmp_29
  %tmp_35 = select i1 %tmp_28, i8 %tmp_32, i8 %tmp_29
  %tmp_36 = xor i8 %tmp_33, 127
  %tmp_37 = zext i8 %tmp_35 to i128
  %tmp_38 = zext i8 %tmp_34 to i128
  %tmp_39 = zext i8 %tmp_36 to i128
  %tmp_40 = shl i128 %tmp_31, %tmp_37
  %tmp_41 = call i128 @llvm.part.select.i128(i128 %tmp_40, i32 127, i32 0)
  %tmp_42 = select i1 %tmp_28, i128 %tmp_41, i128 %tmp_40
  %tmp_43 = shl i128 -1, %tmp_38
  %tmp_44 = lshr i128 -1, %tmp_39
  %p_demorgan = and i128 %tmp_43, %tmp_44
  %tmp_45 = xor i128 %p_demorgan, -1
  %tmp_46 = and i128 %col_inbuf_load, %tmp_45
  %tmp_47 = and i128 %tmp_42, %p_demorgan
  %tmp_48 = or i128 %tmp_46, %tmp_47
  store i128 %tmp_48, i128* %col_inbuf_addr, align 8
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_2) nounwind
  %i = add i4 1, %i_1_i_mid2
  br label %0

; <label>:0                                       ; preds = %.preheader2.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader2.i ]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_3_mid2_v, %.preheader2.i ]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader2.i ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader1.i.exitStub, label %.preheader2.i
}

define internal fastcc void @Loop_Xpose_Col_Outer([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  %j = add i4 %j_1_i, 1
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %tmp_s = icmp eq i4 %i_3_i, -8
  %i_3_i_mid2 = select i1 %tmp_s, i4 0, i4 %i_3_i
  %tmp_7_mid2_v = select i1 %tmp_s, i4 %j, i4 %j_1_i
  %tmp_7_mid2_cast = zext i4 %tmp_7_mid2_v to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_7_mid2_v, i3 0)
  %tmp_12_cast = zext i7 %tmp to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_cast = zext i4 %i_3_i_mid2 to i8
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0)
  %tmp_14_cast = zext i7 %tmp_2 to i8
  %tmp_3 = add i8 %tmp_7_mid2_cast, %tmp_14_cast
  %tmp_15_cast = zext i8 %tmp_3 to i64
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_15_cast
  %tmp_4 = add i8 %tmp_cast, %tmp_12_cast
  %tmp_16_cast = zext i8 %tmp_4 to i64
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_16_cast
  %col_outbuf_i_load = load i16* %col_outbuf_i_addr, align 2
  store i16 %col_outbuf_i_load, i16* %buf_2d_out_addr, align 2
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_8) nounwind
  %i = add i4 %i_3_i_mid2, 1
  br label %0

; <label>:0                                       ; preds = %.preheader.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.i ]
  %j_1_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_7_mid2_v, %.preheader.i ]
  %i_3_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader.i ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %dct_2d.exit.exitStub, label %.preheader.i
}

define internal fastcc void @Loop_Row_DCT_Loop_pr([8 x i128]* nocapture %buf_2d_in, [64 x i16]* nocapture %row_outbuf_i) nounwind {
newFuncRoot:
  br label %dct_1d.exit

.preheader2.i.exitStub:                           ; preds = %dct_1d.exit
  ret void

dct_1d.exit.loopexit:                             ; preds = %1
  br label %dct_1d.exit

dct_1d.exit:                                      ; preds = %dct_1d.exit.loopexit, %newFuncRoot
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i, %dct_1d.exit.loopexit ]
  %tmp = icmp eq i4 %i_0_i, -8
  %i = add i4 %i_0_i, 1
  br i1 %tmp, label %.preheader2.i.exitStub, label %0

; <label>:0                                       ; preds = %dct_1d.exit
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind
  %tmp_141_cast_i = zext i4 %i_0_i to i64
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i, i3 0)
  %tmp_18_cast = zext i7 %tmp_s to i8
  %buf_2d_in_addr = getelementptr [8 x i128]* %buf_2d_in, i64 0, i64 %tmp_141_cast_i
  br label %1

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]
  %tmp_i = icmp eq i4 %k_i, -8
  %k = add i4 %k_i, 1
  br i1 %tmp_i, label %dct_1d.exit.loopexit, label %2

; <label>:2                                       ; preds = %1
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_i_29 = zext i4 %k_i to i64
  %tmp_i_cast = zext i4 %k_i to i8
  %tmp_5 = add i8 %tmp_i_cast, %tmp_18_cast
  %tmp_19_cast = zext i8 %tmp_5 to i64
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_19_cast
  %dct_coeff_table_addr = getelementptr [8 x i127]* @dct_coeff_table, i64 0, i64 %tmp_i_29
  %dct_coeff_table_load = load i127* %dct_coeff_table_addr, align 16
  %tmp_49 = trunc i127 %dct_coeff_table_load to i16
  %coeff_cast_i = sext i16 %tmp_49 to i29
  %buf_2d_in_load = load i128* %buf_2d_in_addr, align 8
  %tmp_50 = trunc i128 %buf_2d_in_load to i16
  %tmp_7_cast_i = sext i16 %tmp_50 to i29
  %tmp_8_i = mul i29 %coeff_cast_i, %tmp_7_cast_i
  %tmp_10_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 16, i32 31) nounwind
  %coeff_1_cast_i = sext i16 %tmp_10_i to i29
  %tmp_11_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 16, i9 31) nounwind
  %tmp_7_1_cast_i = sext i16 %tmp_11_i to i29
  %tmp_8_1_i = mul i29 %coeff_1_cast_i, %tmp_7_1_cast_i
  %tmp_12_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 32, i32 47) nounwind
  %coeff_2_cast_i = sext i16 %tmp_12_i to i29
  %tmp_13_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 32, i9 47) nounwind
  %tmp_7_2_cast_i = sext i16 %tmp_13_i to i29
  %tmp_8_2_i = mul i29 %coeff_2_cast_i, %tmp_7_2_cast_i
  %tmp_15_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 48, i32 63) nounwind
  %coeff_3_cast_i = sext i16 %tmp_15_i to i29
  %tmp_16_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 48, i9 63) nounwind
  %tmp_7_3_cast_i = sext i16 %tmp_16_i to i29
  %tmp_8_3_i = mul i29 %coeff_3_cast_i, %tmp_7_3_cast_i
  %tmp_17_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 64, i32 79) nounwind
  %coeff_4_cast_i = sext i16 %tmp_17_i to i29
  %tmp_18_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 64, i9 79) nounwind
  %tmp_7_4_cast_i = sext i16 %tmp_18_i to i29
  %tmp_8_4_i = mul i29 %coeff_4_cast_i, %tmp_7_4_cast_i
  %tmp_19_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 80, i32 95) nounwind
  %coeff_5_cast_i = sext i16 %tmp_19_i to i29
  %tmp_20_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 80, i9 95) nounwind
  %tmp_7_5_cast_i = sext i16 %tmp_20_i to i29
  %tmp_8_5_i = mul i29 %coeff_5_cast_i, %tmp_7_5_cast_i
  %tmp_21_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 96, i32 111) nounwind
  %coeff_6_cast_i = sext i16 %tmp_21_i to i29
  %tmp_22_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 96, i9 111) nounwind
  %tmp_7_6_cast_i = sext i16 %tmp_22_i to i29
  %tmp_8_6_i = mul i29 %coeff_6_cast_i, %tmp_7_6_cast_i
  %tmp_1 = call i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127 %dct_coeff_table_load, i32 112, i32 126) nounwind
  %coeff_7_cast_i = sext i15 %tmp_1 to i29
  %tmp_24_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 112, i9 127) nounwind
  %tmp_7_7_cast_i = sext i16 %tmp_24_i to i29
  %tmp_8_7_i = mul i29 %tmp_7_7_cast_i, %coeff_7_cast_i
  %tmp2 = add i29 %tmp_8_i, %tmp_8_1_i
  %tmp3 = add i29 %tmp_8_2_i, %tmp_8_3_i
  %tmp1 = add i29 %tmp3, %tmp2
  %tmp5 = add i29 %tmp_8_4_i, %tmp_8_5_i
  %tmp7 = add i29 4096, %tmp_8_7_i
  %tmp6 = add i29 %tmp7, %tmp_8_6_i
  %tmp4 = add i29 %tmp6, %tmp5
  %tmp_3_i = add i29 %tmp4, %tmp1
  %tmp_5_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_3_i, i32 13, i32 28)
  store i16 %tmp_5_i, i16* %row_outbuf_i_addr, align 2
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_6_i) nounwind
  br label %1
}

define internal fastcc void @Loop_Col_DCT_Loop_pr([8 x i128]* nocapture %col_inbuf, [64 x i16]* nocapture %col_outbuf_i) nounwind {
newFuncRoot:
  br label %.preheader1.i

.preheader.i.exitStub:                            ; preds = %.preheader1.i
  ret void

.preheader1.i.loopexit:                           ; preds = %1
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.i.loopexit, %newFuncRoot
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader1.i.loopexit ]
  %tmp_2 = icmp eq i4 %i_2_i, -8
  %i = add i4 %i_2_i, 1
  br i1 %tmp_2, label %.preheader.i.exitStub, label %0

; <label>:0                                       ; preds = %.preheader1.i
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind
  %tmp_141_cast_i = zext i4 %i_2_i to i64
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i, i3 0)
  %tmp_21_cast = zext i7 %tmp_s to i8
  %col_inbuf_addr = getelementptr [8 x i128]* %col_inbuf, i64 0, i64 %tmp_141_cast_i
  br label %1

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]
  %tmp_i = icmp eq i4 %k_i, -8
  %k = add i4 %k_i, 1
  br i1 %tmp_i, label %.preheader1.i.loopexit, label %2

; <label>:2                                       ; preds = %1
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_i_32 = zext i4 %k_i to i64
  %tmp_i_cast = zext i4 %k_i to i8
  %tmp_6 = add i8 %tmp_i_cast, %tmp_21_cast
  %tmp_22_cast = zext i8 %tmp_6 to i64
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_22_cast
  %dct_coeff_table_addr = getelementptr [8 x i127]* @dct_coeff_table, i64 0, i64 %tmp_i_32
  %dct_coeff_table_load = load i127* %dct_coeff_table_addr, align 16
  %tmp_51 = trunc i127 %dct_coeff_table_load to i16
  %coeff_cast_i = sext i16 %tmp_51 to i29
  %col_inbuf_load = load i128* %col_inbuf_addr, align 8
  %tmp_52 = trunc i128 %col_inbuf_load to i16
  %tmp_7_cast_i = sext i16 %tmp_52 to i29
  %tmp_8_i = mul i29 %coeff_cast_i, %tmp_7_cast_i
  %tmp_10_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 16, i32 31) nounwind
  %coeff_1_cast_i = sext i16 %tmp_10_i to i29
  %tmp_11_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 16, i9 31) nounwind
  %tmp_7_1_cast_i = sext i16 %tmp_11_i to i29
  %tmp_8_1_i = mul i29 %coeff_1_cast_i, %tmp_7_1_cast_i
  %tmp_12_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 32, i32 47) nounwind
  %coeff_2_cast_i = sext i16 %tmp_12_i to i29
  %tmp_13_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 32, i9 47) nounwind
  %tmp_7_2_cast_i = sext i16 %tmp_13_i to i29
  %tmp_8_2_i = mul i29 %coeff_2_cast_i, %tmp_7_2_cast_i
  %tmp_15_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 48, i32 63) nounwind
  %coeff_3_cast_i = sext i16 %tmp_15_i to i29
  %tmp_16_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 48, i9 63) nounwind
  %tmp_7_3_cast_i = sext i16 %tmp_16_i to i29
  %tmp_8_3_i = mul i29 %coeff_3_cast_i, %tmp_7_3_cast_i
  %tmp_17_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 64, i32 79) nounwind
  %coeff_4_cast_i = sext i16 %tmp_17_i to i29
  %tmp_18_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 64, i9 79) nounwind
  %tmp_7_4_cast_i = sext i16 %tmp_18_i to i29
  %tmp_8_4_i = mul i29 %coeff_4_cast_i, %tmp_7_4_cast_i
  %tmp_19_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 80, i32 95) nounwind
  %coeff_5_cast_i = sext i16 %tmp_19_i to i29
  %tmp_20_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 80, i9 95) nounwind
  %tmp_7_5_cast_i = sext i16 %tmp_20_i to i29
  %tmp_8_5_i = mul i29 %coeff_5_cast_i, %tmp_7_5_cast_i
  %tmp_21_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 96, i32 111) nounwind
  %coeff_6_cast_i = sext i16 %tmp_21_i to i29
  %tmp_22_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 96, i9 111) nounwind
  %tmp_7_6_cast_i = sext i16 %tmp_22_i to i29
  %tmp_8_6_i = mul i29 %coeff_6_cast_i, %tmp_7_6_cast_i
  %tmp_3 = call i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127 %dct_coeff_table_load, i32 112, i32 126) nounwind
  %coeff_7_cast_i = sext i15 %tmp_3 to i29
  %tmp_24_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 112, i9 127) nounwind
  %tmp_7_7_cast_i = sext i16 %tmp_24_i to i29
  %tmp_8_7_i = mul i29 %tmp_7_7_cast_i, %coeff_7_cast_i
  %tmp1 = add i29 %tmp_8_i, %tmp_8_1_i
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i
  %tmp = add i29 %tmp2, %tmp1
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i
  %tmp6 = add i29 4096, %tmp_8_7_i
  %tmp5 = add i29 %tmp6, %tmp_8_6_i
  %tmp3 = add i29 %tmp5, %tmp4
  %tmp_3_i = add i29 %tmp3, %tmp
  %tmp_5_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_3_i, i32 13, i32 28)
  store i16 %tmp_5_i, i16* %col_outbuf_i_addr, align 2
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_6_i) nounwind
  br label %1
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
