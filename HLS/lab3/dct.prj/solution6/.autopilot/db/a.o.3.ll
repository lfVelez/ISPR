; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution6/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=2 type=[8 x i14]*]
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
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]

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

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !89 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !94
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !100
  %row_outbuf_i = alloca [64 x i16], align 2      ; [#uses=2 type=[64 x i16]*]
  %col_outbuf_i = alloca [64 x i16], align 2      ; [#uses=2 type=[64 x i16]*]
  %col_inbuf_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
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
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !104), !dbg !105 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !106), !dbg !107 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_0}, metadata !108), !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_1}, metadata !121), !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_2}, metadata !122), !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_3}, metadata !123), !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_4}, metadata !124), !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_5}, metadata !125), !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_6}, metadata !126), !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_7}, metadata !127), !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[7]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_0}, metadata !128), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_1}, metadata !131), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_2}, metadata !132), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_3}, metadata !133), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_4}, metadata !134), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_5}, metadata !135), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_6}, metadata !136), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_7}, metadata !137), !dbg !130 ; [debug line = 81:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !138), !dbg !139 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* %input, [8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7) nounwind, !dbg !140 ; [debug line = 85:4]
  call fastcc void @Loop_Row_DCT_Loop_pr([8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7, [64 x i16]* %row_outbuf_i)
  call fastcc void @Loop_Xpose_Row_Outer([64 x i16]* %row_outbuf_i, [8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7)
  call fastcc void @Loop_Col_DCT_Loop_pr([8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7, [64 x i16]* %col_outbuf_i)
  call fastcc void @Loop_Xpose_Col_Outer([64 x i16]* %col_outbuf_i, [64 x i16]* %buf_2d_out)
  call fastcc void @write_data([64 x i16]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !141 ; [debug line = 90:4]
  ret void, !dbg !142                             ; [debug line = 91:1]
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

; [#uses=6]
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

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=2]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_7 = trunc i29 %empty to i16              ; [#uses=1 type=i16]
  ret i16 %empty_7
}

; [#uses=6]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_8 = zext i3 %1 to i7                     ; [#uses=1 type=i7]
  %empty_9 = shl i7 %empty, 3                     ; [#uses=1 type=i7]
  %empty_10 = or i7 %empty_9, %empty_8            ; [#uses=1 type=i7]
  ret i7 %empty_10
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_11 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_12 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_13 = or i6 %empty_12, %empty_11          ; [#uses=1 type=i6]
  ret i6 %empty_13
}

; [#uses=1]
define internal fastcc void @Loop_Xpose_Row_Outer([64 x i16]* nocapture %row_outbuf_i, [8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7) nounwind {
newFuncRoot:
  br label %0

.preheader1.i.exitStub:                           ; preds = %0
  ret void

.preheader2.i:                                    ; preds = %0
  %j = add i4 1, %j_0_i, !dbg !143                ; [#uses=1 type=i4] [debug line = 37:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !145) nounwind, !dbg !143 ; [debug line = 37:61@87:4] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %tmp_s = icmp eq i4 %i_1_i, -8, !dbg !147       ; [#uses=2 type=i1] [debug line = 39:11@87:4]
  %i_1_i_mid2 = select i1 %tmp_s, i4 0, i4 %i_1_i ; [#uses=3 type=i4]
  %tmp_3_mid2_v = select i1 %tmp_s, i4 %j, i4 %j_0_i, !dbg !150 ; [#uses=3 type=i4] [debug line = 40:1@87:4]
  %tmp_3_mid2 = zext i4 %tmp_3_mid2_v to i64, !dbg !150 ; [#uses=8 type=i64] [debug line = 40:1@87:4]
  %tmp_3_mid2_cast = zext i4 %tmp_3_mid2_v to i8, !dbg !152 ; [#uses=1 type=i8] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !152 ; [debug line = 40:2@87:4]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6) nounwind, !dbg !152 ; [#uses=1 type=i32] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !153 ; [debug line = 41:1@87:4]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_8_cast = zext i7 %tmp to i8, !dbg !150     ; [#uses=1 type=i8] [debug line = 40:1@87:4]
  %tmp_9 = add i8 %tmp_8_cast, %tmp_3_mid2_cast, !dbg !150 ; [#uses=1 type=i8] [debug line = 40:1@87:4]
  %tmp_9_cast = zext i8 %tmp_9 to i64, !dbg !150  ; [#uses=1 type=i64] [debug line = 40:1@87:4]
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_9_cast, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %row_outbuf_i_load = load i16* %row_outbuf_i_addr, align 2, !dbg !150 ; [#uses=8 type=i16] [debug line = 40:1@87:4]
  %tmp_3 = trunc i4 %i_1_i_mid2 to i3             ; [#uses=1 type=i3]
  switch i3 %tmp_3, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !150                                    ; [debug line = 40:1@87:4]

; <label>:0                                       ; preds = %ifBlock, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %ifBlock ] ; [#uses=2 type=i7]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_3_mid2_v, %ifBlock ] ; [#uses=2 type=i4]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %ifBlock ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader1.i.exitStub, label %.preheader2.i

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_2) nounwind, !dbg !154 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %i = add i4 %i_1_i_mid2, 1, !dbg !155           ; [#uses=1 type=i4] [debug line = 39:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !156) nounwind, !dbg !155 ; [debug line = 39:63@87:4] [debug variable = i]
  br label %0

branch0:                                          ; preds = %.preheader2.i
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_3_mid2, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_0_addr, align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !150                    ; [debug line = 40:1@87:4]

branch1:                                          ; preds = %.preheader2.i
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_3_mid2, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_1_addr, align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !150                    ; [debug line = 40:1@87:4]

branch2:                                          ; preds = %.preheader2.i
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_3_mid2, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_2_addr, align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !150                    ; [debug line = 40:1@87:4]

branch3:                                          ; preds = %.preheader2.i
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_3_mid2, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_3_addr, align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !150                    ; [debug line = 40:1@87:4]

branch4:                                          ; preds = %.preheader2.i
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_3_mid2, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_4_addr, align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !150                    ; [debug line = 40:1@87:4]

branch5:                                          ; preds = %.preheader2.i
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_3_mid2, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_5_addr, align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !150                    ; [debug line = 40:1@87:4]

branch6:                                          ; preds = %.preheader2.i
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_3_mid2, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_6_addr, align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !150                    ; [debug line = 40:1@87:4]

branch7:                                          ; preds = %.preheader2.i
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_3_mid2, !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_7_addr, align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !150                    ; [debug line = 40:1@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Xpose_Col_Outer([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  %j = add i4 %j_1_i, 1, !dbg !157                ; [#uses=1 type=i4] [debug line = 48:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !145) nounwind, !dbg !157 ; [debug line = 48:61@87:4] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %tmp_s = icmp eq i4 %i_3_i, -8, !dbg !159       ; [#uses=2 type=i1] [debug line = 50:11@87:4]
  %i_3_i_mid2 = select i1 %tmp_s, i4 0, i4 %i_3_i ; [#uses=3 type=i4]
  %tmp_7_mid2_v = select i1 %tmp_s, i4 %j, i4 %j_1_i, !dbg !162 ; [#uses=3 type=i4] [debug line = 51:1@87:4]
  %tmp_7_mid2_cast = zext i4 %tmp_7_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_7_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_10_cast = zext i7 %tmp to i8, !dbg !164    ; [#uses=1 type=i8] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind, !dbg !164 ; [debug line = 51:2@87:4]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9) nounwind, !dbg !164 ; [#uses=1 type=i32] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !165 ; [debug line = 52:1@87:4]
  %tmp_5_cast = zext i4 %i_3_i_mid2 to i8         ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_12_cast = zext i7 %tmp_1 to i8, !dbg !162  ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_2 = add i8 %tmp_7_mid2_cast, %tmp_12_cast, !dbg !162 ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_13_cast = zext i8 %tmp_2 to i64, !dbg !162 ; [#uses=1 type=i64] [debug line = 51:1@87:4]
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_13_cast, !dbg !162 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %tmp_4 = add i8 %tmp_5_cast, %tmp_10_cast, !dbg !162 ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_14_cast = zext i8 %tmp_4 to i64, !dbg !162 ; [#uses=1 type=i64] [debug line = 51:1@87:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_14_cast, !dbg !162 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %col_outbuf_i_load = load i16* %col_outbuf_i_addr, align 2, !dbg !162 ; [#uses=1 type=i16] [debug line = 51:1@87:4]
  store i16 %col_outbuf_i_load, i16* %buf_2d_out_addr, align 2, !dbg !162 ; [debug line = 51:1@87:4]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_3) nounwind, !dbg !166 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %i = add i4 %i_3_i_mid2, 1, !dbg !167           ; [#uses=1 type=i4] [debug line = 50:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !156) nounwind, !dbg !167 ; [debug line = 50:63@87:4] [debug variable = i]
  br label %0

; <label>:0                                       ; preds = %.preheader.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.i ] ; [#uses=2 type=i7]
  %j_1_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_7_mid2_v, %.preheader.i ] ; [#uses=2 type=i4]
  %i_3_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader.i ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %dct_2d.exit.exitStub, label %.preheader.i
}

; [#uses=1]
define internal fastcc void @Loop_Row_DCT_Loop_pr([8 x i16]* nocapture %buf_2d_in_0, [8 x i16]* nocapture %buf_2d_in_1, [8 x i16]* nocapture %buf_2d_in_2, [8 x i16]* nocapture %buf_2d_in_3, [8 x i16]* nocapture %buf_2d_in_4, [8 x i16]* nocapture %buf_2d_in_5, [8 x i16]* nocapture %buf_2d_in_6, [8 x i16]* nocapture %buf_2d_in_7, [64 x i16]* nocapture %row_outbuf_i) nounwind {
newFuncRoot:
  br label %dct_1d.exit, !dbg !168                ; [debug line = 32:8@87:4]

.preheader2.i.exitStub:                           ; preds = %dct_1d.exit
  ret void

dct_1d.exit.loopexit:                             ; preds = %1
  br label %dct_1d.exit

dct_1d.exit:                                      ; preds = %dct_1d.exit.loopexit, %newFuncRoot
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i, %dct_1d.exit.loopexit ] ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %i_0_i, -8, !dbg !168         ; [#uses=1 type=i1] [debug line = 32:8@87:4]
  %i = add i4 %i_0_i, 1, !dbg !170                ; [#uses=1 type=i4] [debug line = 32:60@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !156) nounwind, !dbg !170 ; [debug line = 32:60@87:4] [debug variable = i]
  br i1 %tmp, label %.preheader2.i.exitStub, label %0, !dbg !168 ; [debug line = 32:8@87:4]

; <label>:0                                       ; preds = %dct_1d.exit
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind, !dbg !171 ; [debug line = 32:66@87:4]
  %tmp_141_cast_i = zext i4 %i_0_i to i64         ; [#uses=8 type=i64]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i, i3 0) ; [#uses=1 type=i7]
  %tmp_16_cast = zext i7 %tmp_s to i8, !dbg !173  ; [#uses=1 type=i8] [debug line = 4:81@33:7@87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %row_outbuf_i}, i64 0, metadata !179) nounwind, !dbg !173 ; [debug line = 4:81@33:7@87:4] [debug variable = dst]
  %buf_2d_in_0_addr = getelementptr [8 x i16]* %buf_2d_in_0, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_1_addr = getelementptr [8 x i16]* %buf_2d_in_1, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_2_addr = getelementptr [8 x i16]* %buf_2d_in_2, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_3_addr = getelementptr [8 x i16]* %buf_2d_in_3, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_4_addr = getelementptr [8 x i16]* %buf_2d_in_4, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_5_addr = getelementptr [8 x i16]* %buf_2d_in_5, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_6_addr = getelementptr [8 x i16]* %buf_2d_in_6, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_7_addr = getelementptr [8 x i16]* %buf_2d_in_7, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  br label %1, !dbg !181                          ; [debug line = 13:9@33:7@87:4]

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]             ; [#uses=4 type=i4]
  %tmp_i = icmp eq i4 %k_i, -8, !dbg !181         ; [#uses=1 type=i1] [debug line = 13:9@33:7@87:4]
  %k = add i4 %k_i, 1, !dbg !184                  ; [#uses=1 type=i4] [debug line = 13:61@33:7@87:4]
  br i1 %tmp_i, label %dct_1d.exit.loopexit, label %2, !dbg !181 ; [debug line = 13:9@33:7@87:4]

; <label>:2                                       ; preds = %1
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !185 ; [debug line = 13:67@33:7@87:4]
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !185 ; [#uses=1 type=i32] [debug line = 13:67@33:7@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !187 ; [debug line = 14:1@33:7@87:4]
  %tmp_i_17 = zext i4 %k_i to i64, !dbg !188      ; [#uses=8 type=i64] [debug line = 16:48@33:7@87:4]
  %tmp_i_cast = zext i4 %k_i to i8, !dbg !191     ; [#uses=1 type=i8] [debug line = 19:7@33:7@87:4]
  %tmp_5 = add i8 %tmp_16_cast, %tmp_i_cast, !dbg !191 ; [#uses=1 type=i8] [debug line = 19:7@33:7@87:4]
  %tmp_17_cast = zext i8 %tmp_5 to i64, !dbg !191 ; [#uses=1 type=i64] [debug line = 19:7@33:7@87:4]
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_17_cast, !dbg !191 ; [#uses=1 type=i16*] [debug line = 19:7@33:7@87:4]
  %dct_coeff_table_0_ad = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_17, !dbg !188 ; [#uses=1 type=i14*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_0_lo = load i14* %dct_coeff_table_0_ad, align 2, !dbg !188 ; [#uses=1 type=i14] [debug line = 16:48@33:7@87:4]
  %coeff_cast_i = zext i14 %dct_coeff_table_0_lo to i29 ; [#uses=1 type=i29]
  %buf_2d_in_0_load = load i16* %buf_2d_in_0_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_cast_i = sext i16 %buf_2d_in_0_load to i29, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_8_i = mul i29 %coeff_cast_i, %tmp_7_cast_i, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_1_ad = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_17, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_1_lo = load i15* %dct_coeff_table_1_ad, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_lo to i29 ; [#uses=1 type=i29]
  %buf_2d_in_1_load = load i16* %buf_2d_in_1_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_1_cast_i = sext i16 %buf_2d_in_1_load to i29, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_8_1_i = mul i29 %coeff_1_cast_i, %tmp_7_1_cast_i, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_2_ad = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_17, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_2_lo = load i15* %dct_coeff_table_2_ad, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_lo to i29 ; [#uses=1 type=i29]
  %buf_2d_in_2_load = load i16* %buf_2d_in_2_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_2_cast_i = sext i16 %buf_2d_in_2_load to i29, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_8_2_i = mul i29 %coeff_2_cast_i, %tmp_7_2_cast_i, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_3_ad = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_17, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_3_lo = load i15* %dct_coeff_table_3_ad, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_lo to i29 ; [#uses=1 type=i29]
  %buf_2d_in_3_load = load i16* %buf_2d_in_3_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_3_cast_i = sext i16 %buf_2d_in_3_load to i29, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_8_3_i = mul i29 %coeff_3_cast_i, %tmp_7_3_cast_i, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_4_ad = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_17, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_4_lo = load i15* %dct_coeff_table_4_ad, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_lo to i29 ; [#uses=1 type=i29]
  %buf_2d_in_4_load = load i16* %buf_2d_in_4_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_4_cast_i = sext i16 %buf_2d_in_4_load to i29, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_8_4_i = mul i29 %coeff_4_cast_i, %tmp_7_4_cast_i, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_5_ad = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_17, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_5_lo = load i15* %dct_coeff_table_5_ad, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_lo to i29 ; [#uses=1 type=i29]
  %buf_2d_in_5_load = load i16* %buf_2d_in_5_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_5_cast_i = sext i16 %buf_2d_in_5_load to i29, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_8_5_i = mul i29 %coeff_5_cast_i, %tmp_7_5_cast_i, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_6_ad = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_17, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_6_lo = load i15* %dct_coeff_table_6_ad, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_lo to i29 ; [#uses=1 type=i29]
  %buf_2d_in_6_load = load i16* %buf_2d_in_6_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_6_cast_i = sext i16 %buf_2d_in_6_load to i29, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_8_6_i = mul i29 %coeff_6_cast_i, %tmp_7_6_cast_i, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_7_ad = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_17, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_7_lo = load i15* %dct_coeff_table_7_ad, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_lo to i29 ; [#uses=1 type=i29]
  %buf_2d_in_7_load = load i16* %buf_2d_in_7_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_7_cast_i = sext i16 %buf_2d_in_7_load to i29, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_8_7_i = mul i29 %coeff_7_cast_i, %tmp_7_7_cast_i, !dbg !192 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp2 = add i29 %tmp_8_1_i, %tmp_8_i, !dbg !191 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp3 = add i29 %tmp_8_3_i, %tmp_8_2_i, !dbg !191 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !191         ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp5 = add i29 %tmp_8_5_i, %tmp_8_4_i, !dbg !191 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp7 = add i29 %tmp_8_7_i, 4096, !dbg !191     ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp6 = add i29 %tmp_8_6_i, %tmp7, !dbg !191    ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !191         ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp_3_i = add i29 %tmp1, %tmp4, !dbg !191      ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp_5_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_3_i, i32 13, i32 28), !dbg !191 ; [#uses=1 type=i16] [debug line = 19:7@33:7@87:4]
  store i16 %tmp_5_i, i16* %row_outbuf_i_addr, align 2, !dbg !191 ; [debug line = 19:7@33:7@87:4]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_2_i) nounwind, !dbg !193 ; [#uses=0 type=i32] [debug line = 20:4@33:7@87:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !194) nounwind, !dbg !184 ; [debug line = 13:61@33:7@87:4] [debug variable = k]
  br label %1, !dbg !184                          ; [debug line = 13:61@33:7@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Col_DCT_Loop_pr([8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7, [64 x i16]* nocapture %col_outbuf_i) nounwind {
newFuncRoot:
  br label %.preheader1.i

.preheader.i.exitStub:                            ; preds = %.preheader1.i
  ret void

.preheader1.i.loopexit:                           ; preds = %1
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.i.loopexit, %newFuncRoot
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader1.i.loopexit ] ; [#uses=4 type=i4]
  %tmp_2 = icmp eq i4 %i_2_i, -8, !dbg !195       ; [#uses=1 type=i1] [debug line = 43:9@87:4]
  %i = add i4 %i_2_i, 1, !dbg !197                ; [#uses=1 type=i4] [debug line = 43:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !156) nounwind, !dbg !197 ; [debug line = 43:61@87:4] [debug variable = i]
  br i1 %tmp_2, label %.preheader.i.exitStub, label %0, !dbg !195 ; [debug line = 43:9@87:4]

; <label>:0                                       ; preds = %.preheader1.i
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind, !dbg !198 ; [debug line = 43:67@87:4]
  %tmp_141_cast_i = zext i4 %i_2_i to i64         ; [#uses=8 type=i64]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i, i3 0) ; [#uses=1 type=i7]
  %tmp_19_cast = zext i7 %tmp_s to i8, !dbg !200  ; [#uses=1 type=i8] [debug line = 4:81@44:7@87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %col_outbuf_i}, i64 0, metadata !202) nounwind, !dbg !200 ; [debug line = 4:81@44:7@87:4] [debug variable = dst]
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_141_cast_i ; [#uses=1 type=i16*]
  br label %1, !dbg !203                          ; [debug line = 13:9@44:7@87:4]

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]             ; [#uses=4 type=i4]
  %tmp_i = icmp eq i4 %k_i, -8, !dbg !203         ; [#uses=1 type=i1] [debug line = 13:9@44:7@87:4]
  %k = add i4 %k_i, 1, !dbg !204                  ; [#uses=1 type=i4] [debug line = 13:61@44:7@87:4]
  br i1 %tmp_i, label %.preheader1.i.loopexit, label %2, !dbg !203 ; [debug line = 13:9@44:7@87:4]

; <label>:2                                       ; preds = %1
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !205 ; [debug line = 13:67@44:7@87:4]
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !205 ; [#uses=1 type=i32] [debug line = 13:67@44:7@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !206 ; [debug line = 14:1@44:7@87:4]
  %tmp_i_20 = zext i4 %k_i to i64, !dbg !207      ; [#uses=8 type=i64] [debug line = 16:48@44:7@87:4]
  %tmp_i_cast = zext i4 %k_i to i8, !dbg !208     ; [#uses=1 type=i8] [debug line = 19:7@44:7@87:4]
  %tmp_6 = add i8 %tmp_19_cast, %tmp_i_cast, !dbg !208 ; [#uses=1 type=i8] [debug line = 19:7@44:7@87:4]
  %tmp_20_cast = zext i8 %tmp_6 to i64, !dbg !208 ; [#uses=1 type=i64] [debug line = 19:7@44:7@87:4]
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_20_cast, !dbg !208 ; [#uses=1 type=i16*] [debug line = 19:7@44:7@87:4]
  %dct_coeff_table_0_ad = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_20, !dbg !207 ; [#uses=1 type=i14*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_0_lo = load i14* %dct_coeff_table_0_ad, align 2, !dbg !207 ; [#uses=1 type=i14] [debug line = 16:48@44:7@87:4]
  %coeff_cast_i = zext i14 %dct_coeff_table_0_lo to i29 ; [#uses=1 type=i29]
  %col_inbuf_0_load = load i16* %col_inbuf_0_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_cast_i = sext i16 %col_inbuf_0_load to i29, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_8_i = mul i29 %coeff_cast_i, %tmp_7_cast_i, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_1_ad = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_20, !dbg !207 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_1_lo = load i15* %dct_coeff_table_1_ad, align 2, !dbg !207 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_lo to i29 ; [#uses=1 type=i29]
  %col_inbuf_1_load = load i16* %col_inbuf_1_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_1_cast_i = sext i16 %col_inbuf_1_load to i29, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_8_1_i = mul i29 %coeff_1_cast_i, %tmp_7_1_cast_i, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_2_ad = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_20, !dbg !207 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_2_lo = load i15* %dct_coeff_table_2_ad, align 2, !dbg !207 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_lo to i29 ; [#uses=1 type=i29]
  %col_inbuf_2_load = load i16* %col_inbuf_2_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_2_cast_i = sext i16 %col_inbuf_2_load to i29, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_8_2_i = mul i29 %coeff_2_cast_i, %tmp_7_2_cast_i, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_3_ad = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_20, !dbg !207 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_3_lo = load i15* %dct_coeff_table_3_ad, align 2, !dbg !207 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_lo to i29 ; [#uses=1 type=i29]
  %col_inbuf_3_load = load i16* %col_inbuf_3_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_3_cast_i = sext i16 %col_inbuf_3_load to i29, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_8_3_i = mul i29 %coeff_3_cast_i, %tmp_7_3_cast_i, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_4_ad = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_20, !dbg !207 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_4_lo = load i15* %dct_coeff_table_4_ad, align 2, !dbg !207 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_lo to i29 ; [#uses=1 type=i29]
  %col_inbuf_4_load = load i16* %col_inbuf_4_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_4_cast_i = sext i16 %col_inbuf_4_load to i29, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_8_4_i = mul i29 %coeff_4_cast_i, %tmp_7_4_cast_i, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_5_ad = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_20, !dbg !207 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_5_lo = load i15* %dct_coeff_table_5_ad, align 2, !dbg !207 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_lo to i29 ; [#uses=1 type=i29]
  %col_inbuf_5_load = load i16* %col_inbuf_5_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_5_cast_i = sext i16 %col_inbuf_5_load to i29, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_8_5_i = mul i29 %coeff_5_cast_i, %tmp_7_5_cast_i, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_6_ad = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_20, !dbg !207 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_6_lo = load i15* %dct_coeff_table_6_ad, align 2, !dbg !207 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_lo to i29 ; [#uses=1 type=i29]
  %col_inbuf_6_load = load i16* %col_inbuf_6_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_6_cast_i = sext i16 %col_inbuf_6_load to i29, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_8_6_i = mul i29 %coeff_6_cast_i, %tmp_7_6_cast_i, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_7_ad = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_20, !dbg !207 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_7_lo = load i15* %dct_coeff_table_7_ad, align 2, !dbg !207 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_lo to i29 ; [#uses=1 type=i29]
  %col_inbuf_7_load = load i16* %col_inbuf_7_addr, align 2 ; [#uses=1 type=i16]
  %tmp_7_7_cast_i = sext i16 %col_inbuf_7_load to i29, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_8_7_i = mul i29 %coeff_7_cast_i, %tmp_7_7_cast_i, !dbg !209 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp1 = add i29 %tmp_8_1_i, %tmp_8_i, !dbg !208 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp2 = add i29 %tmp_8_3_i, %tmp_8_2_i, !dbg !208 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp = add i29 %tmp1, %tmp2, !dbg !208          ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp4 = add i29 %tmp_8_5_i, %tmp_8_4_i, !dbg !208 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp6 = add i29 %tmp_8_7_i, 4096, !dbg !208     ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp5 = add i29 %tmp_8_6_i, %tmp6, !dbg !208    ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !208         ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp_3_i = add i29 %tmp, %tmp3, !dbg !208       ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp_5_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_3_i, i32 13, i32 28), !dbg !208 ; [#uses=1 type=i16] [debug line = 19:7@44:7@87:4]
  store i16 %tmp_5_i, i16* %col_outbuf_i_addr, align 2, !dbg !208 ; [debug line = 19:7@44:7@87:4]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_2_i) nounwind, !dbg !210 ; [#uses=0 type=i32] [debug line = 20:4@44:7@87:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !211) nounwind, !dbg !204 ; [debug line = 13:61@44:7@87:4] [debug variable = k]
  br label %1, !dbg !204                          ; [debug line = 13:61@44:7@87:4]
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
!89 = metadata !{i32 80, i32 1, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 79, i32 1, metadata !21, i32 28} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct", metadata !"dct", metadata !"", metadata !21, i32 78, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 79} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !29, metadata !29}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 15, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"input", metadata !98, metadata !"short", i32 0, i32 15}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 63, i32 1}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 15, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"output", metadata !98, metadata !"short", i32 0, i32 15}
!104 = metadata !{i32 786689, metadata !91, metadata !"input", null, i32 78, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 78, i32 16, metadata !91, null}
!106 = metadata !{i32 786689, metadata !91, metadata !"output", null, i32 78, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 78, i32 38, metadata !91, null}
!108 = metadata !{i32 790529, metadata !109, metadata !"col_inbuf[0]", null, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!109 = metadata !{i32 786688, metadata !110, metadata !"col_inbuf", metadata !21, i32 27, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 786443, metadata !111, i32 25, i32 1, metadata !21, i32 5} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !21, i32 23, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 25} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{null, metadata !114, metadata !114}
!114 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ]
!115 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !116, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!116 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !21, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!117 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !116, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!118 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !116, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!119 = metadata !{i32 27, i32 109, metadata !110, metadata !120}
!120 = metadata !{i32 87, i32 4, metadata !90, null}
!121 = metadata !{i32 790529, metadata !109, metadata !"col_inbuf[1]", null, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!122 = metadata !{i32 790529, metadata !109, metadata !"col_inbuf[2]", null, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!123 = metadata !{i32 790529, metadata !109, metadata !"col_inbuf[3]", null, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!124 = metadata !{i32 790529, metadata !109, metadata !"col_inbuf[4]", null, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!125 = metadata !{i32 790529, metadata !109, metadata !"col_inbuf[5]", null, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!126 = metadata !{i32 790529, metadata !109, metadata !"col_inbuf[6]", null, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!127 = metadata !{i32 790529, metadata !109, metadata !"col_inbuf[7]", null, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!128 = metadata !{i32 790529, metadata !129, metadata !"buf_2d_in[0]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!129 = metadata !{i32 786688, metadata !90, metadata !"buf_2d_in", metadata !21, i32 81, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 81, i32 10, metadata !90, null}
!131 = metadata !{i32 790529, metadata !129, metadata !"buf_2d_in[1]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!132 = metadata !{i32 790529, metadata !129, metadata !"buf_2d_in[2]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!133 = metadata !{i32 790529, metadata !129, metadata !"buf_2d_in[3]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!134 = metadata !{i32 790529, metadata !129, metadata !"buf_2d_in[4]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!135 = metadata !{i32 790529, metadata !129, metadata !"buf_2d_in[5]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!136 = metadata !{i32 790529, metadata !129, metadata !"buf_2d_in[6]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!137 = metadata !{i32 790529, metadata !129, metadata !"buf_2d_in[7]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!138 = metadata !{i32 786688, metadata !90, metadata !"buf_2d_out", metadata !21, i32 82, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 82, i32 10, metadata !90, null}
!140 = metadata !{i32 85, i32 4, metadata !90, null}
!141 = metadata !{i32 90, i32 4, metadata !90, null}
!142 = metadata !{i32 91, i32 1, metadata !90, null}
!143 = metadata !{i32 37, i32 61, metadata !144, metadata !120}
!144 = metadata !{i32 786443, metadata !110, i32 37, i32 4, metadata !21, i32 8} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786688, metadata !110, metadata !"j", metadata !21, i32 28, metadata !146, i32 0, metadata !120} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!147 = metadata !{i32 39, i32 11, metadata !148, metadata !120}
!148 = metadata !{i32 786443, metadata !149, i32 39, i32 7, metadata !21, i32 10} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !144, i32 38, i32 1, metadata !21, i32 9} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 40, i32 1, metadata !151, metadata !120}
!151 = metadata !{i32 786443, metadata !148, i32 40, i32 1, metadata !21, i32 11} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 40, i32 2, metadata !151, metadata !120}
!153 = metadata !{i32 41, i32 1, metadata !151, metadata !120}
!154 = metadata !{i32 40, i32 34, metadata !151, metadata !120}
!155 = metadata !{i32 39, i32 63, metadata !148, metadata !120}
!156 = metadata !{i32 786688, metadata !110, metadata !"i", metadata !21, i32 28, metadata !146, i32 0, metadata !120} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 48, i32 61, metadata !158, metadata !120}
!158 = metadata !{i32 786443, metadata !110, i32 48, i32 4, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 50, i32 11, metadata !160, metadata !120}
!160 = metadata !{i32 786443, metadata !161, i32 50, i32 7, metadata !21, i32 16} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !158, i32 49, i32 1, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 51, i32 1, metadata !163, metadata !120}
!163 = metadata !{i32 786443, metadata !160, i32 51, i32 1, metadata !21, i32 17} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 51, i32 2, metadata !163, metadata !120}
!165 = metadata !{i32 52, i32 1, metadata !163, metadata !120}
!166 = metadata !{i32 51, i32 34, metadata !163, metadata !120}
!167 = metadata !{i32 50, i32 63, metadata !160, metadata !120}
!168 = metadata !{i32 32, i32 8, metadata !169, metadata !120}
!169 = metadata !{i32 786443, metadata !110, i32 32, i32 4, metadata !21, i32 6} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 32, i32 60, metadata !169, metadata !120}
!171 = metadata !{i32 32, i32 66, metadata !172, metadata !120}
!172 = metadata !{i32 786443, metadata !169, i32 32, i32 65, metadata !21, i32 7} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 4, i32 81, metadata !174, metadata !178}
!174 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !21, i32 4, metadata !175, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 5} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{null, metadata !177, metadata !177}
!177 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ]
!178 = metadata !{i32 33, i32 7, metadata !172, metadata !120}
!179 = metadata !{i32 786689, metadata !174, metadata !"dst", null, i32 4, metadata !180, i32 0, metadata !178} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !116, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!181 = metadata !{i32 13, i32 9, metadata !182, metadata !178}
!182 = metadata !{i32 786443, metadata !183, i32 13, i32 4, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 786443, metadata !174, i32 5, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 13, i32 61, metadata !182, metadata !178}
!185 = metadata !{i32 13, i32 67, metadata !186, metadata !178}
!186 = metadata !{i32 786443, metadata !182, i32 13, i32 66, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 14, i32 1, metadata !186, metadata !178}
!188 = metadata !{i32 16, i32 48, metadata !189, metadata !178}
!189 = metadata !{i32 786443, metadata !190, i32 15, i32 77, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 786443, metadata !186, i32 15, i32 7, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 19, i32 7, metadata !186, metadata !178}
!192 = metadata !{i32 17, i32 10, metadata !189, metadata !178}
!193 = metadata !{i32 20, i32 4, metadata !186, metadata !178}
!194 = metadata !{i32 786688, metadata !183, metadata !"k", metadata !21, i32 6, metadata !146, i32 0, metadata !178} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 43, i32 9, metadata !196, metadata !120}
!196 = metadata !{i32 786443, metadata !110, i32 43, i32 4, metadata !21, i32 12} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 43, i32 61, metadata !196, metadata !120}
!198 = metadata !{i32 43, i32 67, metadata !199, metadata !120}
!199 = metadata !{i32 786443, metadata !196, i32 43, i32 66, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 4, i32 81, metadata !174, metadata !201}
!201 = metadata !{i32 44, i32 7, metadata !199, metadata !120}
!202 = metadata !{i32 786689, metadata !174, metadata !"dst", null, i32 4, metadata !180, i32 0, metadata !201} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 13, i32 9, metadata !182, metadata !201}
!204 = metadata !{i32 13, i32 61, metadata !182, metadata !201}
!205 = metadata !{i32 13, i32 67, metadata !186, metadata !201}
!206 = metadata !{i32 14, i32 1, metadata !186, metadata !201}
!207 = metadata !{i32 16, i32 48, metadata !189, metadata !201}
!208 = metadata !{i32 19, i32 7, metadata !186, metadata !201}
!209 = metadata !{i32 17, i32 10, metadata !189, metadata !201}
!210 = metadata !{i32 20, i32 4, metadata !186, metadata !201}
!211 = metadata !{i32 786688, metadata !183, metadata !"k", metadata !21, i32 6, metadata !146, i32 0, metadata !201} ; [ DW_TAG_auto_variable ]
