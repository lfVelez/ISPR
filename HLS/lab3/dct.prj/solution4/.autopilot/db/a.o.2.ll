; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table.7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=1 type=[8 x i14]*]
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
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %"buf[0]", [8 x i16]* nocapture %"buf[1]", [8 x i16]* nocapture %"buf[2]", [8 x i16]* nocapture %"buf[3]", [8 x i16]* nocapture %"buf[4]", [8 x i16]* nocapture %"buf[5]", [8 x i16]* nocapture %"buf[6]", [8 x i16]* nocapture %"buf[7]") {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !56), !dbg !60 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[0]"}, i64 0, metadata !61), !dbg !65 ; [debug line = 54:44] [debug variable = buf[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[1]"}, i64 0, metadata !66), !dbg !65 ; [debug line = 54:44] [debug variable = buf[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[2]"}, i64 0, metadata !67), !dbg !65 ; [debug line = 54:44] [debug variable = buf[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[3]"}, i64 0, metadata !68), !dbg !65 ; [debug line = 54:44] [debug variable = buf[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[4]"}, i64 0, metadata !69), !dbg !65 ; [debug line = 54:44] [debug variable = buf[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[5]"}, i64 0, metadata !70), !dbg !65 ; [debug line = 54:44] [debug variable = buf[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[6]"}, i64 0, metadata !71), !dbg !65 ; [debug line = 54:44] [debug variable = buf[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[7]"}, i64 0, metadata !72), !dbg !65 ; [debug line = 54:44] [debug variable = buf[7]]
  br label %1, !dbg !73                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %9, %0
  %r = phi i4 [ 0, %0 ], [ %r.1, %9 ]             ; [#uses=4 type=i4]
  %r.cast3 = zext i4 %r to i6, !dbg !73           ; [#uses=1 type=i6] [debug line = 59:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !73        ; [#uses=1 type=i1] [debug line = 59:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %11, label %3, !dbg !73 ; [debug line = 59:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !76 ; [debug line = 59:67]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10), !dbg !76 ; [#uses=1 type=i32] [debug line = 59:67]
  %tmp = shl i6 %r.cast3, 3, !dbg !78             ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp.7 = zext i4 %r to i64, !dbg !78            ; [#uses=8 type=i64] [debug line = 62:1]
  %"buf[0].addr" = getelementptr [8 x i16]* %"buf[0]", i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[1].addr" = getelementptr [8 x i16]* %"buf[1]", i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[2].addr" = getelementptr [8 x i16]* %"buf[2]", i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[3].addr" = getelementptr [8 x i16]* %"buf[3]", i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[4].addr" = getelementptr [8 x i16]* %"buf[4]", i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[5].addr" = getelementptr [8 x i16]* %"buf[5]", i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[6].addr" = getelementptr [8 x i16]* %"buf[6]", i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[7].addr" = getelementptr [8 x i16]* %"buf[7]", i64 0, i64 %tmp.7, !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  br label %4, !dbg !81                           ; [debug line = 61:12]

; <label>:4                                       ; preds = %7, %3
  %c = phi i4 [ 0, %3 ], [ %c.1, %7 ]             ; [#uses=4 type=i4]
  %c.cast2 = zext i4 %c to i6, !dbg !81           ; [#uses=1 type=i6] [debug line = 61:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !81         ; [#uses=1 type=i1] [debug line = 61:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %9, label %6, !dbg !81   ; [debug line = 61:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !82 ; [debug line = 62:2]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str11), !dbg !82 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !83 ; [debug line = 63:1]
  %tmp.9 = add i6 %c.cast2, %tmp, !dbg !78        ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp. = zext i6 %tmp.9 to i64, !dbg !78         ; [#uses=1 type=i64] [debug line = 62:1]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp., !dbg !78 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input.load = load i16* %input.addr, align 2, !dbg !78 ; [#uses=8 type=i16] [debug line = 62:1]
  %c.t = trunc i4 %c to i3                        ; [#uses=1 type=i3]
  switch i3 %c.t, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !78                                     ; [debug line = 62:1]

; <label>:7                                       ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str11, i32 %tmp.1), !dbg !84 ; [#uses=0 type=i32] [debug line = 62:66]
  %c.1 = add i4 %c, 1, !dbg !85                   ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !86), !dbg !85 ; [debug line = 61:64] [debug variable = c]
  br label %4, !dbg !85                           ; [debug line = 61:64]

; <label>:9                                       ; preds = %4
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.8), !dbg !88 ; [#uses=0 type=i32] [debug line = 63:4]
  %r.1 = add i4 %r, 1, !dbg !89                   ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !90), !dbg !89 ; [debug line = 59:61] [debug variable = r]
  br label %1, !dbg !89                           ; [debug line = 59:61]

; <label>:11                                      ; preds = %1
  ret void, !dbg !91                              ; [debug line = 64:1]

branch0:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[0].addr", align 2, !dbg !78 ; [debug line = 62:1]
  br label %7, !dbg !78                           ; [debug line = 62:1]

branch1:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[1].addr", align 2, !dbg !78 ; [debug line = 62:1]
  br label %7, !dbg !78                           ; [debug line = 62:1]

branch2:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[2].addr", align 2, !dbg !78 ; [debug line = 62:1]
  br label %7, !dbg !78                           ; [debug line = 62:1]

branch3:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[3].addr", align 2, !dbg !78 ; [debug line = 62:1]
  br label %7, !dbg !78                           ; [debug line = 62:1]

branch4:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[4].addr", align 2, !dbg !78 ; [debug line = 62:1]
  br label %7, !dbg !78                           ; [debug line = 62:1]

branch5:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[5].addr", align 2, !dbg !78 ; [debug line = 62:1]
  br label %7, !dbg !78                           ; [debug line = 62:1]

branch6:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[6].addr", align 2, !dbg !78 ; [debug line = 62:1]
  br label %7, !dbg !78                           ; [debug line = 62:1]

branch7:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[7].addr", align 2, !dbg !78 ; [debug line = 62:1]
  br label %7, !dbg !78                           ; [debug line = 62:1]
}

; [#uses=34]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([8 x i16]* nocapture %"in_block[0]", [8 x i16]* nocapture %"in_block[1]", [8 x i16]* nocapture %"in_block[2]", [8 x i16]* nocapture %"in_block[3]", [8 x i16]* nocapture %"in_block[4]", [8 x i16]* nocapture %"in_block[5]", [8 x i16]* nocapture %"in_block[6]", [8 x i16]* nocapture %"in_block[7]", [8 x [8 x i16]]* nocapture %out_block) {
  %row_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %"col_inbuf[0]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[1]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[2]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[3]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[4]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[5]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[6]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[7]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[0]"}, i64 0, metadata !92), !dbg !96 ; [debug line = 23:24] [debug variable = in_block[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[1]"}, i64 0, metadata !97), !dbg !96 ; [debug line = 23:24] [debug variable = in_block[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[2]"}, i64 0, metadata !98), !dbg !96 ; [debug line = 23:24] [debug variable = in_block[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[3]"}, i64 0, metadata !99), !dbg !96 ; [debug line = 23:24] [debug variable = in_block[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[4]"}, i64 0, metadata !100), !dbg !96 ; [debug line = 23:24] [debug variable = in_block[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[5]"}, i64 0, metadata !101), !dbg !96 ; [debug line = 23:24] [debug variable = in_block[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[6]"}, i64 0, metadata !102), !dbg !96 ; [debug line = 23:24] [debug variable = in_block[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[7]"}, i64 0, metadata !103), !dbg !96 ; [debug line = 23:24] [debug variable = in_block[7]]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %out_block}, i64 0, metadata !104), !dbg !105 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[0]"}, metadata !106), !dbg !109 ; [debug line = 27:109] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[1]"}, metadata !110), !dbg !109 ; [debug line = 27:109] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[2]"}, metadata !111), !dbg !109 ; [debug line = 27:109] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[3]"}, metadata !112), !dbg !109 ; [debug line = 27:109] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[4]"}, metadata !113), !dbg !109 ; [debug line = 27:109] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[5]"}, metadata !114), !dbg !109 ; [debug line = 27:109] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[6]"}, metadata !115), !dbg !109 ; [debug line = 27:109] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[7]"}, metadata !116), !dbg !109 ; [debug line = 27:109] [debug variable = col_inbuf[7]]
  br label %1, !dbg !117                          ; [debug line = 32:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.4, %3 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %i, -8, !dbg !117             ; [#uses=1 type=i1] [debug line = 32:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader2.preheader, label %3, !dbg !117 ; [debug line = 32:8]

.preheader2.preheader:                            ; preds = %1
  br label %.preheader2, !dbg !119                ; [debug line = 37:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str4) nounwind, !dbg !121 ; [debug line = 32:66]
  call fastcc void @dct_1d([8 x i16]* %"in_block[0]", [8 x i16]* %"in_block[1]", [8 x i16]* %"in_block[2]", [8 x i16]* %"in_block[3]", [8 x i16]* %"in_block[4]", [8 x i16]* %"in_block[5]", [8 x i16]* %"in_block[6]", [8 x i16]* %"in_block[7]", i4 %i, [8 x [8 x i16]]* %row_outbuf, i4 %i), !dbg !123 ; [debug line = 33:7]
  %i.4 = add i4 %i, 1, !dbg !124                  ; [#uses=1 type=i4] [debug line = 32:60]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !125), !dbg !124 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !124                          ; [debug line = 32:60]

.preheader2:                                      ; preds = %11, %.preheader2.preheader
  %j = phi i4 [ %j.2, %11 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i4]
  %tmp.2 = icmp eq i4 %j, -8, !dbg !119           ; [#uses=1 type=i1] [debug line = 37:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.2, label %.preheader1.preheader, label %5, !dbg !119 ; [debug line = 37:9]

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1, !dbg !127                ; [debug line = 43:9]

; <label>:5                                       ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str5) nounwind, !dbg !129 ; [debug line = 38:1]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str5), !dbg !129 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp.3 = zext i4 %j to i64, !dbg !131           ; [#uses=9 type=i64] [debug line = 40:1]
  %"col_inbuf[0].addr" = getelementptr [8 x i16]* %"col_inbuf[0]", i64 0, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[1].addr" = getelementptr [8 x i16]* %"col_inbuf[1]", i64 0, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[2].addr" = getelementptr [8 x i16]* %"col_inbuf[2]", i64 0, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[3].addr" = getelementptr [8 x i16]* %"col_inbuf[3]", i64 0, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[4].addr" = getelementptr [8 x i16]* %"col_inbuf[4]", i64 0, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[5].addr" = getelementptr [8 x i16]* %"col_inbuf[5]", i64 0, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[6].addr" = getelementptr [8 x i16]* %"col_inbuf[6]", i64 0, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[7].addr" = getelementptr [8 x i16]* %"col_inbuf[7]", i64 0, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  br label %6, !dbg !134                          ; [debug line = 39:11]

; <label>:6                                       ; preds = %9, %5
  %i.1 = phi i4 [ 0, %5 ], [ %i.6, %9 ]           ; [#uses=4 type=i4]
  %tmp.5 = icmp eq i4 %i.1, -8, !dbg !134         ; [#uses=1 type=i1] [debug line = 39:11]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.5, label %11, label %8, !dbg !134    ; [debug line = 39:11]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str6) nounwind, !dbg !135 ; [debug line = 40:2]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str6), !dbg !135 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !136 ; [debug line = 41:1]
  %tmp.7 = zext i4 %i.1 to i64, !dbg !131         ; [#uses=1 type=i64] [debug line = 40:1]
  %row_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i64 0, i64 %tmp.7, i64 %tmp.3, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf.load = load i16* %row_outbuf.addr, align 2, !dbg !131 ; [#uses=8 type=i16] [debug line = 40:1]
  %i.1.t = trunc i4 %i.1 to i3                    ; [#uses=1 type=i3]
  switch i3 %i.1.t, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !131                                    ; [debug line = 40:1]

; <label>:9                                       ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str6, i32 %tmp.6), !dbg !137 ; [#uses=0 type=i32] [debug line = 40:34]
  %i.6 = add i4 %i.1, 1, !dbg !138                ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i.6}, i64 0, metadata !125), !dbg !138 ; [debug line = 39:63] [debug variable = i]
  br label %6, !dbg !138                          ; [debug line = 39:63]

; <label>:11                                      ; preds = %6
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str5, i32 %tmp.), !dbg !139 ; [#uses=0 type=i32] [debug line = 40:34]
  %j.2 = add i4 %j, 1, !dbg !140                  ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j.2}, i64 0, metadata !141), !dbg !140 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader2, !dbg !140                ; [debug line = 37:61]

.preheader1:                                      ; preds = %14, %.preheader1.preheader
  %i.2 = phi i4 [ %i.5, %14 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i4]
  %tmp.4 = icmp eq i4 %i.2, -8, !dbg !127         ; [#uses=1 type=i1] [debug line = 43:9]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.4, label %.preheader.preheader, label %14, !dbg !127 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !142                 ; [debug line = 48:9]

; <label>:14                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str7) nounwind, !dbg !144 ; [debug line = 43:67]
  call fastcc void @dct_1d([8 x i16]* %"col_inbuf[0]", [8 x i16]* %"col_inbuf[1]", [8 x i16]* %"col_inbuf[2]", [8 x i16]* %"col_inbuf[3]", [8 x i16]* %"col_inbuf[4]", [8 x i16]* %"col_inbuf[5]", [8 x i16]* %"col_inbuf[6]", [8 x i16]* %"col_inbuf[7]", i4 %i.2, [8 x [8 x i16]]* %col_outbuf, i4 %i.2), !dbg !146 ; [debug line = 44:7]
  %i.5 = add i4 %i.2, 1, !dbg !147                ; [#uses=1 type=i4] [debug line = 43:61]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !125), !dbg !147 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader1, !dbg !147                ; [debug line = 43:61]

.preheader:                                       ; preds = %21, %.preheader.preheader
  %j.1 = phi i4 [ %j.3, %21 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %tmp.8 = icmp eq i4 %j.1, -8, !dbg !142         ; [#uses=1 type=i1] [debug line = 48:9]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.8, label %23, label %16, !dbg !142   ; [debug line = 48:9]

; <label>:16                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str8) nounwind, !dbg !148 ; [debug line = 49:1]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str8), !dbg !148 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp.9 = zext i4 %j.1 to i64, !dbg !150         ; [#uses=2 type=i64] [debug line = 51:1]
  br label %17, !dbg !153                         ; [debug line = 50:11]

; <label>:17                                      ; preds = %19, %16
  %i.3 = phi i4 [ 0, %16 ], [ %i.7, %19 ]         ; [#uses=3 type=i4]
  %tmp.1 = icmp eq i4 %i.3, -8, !dbg !153         ; [#uses=1 type=i1] [debug line = 50:11]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.1, label %21, label %19, !dbg !153   ; [debug line = 50:11]

; <label>:19                                      ; preds = %17
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str9) nounwind, !dbg !154 ; [debug line = 51:2]
  %tmp.12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str9), !dbg !154 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !155 ; [debug line = 52:1]
  %tmp.10 = zext i4 %i.3 to i64, !dbg !150        ; [#uses=2 type=i64] [debug line = 51:1]
  %col_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i64 0, i64 %tmp.10, i64 %tmp.9, !dbg !150 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf.load = load i16* %col_outbuf.addr, align 2, !dbg !150 ; [#uses=1 type=i16] [debug line = 51:1]
  %out_block.addr = getelementptr [8 x [8 x i16]]* %out_block, i64 0, i64 %tmp.9, i64 %tmp.10, !dbg !150 ; [#uses=1 type=i16*] [debug line = 51:1]
  store i16 %col_outbuf.load, i16* %out_block.addr, align 2, !dbg !150 ; [debug line = 51:1]
  %20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str9, i32 %tmp.12), !dbg !156 ; [#uses=0 type=i32] [debug line = 51:34]
  %i.7 = add i4 %i.3, 1, !dbg !157                ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !125), !dbg !157 ; [debug line = 50:63] [debug variable = i]
  br label %17, !dbg !157                         ; [debug line = 50:63]

; <label>:21                                      ; preds = %17
  %22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str8, i32 %tmp.11), !dbg !158 ; [#uses=0 type=i32] [debug line = 51:34]
  %j.3 = add i4 %j.1, 1, !dbg !159                ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j.3}, i64 0, metadata !141), !dbg !159 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !159                 ; [debug line = 48:61]

; <label>:23                                      ; preds = %.preheader
  ret void, !dbg !160                             ; [debug line = 52:1]

branch0:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[0].addr", align 2, !dbg !131 ; [debug line = 40:1]
  br label %9, !dbg !131                          ; [debug line = 40:1]

branch1:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[1].addr", align 2, !dbg !131 ; [debug line = 40:1]
  br label %9, !dbg !131                          ; [debug line = 40:1]

branch2:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[2].addr", align 2, !dbg !131 ; [debug line = 40:1]
  br label %9, !dbg !131                          ; [debug line = 40:1]

branch3:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[3].addr", align 2, !dbg !131 ; [debug line = 40:1]
  br label %9, !dbg !131                          ; [debug line = 40:1]

branch4:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[4].addr", align 2, !dbg !131 ; [debug line = 40:1]
  br label %9, !dbg !131                          ; [debug line = 40:1]

branch5:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[5].addr", align 2, !dbg !131 ; [debug line = 40:1]
  br label %9, !dbg !131                          ; [debug line = 40:1]

branch6:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[6].addr", align 2, !dbg !131 ; [debug line = 40:1]
  br label %9, !dbg !131                          ; [debug line = 40:1]

branch7:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[7].addr", align 2, !dbg !131 ; [debug line = 40:1]
  br label %9, !dbg !131                          ; [debug line = 40:1]
}

; [#uses=2]
define internal fastcc void @dct_1d([8 x i16]* nocapture %src, [8 x i16]* nocapture %src1, [8 x i16]* nocapture %src2, [8 x i16]* nocapture %src3, [8 x i16]* nocapture %src4, [8 x i16]* nocapture %src5, [8 x i16]* nocapture %src6, [8 x i16]* nocapture %src7, i4 %tmp.6, [8 x [8 x i16]]* nocapture %dst, i4 %tmp.61) {
  %tmp.61.cast = zext i4 %tmp.61 to i64           ; [#uses=2 type=i64]
  %tmp.6.cast = zext i4 %tmp.6 to i64             ; [#uses=9 type=i64]
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.6.cast), !hlsrange !161
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.61.cast), !hlsrange !161
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %dst}, i64 0, metadata !162), !dbg !164 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !165                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %3, %0
  %k = phi i4 [ 0, %0 ], [ %k.1, %3 ]             ; [#uses=3 type=i4]
  %tmp = icmp eq i4 %k, -8, !dbg !165             ; [#uses=1 type=i1] [debug line = 13:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp, label %5, label %3, !dbg !165       ; [debug line = 13:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !168 ; [debug line = 13:67]
  %tmp.14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !168 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !170 ; [debug line = 14:1]
  %tmp. = zext i4 %k to i64, !dbg !171            ; [#uses=9 type=i64] [debug line = 16:48]
  %dct_coeff_table.0.addr = getelementptr [8 x i14]* @dct_coeff_table.0, i64 0, i64 %tmp., !dbg !171 ; [#uses=1 type=i14*] [debug line = 16:48]
  %dct_coeff_table.0.load = load i14* %dct_coeff_table.0.addr, align 2, !dbg !171 ; [#uses=1 type=i14] [debug line = 16:48]
  %coeff.cast = zext i14 %dct_coeff_table.0.load to i29 ; [#uses=1 type=i29]
  %src.addr = getelementptr [8 x i16]* %src, i64 0, i64 %tmp.6.cast ; [#uses=1 type=i16*]
  %src.load = load i16* %src.addr, align 2        ; [#uses=1 type=i16]
  %tmp.17.cast = sext i16 %src.load to i29, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.15 = mul i29 %tmp.17.cast, %coeff.cast, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.1.addr = getelementptr [8 x i15]* @dct_coeff_table.1, i64 0, i64 %tmp., !dbg !171 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.1.load = load i15* %dct_coeff_table.1.addr, align 2, !dbg !171 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.1.cast = sext i15 %dct_coeff_table.1.load to i29 ; [#uses=1 type=i29]
  %src1.addr = getelementptr [8 x i16]* %src1, i64 0, i64 %tmp.6.cast ; [#uses=1 type=i16*]
  %src1.load = load i16* %src1.addr, align 2      ; [#uses=1 type=i16]
  %tmp.17.1.cast = sext i16 %src1.load to i29, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.1 = mul i29 %tmp.17.1.cast, %coeff.1.cast, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.2.addr = getelementptr [8 x i15]* @dct_coeff_table.2, i64 0, i64 %tmp., !dbg !171 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.2.load = load i15* %dct_coeff_table.2.addr, align 2, !dbg !171 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.2.cast = sext i15 %dct_coeff_table.2.load to i29 ; [#uses=1 type=i29]
  %src2.addr = getelementptr [8 x i16]* %src2, i64 0, i64 %tmp.6.cast ; [#uses=1 type=i16*]
  %src2.load = load i16* %src2.addr, align 2      ; [#uses=1 type=i16]
  %tmp.17.2.cast = sext i16 %src2.load to i29, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.2 = mul i29 %tmp.17.2.cast, %coeff.2.cast, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.3.addr = getelementptr [8 x i15]* @dct_coeff_table.3, i64 0, i64 %tmp., !dbg !171 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.3.load = load i15* %dct_coeff_table.3.addr, align 2, !dbg !171 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.3.cast = sext i15 %dct_coeff_table.3.load to i29 ; [#uses=1 type=i29]
  %src3.addr = getelementptr [8 x i16]* %src3, i64 0, i64 %tmp.6.cast ; [#uses=1 type=i16*]
  %src3.load = load i16* %src3.addr, align 2      ; [#uses=1 type=i16]
  %tmp.17.3.cast = sext i16 %src3.load to i29, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.3 = mul i29 %tmp.17.3.cast, %coeff.3.cast, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.4.addr = getelementptr [8 x i15]* @dct_coeff_table.4, i64 0, i64 %tmp., !dbg !171 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.4.load = load i15* %dct_coeff_table.4.addr, align 2, !dbg !171 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.4.cast = sext i15 %dct_coeff_table.4.load to i29 ; [#uses=1 type=i29]
  %src4.addr = getelementptr [8 x i16]* %src4, i64 0, i64 %tmp.6.cast ; [#uses=1 type=i16*]
  %src4.load = load i16* %src4.addr, align 2      ; [#uses=1 type=i16]
  %tmp.17.4.cast = sext i16 %src4.load to i29, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.4 = mul i29 %tmp.17.4.cast, %coeff.4.cast, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.5.addr = getelementptr [8 x i15]* @dct_coeff_table.5, i64 0, i64 %tmp., !dbg !171 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.5.load = load i15* %dct_coeff_table.5.addr, align 2, !dbg !171 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.5.cast = sext i15 %dct_coeff_table.5.load to i29 ; [#uses=1 type=i29]
  %src5.addr = getelementptr [8 x i16]* %src5, i64 0, i64 %tmp.6.cast ; [#uses=1 type=i16*]
  %src5.load = load i16* %src5.addr, align 2      ; [#uses=1 type=i16]
  %tmp.17.5.cast = sext i16 %src5.load to i29, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.5 = mul i29 %tmp.17.5.cast, %coeff.5.cast, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.6.addr = getelementptr [8 x i15]* @dct_coeff_table.6, i64 0, i64 %tmp., !dbg !171 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.6.load = load i15* %dct_coeff_table.6.addr, align 2, !dbg !171 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.6.cast = sext i15 %dct_coeff_table.6.load to i29 ; [#uses=1 type=i29]
  %src6.addr = getelementptr [8 x i16]* %src6, i64 0, i64 %tmp.6.cast ; [#uses=1 type=i16*]
  %src6.load = load i16* %src6.addr, align 2      ; [#uses=1 type=i16]
  %tmp.17.6.cast = sext i16 %src6.load to i29, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.6 = mul i29 %tmp.17.6.cast, %coeff.6.cast, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.7.addr = getelementptr [8 x i15]* @dct_coeff_table.7, i64 0, i64 %tmp., !dbg !171 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.7.load = load i15* %dct_coeff_table.7.addr, align 2, !dbg !171 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.7.cast = sext i15 %dct_coeff_table.7.load to i29 ; [#uses=1 type=i29]
  %src7.addr = getelementptr [8 x i16]* %src7, i64 0, i64 %tmp.6.cast ; [#uses=1 type=i16*]
  %src7.load = load i16* %src7.addr, align 2      ; [#uses=1 type=i16]
  %tmp.17.7.cast = sext i16 %src7.load to i29, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.7 = mul i29 %tmp.17.7.cast, %coeff.7.cast, !dbg !174 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp2 = add i29 %tmp.18.1, %tmp.15, !dbg !175   ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp.18.3, %tmp.18.2, !dbg !175 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !175         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp.18.5, %tmp.18.4, !dbg !175 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp7 = add i29 %tmp.18.7, 4096, !dbg !175      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp.18.6, %tmp7, !dbg !175     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !175         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.11 = add i29 %tmp1, %tmp4, !dbg !175       ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.12 = lshr i29 %tmp.11, 13, !dbg !175       ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.13 = trunc i29 %tmp.12 to i16, !dbg !175   ; [#uses=1 type=i16] [debug line = 19:7]
  %dst.addr = getelementptr [8 x [8 x i16]]* %dst, i64 0, i64 %tmp.61.cast, i64 %tmp., !dbg !175 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.13, i16* %dst.addr, align 2, !dbg !175 ; [debug line = 19:7]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.14) nounwind, !dbg !176 ; [#uses=0 type=i32] [debug line = 20:4]
  %k.1 = add i4 %k, 1, !dbg !177                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k.1}, i64 0, metadata !178), !dbg !177 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !177                          ; [debug line = 13:61]

; <label>:5                                       ; preds = %1
  ret void, !dbg !179                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !180
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !186
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
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !190), !dbg !191 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !192), !dbg !193 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[0]"}, metadata !194), !dbg !197 ; [debug line = 81:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[1]"}, metadata !198), !dbg !197 ; [debug line = 81:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[2]"}, metadata !199), !dbg !197 ; [debug line = 81:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[3]"}, metadata !200), !dbg !197 ; [debug line = 81:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[4]"}, metadata !201), !dbg !197 ; [debug line = 81:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[5]"}, metadata !202), !dbg !197 ; [debug line = 81:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[6]"}, metadata !203), !dbg !197 ; [debug line = 81:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[7]"}, metadata !204), !dbg !197 ; [debug line = 81:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !205), !dbg !206 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* %input, [8 x i16]* %"buf_2d_in[0]", [8 x i16]* %"buf_2d_in[1]", [8 x i16]* %"buf_2d_in[2]", [8 x i16]* %"buf_2d_in[3]", [8 x i16]* %"buf_2d_in[4]", [8 x i16]* %"buf_2d_in[5]", [8 x i16]* %"buf_2d_in[6]", [8 x i16]* %"buf_2d_in[7]") nounwind, !dbg !207 ; [debug line = 85:4]
  call fastcc void @dct_2d([8 x i16]* %"buf_2d_in[0]", [8 x i16]* %"buf_2d_in[1]", [8 x i16]* %"buf_2d_in[2]", [8 x i16]* %"buf_2d_in[3]", [8 x i16]* %"buf_2d_in[4]", [8 x i16]* %"buf_2d_in[5]", [8 x i16]* %"buf_2d_in[6]", [8 x i16]* %"buf_2d_in[7]", [8 x [8 x i16]]* %buf_2d_out) nounwind, !dbg !208 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_out}, i64 0, metadata !209) nounwind, !dbg !211 ; [debug line = 66:23@90:4] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !212) nounwind, !dbg !213 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %1, !dbg !214                          ; [debug line = 71:9@90:4]

; <label>:1                                       ; preds = %8, %0
  %r.i = phi i4 [ 0, %0 ], [ %r, %8 ]             ; [#uses=4 type=i4]
  %r.i.cast4 = zext i4 %r.i to i6, !dbg !214      ; [#uses=1 type=i6] [debug line = 71:9@90:4]
  %exitcond1.i = icmp eq i4 %r.i, -8, !dbg !214   ; [#uses=1 type=i1] [debug line = 71:9@90:4]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %write_data.exit, label %3, !dbg !214 ; [debug line = 71:9@90:4]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !217 ; [debug line = 71:67@90:4]
  %tmp.2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12) nounwind, !dbg !217 ; [#uses=1 type=i32] [debug line = 71:67@90:4]
  %tmp.i = zext i4 %r.i to i64, !dbg !219         ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %tmp.1.i = shl i6 %r.i.cast4, 3, !dbg !219      ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  br label %4, !dbg !222                          ; [debug line = 73:12@90:4]

; <label>:4                                       ; preds = %6, %3
  %c.i = phi i4 [ 0, %3 ], [ %c, %6 ]             ; [#uses=4 type=i4]
  %c.i.cast2 = zext i4 %c.i to i6, !dbg !222      ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %exitcond.i = icmp eq i4 %c.i, -8, !dbg !222    ; [#uses=1 type=i1] [debug line = 73:12@90:4]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %8, label %6, !dbg !222 ; [debug line = 73:12@90:4]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str13) nounwind, !dbg !223 ; [debug line = 74:2@90:4]
  %tmp.6.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str13) nounwind, !dbg !223 ; [#uses=1 type=i32] [debug line = 74:2@90:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !224 ; [debug line = 75:1@90:4]
  %tmp.3.i = zext i4 %c.i to i64, !dbg !219       ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %buf.assign.addr = getelementptr [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.i, i64 %tmp.3.i, !dbg !219 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  %buf.assign.load = load i16* %buf.assign.addr, align 2, !dbg !219 ; [#uses=1 type=i16] [debug line = 74:1@90:4]
  %tmp.4.i = add i6 %c.i.cast2, %tmp.1.i, !dbg !219 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %tmp.5.i = zext i6 %tmp.4.i to i64, !dbg !219   ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5.i, !dbg !219 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  store i16 %buf.assign.load, i16* %output.addr, align 2, !dbg !219 ; [debug line = 74:1@90:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str13, i32 %tmp.6.i) nounwind, !dbg !225 ; [#uses=0 type=i32] [debug line = 74:67@90:4]
  %c = add i4 %c.i, 1, !dbg !226                  ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !227) nounwind, !dbg !226 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %4, !dbg !226                          ; [debug line = 73:64@90:4]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.2.i) nounwind, !dbg !228 ; [#uses=0 type=i32] [debug line = 75:4@90:4]
  %r = add i4 %r.i, 1, !dbg !229                  ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !230) nounwind, !dbg !229 ; [debug line = 71:61@90:4] [debug variable = r]
  br label %1, !dbg !229                          ; [debug line = 71:61@90:4]

write_data.exit:                                  ; preds = %1
  ret void, !dbg !231                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=11]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=11]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_SpecKeepAssert(...)

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
!19 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution4/.autopilot/db/dct.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !20, metadata !20, metadata !21, metadata !50} ; [ DW_TAG_compile_unit ]
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
!56 = metadata !{i32 786689, metadata !38, metadata !"input", null, i32 54, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !28, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!60 = metadata !{i32 54, i32 22, metadata !38, null}
!61 = metadata !{i32 790531, metadata !62, metadata !"buf[0]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!62 = metadata !{i32 786689, metadata !38, metadata !"buf", null, i32 54, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !28, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !28, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{i32 54, i32 44, metadata !38, null}
!66 = metadata !{i32 790531, metadata !62, metadata !"buf[1]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!67 = metadata !{i32 790531, metadata !62, metadata !"buf[2]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!68 = metadata !{i32 790531, metadata !62, metadata !"buf[3]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!69 = metadata !{i32 790531, metadata !62, metadata !"buf[4]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!70 = metadata !{i32 790531, metadata !62, metadata !"buf[5]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!71 = metadata !{i32 790531, metadata !62, metadata !"buf[6]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!72 = metadata !{i32 790531, metadata !62, metadata !"buf[7]", null, i32 54, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!73 = metadata !{i32 59, i32 9, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 59, i32 4, metadata !23, i32 19} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !38, i32 55, i32 1, metadata !23, i32 18} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 59, i32 67, metadata !77, null}
!77 = metadata !{i32 786443, metadata !74, i32 59, i32 66, metadata !23, i32 20} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 62, i32 1, metadata !79, null}
!79 = metadata !{i32 786443, metadata !80, i32 62, i32 1, metadata !23, i32 22} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !77, i32 61, i32 7, metadata !23, i32 21} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 61, i32 12, metadata !80, null}
!82 = metadata !{i32 62, i32 2, metadata !79, null}
!83 = metadata !{i32 63, i32 1, metadata !79, null}
!84 = metadata !{i32 62, i32 66, metadata !79, null}
!85 = metadata !{i32 61, i32 64, metadata !80, null}
!86 = metadata !{i32 786688, metadata !75, metadata !"c", metadata !23, i32 56, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!88 = metadata !{i32 63, i32 4, metadata !77, null}
!89 = metadata !{i32 59, i32 61, metadata !74, null}
!90 = metadata !{i32 786688, metadata !75, metadata !"r", metadata !23, i32 56, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 64, i32 1, metadata !75, null}
!92 = metadata !{i32 790531, metadata !93, metadata !"in_block[0]", null, i32 23, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!93 = metadata !{i32 786689, metadata !31, metadata !"in_block", null, i32 23, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!95 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !27, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!96 = metadata !{i32 23, i32 24, metadata !31, null}
!97 = metadata !{i32 790531, metadata !93, metadata !"in_block[1]", null, i32 23, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!98 = metadata !{i32 790531, metadata !93, metadata !"in_block[2]", null, i32 23, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!99 = metadata !{i32 790531, metadata !93, metadata !"in_block[3]", null, i32 23, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!100 = metadata !{i32 790531, metadata !93, metadata !"in_block[4]", null, i32 23, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!101 = metadata !{i32 790531, metadata !93, metadata !"in_block[5]", null, i32 23, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!102 = metadata !{i32 790531, metadata !93, metadata !"in_block[6]", null, i32 23, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!103 = metadata !{i32 790531, metadata !93, metadata !"in_block[7]", null, i32 23, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!104 = metadata !{i32 786689, metadata !31, metadata !"out_block", null, i32 24, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 24, i32 18, metadata !31, null}
!106 = metadata !{i32 790529, metadata !107, metadata !"col_inbuf[0]", null, i32 27, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!107 = metadata !{i32 786688, metadata !108, metadata !"col_inbuf", metadata !23, i32 27, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 786443, metadata !31, i32 25, i32 1, metadata !23, i32 5} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 27, i32 109, metadata !108, null}
!110 = metadata !{i32 790529, metadata !107, metadata !"col_inbuf[1]", null, i32 27, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!111 = metadata !{i32 790529, metadata !107, metadata !"col_inbuf[2]", null, i32 27, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!112 = metadata !{i32 790529, metadata !107, metadata !"col_inbuf[3]", null, i32 27, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!113 = metadata !{i32 790529, metadata !107, metadata !"col_inbuf[4]", null, i32 27, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!114 = metadata !{i32 790529, metadata !107, metadata !"col_inbuf[5]", null, i32 27, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!115 = metadata !{i32 790529, metadata !107, metadata !"col_inbuf[6]", null, i32 27, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!116 = metadata !{i32 790529, metadata !107, metadata !"col_inbuf[7]", null, i32 27, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!117 = metadata !{i32 32, i32 8, metadata !118, null}
!118 = metadata !{i32 786443, metadata !108, i32 32, i32 4, metadata !23, i32 6} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 37, i32 9, metadata !120, null}
!120 = metadata !{i32 786443, metadata !108, i32 37, i32 4, metadata !23, i32 8} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 32, i32 66, metadata !122, null}
!122 = metadata !{i32 786443, metadata !118, i32 32, i32 65, metadata !23, i32 7} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 33, i32 7, metadata !122, null}
!124 = metadata !{i32 32, i32 60, metadata !118, null}
!125 = metadata !{i32 786688, metadata !108, metadata !"i", metadata !23, i32 28, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!127 = metadata !{i32 43, i32 9, metadata !128, null}
!128 = metadata !{i32 786443, metadata !108, i32 43, i32 4, metadata !23, i32 12} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 38, i32 1, metadata !130, null}
!130 = metadata !{i32 786443, metadata !120, i32 38, i32 1, metadata !23, i32 9} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 40, i32 1, metadata !132, null}
!132 = metadata !{i32 786443, metadata !133, i32 40, i32 1, metadata !23, i32 11} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !130, i32 39, i32 7, metadata !23, i32 10} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 39, i32 11, metadata !133, null}
!135 = metadata !{i32 40, i32 2, metadata !132, null}
!136 = metadata !{i32 41, i32 1, metadata !132, null}
!137 = metadata !{i32 40, i32 34, metadata !132, null}
!138 = metadata !{i32 39, i32 63, metadata !133, null}
!139 = metadata !{i32 40, i32 34, metadata !133, null}
!140 = metadata !{i32 37, i32 61, metadata !120, null}
!141 = metadata !{i32 786688, metadata !108, metadata !"j", metadata !23, i32 28, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 48, i32 9, metadata !143, null}
!143 = metadata !{i32 786443, metadata !108, i32 48, i32 4, metadata !23, i32 14} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 43, i32 67, metadata !145, null}
!145 = metadata !{i32 786443, metadata !128, i32 43, i32 66, metadata !23, i32 13} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 44, i32 7, metadata !145, null}
!147 = metadata !{i32 43, i32 61, metadata !128, null}
!148 = metadata !{i32 49, i32 1, metadata !149, null}
!149 = metadata !{i32 786443, metadata !143, i32 49, i32 1, metadata !23, i32 15} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 51, i32 1, metadata !151, null}
!151 = metadata !{i32 786443, metadata !152, i32 51, i32 1, metadata !23, i32 17} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786443, metadata !149, i32 50, i32 7, metadata !23, i32 16} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 50, i32 11, metadata !152, null}
!154 = metadata !{i32 51, i32 2, metadata !151, null}
!155 = metadata !{i32 52, i32 1, metadata !151, null}
!156 = metadata !{i32 51, i32 34, metadata !151, null}
!157 = metadata !{i32 50, i32 63, metadata !152, null}
!158 = metadata !{i32 51, i32 34, metadata !152, null}
!159 = metadata !{i32 48, i32 61, metadata !143, null}
!160 = metadata !{i32 52, i32 1, metadata !108, null}
!161 = metadata !{i4 0, i4 7, i4 0, i4 7}         
!162 = metadata !{i32 786689, metadata !22, metadata !"dst", null, i32 4, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !27, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!164 = metadata !{i32 4, i32 81, metadata !22, null}
!165 = metadata !{i32 13, i32 9, metadata !166, null}
!166 = metadata !{i32 786443, metadata !167, i32 13, i32 4, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 786443, metadata !22, i32 5, i32 1, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 13, i32 67, metadata !169, null}
!169 = metadata !{i32 786443, metadata !166, i32 13, i32 66, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 14, i32 1, metadata !169, null}
!171 = metadata !{i32 16, i32 48, metadata !172, null}
!172 = metadata !{i32 786443, metadata !173, i32 15, i32 77, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786443, metadata !169, i32 15, i32 7, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 17, i32 10, metadata !172, null}
!175 = metadata !{i32 19, i32 7, metadata !169, null}
!176 = metadata !{i32 20, i32 4, metadata !169, null}
!177 = metadata !{i32 13, i32 61, metadata !166, null}
!178 = metadata !{i32 786688, metadata !167, metadata !"k", metadata !23, i32 6, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 21, i32 1, metadata !167, null}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 15, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"input", metadata !184, metadata !"short", i32 0, i32 15}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 63, i32 1}
!186 = metadata !{metadata !187}
!187 = metadata !{i32 0, i32 15, metadata !188}
!188 = metadata !{metadata !189}
!189 = metadata !{metadata !"output", metadata !184, metadata !"short", i32 0, i32 15}
!190 = metadata !{i32 786689, metadata !47, metadata !"input", null, i32 78, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 78, i32 16, metadata !47, null}
!192 = metadata !{i32 786689, metadata !47, metadata !"output", null, i32 78, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 78, i32 38, metadata !47, null}
!194 = metadata !{i32 790529, metadata !195, metadata !"buf_2d_in[0]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!195 = metadata !{i32 786688, metadata !196, metadata !"buf_2d_in", metadata !23, i32 81, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 786443, metadata !47, i32 79, i32 1, metadata !23, i32 28} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 81, i32 10, metadata !196, null}
!198 = metadata !{i32 790529, metadata !195, metadata !"buf_2d_in[1]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!199 = metadata !{i32 790529, metadata !195, metadata !"buf_2d_in[2]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!200 = metadata !{i32 790529, metadata !195, metadata !"buf_2d_in[3]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!201 = metadata !{i32 790529, metadata !195, metadata !"buf_2d_in[4]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!202 = metadata !{i32 790529, metadata !195, metadata !"buf_2d_in[5]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!203 = metadata !{i32 790529, metadata !195, metadata !"buf_2d_in[6]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!204 = metadata !{i32 790529, metadata !195, metadata !"buf_2d_in[7]", null, i32 81, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!205 = metadata !{i32 786688, metadata !196, metadata !"buf_2d_out", metadata !23, i32 82, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 82, i32 10, metadata !196, null}
!207 = metadata !{i32 85, i32 4, metadata !196, null}
!208 = metadata !{i32 87, i32 4, metadata !196, null}
!209 = metadata !{i32 786689, metadata !44, metadata !"buf", null, i32 66, metadata !63, i32 0, metadata !210} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 90, i32 4, metadata !196, null}
!211 = metadata !{i32 66, i32 23, metadata !44, metadata !210}
!212 = metadata !{i32 786689, metadata !44, metadata !"output", null, i32 66, metadata !57, i32 0, metadata !210} ; [ DW_TAG_arg_variable ]
!213 = metadata !{i32 66, i32 116, metadata !44, metadata !210}
!214 = metadata !{i32 71, i32 9, metadata !215, metadata !210}
!215 = metadata !{i32 786443, metadata !216, i32 71, i32 4, metadata !23, i32 24} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 786443, metadata !44, i32 67, i32 1, metadata !23, i32 23} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 71, i32 67, metadata !218, metadata !210}
!218 = metadata !{i32 786443, metadata !215, i32 71, i32 66, metadata !23, i32 25} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 74, i32 1, metadata !220, metadata !210}
!220 = metadata !{i32 786443, metadata !221, i32 74, i32 1, metadata !23, i32 27} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 786443, metadata !218, i32 73, i32 7, metadata !23, i32 26} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 73, i32 12, metadata !221, metadata !210}
!223 = metadata !{i32 74, i32 2, metadata !220, metadata !210}
!224 = metadata !{i32 75, i32 1, metadata !220, metadata !210}
!225 = metadata !{i32 74, i32 67, metadata !220, metadata !210}
!226 = metadata !{i32 73, i32 64, metadata !221, metadata !210}
!227 = metadata !{i32 786688, metadata !216, metadata !"c", metadata !23, i32 68, metadata !87, i32 0, metadata !210} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 75, i32 4, metadata !218, metadata !210}
!229 = metadata !{i32 71, i32 61, metadata !215, metadata !210}
!230 = metadata !{i32 786688, metadata !216, metadata !"r", metadata !23, i32 68, metadata !87, i32 0, metadata !210} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 91, i32 1, metadata !196, null}
