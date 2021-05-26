; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution6/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table.7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=2 type=[8 x i14]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @write_data([8 x [8 x i16]]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf}, i64 0, metadata !56), !dbg !58 ; [debug line = 66:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !59), !dbg !63 ; [debug line = 66:116] [debug variable = output]
  br label %1, !dbg !64                           ; [debug line = 71:9]

; <label>:1                                       ; preds = %8, %0
  %r = phi i4 [ 0, %0 ], [ %r.1, %8 ]             ; [#uses=4 type=i4]
  %r.cast7 = zext i4 %r to i6, !dbg !64           ; [#uses=1 type=i6] [debug line = 71:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !64        ; [#uses=1 type=i1] [debug line = 71:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %3, !dbg !64 ; [debug line = 71:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !67 ; [debug line = 71:67]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12), !dbg !67 ; [#uses=1 type=i32] [debug line = 71:67]
  %tmp = zext i4 %r to i64, !dbg !69              ; [#uses=1 type=i64] [debug line = 74:1]
  %tmp.1 = shl i6 %r.cast7, 3, !dbg !69           ; [#uses=1 type=i6] [debug line = 74:1]
  br label %4, !dbg !72                           ; [debug line = 73:12]

; <label>:4                                       ; preds = %6, %3
  %c = phi i4 [ 0, %3 ], [ %c.1, %6 ]             ; [#uses=4 type=i4]
  %c.cast6 = zext i4 %c to i6, !dbg !72           ; [#uses=1 type=i6] [debug line = 73:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !72         ; [#uses=1 type=i1] [debug line = 73:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %6, !dbg !72   ; [debug line = 73:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str13) nounwind, !dbg !73 ; [debug line = 74:2]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str13), !dbg !73 ; [#uses=1 type=i32] [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !74 ; [debug line = 75:1]
  %tmp.3 = zext i4 %c to i64, !dbg !69            ; [#uses=1 type=i64] [debug line = 74:1]
  %buf.addr = getelementptr [8 x [8 x i16]]* %buf, i64 0, i64 %tmp, i64 %tmp.3, !dbg !69 ; [#uses=1 type=i16*] [debug line = 74:1]
  %buf.load = load i16* %buf.addr, align 2, !dbg !69 ; [#uses=1 type=i16] [debug line = 74:1]
  %tmp.4 = add i6 %c.cast6, %tmp.1, !dbg !69      ; [#uses=1 type=i6] [debug line = 74:1]
  %tmp.5 = zext i6 %tmp.4 to i64, !dbg !69        ; [#uses=1 type=i64] [debug line = 74:1]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5, !dbg !69 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %buf.load, i16* %output.addr, align 2, !dbg !69 ; [debug line = 74:1]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str13, i32 %tmp.6), !dbg !75 ; [#uses=0 type=i32] [debug line = 74:67]
  %c.1 = add i4 %c, 1, !dbg !76                   ; [#uses=1 type=i4] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !77), !dbg !76 ; [debug line = 73:64] [debug variable = c]
  br label %4, !dbg !76                           ; [debug line = 73:64]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.2), !dbg !79 ; [#uses=0 type=i32] [debug line = 75:4]
  %r.1 = add i4 %r, 1, !dbg !80                   ; [#uses=1 type=i4] [debug line = 71:61]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !81), !dbg !80 ; [debug line = 71:61] [debug variable = r]
  br label %1, !dbg !80                           ; [debug line = 71:61]

; <label>:10                                      ; preds = %1
  ret void, !dbg !82                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %"buf[0]", [8 x i16]* nocapture %"buf[1]", [8 x i16]* nocapture %"buf[2]", [8 x i16]* nocapture %"buf[3]", [8 x i16]* nocapture %"buf[4]", [8 x i16]* nocapture %"buf[5]", [8 x i16]* nocapture %"buf[6]", [8 x i16]* nocapture %"buf[7]") {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !83), !dbg !84 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[0]"}, i64 0, metadata !85), !dbg !88 ; [debug line = 54:44] [debug variable = buf[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[1]"}, i64 0, metadata !89), !dbg !88 ; [debug line = 54:44] [debug variable = buf[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[2]"}, i64 0, metadata !90), !dbg !88 ; [debug line = 54:44] [debug variable = buf[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[3]"}, i64 0, metadata !91), !dbg !88 ; [debug line = 54:44] [debug variable = buf[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[4]"}, i64 0, metadata !92), !dbg !88 ; [debug line = 54:44] [debug variable = buf[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[5]"}, i64 0, metadata !93), !dbg !88 ; [debug line = 54:44] [debug variable = buf[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[6]"}, i64 0, metadata !94), !dbg !88 ; [debug line = 54:44] [debug variable = buf[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[7]"}, i64 0, metadata !95), !dbg !88 ; [debug line = 54:44] [debug variable = buf[7]]
  br label %1, !dbg !96                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %9, %0
  %r = phi i4 [ 0, %0 ], [ %r.2, %9 ]             ; [#uses=4 type=i4]
  %r.cast = zext i4 %r to i6, !dbg !96            ; [#uses=1 type=i6] [debug line = 59:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !96        ; [#uses=1 type=i1] [debug line = 59:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %11, label %3, !dbg !96 ; [debug line = 59:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !99 ; [debug line = 59:67]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10), !dbg !99 ; [#uses=1 type=i32] [debug line = 59:67]
  %tmp = shl i6 %r.cast, 3, !dbg !101             ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp.7 = zext i4 %r to i64, !dbg !101           ; [#uses=8 type=i64] [debug line = 62:1]
  %"buf[0].addr" = getelementptr [8 x i16]* %"buf[0]", i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[1].addr" = getelementptr [8 x i16]* %"buf[1]", i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[2].addr" = getelementptr [8 x i16]* %"buf[2]", i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[3].addr" = getelementptr [8 x i16]* %"buf[3]", i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[4].addr" = getelementptr [8 x i16]* %"buf[4]", i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[5].addr" = getelementptr [8 x i16]* %"buf[5]", i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[6].addr" = getelementptr [8 x i16]* %"buf[6]", i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[7].addr" = getelementptr [8 x i16]* %"buf[7]", i64 0, i64 %tmp.7, !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  br label %4, !dbg !104                          ; [debug line = 61:12]

; <label>:4                                       ; preds = %7, %3
  %c = phi i4 [ 0, %3 ], [ %c.2, %7 ]             ; [#uses=4 type=i4]
  %c.cast = zext i4 %c to i6, !dbg !104           ; [#uses=1 type=i6] [debug line = 61:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !104        ; [#uses=1 type=i1] [debug line = 61:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %9, label %6, !dbg !104  ; [debug line = 61:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !105 ; [debug line = 62:2]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str11), !dbg !105 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !106 ; [debug line = 63:1]
  %tmp.9 = add i6 %c.cast, %tmp, !dbg !101        ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp. = zext i6 %tmp.9 to i64, !dbg !101        ; [#uses=1 type=i64] [debug line = 62:1]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp., !dbg !101 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input.load = load i16* %input.addr, align 2, !dbg !101 ; [#uses=8 type=i16] [debug line = 62:1]
  %c.t = trunc i4 %c to i3                        ; [#uses=1 type=i3]
  switch i3 %c.t, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !101                                    ; [debug line = 62:1]

; <label>:7                                       ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str11, i32 %tmp.1), !dbg !107 ; [#uses=0 type=i32] [debug line = 62:66]
  %c.2 = add i4 %c, 1, !dbg !108                  ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c.2}, i64 0, metadata !109), !dbg !108 ; [debug line = 61:64] [debug variable = c]
  br label %4, !dbg !108                          ; [debug line = 61:64]

; <label>:9                                       ; preds = %4
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.8), !dbg !110 ; [#uses=0 type=i32] [debug line = 63:4]
  %r.2 = add i4 %r, 1, !dbg !111                  ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r.2}, i64 0, metadata !112), !dbg !111 ; [debug line = 59:61] [debug variable = r]
  br label %1, !dbg !111                          ; [debug line = 59:61]

; <label>:11                                      ; preds = %1
  ret void, !dbg !113                             ; [debug line = 64:1]

branch0:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[0].addr", align 2, !dbg !101 ; [debug line = 62:1]
  br label %7, !dbg !101                          ; [debug line = 62:1]

branch1:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[1].addr", align 2, !dbg !101 ; [debug line = 62:1]
  br label %7, !dbg !101                          ; [debug line = 62:1]

branch2:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[2].addr", align 2, !dbg !101 ; [debug line = 62:1]
  br label %7, !dbg !101                          ; [debug line = 62:1]

branch3:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[3].addr", align 2, !dbg !101 ; [debug line = 62:1]
  br label %7, !dbg !101                          ; [debug line = 62:1]

branch4:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[4].addr", align 2, !dbg !101 ; [debug line = 62:1]
  br label %7, !dbg !101                          ; [debug line = 62:1]

branch5:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[5].addr", align 2, !dbg !101 ; [debug line = 62:1]
  br label %7, !dbg !101                          ; [debug line = 62:1]

branch6:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[6].addr", align 2, !dbg !101 ; [debug line = 62:1]
  br label %7, !dbg !101                          ; [debug line = 62:1]

branch7:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[7].addr", align 2, !dbg !101 ; [debug line = 62:1]
  br label %7, !dbg !101                          ; [debug line = 62:1]
}

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str1) nounwind, !dbg !114 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !116
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !122
  %row_outbuf.i = alloca [8 x [8 x i16]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf.i = alloca [8 x [8 x i16]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
  %"col_inbuf[0]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[1]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[2]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[3]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[4]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[5]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[6]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[7]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %"buf_2d_in[0]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[1]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[2]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[3]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[4]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[5]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[6]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[7]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !126), !dbg !127 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !128), !dbg !129 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[0]"}, metadata !130), !dbg !135 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[1]"}, metadata !137), !dbg !135 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[2]"}, metadata !138), !dbg !135 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[3]"}, metadata !139), !dbg !135 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[4]"}, metadata !140), !dbg !135 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[5]"}, metadata !141), !dbg !135 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[6]"}, metadata !142), !dbg !135 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[7]"}, metadata !143), !dbg !135 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[7]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[0]"}, metadata !144), !dbg !146 ; [debug line = 81:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[1]"}, metadata !147), !dbg !146 ; [debug line = 81:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[2]"}, metadata !148), !dbg !146 ; [debug line = 81:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[3]"}, metadata !149), !dbg !146 ; [debug line = 81:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[4]"}, metadata !150), !dbg !146 ; [debug line = 81:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[5]"}, metadata !151), !dbg !146 ; [debug line = 81:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[6]"}, metadata !152), !dbg !146 ; [debug line = 81:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[7]"}, metadata !153), !dbg !146 ; [debug line = 81:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !154), !dbg !155 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* %input, [8 x i16]* %"buf_2d_in[0]", [8 x i16]* %"buf_2d_in[1]", [8 x i16]* %"buf_2d_in[2]", [8 x i16]* %"buf_2d_in[3]", [8 x i16]* %"buf_2d_in[4]", [8 x i16]* %"buf_2d_in[5]", [8 x i16]* %"buf_2d_in[6]", [8 x i16]* %"buf_2d_in[7]") nounwind, !dbg !156 ; [debug line = 85:4]
  call fastcc void @Loop_Row_DCT_Loop_proc([8 x i16]* %"buf_2d_in[0]", [8 x i16]* %"buf_2d_in[1]", [8 x i16]* %"buf_2d_in[2]", [8 x i16]* %"buf_2d_in[3]", [8 x i16]* %"buf_2d_in[4]", [8 x i16]* %"buf_2d_in[5]", [8 x i16]* %"buf_2d_in[6]", [8 x i16]* %"buf_2d_in[7]", [8 x [8 x i16]]* %row_outbuf.i)
  call fastcc void @Loop_Xpose_Row_Outer_Loop_proc([8 x [8 x i16]]* %row_outbuf.i, [8 x i16]* %"col_inbuf[0]", [8 x i16]* %"col_inbuf[1]", [8 x i16]* %"col_inbuf[2]", [8 x i16]* %"col_inbuf[3]", [8 x i16]* %"col_inbuf[4]", [8 x i16]* %"col_inbuf[5]", [8 x i16]* %"col_inbuf[6]", [8 x i16]* %"col_inbuf[7]")
  call fastcc void @Loop_Col_DCT_Loop_proc([8 x i16]* %"col_inbuf[0]", [8 x i16]* %"col_inbuf[1]", [8 x i16]* %"col_inbuf[2]", [8 x i16]* %"col_inbuf[3]", [8 x i16]* %"col_inbuf[4]", [8 x i16]* %"col_inbuf[5]", [8 x i16]* %"col_inbuf[6]", [8 x i16]* %"col_inbuf[7]", [8 x [8 x i16]]* %col_outbuf.i)
  call fastcc void @Loop_Xpose_Col_Outer_Loop_proc([8 x [8 x i16]]* %col_outbuf.i, [8 x [8 x i16]]* %buf_2d_out)
  call fastcc void @write_data([8 x [8 x i16]]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !157 ; [debug line = 90:4]
  ret void, !dbg !158                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=12]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=12]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=4]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=1]
define internal fastcc void @Loop_Xpose_Row_Outer_Loop_proc([8 x [8 x i16]]* nocapture %row_outbuf.i, [8 x i16]* nocapture %"col_inbuf[0]", [8 x i16]* nocapture %"col_inbuf[1]", [8 x i16]* nocapture %"col_inbuf[2]", [8 x i16]* nocapture %"col_inbuf[3]", [8 x i16]* nocapture %"col_inbuf[4]", [8 x i16]* nocapture %"col_inbuf[5]", [8 x i16]* nocapture %"col_inbuf[6]", [8 x i16]* nocapture %"col_inbuf[7]") nounwind {
newFuncRoot:
  br label %.preheader2.i

.preheader1.i.exitStub:                           ; preds = %.preheader2.i
  ret void

.preheader2.i:                                    ; preds = %1, %newFuncRoot
  %j.0.i = phi i4 [ %j, %1 ], [ 0, %newFuncRoot ] ; [#uses=3 type=i4]
  %tmp.1 = icmp eq i4 %j.0.i, -8, !dbg !159       ; [#uses=1 type=i1] [debug line = 37:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1, label %.preheader1.i.exitStub, label %5, !dbg !159 ; [debug line = 37:9@87:4]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str5, i32 %tmp.) nounwind, !dbg !161 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %j = add i4 %j.0.i, 1, !dbg !164                ; [#uses=1 type=i4] [debug line = 37:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !165) nounwind, !dbg !164 ; [debug line = 37:61@87:4] [debug variable = j]
  br label %.preheader2.i, !dbg !164              ; [debug line = 37:61@87:4]

; <label>:3                                       ; preds = %6, %5
  %i.1.i = phi i4 [ 0, %5 ], [ %i, %6 ]           ; [#uses=4 type=i4]
  %tmp.6 = icmp eq i4 %i.1.i, -8, !dbg !167       ; [#uses=1 type=i1] [debug line = 39:11@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.6, label %1, label %8, !dbg !167     ; [debug line = 39:11@87:4]

; <label>:5                                       ; preds = %.preheader2.i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str5) nounwind, !dbg !168 ; [debug line = 38:1@87:4]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str5) nounwind, !dbg !168 ; [#uses=1 type=i32] [debug line = 38:1@87:4]
  %tmp.3 = zext i4 %j.0.i to i64, !dbg !169       ; [#uses=9 type=i64] [debug line = 40:1@87:4]
  %"col_inbuf[0].addr" = getelementptr [8 x i16]* %"col_inbuf[0]", i64 0, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[1].addr" = getelementptr [8 x i16]* %"col_inbuf[1]", i64 0, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[2].addr" = getelementptr [8 x i16]* %"col_inbuf[2]", i64 0, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[3].addr" = getelementptr [8 x i16]* %"col_inbuf[3]", i64 0, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[4].addr" = getelementptr [8 x i16]* %"col_inbuf[4]", i64 0, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[5].addr" = getelementptr [8 x i16]* %"col_inbuf[5]", i64 0, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[6].addr" = getelementptr [8 x i16]* %"col_inbuf[6]", i64 0, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[7].addr" = getelementptr [8 x i16]* %"col_inbuf[7]", i64 0, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  br label %3, !dbg !167                          ; [debug line = 39:11@87:4]

; <label>:6                                       ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str6, i32 %tmp.2) nounwind, !dbg !171 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %i = add i4 %i.1.i, 1, !dbg !172                ; [#uses=1 type=i4] [debug line = 39:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !173) nounwind, !dbg !172 ; [debug line = 39:63@87:4] [debug variable = i]
  br label %3, !dbg !172                          ; [debug line = 39:63@87:4]

branch0:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[0].addr", align 2, !dbg !169 ; [debug line = 40:1@87:4]
  br label %6, !dbg !169                          ; [debug line = 40:1@87:4]

; <label>:8                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str6) nounwind, !dbg !174 ; [debug line = 40:2@87:4]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str6) nounwind, !dbg !174 ; [#uses=1 type=i32] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !175 ; [debug line = 41:1@87:4]
  %tmp.8 = zext i4 %i.1.i to i64, !dbg !169       ; [#uses=1 type=i64] [debug line = 40:1@87:4]
  %row_outbuf.i.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf.i, i64 0, i64 %tmp.8, i64 %tmp.3, !dbg !169 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %row_outbuf.i.load = load i16* %row_outbuf.i.addr, align 2, !dbg !169 ; [#uses=8 type=i16] [debug line = 40:1@87:4]
  %i.1.i.t = trunc i4 %i.1.i to i3                ; [#uses=1 type=i3]
  switch i3 %i.1.i.t, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !169                                    ; [debug line = 40:1@87:4]

branch1:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[1].addr", align 2, !dbg !169 ; [debug line = 40:1@87:4]
  br label %6, !dbg !169                          ; [debug line = 40:1@87:4]

branch2:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[2].addr", align 2, !dbg !169 ; [debug line = 40:1@87:4]
  br label %6, !dbg !169                          ; [debug line = 40:1@87:4]

branch3:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[3].addr", align 2, !dbg !169 ; [debug line = 40:1@87:4]
  br label %6, !dbg !169                          ; [debug line = 40:1@87:4]

branch4:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[4].addr", align 2, !dbg !169 ; [debug line = 40:1@87:4]
  br label %6, !dbg !169                          ; [debug line = 40:1@87:4]

branch5:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[5].addr", align 2, !dbg !169 ; [debug line = 40:1@87:4]
  br label %6, !dbg !169                          ; [debug line = 40:1@87:4]

branch6:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[6].addr", align 2, !dbg !169 ; [debug line = 40:1@87:4]
  br label %6, !dbg !169                          ; [debug line = 40:1@87:4]

branch7:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[7].addr", align 2, !dbg !169 ; [debug line = 40:1@87:4]
  br label %6, !dbg !169                          ; [debug line = 40:1@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Xpose_Col_Outer_Loop_proc([8 x [8 x i16]]* nocapture %col_outbuf.i, [8 x [8 x i16]]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %.preheader.i

dct_2d.exit.exitStub:                             ; preds = %.preheader.i
  ret void

.preheader.i:                                     ; preds = %1, %newFuncRoot
  %j.1.i = phi i4 [ %j, %1 ], [ 0, %newFuncRoot ] ; [#uses=3 type=i4]
  %tmp.4 = icmp eq i4 %j.1.i, -8, !dbg !176       ; [#uses=1 type=i1] [debug line = 48:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.4, label %dct_2d.exit.exitStub, label %5, !dbg !176 ; [debug line = 48:9@87:4]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str8, i32 %tmp.) nounwind, !dbg !178 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %j = add i4 %j.1.i, 1, !dbg !181                ; [#uses=1 type=i4] [debug line = 48:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !165) nounwind, !dbg !181 ; [debug line = 48:61@87:4] [debug variable = j]
  br label %.preheader.i, !dbg !181               ; [debug line = 48:61@87:4]

; <label>:3                                       ; preds = %6, %5
  %i.3.i = phi i4 [ 0, %5 ], [ %i, %6 ]           ; [#uses=3 type=i4]
  %tmp.9 = icmp eq i4 %i.3.i, -8, !dbg !182       ; [#uses=1 type=i1] [debug line = 50:11@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.9, label %1, label %6, !dbg !182     ; [debug line = 50:11@87:4]

; <label>:5                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str8) nounwind, !dbg !183 ; [debug line = 49:1@87:4]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str8) nounwind, !dbg !183 ; [#uses=1 type=i32] [debug line = 49:1@87:4]
  %tmp.7 = zext i4 %j.1.i to i64, !dbg !184       ; [#uses=2 type=i64] [debug line = 51:1@87:4]
  br label %3, !dbg !182                          ; [debug line = 50:11@87:4]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str9) nounwind, !dbg !186 ; [debug line = 51:2@87:4]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str9) nounwind, !dbg !186 ; [#uses=1 type=i32] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !187 ; [debug line = 52:1@87:4]
  %tmp.5 = zext i4 %i.3.i to i64, !dbg !184       ; [#uses=2 type=i64] [debug line = 51:1@87:4]
  %col_outbuf.i.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf.i, i64 0, i64 %tmp.5, i64 %tmp.7, !dbg !184 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %col_outbuf.i.load = load i16* %col_outbuf.i.addr, align 2, !dbg !184 ; [#uses=1 type=i16] [debug line = 51:1@87:4]
  %buf_2d_out.addr = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.7, i64 %tmp.5, !dbg !184 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  store i16 %col_outbuf.i.load, i16* %buf_2d_out.addr, align 2, !dbg !184 ; [debug line = 51:1@87:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str9, i32 %tmp.3) nounwind, !dbg !188 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %i = add i4 %i.3.i, 1, !dbg !189                ; [#uses=1 type=i4] [debug line = 50:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !173) nounwind, !dbg !189 ; [debug line = 50:63@87:4] [debug variable = i]
  br label %3, !dbg !189                          ; [debug line = 50:63@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Row_DCT_Loop_proc([8 x i16]* nocapture %"buf_2d_in[0]", [8 x i16]* nocapture %"buf_2d_in[1]", [8 x i16]* nocapture %"buf_2d_in[2]", [8 x i16]* nocapture %"buf_2d_in[3]", [8 x i16]* nocapture %"buf_2d_in[4]", [8 x i16]* nocapture %"buf_2d_in[5]", [8 x i16]* nocapture %"buf_2d_in[6]", [8 x i16]* nocapture %"buf_2d_in[7]", [8 x [8 x i16]]* nocapture %row_outbuf.i) nounwind {
newFuncRoot:
  br label %0, !dbg !190                          ; [debug line = 32:8@87:4]

.preheader2.i.exitStub:                           ; preds = %0
  ret void

; <label>:0                                       ; preds = %dct_1d.exit, %newFuncRoot
  %i.0.i = phi i4 [ 0, %newFuncRoot ], [ %i, %dct_1d.exit ] ; [#uses=6 type=i4]
  %tmp = icmp eq i4 %i.0.i, -8, !dbg !190         ; [#uses=1 type=i1] [debug line = 32:8@87:4]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader2.i.exitStub, label %2, !dbg !190 ; [debug line = 32:8@87:4]

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str4) nounwind, !dbg !192 ; [debug line = 32:66@87:4]
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.0.i) nounwind, !hlsrange !194
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.0.i) nounwind, !hlsrange !194
  %tmp.141.cast.i = zext i4 %i.0.i to i64         ; [#uses=1 type=i64]
  %tmp.14.cast.i = zext i4 %i.0.i to i64          ; [#uses=8 type=i64]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %row_outbuf.i}, i64 0, metadata !195) nounwind, !dbg !198 ; [debug line = 4:81@33:7@87:4] [debug variable = dst]
  br label %3, !dbg !199                          ; [debug line = 13:9@33:7@87:4]

; <label>:3                                       ; preds = %5, %2
  %k.i = phi i4 [ 0, %2 ], [ %k, %5 ]             ; [#uses=3 type=i4]
  %tmp.i = icmp eq i4 %k.i, -8, !dbg !199         ; [#uses=1 type=i1] [debug line = 13:9@33:7@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %dct_1d.exit, label %5, !dbg !199 ; [debug line = 13:9@33:7@87:4]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !202 ; [debug line = 13:67@33:7@87:4]
  %tmp.2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !202 ; [#uses=1 type=i32] [debug line = 13:67@33:7@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !204 ; [debug line = 14:1@33:7@87:4]
  %tmp..i = zext i4 %k.i to i64, !dbg !205        ; [#uses=9 type=i64] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.0.addr = getelementptr [8 x i14]* @dct_coeff_table.0, i64 0, i64 %tmp..i, !dbg !205 ; [#uses=1 type=i14*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.0.load = load i14* %dct_coeff_table.0.addr, align 2, !dbg !205 ; [#uses=1 type=i14] [debug line = 16:48@33:7@87:4]
  %coeff.cast.i = zext i14 %dct_coeff_table.0.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[0].addr" = getelementptr [8 x i16]* %"buf_2d_in[0]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[0].load" = load i16* %"buf_2d_in[0].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.cast.i = sext i16 %"buf_2d_in[0].load" to i29, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.8.i = mul i29 %coeff.cast.i, %tmp.7.cast.i, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.1.addr = getelementptr [8 x i15]* @dct_coeff_table.1, i64 0, i64 %tmp..i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.1.load = load i15* %dct_coeff_table.1.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.1.cast.i = sext i15 %dct_coeff_table.1.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[1].addr" = getelementptr [8 x i16]* %"buf_2d_in[1]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[1].load" = load i16* %"buf_2d_in[1].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.1.cast.i = sext i16 %"buf_2d_in[1].load" to i29, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.8.1.i = mul i29 %coeff.1.cast.i, %tmp.7.1.cast.i, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.2.addr = getelementptr [8 x i15]* @dct_coeff_table.2, i64 0, i64 %tmp..i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.2.load = load i15* %dct_coeff_table.2.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.2.cast.i = sext i15 %dct_coeff_table.2.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[2].addr" = getelementptr [8 x i16]* %"buf_2d_in[2]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[2].load" = load i16* %"buf_2d_in[2].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.2.cast.i = sext i16 %"buf_2d_in[2].load" to i29, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.8.2.i = mul i29 %coeff.2.cast.i, %tmp.7.2.cast.i, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.3.addr = getelementptr [8 x i15]* @dct_coeff_table.3, i64 0, i64 %tmp..i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.3.load = load i15* %dct_coeff_table.3.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.3.cast.i = sext i15 %dct_coeff_table.3.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[3].addr" = getelementptr [8 x i16]* %"buf_2d_in[3]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[3].load" = load i16* %"buf_2d_in[3].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.3.cast.i = sext i16 %"buf_2d_in[3].load" to i29, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.8.3.i = mul i29 %coeff.3.cast.i, %tmp.7.3.cast.i, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.4.addr = getelementptr [8 x i15]* @dct_coeff_table.4, i64 0, i64 %tmp..i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.4.load = load i15* %dct_coeff_table.4.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.4.cast.i = sext i15 %dct_coeff_table.4.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[4].addr" = getelementptr [8 x i16]* %"buf_2d_in[4]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[4].load" = load i16* %"buf_2d_in[4].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.4.cast.i = sext i16 %"buf_2d_in[4].load" to i29, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.8.4.i = mul i29 %coeff.4.cast.i, %tmp.7.4.cast.i, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.5.addr = getelementptr [8 x i15]* @dct_coeff_table.5, i64 0, i64 %tmp..i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.5.load = load i15* %dct_coeff_table.5.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.5.cast.i = sext i15 %dct_coeff_table.5.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[5].addr" = getelementptr [8 x i16]* %"buf_2d_in[5]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[5].load" = load i16* %"buf_2d_in[5].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.5.cast.i = sext i16 %"buf_2d_in[5].load" to i29, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.8.5.i = mul i29 %coeff.5.cast.i, %tmp.7.5.cast.i, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.6.addr = getelementptr [8 x i15]* @dct_coeff_table.6, i64 0, i64 %tmp..i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.6.load = load i15* %dct_coeff_table.6.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.6.cast.i = sext i15 %dct_coeff_table.6.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[6].addr" = getelementptr [8 x i16]* %"buf_2d_in[6]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[6].load" = load i16* %"buf_2d_in[6].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.6.cast.i = sext i16 %"buf_2d_in[6].load" to i29, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.8.6.i = mul i29 %coeff.6.cast.i, %tmp.7.6.cast.i, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.7.addr = getelementptr [8 x i15]* @dct_coeff_table.7, i64 0, i64 %tmp..i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.7.load = load i15* %dct_coeff_table.7.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.7.cast.i = sext i15 %dct_coeff_table.7.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[7].addr" = getelementptr [8 x i16]* %"buf_2d_in[7]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[7].load" = load i16* %"buf_2d_in[7].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.7.cast.i = sext i16 %"buf_2d_in[7].load" to i29, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.8.7.i = mul i29 %coeff.7.cast.i, %tmp.7.7.cast.i, !dbg !208 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp2 = add i29 %tmp.8.1.i, %tmp.8.i, !dbg !209 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp3 = add i29 %tmp.8.3.i, %tmp.8.2.i, !dbg !209 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !209         ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp5 = add i29 %tmp.8.5.i, %tmp.8.4.i, !dbg !209 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp7 = add i29 %tmp.8.7.i, 4096, !dbg !209     ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp6 = add i29 %tmp.8.6.i, %tmp7, !dbg !209    ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !209         ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp.3.i = add i29 %tmp1, %tmp4, !dbg !209      ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp.4.i = lshr i29 %tmp.3.i, 13, !dbg !209     ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp.5.i = trunc i29 %tmp.4.i to i16, !dbg !209 ; [#uses=1 type=i16] [debug line = 19:7@33:7@87:4]
  %row_outbuf.i.addr = getelementptr [8 x [8 x i16]]* %row_outbuf.i, i64 0, i64 %tmp.141.cast.i, i64 %tmp..i, !dbg !209 ; [#uses=1 type=i16*] [debug line = 19:7@33:7@87:4]
  store i16 %tmp.5.i, i16* %row_outbuf.i.addr, align 2, !dbg !209 ; [debug line = 19:7@33:7@87:4]
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.2.i) nounwind, !dbg !210 ; [#uses=0 type=i32] [debug line = 20:4@33:7@87:4]
  %k = add i4 %k.i, 1, !dbg !211                  ; [#uses=1 type=i4] [debug line = 13:61@33:7@87:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !212) nounwind, !dbg !211 ; [debug line = 13:61@33:7@87:4] [debug variable = k]
  br label %3, !dbg !211                          ; [debug line = 13:61@33:7@87:4]

dct_1d.exit:                                      ; preds = %3
  %i = add i4 %i.0.i, 1, !dbg !213                ; [#uses=1 type=i4] [debug line = 32:60@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !173) nounwind, !dbg !213 ; [debug line = 32:60@87:4] [debug variable = i]
  br label %0, !dbg !213                          ; [debug line = 32:60@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Col_DCT_Loop_proc([8 x i16]* nocapture %"col_inbuf[0]", [8 x i16]* nocapture %"col_inbuf[1]", [8 x i16]* nocapture %"col_inbuf[2]", [8 x i16]* nocapture %"col_inbuf[3]", [8 x i16]* nocapture %"col_inbuf[4]", [8 x i16]* nocapture %"col_inbuf[5]", [8 x i16]* nocapture %"col_inbuf[6]", [8 x i16]* nocapture %"col_inbuf[7]", [8 x [8 x i16]]* nocapture %col_outbuf.i) nounwind {
newFuncRoot:
  br label %.preheader1.i

.preheader.i.exitStub:                            ; preds = %.preheader1.i
  ret void

.preheader1.i:                                    ; preds = %dct_1d.exit, %newFuncRoot
  %i.2.i = phi i4 [ %i, %dct_1d.exit ], [ 0, %newFuncRoot ] ; [#uses=6 type=i4]
  %tmp.2 = icmp eq i4 %i.2.i, -8, !dbg !214       ; [#uses=1 type=i1] [debug line = 43:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.2, label %.preheader.i.exitStub, label %1, !dbg !214 ; [debug line = 43:9@87:4]

; <label>:1                                       ; preds = %.preheader1.i
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str7) nounwind, !dbg !216 ; [debug line = 43:67@87:4]
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.2.i) nounwind, !hlsrange !194
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.2.i) nounwind, !hlsrange !194
  %tmp.141.cast.i = zext i4 %i.2.i to i64         ; [#uses=1 type=i64]
  %tmp.14.cast.i = zext i4 %i.2.i to i64          ; [#uses=8 type=i64]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %col_outbuf.i}, i64 0, metadata !218) nounwind, !dbg !220 ; [debug line = 4:81@44:7@87:4] [debug variable = dst]
  br label %2, !dbg !221                          ; [debug line = 13:9@44:7@87:4]

; <label>:2                                       ; preds = %4, %1
  %k.i = phi i4 [ 0, %1 ], [ %k, %4 ]             ; [#uses=3 type=i4]
  %tmp.i = icmp eq i4 %k.i, -8, !dbg !221         ; [#uses=1 type=i1] [debug line = 13:9@44:7@87:4]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %dct_1d.exit, label %4, !dbg !221 ; [debug line = 13:9@44:7@87:4]

; <label>:4                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !222 ; [debug line = 13:67@44:7@87:4]
  %tmp.2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !222 ; [#uses=1 type=i32] [debug line = 13:67@44:7@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !223 ; [debug line = 14:1@44:7@87:4]
  %tmp..i = zext i4 %k.i to i64, !dbg !224        ; [#uses=9 type=i64] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.0.addr = getelementptr [8 x i14]* @dct_coeff_table.0, i64 0, i64 %tmp..i, !dbg !224 ; [#uses=1 type=i14*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.0.load = load i14* %dct_coeff_table.0.addr, align 2, !dbg !224 ; [#uses=1 type=i14] [debug line = 16:48@44:7@87:4]
  %coeff.cast.i = zext i14 %dct_coeff_table.0.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[0].addr" = getelementptr [8 x i16]* %"col_inbuf[0]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[0].load" = load i16* %"col_inbuf[0].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.cast.i = sext i16 %"col_inbuf[0].load" to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.8.i = mul i29 %coeff.cast.i, %tmp.7.cast.i, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.1.addr = getelementptr [8 x i15]* @dct_coeff_table.1, i64 0, i64 %tmp..i, !dbg !224 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.1.load = load i15* %dct_coeff_table.1.addr, align 2, !dbg !224 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.1.cast.i = sext i15 %dct_coeff_table.1.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[1].addr" = getelementptr [8 x i16]* %"col_inbuf[1]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[1].load" = load i16* %"col_inbuf[1].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.1.cast.i = sext i16 %"col_inbuf[1].load" to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.8.1.i = mul i29 %coeff.1.cast.i, %tmp.7.1.cast.i, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.2.addr = getelementptr [8 x i15]* @dct_coeff_table.2, i64 0, i64 %tmp..i, !dbg !224 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.2.load = load i15* %dct_coeff_table.2.addr, align 2, !dbg !224 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.2.cast.i = sext i15 %dct_coeff_table.2.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[2].addr" = getelementptr [8 x i16]* %"col_inbuf[2]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[2].load" = load i16* %"col_inbuf[2].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.2.cast.i = sext i16 %"col_inbuf[2].load" to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.8.2.i = mul i29 %coeff.2.cast.i, %tmp.7.2.cast.i, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.3.addr = getelementptr [8 x i15]* @dct_coeff_table.3, i64 0, i64 %tmp..i, !dbg !224 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.3.load = load i15* %dct_coeff_table.3.addr, align 2, !dbg !224 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.3.cast.i = sext i15 %dct_coeff_table.3.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[3].addr" = getelementptr [8 x i16]* %"col_inbuf[3]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[3].load" = load i16* %"col_inbuf[3].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.3.cast.i = sext i16 %"col_inbuf[3].load" to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.8.3.i = mul i29 %coeff.3.cast.i, %tmp.7.3.cast.i, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.4.addr = getelementptr [8 x i15]* @dct_coeff_table.4, i64 0, i64 %tmp..i, !dbg !224 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.4.load = load i15* %dct_coeff_table.4.addr, align 2, !dbg !224 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.4.cast.i = sext i15 %dct_coeff_table.4.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[4].addr" = getelementptr [8 x i16]* %"col_inbuf[4]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[4].load" = load i16* %"col_inbuf[4].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.4.cast.i = sext i16 %"col_inbuf[4].load" to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.8.4.i = mul i29 %coeff.4.cast.i, %tmp.7.4.cast.i, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.5.addr = getelementptr [8 x i15]* @dct_coeff_table.5, i64 0, i64 %tmp..i, !dbg !224 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.5.load = load i15* %dct_coeff_table.5.addr, align 2, !dbg !224 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.5.cast.i = sext i15 %dct_coeff_table.5.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[5].addr" = getelementptr [8 x i16]* %"col_inbuf[5]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[5].load" = load i16* %"col_inbuf[5].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.5.cast.i = sext i16 %"col_inbuf[5].load" to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.8.5.i = mul i29 %coeff.5.cast.i, %tmp.7.5.cast.i, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.6.addr = getelementptr [8 x i15]* @dct_coeff_table.6, i64 0, i64 %tmp..i, !dbg !224 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.6.load = load i15* %dct_coeff_table.6.addr, align 2, !dbg !224 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.6.cast.i = sext i15 %dct_coeff_table.6.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[6].addr" = getelementptr [8 x i16]* %"col_inbuf[6]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[6].load" = load i16* %"col_inbuf[6].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.6.cast.i = sext i16 %"col_inbuf[6].load" to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.8.6.i = mul i29 %coeff.6.cast.i, %tmp.7.6.cast.i, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.7.addr = getelementptr [8 x i15]* @dct_coeff_table.7, i64 0, i64 %tmp..i, !dbg !224 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.7.load = load i15* %dct_coeff_table.7.addr, align 2, !dbg !224 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.7.cast.i = sext i15 %dct_coeff_table.7.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[7].addr" = getelementptr [8 x i16]* %"col_inbuf[7]", i64 0, i64 %tmp.14.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[7].load" = load i16* %"col_inbuf[7].addr", align 2 ; [#uses=1 type=i16]
  %tmp.7.7.cast.i = sext i16 %"col_inbuf[7].load" to i29, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.8.7.i = mul i29 %coeff.7.cast.i, %tmp.7.7.cast.i, !dbg !225 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp1 = add i29 %tmp.8.1.i, %tmp.8.i, !dbg !226 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp2 = add i29 %tmp.8.3.i, %tmp.8.2.i, !dbg !226 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp = add i29 %tmp1, %tmp2, !dbg !226          ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp4 = add i29 %tmp.8.5.i, %tmp.8.4.i, !dbg !226 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp6 = add i29 %tmp.8.7.i, 4096, !dbg !226     ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp5 = add i29 %tmp.8.6.i, %tmp6, !dbg !226    ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !226         ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp.3.i = add i29 %tmp, %tmp3, !dbg !226       ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp.4.i = lshr i29 %tmp.3.i, 13, !dbg !226     ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp.5.i = trunc i29 %tmp.4.i to i16, !dbg !226 ; [#uses=1 type=i16] [debug line = 19:7@44:7@87:4]
  %col_outbuf.i.addr = getelementptr [8 x [8 x i16]]* %col_outbuf.i, i64 0, i64 %tmp.141.cast.i, i64 %tmp..i, !dbg !226 ; [#uses=1 type=i16*] [debug line = 19:7@44:7@87:4]
  store i16 %tmp.5.i, i16* %col_outbuf.i.addr, align 2, !dbg !226 ; [debug line = 19:7@44:7@87:4]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.2.i) nounwind, !dbg !227 ; [#uses=0 type=i32] [debug line = 20:4@44:7@87:4]
  %k = add i4 %k.i, 1, !dbg !228                  ; [#uses=1 type=i4] [debug line = 13:61@44:7@87:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !229) nounwind, !dbg !228 ; [debug line = 13:61@44:7@87:4] [debug variable = k]
  br label %2, !dbg !228                          ; [debug line = 13:61@44:7@87:4]

dct_1d.exit:                                      ; preds = %2
  %i = add i4 %i.2.i, 1, !dbg !230                ; [#uses=1 type=i4] [debug line = 43:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !173) nounwind, !dbg !230 ; [debug line = 43:61@87:4] [debug variable = i]
  br label %.preheader1.i, !dbg !230              ; [debug line = 43:61@87:4]
}

!opencl.kernels = !{!0, !7, !10, !13, !16}
!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!19}
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
!19 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution6/.autopilot/db/dct.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !20, metadata !20, metadata !21, metadata !50} ; [ DW_TAG_compile_unit ]
!20 = metadata !{i32 0}
!21 = metadata !{metadata !22, metadata !31, metadata !38, metadata !44, metadata !47}
!22 = metadata !{i32 786478, i32 0, metadata !23, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !23, i32 4, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 5} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786473, metadata !"dct.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !26}
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !23, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!31 = metadata !{i32 786478, i32 0, metadata !23, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !23, i32 23, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 25} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !34, metadata !34}
!34 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !27, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read_data", metadata !"read_data", metadata !"", metadata !23, i32 54, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 55} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !41, metadata !42}
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !28, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write_data", metadata !"write_data", metadata !"", metadata !23, i32 66, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 67} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{null, metadata !42, metadata !41}
!47 = metadata !{i32 786478, i32 0, metadata !23, metadata !"dct", metadata !"dct", metadata !"", metadata !23, i32 78, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 79} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !41, metadata !41}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786484, i32 0, metadata !22, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !23, i32 8, metadata !53, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !54, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!55 = metadata !{metadata !37, metadata !37}
!56 = metadata !{i32 786689, metadata !44, metadata !"buf", null, i32 66, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !28, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!58 = metadata !{i32 66, i32 23, metadata !44, null}
!59 = metadata !{i32 786689, metadata !44, metadata !"output", null, i32 66, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !28, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!63 = metadata !{i32 66, i32 116, metadata !44, null}
!64 = metadata !{i32 71, i32 9, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 71, i32 4, metadata !23, i32 24} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !44, i32 67, i32 1, metadata !23, i32 23} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 71, i32 67, metadata !68, null}
!68 = metadata !{i32 786443, metadata !65, i32 71, i32 66, metadata !23, i32 25} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 74, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 74, i32 1, metadata !23, i32 27} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !68, i32 73, i32 7, metadata !23, i32 26} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 73, i32 12, metadata !71, null}
!73 = metadata !{i32 74, i32 2, metadata !70, null}
!74 = metadata !{i32 75, i32 1, metadata !70, null}
!75 = metadata !{i32 74, i32 67, metadata !70, null}
!76 = metadata !{i32 73, i32 64, metadata !71, null}
!77 = metadata !{i32 786688, metadata !66, metadata !"c", metadata !23, i32 68, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 75, i32 4, metadata !68, null}
!80 = metadata !{i32 71, i32 61, metadata !65, null}
!81 = metadata !{i32 786688, metadata !66, metadata !"r", metadata !23, i32 68, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 76, i32 1, metadata !66, null}
!83 = metadata !{i32 786689, metadata !38, metadata !"input", null, i32 54, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 54, i32 22, metadata !38, null}
!85 = metadata !{i32 790531, metadata !86, metadata !"buf[0]", null, i32 54, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!86 = metadata !{i32 786689, metadata !38, metadata !"buf", null, i32 54, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !28, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!88 = metadata !{i32 54, i32 44, metadata !38, null}
!89 = metadata !{i32 790531, metadata !86, metadata !"buf[1]", null, i32 54, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!90 = metadata !{i32 790531, metadata !86, metadata !"buf[2]", null, i32 54, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!91 = metadata !{i32 790531, metadata !86, metadata !"buf[3]", null, i32 54, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!92 = metadata !{i32 790531, metadata !86, metadata !"buf[4]", null, i32 54, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!93 = metadata !{i32 790531, metadata !86, metadata !"buf[5]", null, i32 54, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!94 = metadata !{i32 790531, metadata !86, metadata !"buf[6]", null, i32 54, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!95 = metadata !{i32 790531, metadata !86, metadata !"buf[7]", null, i32 54, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!96 = metadata !{i32 59, i32 9, metadata !97, null}
!97 = metadata !{i32 786443, metadata !98, i32 59, i32 4, metadata !23, i32 19} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !38, i32 55, i32 1, metadata !23, i32 18} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 59, i32 67, metadata !100, null}
!100 = metadata !{i32 786443, metadata !97, i32 59, i32 66, metadata !23, i32 20} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 62, i32 1, metadata !102, null}
!102 = metadata !{i32 786443, metadata !103, i32 62, i32 1, metadata !23, i32 22} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !100, i32 61, i32 7, metadata !23, i32 21} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 61, i32 12, metadata !103, null}
!105 = metadata !{i32 62, i32 2, metadata !102, null}
!106 = metadata !{i32 63, i32 1, metadata !102, null}
!107 = metadata !{i32 62, i32 66, metadata !102, null}
!108 = metadata !{i32 61, i32 64, metadata !103, null}
!109 = metadata !{i32 786688, metadata !98, metadata !"c", metadata !23, i32 56, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 63, i32 4, metadata !100, null}
!111 = metadata !{i32 59, i32 61, metadata !97, null}
!112 = metadata !{i32 786688, metadata !98, metadata !"r", metadata !23, i32 56, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 64, i32 1, metadata !98, null}
!114 = metadata !{i32 80, i32 1, metadata !115, null}
!115 = metadata !{i32 786443, metadata !47, i32 79, i32 1, metadata !23, i32 28} ; [ DW_TAG_lexical_block ]
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 15, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"input", metadata !120, metadata !"short", i32 0, i32 15}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 63, i32 1}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 15, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"output", metadata !120, metadata !"short", i32 0, i32 15}
!126 = metadata !{i32 786689, metadata !47, metadata !"input", null, i32 78, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 78, i32 16, metadata !47, null}
!128 = metadata !{i32 786689, metadata !47, metadata !"output", null, i32 78, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 78, i32 38, metadata !47, null}
!130 = metadata !{i32 790529, metadata !131, metadata !"col_inbuf[0]", null, i32 27, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!131 = metadata !{i32 786688, metadata !132, metadata !"col_inbuf", metadata !23, i32 27, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786443, metadata !31, i32 25, i32 1, metadata !23, i32 5} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!134 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !27, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!135 = metadata !{i32 27, i32 109, metadata !132, metadata !136}
!136 = metadata !{i32 87, i32 4, metadata !115, null}
!137 = metadata !{i32 790529, metadata !131, metadata !"col_inbuf[1]", null, i32 27, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!138 = metadata !{i32 790529, metadata !131, metadata !"col_inbuf[2]", null, i32 27, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!139 = metadata !{i32 790529, metadata !131, metadata !"col_inbuf[3]", null, i32 27, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!140 = metadata !{i32 790529, metadata !131, metadata !"col_inbuf[4]", null, i32 27, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!141 = metadata !{i32 790529, metadata !131, metadata !"col_inbuf[5]", null, i32 27, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!142 = metadata !{i32 790529, metadata !131, metadata !"col_inbuf[6]", null, i32 27, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!143 = metadata !{i32 790529, metadata !131, metadata !"col_inbuf[7]", null, i32 27, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!144 = metadata !{i32 790529, metadata !145, metadata !"buf_2d_in[0]", null, i32 81, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!145 = metadata !{i32 786688, metadata !115, metadata !"buf_2d_in", metadata !23, i32 81, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 81, i32 10, metadata !115, null}
!147 = metadata !{i32 790529, metadata !145, metadata !"buf_2d_in[1]", null, i32 81, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!148 = metadata !{i32 790529, metadata !145, metadata !"buf_2d_in[2]", null, i32 81, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!149 = metadata !{i32 790529, metadata !145, metadata !"buf_2d_in[3]", null, i32 81, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!150 = metadata !{i32 790529, metadata !145, metadata !"buf_2d_in[4]", null, i32 81, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!151 = metadata !{i32 790529, metadata !145, metadata !"buf_2d_in[5]", null, i32 81, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!152 = metadata !{i32 790529, metadata !145, metadata !"buf_2d_in[6]", null, i32 81, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!153 = metadata !{i32 790529, metadata !145, metadata !"buf_2d_in[7]", null, i32 81, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!154 = metadata !{i32 786688, metadata !115, metadata !"buf_2d_out", metadata !23, i32 82, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 82, i32 10, metadata !115, null}
!156 = metadata !{i32 85, i32 4, metadata !115, null}
!157 = metadata !{i32 90, i32 4, metadata !115, null}
!158 = metadata !{i32 91, i32 1, metadata !115, null}
!159 = metadata !{i32 37, i32 9, metadata !160, metadata !136}
!160 = metadata !{i32 786443, metadata !132, i32 37, i32 4, metadata !23, i32 8} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 40, i32 34, metadata !162, metadata !136}
!162 = metadata !{i32 786443, metadata !163, i32 39, i32 7, metadata !23, i32 10} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !160, i32 38, i32 1, metadata !23, i32 9} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 37, i32 61, metadata !160, metadata !136}
!165 = metadata !{i32 786688, metadata !132, metadata !"j", metadata !23, i32 28, metadata !166, i32 0, metadata !136} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!167 = metadata !{i32 39, i32 11, metadata !162, metadata !136}
!168 = metadata !{i32 38, i32 1, metadata !163, metadata !136}
!169 = metadata !{i32 40, i32 1, metadata !170, metadata !136}
!170 = metadata !{i32 786443, metadata !162, i32 40, i32 1, metadata !23, i32 11} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 40, i32 34, metadata !170, metadata !136}
!172 = metadata !{i32 39, i32 63, metadata !162, metadata !136}
!173 = metadata !{i32 786688, metadata !132, metadata !"i", metadata !23, i32 28, metadata !166, i32 0, metadata !136} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 40, i32 2, metadata !170, metadata !136}
!175 = metadata !{i32 41, i32 1, metadata !170, metadata !136}
!176 = metadata !{i32 48, i32 9, metadata !177, metadata !136}
!177 = metadata !{i32 786443, metadata !132, i32 48, i32 4, metadata !23, i32 14} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 51, i32 34, metadata !179, metadata !136}
!179 = metadata !{i32 786443, metadata !180, i32 50, i32 7, metadata !23, i32 16} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786443, metadata !177, i32 49, i32 1, metadata !23, i32 15} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 48, i32 61, metadata !177, metadata !136}
!182 = metadata !{i32 50, i32 11, metadata !179, metadata !136}
!183 = metadata !{i32 49, i32 1, metadata !180, metadata !136}
!184 = metadata !{i32 51, i32 1, metadata !185, metadata !136}
!185 = metadata !{i32 786443, metadata !179, i32 51, i32 1, metadata !23, i32 17} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 51, i32 2, metadata !185, metadata !136}
!187 = metadata !{i32 52, i32 1, metadata !185, metadata !136}
!188 = metadata !{i32 51, i32 34, metadata !185, metadata !136}
!189 = metadata !{i32 50, i32 63, metadata !179, metadata !136}
!190 = metadata !{i32 32, i32 8, metadata !191, metadata !136}
!191 = metadata !{i32 786443, metadata !132, i32 32, i32 4, metadata !23, i32 6} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 32, i32 66, metadata !193, metadata !136}
!193 = metadata !{i32 786443, metadata !191, i32 32, i32 65, metadata !23, i32 7} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i4 0, i4 7, i4 0, i4 7}         
!195 = metadata !{i32 786689, metadata !22, metadata !"dst", null, i32 4, metadata !196, i32 0, metadata !197} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !27, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!197 = metadata !{i32 33, i32 7, metadata !193, metadata !136}
!198 = metadata !{i32 4, i32 81, metadata !22, metadata !197}
!199 = metadata !{i32 13, i32 9, metadata !200, metadata !197}
!200 = metadata !{i32 786443, metadata !201, i32 13, i32 4, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 786443, metadata !22, i32 5, i32 1, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 13, i32 67, metadata !203, metadata !197}
!203 = metadata !{i32 786443, metadata !200, i32 13, i32 66, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 14, i32 1, metadata !203, metadata !197}
!205 = metadata !{i32 16, i32 48, metadata !206, metadata !197}
!206 = metadata !{i32 786443, metadata !207, i32 15, i32 77, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 786443, metadata !203, i32 15, i32 7, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 17, i32 10, metadata !206, metadata !197}
!209 = metadata !{i32 19, i32 7, metadata !203, metadata !197}
!210 = metadata !{i32 20, i32 4, metadata !203, metadata !197}
!211 = metadata !{i32 13, i32 61, metadata !200, metadata !197}
!212 = metadata !{i32 786688, metadata !201, metadata !"k", metadata !23, i32 6, metadata !166, i32 0, metadata !197} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 32, i32 60, metadata !191, metadata !136}
!214 = metadata !{i32 43, i32 9, metadata !215, metadata !136}
!215 = metadata !{i32 786443, metadata !132, i32 43, i32 4, metadata !23, i32 12} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 43, i32 67, metadata !217, metadata !136}
!217 = metadata !{i32 786443, metadata !215, i32 43, i32 66, metadata !23, i32 13} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 786689, metadata !22, metadata !"dst", null, i32 4, metadata !196, i32 0, metadata !219} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 44, i32 7, metadata !217, metadata !136}
!220 = metadata !{i32 4, i32 81, metadata !22, metadata !219}
!221 = metadata !{i32 13, i32 9, metadata !200, metadata !219}
!222 = metadata !{i32 13, i32 67, metadata !203, metadata !219}
!223 = metadata !{i32 14, i32 1, metadata !203, metadata !219}
!224 = metadata !{i32 16, i32 48, metadata !206, metadata !219}
!225 = metadata !{i32 17, i32 10, metadata !206, metadata !219}
!226 = metadata !{i32 19, i32 7, metadata !203, metadata !219}
!227 = metadata !{i32 20, i32 4, metadata !203, metadata !219}
!228 = metadata !{i32 13, i32 61, metadata !200, metadata !219}
!229 = metadata !{i32 786688, metadata !201, metadata !"k", metadata !23, i32 6, metadata !166, i32 0, metadata !219} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 43, i32 61, metadata !215, metadata !136}
