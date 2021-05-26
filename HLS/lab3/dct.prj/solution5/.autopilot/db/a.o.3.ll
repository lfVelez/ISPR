; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution5/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=1 type=[8 x i14]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@Xpose_Row_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Xpose_Col_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@WR_Loop_Row_WR_Loop_s = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@RD_Loop_Row_RD_Loop_s = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@p_str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @write_data([64 x i16]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf}, i64 0, metadata !19), !dbg !34 ; [debug line = 66:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !35), !dbg !39 ; [debug line = 66:116] [debug variable = output]
  br label %1, !dbg !40                           ; [debug line = 71:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v, %.reset ] ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %r_1 = add i4 1, %r, !dbg !43                   ; [#uses=1 type=i4] [debug line = 71:61]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !44), !dbg !43 ; [debug line = 71:61] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_s)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond2 = icmp eq i4 %c, -8, !dbg !46        ; [#uses=2 type=i1] [debug line = 73:12]
  %c_mid2 = select i1 %exitcond2, i4 0, i4 %c     ; [#uses=3 type=i4]
  %tmp_mid2_v = select i1 %exitcond2, i4 %r_1, i4 %r, !dbg !49 ; [#uses=3 type=i4] [debug line = 74:1]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_1_cast = zext i7 %tmp to i8                ; [#uses=1 type=i8]
  %tmp_1 = trunc i4 %tmp_mid2_v to i3             ; [#uses=1 type=i3]
  %tmp_1_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_1, i3 0), !dbg !49 ; [#uses=1 type=i6] [debug line = 74:1]
  %c_cast6 = zext i4 %c_mid2 to i6, !dbg !46      ; [#uses=1 type=i6] [debug line = 73:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind, !dbg !51 ; [debug line = 74:2]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13), !dbg !51 ; [#uses=1 type=i32] [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !52 ; [debug line = 75:1]
  %tmp_3_cast = zext i4 %c_mid2 to i8, !dbg !49   ; [#uses=1 type=i8] [debug line = 74:1]
  %tmp_7 = add i8 %tmp_1_cast, %tmp_3_cast, !dbg !49 ; [#uses=1 type=i8] [debug line = 74:1]
  %tmp_7_cast = zext i8 %tmp_7 to i64, !dbg !49   ; [#uses=1 type=i64] [debug line = 74:1]
  %buf_addr = getelementptr [64 x i16]* %buf, i64 0, i64 %tmp_7_cast, !dbg !49 ; [#uses=1 type=i16*] [debug line = 74:1]
  %buf_load = load i16* %buf_addr, align 2, !dbg !49 ; [#uses=1 type=i16] [debug line = 74:1]
  %tmp_4 = add i6 %c_cast6, %tmp_1_mid2, !dbg !49 ; [#uses=1 type=i6] [debug line = 74:1]
  %tmp_5 = zext i6 %tmp_4 to i64, !dbg !49        ; [#uses=1 type=i64] [debug line = 74:1]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_5, !dbg !49 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %buf_load, i16* %output_addr, align 2, !dbg !49 ; [debug line = 74:1]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_6), !dbg !53 ; [#uses=0 type=i32] [debug line = 74:67]
  %c_1 = add i4 1, %c_mid2, !dbg !54              ; [#uses=1 type=i4] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !55), !dbg !54 ; [debug line = 73:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !56                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %buf_0, [8 x i16]* nocapture %buf_1, [8 x i16]* nocapture %buf_2, [8 x i16]* nocapture %buf_3, [8 x i16]* nocapture %buf_4, [8 x i16]* nocapture %buf_5, [8 x i16]* nocapture %buf_6, [8 x i16]* nocapture %buf_7) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !57), !dbg !61 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_0}, i64 0, metadata !62), !dbg !65 ; [debug line = 54:44] [debug variable = buf[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_1}, i64 0, metadata !66), !dbg !65 ; [debug line = 54:44] [debug variable = buf[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_2}, i64 0, metadata !67), !dbg !65 ; [debug line = 54:44] [debug variable = buf[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_3}, i64 0, metadata !68), !dbg !65 ; [debug line = 54:44] [debug variable = buf[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_4}, i64 0, metadata !69), !dbg !65 ; [debug line = 54:44] [debug variable = buf[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_5}, i64 0, metadata !70), !dbg !65 ; [debug line = 54:44] [debug variable = buf[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_6}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:44] [debug variable = buf[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_7}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:44] [debug variable = buf[7]]
  br label %1, !dbg !73                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v_v, %ifBlock ] ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_2, %ifBlock ]       ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_1), !dbg !76 ; [#uses=0 type=i32] [debug line = 62:66]
  %c_2 = add i4 %c_mid2, 1, !dbg !80              ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c_2}, i64 0, metadata !81), !dbg !80 ; [debug line = 61:64] [debug variable = c]
  br label %1

.reset:                                           ; preds = %1
  %r_2 = add i4 1, %r, !dbg !82                   ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r_2}, i64 0, metadata !83), !dbg !82 ; [debug line = 59:61] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_s)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %c, -8, !dbg !84         ; [#uses=2 type=i1] [debug line = 61:12]
  %c_mid2 = select i1 %exitcond, i4 0, i4 %c      ; [#uses=3 type=i4]
  %tmp_mid2_v_v = select i1 %exitcond, i4 %r_2, i4 %r, !dbg !85 ; [#uses=3 type=i4] [debug line = 62:1]
  %tmp = trunc i4 %tmp_mid2_v_v to i3             ; [#uses=1 type=i3]
  %tmp_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !85 ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp_7_mid2 = zext i4 %tmp_mid2_v_v to i64, !dbg !85 ; [#uses=8 type=i64] [debug line = 62:1]
  %c_cast = zext i4 %c_mid2 to i6, !dbg !84       ; [#uses=1 type=i6] [debug line = 61:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind, !dbg !86 ; [debug line = 62:2]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11), !dbg !86 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !87 ; [debug line = 63:1]
  %tmp_9 = add i6 %c_cast, %tmp_mid2, !dbg !85    ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp_s = zext i6 %tmp_9 to i64, !dbg !85        ; [#uses=1 type=i64] [debug line = 62:1]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_s, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input_load = load i16* %input_addr, align 2, !dbg !85 ; [#uses=8 type=i16] [debug line = 62:1]
  %tmp_2 = trunc i4 %c_mid2 to i3                 ; [#uses=1 type=i3]
  switch i3 %tmp_2, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !85                                     ; [debug line = 62:1]

; <label>:2                                       ; preds = %1
  ret void, !dbg !88                              ; [debug line = 64:1]

branch0:                                          ; preds = %.reset
  %buf_0_addr = getelementptr [8 x i16]* %buf_0, i64 0, i64 %tmp_7_mid2, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_0_addr, align 2, !dbg !85 ; [debug line = 62:1]
  br label %ifBlock, !dbg !85                     ; [debug line = 62:1]

branch1:                                          ; preds = %.reset
  %buf_1_addr = getelementptr [8 x i16]* %buf_1, i64 0, i64 %tmp_7_mid2, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_1_addr, align 2, !dbg !85 ; [debug line = 62:1]
  br label %ifBlock, !dbg !85                     ; [debug line = 62:1]

branch2:                                          ; preds = %.reset
  %buf_2_addr = getelementptr [8 x i16]* %buf_2, i64 0, i64 %tmp_7_mid2, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_2_addr, align 2, !dbg !85 ; [debug line = 62:1]
  br label %ifBlock, !dbg !85                     ; [debug line = 62:1]

branch3:                                          ; preds = %.reset
  %buf_3_addr = getelementptr [8 x i16]* %buf_3, i64 0, i64 %tmp_7_mid2, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_3_addr, align 2, !dbg !85 ; [debug line = 62:1]
  br label %ifBlock, !dbg !85                     ; [debug line = 62:1]

branch4:                                          ; preds = %.reset
  %buf_4_addr = getelementptr [8 x i16]* %buf_4, i64 0, i64 %tmp_7_mid2, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_4_addr, align 2, !dbg !85 ; [debug line = 62:1]
  br label %ifBlock, !dbg !85                     ; [debug line = 62:1]

branch5:                                          ; preds = %.reset
  %buf_5_addr = getelementptr [8 x i16]* %buf_5, i64 0, i64 %tmp_7_mid2, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_5_addr, align 2, !dbg !85 ; [debug line = 62:1]
  br label %ifBlock, !dbg !85                     ; [debug line = 62:1]

branch6:                                          ; preds = %.reset
  %buf_6_addr = getelementptr [8 x i16]* %buf_6, i64 0, i64 %tmp_7_mid2, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_6_addr, align 2, !dbg !85 ; [debug line = 62:1]
  br label %ifBlock, !dbg !85                     ; [debug line = 62:1]

branch7:                                          ; preds = %.reset
  %buf_7_addr = getelementptr [8 x i16]* %buf_7, i64 0, i64 %tmp_7_mid2, !dbg !85 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_7_addr, align 2, !dbg !85 ; [debug line = 62:1]
  br label %ifBlock, !dbg !85                     ; [debug line = 62:1]
}

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=34]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([8 x i16]* nocapture %in_block_0, [8 x i16]* nocapture %in_block_1, [8 x i16]* nocapture %in_block_2, [8 x i16]* nocapture %in_block_3, [8 x i16]* nocapture %in_block_4, [8 x i16]* nocapture %in_block_5, [8 x i16]* nocapture %in_block_6, [8 x i16]* nocapture %in_block_7, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_0}, i64 0, metadata !89), !dbg !99 ; [debug line = 23:24] [debug variable = in_block[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_1}, i64 0, metadata !100), !dbg !99 ; [debug line = 23:24] [debug variable = in_block[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_2}, i64 0, metadata !101), !dbg !99 ; [debug line = 23:24] [debug variable = in_block[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_3}, i64 0, metadata !102), !dbg !99 ; [debug line = 23:24] [debug variable = in_block[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_4}, i64 0, metadata !103), !dbg !99 ; [debug line = 23:24] [debug variable = in_block[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_5}, i64 0, metadata !104), !dbg !99 ; [debug line = 23:24] [debug variable = in_block[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_6}, i64 0, metadata !105), !dbg !99 ; [debug line = 23:24] [debug variable = in_block[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_7}, i64 0, metadata !106), !dbg !99 ; [debug line = 23:24] [debug variable = in_block[7]]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !107), !dbg !108 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_0}, metadata !109), !dbg !112 ; [debug line = 27:109] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_1}, metadata !113), !dbg !112 ; [debug line = 27:109] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_2}, metadata !114), !dbg !112 ; [debug line = 27:109] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_3}, metadata !115), !dbg !112 ; [debug line = 27:109] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_4}, metadata !116), !dbg !112 ; [debug line = 27:109] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_5}, metadata !117), !dbg !112 ; [debug line = 27:109] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_6}, metadata !118), !dbg !112 ; [debug line = 27:109] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_7}, metadata !119), !dbg !112 ; [debug line = 27:109] [debug variable = col_inbuf[7]]
  br label %1, !dbg !120                          ; [debug line = 32:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %i, -8, !dbg !120             ; [#uses=1 type=i1] [debug line = 32:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !122                  ; [#uses=1 type=i4] [debug line = 32:60]
  br i1 %tmp, label %.preheader2.preheader.preheader, label %2, !dbg !120 ; [debug line = 32:8]

.preheader2.preheader.preheader:                  ; preds = %1
  br label %.preheader2.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind, !dbg !123 ; [debug line = 32:66]
  call fastcc void @dct_1d([8 x i16]* %in_block_0, [8 x i16]* %in_block_1, [8 x i16]* %in_block_2, [8 x i16]* %in_block_3, [8 x i16]* %in_block_4, [8 x i16]* %in_block_5, [8 x i16]* %in_block_6, [8 x i16]* %in_block_7, i4 %i, [64 x i16]* %row_outbuf, i4 %i), !dbg !125 ; [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !126), !dbg !122 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !122                          ; [debug line = 32:60]

.preheader2.preheader:                            ; preds = %ifBlock, %.preheader2.preheader.preheader
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %ifBlock ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i7]
  %j = phi i4 [ %tmp_3_mid2_v, %ifBlock ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i4]
  %i_1 = phi i4 [ %i_6, %ifBlock ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader1.preheader, label %.preheader2

.preheader1.preheader:                            ; preds = %.preheader2.preheader
  br label %.preheader1, !dbg !128                ; [debug line = 43:9]

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_6), !dbg !130 ; [#uses=0 type=i32] [debug line = 40:34]
  %i_6 = add i4 %i_1_mid2, 1, !dbg !135           ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !126), !dbg !135 ; [debug line = 39:63] [debug variable = i]
  br label %.preheader2.preheader

.preheader2:                                      ; preds = %.preheader2.preheader
  %j_2 = add i4 1, %j, !dbg !136                  ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !137), !dbg !136 ; [debug line = 37:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %tmp_1 = icmp eq i4 %i_1, -8, !dbg !138         ; [#uses=2 type=i1] [debug line = 39:11]
  %i_1_mid2 = select i1 %tmp_1, i4 0, i4 %i_1     ; [#uses=3 type=i4]
  %tmp_3_mid2_v = select i1 %tmp_1, i4 %j_2, i4 %j, !dbg !139 ; [#uses=3 type=i4] [debug line = 40:1]
  %tmp_3_mid2 = zext i4 %tmp_3_mid2_v to i64, !dbg !139 ; [#uses=8 type=i64] [debug line = 40:1]
  %tmp_3_mid2_cast = zext i4 %tmp_3_mid2_v to i8, !dbg !140 ; [#uses=1 type=i8] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !140 ; [debug line = 40:2]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6), !dbg !140 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !141 ; [debug line = 41:1]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_9_cast = zext i7 %tmp_8 to i8, !dbg !139   ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_2 = add i8 %tmp_9_cast, %tmp_3_mid2_cast, !dbg !139 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_11_cast = zext i8 %tmp_2 to i64, !dbg !139 ; [#uses=1 type=i64] [debug line = 40:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_11_cast, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !139 ; [#uses=8 type=i16] [debug line = 40:1]
  %tmp_3 = trunc i4 %i_1_mid2 to i3               ; [#uses=1 type=i3]
  switch i3 %tmp_3, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !139                                    ; [debug line = 40:1]

.preheader1:                                      ; preds = %3, %.preheader1.preheader
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i4]
  %tmp_4 = icmp eq i4 %i_2, -8, !dbg !128         ; [#uses=1 type=i1] [debug line = 43:9]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !142                ; [#uses=1 type=i4] [debug line = 43:61]
  br i1 %tmp_4, label %.preheader.preheader.preheader, label %3, !dbg !128 ; [debug line = 43:9]

.preheader.preheader.preheader:                   ; preds = %.preheader1
  br label %.preheader.preheader

; <label>:3                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind, !dbg !143 ; [debug line = 43:67]
  call fastcc void @dct_1d([8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2), !dbg !145 ; [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !126), !dbg !142 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader1, !dbg !142                ; [debug line = 43:61]

.preheader.preheader:                             ; preds = %.preheader, %.preheader.preheader.preheader
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i7]
  %j_1 = phi i4 [ %tmp_9_mid2_v, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i4]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i4]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %j_3 = add i4 %j_1, 1, !dbg !146                ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !137), !dbg !146 ; [debug line = 48:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %tmp_5 = icmp eq i4 %i_3, -8, !dbg !148         ; [#uses=2 type=i1] [debug line = 50:11]
  %i_3_mid2 = select i1 %tmp_5, i4 0, i4 %i_3     ; [#uses=3 type=i4]
  %tmp_9_mid2_v = select i1 %tmp_5, i4 %j_3, i4 %j_1, !dbg !151 ; [#uses=3 type=i4] [debug line = 51:1]
  %tmp_9_mid2_cast = zext i4 %tmp_9_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_9_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_14_cast = zext i7 %tmp_7 to i8, !dbg !153  ; [#uses=1 type=i8] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind, !dbg !153 ; [debug line = 51:2]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9), !dbg !153 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !154 ; [debug line = 52:1]
  %tmp_2_cast = zext i4 %i_3_mid2 to i8, !dbg !151 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_9 = add i8 %tmp_2_cast, %tmp_14_cast, !dbg !151 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_15_cast = zext i8 %tmp_9 to i64, !dbg !151 ; [#uses=1 type=i64] [debug line = 51:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_15_cast, !dbg !151 ; [#uses=1 type=i16*] [debug line = 51:1]
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_17_cast = zext i7 %tmp_10 to i8, !dbg !151 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_11 = add i8 %tmp_9_mid2_cast, %tmp_17_cast, !dbg !151 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_18_cast = zext i8 %tmp_11 to i64, !dbg !151 ; [#uses=1 type=i64] [debug line = 51:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_18_cast, !dbg !151 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !151 ; [#uses=1 type=i16] [debug line = 51:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !151 ; [debug line = 51:1]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_s), !dbg !155 ; [#uses=0 type=i32] [debug line = 51:34]
  %i_7 = add i4 %i_3_mid2, 1, !dbg !156           ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !126), !dbg !156 ; [debug line = 50:63] [debug variable = i]
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void, !dbg !157                             ; [debug line = 52:1]

branch0:                                          ; preds = %.preheader2
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_3_mid2, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_0_addr, align 2, !dbg !139 ; [debug line = 40:1]
  br label %ifBlock, !dbg !139                    ; [debug line = 40:1]

branch1:                                          ; preds = %.preheader2
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_3_mid2, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_1_addr, align 2, !dbg !139 ; [debug line = 40:1]
  br label %ifBlock, !dbg !139                    ; [debug line = 40:1]

branch2:                                          ; preds = %.preheader2
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_3_mid2, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_2_addr, align 2, !dbg !139 ; [debug line = 40:1]
  br label %ifBlock, !dbg !139                    ; [debug line = 40:1]

branch3:                                          ; preds = %.preheader2
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_3_mid2, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_3_addr, align 2, !dbg !139 ; [debug line = 40:1]
  br label %ifBlock, !dbg !139                    ; [debug line = 40:1]

branch4:                                          ; preds = %.preheader2
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_3_mid2, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_4_addr, align 2, !dbg !139 ; [debug line = 40:1]
  br label %ifBlock, !dbg !139                    ; [debug line = 40:1]

branch5:                                          ; preds = %.preheader2
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_3_mid2, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_5_addr, align 2, !dbg !139 ; [debug line = 40:1]
  br label %ifBlock, !dbg !139                    ; [debug line = 40:1]

branch6:                                          ; preds = %.preheader2
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_3_mid2, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_6_addr, align 2, !dbg !139 ; [debug line = 40:1]
  br label %ifBlock, !dbg !139                    ; [debug line = 40:1]

branch7:                                          ; preds = %.preheader2
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_3_mid2, !dbg !139 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_7_addr, align 2, !dbg !139 ; [debug line = 40:1]
  br label %ifBlock, !dbg !139                    ; [debug line = 40:1]
}

; [#uses=2]
define internal fastcc void @dct_1d([8 x i16]* nocapture %src, [8 x i16]* nocapture %src1, [8 x i16]* nocapture %src2, [8 x i16]* nocapture %src3, [8 x i16]* nocapture %src4, [8 x i16]* nocapture %src5, [8 x i16]* nocapture %src6, [8 x i16]* nocapture %src7, i4 %tmp_6, [64 x i16]* nocapture %dst, i4 %tmp_61) {
  %tmp_61_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_61) ; [#uses=1 type=i4]
  %tmp_6_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_6) ; [#uses=1 type=i4]
  %tmp_12 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_61_read, i3 0) ; [#uses=1 type=i7]
  %tmp_20_cast = zext i7 %tmp_12 to i8            ; [#uses=1 type=i8]
  %tmp_6_cast = zext i4 %tmp_6_read to i64        ; [#uses=8 type=i64]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !158), !dbg !164 ; [debug line = 4:81] [debug variable = dst]
  %src_addr = getelementptr [8 x i16]* %src, i64 0, i64 %tmp_6_cast ; [#uses=1 type=i16*]
  %src1_addr = getelementptr [8 x i16]* %src1, i64 0, i64 %tmp_6_cast ; [#uses=1 type=i16*]
  %src2_addr = getelementptr [8 x i16]* %src2, i64 0, i64 %tmp_6_cast ; [#uses=1 type=i16*]
  %src3_addr = getelementptr [8 x i16]* %src3, i64 0, i64 %tmp_6_cast ; [#uses=1 type=i16*]
  %src4_addr = getelementptr [8 x i16]* %src4, i64 0, i64 %tmp_6_cast ; [#uses=1 type=i16*]
  %src5_addr = getelementptr [8 x i16]* %src5, i64 0, i64 %tmp_6_cast ; [#uses=1 type=i16*]
  %src6_addr = getelementptr [8 x i16]* %src6, i64 0, i64 %tmp_6_cast ; [#uses=1 type=i16*]
  %src7_addr = getelementptr [8 x i16]* %src7, i64 0, i64 %tmp_6_cast ; [#uses=1 type=i16*]
  br label %1, !dbg !165                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %2, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %2 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %k, -8, !dbg !165             ; [#uses=1 type=i1] [debug line = 13:9]
  %k_1 = add i4 %k, 1, !dbg !168                  ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %tmp, label %3, label %2, !dbg !165       ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !169 ; [debug line = 13:67]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !169 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !171 ; [debug line = 14:1]
  %tmp_s = zext i4 %k to i64, !dbg !172           ; [#uses=8 type=i64] [debug line = 16:48]
  %tmp_cast = zext i4 %k to i8, !dbg !175         ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_13 = add i8 %tmp_20_cast, %tmp_cast, !dbg !175 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_21_cast = zext i8 %tmp_13 to i64, !dbg !175 ; [#uses=1 type=i64] [debug line = 19:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_21_cast, !dbg !175 ; [#uses=1 type=i16*] [debug line = 19:7]
  %dct_coeff_table_0_ad = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_s, !dbg !172 ; [#uses=1 type=i14*] [debug line = 16:48]
  %dct_coeff_table_0_lo = load i14* %dct_coeff_table_0_ad, align 2, !dbg !172 ; [#uses=1 type=i14] [debug line = 16:48]
  %coeff_cast = zext i14 %dct_coeff_table_0_lo to i29 ; [#uses=1 type=i29]
  %src_load = load i16* %src_addr, align 2        ; [#uses=1 type=i16]
  %tmp_171_cast = sext i16 %src_load to i29, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_4 = mul i29 %coeff_cast, %tmp_171_cast, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_1_ad = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_s, !dbg !172 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_1_lo = load i15* %dct_coeff_table_1_ad, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_1_cast = sext i15 %dct_coeff_table_1_lo to i29 ; [#uses=1 type=i29]
  %src1_load = load i16* %src1_addr, align 2      ; [#uses=1 type=i16]
  %tmp_17_1_cast = sext i16 %src1_load to i29, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_1 = mul i29 %coeff_1_cast, %tmp_17_1_cast, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_2_ad = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_s, !dbg !172 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_2_lo = load i15* %dct_coeff_table_2_ad, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_2_cast = sext i15 %dct_coeff_table_2_lo to i29 ; [#uses=1 type=i29]
  %src2_load = load i16* %src2_addr, align 2      ; [#uses=1 type=i16]
  %tmp_17_2_cast = sext i16 %src2_load to i29, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_2 = mul i29 %coeff_2_cast, %tmp_17_2_cast, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_3_ad = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_s, !dbg !172 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_3_lo = load i15* %dct_coeff_table_3_ad, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_3_cast = sext i15 %dct_coeff_table_3_lo to i29 ; [#uses=1 type=i29]
  %src3_load = load i16* %src3_addr, align 2      ; [#uses=1 type=i16]
  %tmp_17_3_cast = sext i16 %src3_load to i29, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_3 = mul i29 %coeff_3_cast, %tmp_17_3_cast, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_4_ad = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_s, !dbg !172 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_4_lo = load i15* %dct_coeff_table_4_ad, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_4_cast = sext i15 %dct_coeff_table_4_lo to i29 ; [#uses=1 type=i29]
  %src4_load = load i16* %src4_addr, align 2      ; [#uses=1 type=i16]
  %tmp_17_4_cast = sext i16 %src4_load to i29, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_4 = mul i29 %coeff_4_cast, %tmp_17_4_cast, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_5_ad = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_s, !dbg !172 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_5_lo = load i15* %dct_coeff_table_5_ad, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_5_cast = sext i15 %dct_coeff_table_5_lo to i29 ; [#uses=1 type=i29]
  %src5_load = load i16* %src5_addr, align 2      ; [#uses=1 type=i16]
  %tmp_17_5_cast = sext i16 %src5_load to i29, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_5 = mul i29 %coeff_5_cast, %tmp_17_5_cast, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_6_ad = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_s, !dbg !172 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_6_lo = load i15* %dct_coeff_table_6_ad, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_6_cast = sext i15 %dct_coeff_table_6_lo to i29 ; [#uses=1 type=i29]
  %src6_load = load i16* %src6_addr, align 2      ; [#uses=1 type=i16]
  %tmp_17_6_cast = sext i16 %src6_load to i29, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_6 = mul i29 %coeff_6_cast, %tmp_17_6_cast, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_7_ad = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_s, !dbg !172 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_7_lo = load i15* %dct_coeff_table_7_ad, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_7_cast = sext i15 %dct_coeff_table_7_lo to i29 ; [#uses=1 type=i29]
  %src7_load = load i16* %src7_addr, align 2      ; [#uses=1 type=i16]
  %tmp_17_7_cast = sext i16 %src7_load to i29, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_7 = mul i29 %coeff_7_cast, %tmp_17_7_cast, !dbg !176 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp2 = add i29 %tmp_18_1, %tmp_4, !dbg !175    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp_18_3, %tmp_18_2, !dbg !175 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !175         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp_18_5, %tmp_18_4, !dbg !175 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp7 = add i29 %tmp_18_7, 4096, !dbg !175      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp_18_6, %tmp7, !dbg !175     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !175         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_5 = add i29 %tmp1, %tmp4, !dbg !175        ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_7 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_5, i32 13, i32 28), !dbg !175 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_7, i16* %dst_addr, align 2, !dbg !175 ; [debug line = 19:7]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_3) nounwind, !dbg !177 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !178), !dbg !168 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !168                          ; [debug line = 13:61]

; <label>:3                                       ; preds = %1
  ret void, !dbg !179                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !180 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !185
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !191
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !195), !dbg !196 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !197), !dbg !198 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_0}, metadata !199), !dbg !201 ; [debug line = 81:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_1}, metadata !202), !dbg !201 ; [debug line = 81:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_2}, metadata !203), !dbg !201 ; [debug line = 81:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_3}, metadata !204), !dbg !201 ; [debug line = 81:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_4}, metadata !205), !dbg !201 ; [debug line = 81:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_5}, metadata !206), !dbg !201 ; [debug line = 81:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_6}, metadata !207), !dbg !201 ; [debug line = 81:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_7}, metadata !208), !dbg !201 ; [debug line = 81:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !209), !dbg !210 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* %input, [8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7) nounwind, !dbg !211 ; [debug line = 85:4]
  call fastcc void @dct_2d([8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7, [64 x i16]* %buf_2d_out) nounwind, !dbg !212 ; [debug line = 87:4]
  call fastcc void @write_data([64 x i16]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !213 ; [debug line = 90:4]
  ret void, !dbg !214                             ; [debug line = 91:1]
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

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=11]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
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

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_13 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_13
}

; [#uses=5]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_14 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_15 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_16 = or i7 %empty_15, %empty_14          ; [#uses=1 type=i7]
  ret i7 %empty_16
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_17 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_18 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_19 = or i6 %empty_18, %empty_17          ; [#uses=1 type=i6]
  ret i6 %empty_19
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
!19 = metadata !{i32 786689, metadata !20, metadata !"buf", null, i32 66, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write_data", metadata !"write_data", metadata !"", metadata !21, i32 66, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 67} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"dct.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !29}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !26, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !26, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{metadata !28, metadata !28}
!34 = metadata !{i32 66, i32 23, metadata !20, null}
!35 = metadata !{i32 786689, metadata !20, metadata !"output", null, i32 66, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !26, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 66, i32 116, metadata !20, null}
!40 = metadata !{i32 71, i32 9, metadata !41, null}
!41 = metadata !{i32 786443, metadata !42, i32 71, i32 4, metadata !21, i32 24} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786443, metadata !20, i32 67, i32 1, metadata !21, i32 23} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 71, i32 61, metadata !41, null}
!44 = metadata !{i32 786688, metadata !42, metadata !"r", metadata !21, i32 68, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{i32 73, i32 12, metadata !47, null}
!47 = metadata !{i32 786443, metadata !48, i32 73, i32 7, metadata !21, i32 26} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !41, i32 71, i32 66, metadata !21, i32 25} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 74, i32 1, metadata !50, null}
!50 = metadata !{i32 786443, metadata !47, i32 74, i32 1, metadata !21, i32 27} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 74, i32 2, metadata !50, null}
!52 = metadata !{i32 75, i32 1, metadata !50, null}
!53 = metadata !{i32 74, i32 67, metadata !50, null}
!54 = metadata !{i32 73, i32 64, metadata !47, null}
!55 = metadata !{i32 786688, metadata !42, metadata !"c", metadata !21, i32 68, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 76, i32 1, metadata !42, null}
!57 = metadata !{i32 786689, metadata !58, metadata !"input", null, i32 54, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read_data", metadata !"read_data", metadata !"", metadata !21, i32 54, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 55} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !29, metadata !24}
!61 = metadata !{i32 54, i32 22, metadata !58, null}
!62 = metadata !{i32 790531, metadata !63, metadata !"buf[0]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!63 = metadata !{i32 786689, metadata !58, metadata !"buf", null, i32 54, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !26, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{i32 54, i32 44, metadata !58, null}
!66 = metadata !{i32 790531, metadata !63, metadata !"buf[1]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!67 = metadata !{i32 790531, metadata !63, metadata !"buf[2]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!68 = metadata !{i32 790531, metadata !63, metadata !"buf[3]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!69 = metadata !{i32 790531, metadata !63, metadata !"buf[4]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!70 = metadata !{i32 790531, metadata !63, metadata !"buf[5]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!71 = metadata !{i32 790531, metadata !63, metadata !"buf[6]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!72 = metadata !{i32 790531, metadata !63, metadata !"buf[7]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!73 = metadata !{i32 59, i32 9, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 59, i32 4, metadata !21, i32 19} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !58, i32 55, i32 1, metadata !21, i32 18} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 62, i32 66, metadata !77, null}
!77 = metadata !{i32 786443, metadata !78, i32 62, i32 1, metadata !21, i32 22} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !79, i32 61, i32 7, metadata !21, i32 21} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786443, metadata !74, i32 59, i32 66, metadata !21, i32 20} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 61, i32 64, metadata !78, null}
!81 = metadata !{i32 786688, metadata !75, metadata !"c", metadata !21, i32 56, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 59, i32 61, metadata !74, null}
!83 = metadata !{i32 786688, metadata !75, metadata !"r", metadata !21, i32 56, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 61, i32 12, metadata !78, null}
!85 = metadata !{i32 62, i32 1, metadata !77, null}
!86 = metadata !{i32 62, i32 2, metadata !77, null}
!87 = metadata !{i32 63, i32 1, metadata !77, null}
!88 = metadata !{i32 64, i32 1, metadata !75, null}
!89 = metadata !{i32 790531, metadata !90, metadata !"in_block[0]", null, i32 23, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!90 = metadata !{i32 786689, metadata !91, metadata !"in_block", null, i32 23, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !21, i32 23, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 25} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !94, metadata !94}
!94 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!95 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !96, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!96 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !21, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!97 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !96, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!98 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !96, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!99 = metadata !{i32 23, i32 24, metadata !91, null}
!100 = metadata !{i32 790531, metadata !90, metadata !"in_block[1]", null, i32 23, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!101 = metadata !{i32 790531, metadata !90, metadata !"in_block[2]", null, i32 23, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!102 = metadata !{i32 790531, metadata !90, metadata !"in_block[3]", null, i32 23, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!103 = metadata !{i32 790531, metadata !90, metadata !"in_block[4]", null, i32 23, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!104 = metadata !{i32 790531, metadata !90, metadata !"in_block[5]", null, i32 23, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!105 = metadata !{i32 790531, metadata !90, metadata !"in_block[6]", null, i32 23, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!106 = metadata !{i32 790531, metadata !90, metadata !"in_block[7]", null, i32 23, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!107 = metadata !{i32 786689, metadata !91, metadata !"out_block", null, i32 24, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 24, i32 18, metadata !91, null}
!109 = metadata !{i32 790529, metadata !110, metadata !"col_inbuf[0]", null, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!110 = metadata !{i32 786688, metadata !111, metadata !"col_inbuf", metadata !21, i32 27, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 786443, metadata !91, i32 25, i32 1, metadata !21, i32 5} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 27, i32 109, metadata !111, null}
!113 = metadata !{i32 790529, metadata !110, metadata !"col_inbuf[1]", null, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!114 = metadata !{i32 790529, metadata !110, metadata !"col_inbuf[2]", null, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!115 = metadata !{i32 790529, metadata !110, metadata !"col_inbuf[3]", null, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!116 = metadata !{i32 790529, metadata !110, metadata !"col_inbuf[4]", null, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!117 = metadata !{i32 790529, metadata !110, metadata !"col_inbuf[5]", null, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!118 = metadata !{i32 790529, metadata !110, metadata !"col_inbuf[6]", null, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!119 = metadata !{i32 790529, metadata !110, metadata !"col_inbuf[7]", null, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!120 = metadata !{i32 32, i32 8, metadata !121, null}
!121 = metadata !{i32 786443, metadata !111, i32 32, i32 4, metadata !21, i32 6} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 32, i32 60, metadata !121, null}
!123 = metadata !{i32 32, i32 66, metadata !124, null}
!124 = metadata !{i32 786443, metadata !121, i32 32, i32 65, metadata !21, i32 7} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 33, i32 7, metadata !124, null}
!126 = metadata !{i32 786688, metadata !111, metadata !"i", metadata !21, i32 28, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!128 = metadata !{i32 43, i32 9, metadata !129, null}
!129 = metadata !{i32 786443, metadata !111, i32 43, i32 4, metadata !21, i32 12} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 40, i32 34, metadata !131, null}
!131 = metadata !{i32 786443, metadata !132, i32 40, i32 1, metadata !21, i32 11} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !133, i32 39, i32 7, metadata !21, i32 10} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !134, i32 38, i32 1, metadata !21, i32 9} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 786443, metadata !111, i32 37, i32 4, metadata !21, i32 8} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 39, i32 63, metadata !132, null}
!136 = metadata !{i32 37, i32 61, metadata !134, null}
!137 = metadata !{i32 786688, metadata !111, metadata !"j", metadata !21, i32 28, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 39, i32 11, metadata !132, null}
!139 = metadata !{i32 40, i32 1, metadata !131, null}
!140 = metadata !{i32 40, i32 2, metadata !131, null}
!141 = metadata !{i32 41, i32 1, metadata !131, null}
!142 = metadata !{i32 43, i32 61, metadata !129, null}
!143 = metadata !{i32 43, i32 67, metadata !144, null}
!144 = metadata !{i32 786443, metadata !129, i32 43, i32 66, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 44, i32 7, metadata !144, null}
!146 = metadata !{i32 48, i32 61, metadata !147, null}
!147 = metadata !{i32 786443, metadata !111, i32 48, i32 4, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 50, i32 11, metadata !149, null}
!149 = metadata !{i32 786443, metadata !150, i32 50, i32 7, metadata !21, i32 16} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !147, i32 49, i32 1, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 51, i32 1, metadata !152, null}
!152 = metadata !{i32 786443, metadata !149, i32 51, i32 1, metadata !21, i32 17} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 51, i32 2, metadata !152, null}
!154 = metadata !{i32 52, i32 1, metadata !152, null}
!155 = metadata !{i32 51, i32 34, metadata !152, null}
!156 = metadata !{i32 50, i32 63, metadata !149, null}
!157 = metadata !{i32 52, i32 1, metadata !111, null}
!158 = metadata !{i32 786689, metadata !159, metadata !"dst", null, i32 4, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !21, i32 4, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 5} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{null, metadata !162, metadata !162}
!162 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ]
!163 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !96, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!164 = metadata !{i32 4, i32 81, metadata !159, null}
!165 = metadata !{i32 13, i32 9, metadata !166, null}
!166 = metadata !{i32 786443, metadata !167, i32 13, i32 4, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 786443, metadata !159, i32 5, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 13, i32 61, metadata !166, null}
!169 = metadata !{i32 13, i32 67, metadata !170, null}
!170 = metadata !{i32 786443, metadata !166, i32 13, i32 66, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 14, i32 1, metadata !170, null}
!172 = metadata !{i32 16, i32 48, metadata !173, null}
!173 = metadata !{i32 786443, metadata !174, i32 15, i32 77, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 786443, metadata !170, i32 15, i32 7, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 19, i32 7, metadata !170, null}
!176 = metadata !{i32 17, i32 10, metadata !173, null}
!177 = metadata !{i32 20, i32 4, metadata !170, null}
!178 = metadata !{i32 786688, metadata !167, metadata !"k", metadata !21, i32 6, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 21, i32 1, metadata !167, null}
!180 = metadata !{i32 80, i32 1, metadata !181, null}
!181 = metadata !{i32 786443, metadata !182, i32 79, i32 1, metadata !21, i32 28} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct", metadata !"dct", metadata !"", metadata !21, i32 78, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 79} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!184 = metadata !{null, metadata !29, metadata !29}
!185 = metadata !{metadata !186}
!186 = metadata !{i32 0, i32 15, metadata !187}
!187 = metadata !{metadata !188}
!188 = metadata !{metadata !"input", metadata !189, metadata !"short", i32 0, i32 15}
!189 = metadata !{metadata !190}
!190 = metadata !{i32 0, i32 63, i32 1}
!191 = metadata !{metadata !192}
!192 = metadata !{i32 0, i32 15, metadata !193}
!193 = metadata !{metadata !194}
!194 = metadata !{metadata !"output", metadata !189, metadata !"short", i32 0, i32 15}
!195 = metadata !{i32 786689, metadata !182, metadata !"input", null, i32 78, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 78, i32 16, metadata !182, null}
!197 = metadata !{i32 786689, metadata !182, metadata !"output", null, i32 78, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 78, i32 38, metadata !182, null}
!199 = metadata !{i32 790529, metadata !200, metadata !"buf_2d_in[0]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!200 = metadata !{i32 786688, metadata !181, metadata !"buf_2d_in", metadata !21, i32 81, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 81, i32 10, metadata !181, null}
!202 = metadata !{i32 790529, metadata !200, metadata !"buf_2d_in[1]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!203 = metadata !{i32 790529, metadata !200, metadata !"buf_2d_in[2]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!204 = metadata !{i32 790529, metadata !200, metadata !"buf_2d_in[3]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!205 = metadata !{i32 790529, metadata !200, metadata !"buf_2d_in[4]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!206 = metadata !{i32 790529, metadata !200, metadata !"buf_2d_in[5]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!207 = metadata !{i32 790529, metadata !200, metadata !"buf_2d_in[6]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!208 = metadata !{i32 790529, metadata !200, metadata !"buf_2d_in[7]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!209 = metadata !{i32 786688, metadata !181, metadata !"buf_2d_out", metadata !21, i32 82, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 82, i32 10, metadata !181, null}
!211 = metadata !{i32 85, i32 4, metadata !181, null}
!212 = metadata !{i32 87, i32 4, metadata !181, null}
!213 = metadata !{i32 90, i32 4, metadata !181, null}
!214 = metadata !{i32 91, i32 1, metadata !181, null}
