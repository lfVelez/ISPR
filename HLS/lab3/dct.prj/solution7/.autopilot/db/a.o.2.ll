; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution7/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table = internal unnamed_addr constant [8 x i127] [i127 42535944912128296218691764462974672896, i127 -58990447664026830905795916450469172125, i127 55573504569212691703635314403542378959, i127 -50012024272023034652441485723554798175, i127 42539839273422690665195578862551965696, i127 -33416722235422479620126768456641144540, i127 23021796304660295749636480429053776209, i127 -11734080920250769989864363945147758380] ; [#uses=2 type=[8 x i127]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]
@.str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @write_data([8 x [8 x i16]]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf}, i64 0, metadata !31), !dbg !42 ; [debug line = 66:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !43), !dbg !47 ; [debug line = 66:116] [debug variable = output]
  br label %1, !dbg !48                           ; [debug line = 71:9]

; <label>:1                                       ; preds = %8, %0
  %r = phi i4 [ 0, %0 ], [ %r.1, %8 ]             ; [#uses=4 type=i4]
  %r.cast7 = zext i4 %r to i6, !dbg !48           ; [#uses=1 type=i6] [debug line = 71:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !48        ; [#uses=1 type=i1] [debug line = 71:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %3, !dbg !48 ; [debug line = 71:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !51 ; [debug line = 71:67]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12), !dbg !51 ; [#uses=1 type=i32] [debug line = 71:67]
  %tmp = zext i4 %r to i64, !dbg !53              ; [#uses=1 type=i64] [debug line = 74:1]
  %tmp.1 = shl i6 %r.cast7, 3, !dbg !53           ; [#uses=1 type=i6] [debug line = 74:1]
  br label %4, !dbg !56                           ; [debug line = 73:12]

; <label>:4                                       ; preds = %6, %3
  %c = phi i4 [ 0, %3 ], [ %c.1, %6 ]             ; [#uses=4 type=i4]
  %c.cast6 = zext i4 %c to i6, !dbg !56           ; [#uses=1 type=i6] [debug line = 73:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !56         ; [#uses=1 type=i1] [debug line = 73:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %6, !dbg !56   ; [debug line = 73:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str13) nounwind, !dbg !57 ; [debug line = 74:2]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str13), !dbg !57 ; [#uses=1 type=i32] [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !58 ; [debug line = 75:1]
  %tmp.3 = zext i4 %c to i64, !dbg !53            ; [#uses=1 type=i64] [debug line = 74:1]
  %buf.addr = getelementptr [8 x [8 x i16]]* %buf, i64 0, i64 %tmp, i64 %tmp.3, !dbg !53 ; [#uses=1 type=i16*] [debug line = 74:1]
  %buf.load = load i16* %buf.addr, align 2, !dbg !53 ; [#uses=1 type=i16] [debug line = 74:1]
  %tmp.4 = add i6 %c.cast6, %tmp.1, !dbg !53      ; [#uses=1 type=i6] [debug line = 74:1]
  %tmp.5 = zext i6 %tmp.4 to i64, !dbg !53        ; [#uses=1 type=i64] [debug line = 74:1]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5, !dbg !53 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %buf.load, i16* %output.addr, align 2, !dbg !53 ; [debug line = 74:1]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str13, i32 %tmp.6), !dbg !59 ; [#uses=0 type=i32] [debug line = 74:67]
  %c.1 = add i4 %c, 1, !dbg !60                   ; [#uses=1 type=i4] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !61), !dbg !60 ; [debug line = 73:64] [debug variable = c]
  br label %4, !dbg !60                           ; [debug line = 73:64]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.2), !dbg !63 ; [#uses=0 type=i32] [debug line = 75:4]
  %r.1 = add i4 %r, 1, !dbg !64                   ; [#uses=1 type=i4] [debug line = 71:61]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !65), !dbg !64 ; [debug line = 71:61] [debug variable = r]
  br label %1, !dbg !64                           ; [debug line = 71:61]

; <label>:10                                      ; preds = %1
  ret void, !dbg !66                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [8 x i128]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !67), !dbg !71 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %buf}, i64 0, metadata !72), !dbg !73 ; [debug line = 54:44] [debug variable = buf]
  br label %1, !dbg !74                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %8, %0
  %r = phi i4 [ 0, %0 ], [ %r.2, %8 ]             ; [#uses=4 type=i4]
  %r.cast3 = zext i4 %r to i6, !dbg !74           ; [#uses=1 type=i6] [debug line = 59:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !74        ; [#uses=1 type=i1] [debug line = 59:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %3, !dbg !74 ; [debug line = 59:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !77 ; [debug line = 59:67]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10), !dbg !77 ; [#uses=1 type=i32] [debug line = 59:67]
  %tmp = shl i6 %r.cast3, 3, !dbg !79             ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp.7 = zext i4 %r to i64, !dbg !79            ; [#uses=1 type=i64] [debug line = 62:1]
  %buf.addr = getelementptr [8 x i128]* %buf, i64 0, i64 %tmp.7, !dbg !79 ; [#uses=2 type=i128*] [debug line = 62:1]
  br label %4, !dbg !82                           ; [debug line = 61:12]

; <label>:4                                       ; preds = %6, %3
  %c = phi i4 [ 0, %3 ], [ %c.2, %6 ]             ; [#uses=4 type=i4]
  %c.cast2 = zext i4 %c to i6, !dbg !82           ; [#uses=1 type=i6] [debug line = 61:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !82         ; [#uses=1 type=i1] [debug line = 61:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %6, !dbg !82   ; [debug line = 61:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !83 ; [debug line = 62:2]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str11), !dbg !83 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 63:1]
  %tmp.9 = add i6 %c.cast2, %tmp, !dbg !79        ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp. = zext i6 %tmp.9 to i64, !dbg !79         ; [#uses=1 type=i64] [debug line = 62:1]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp., !dbg !79 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input.load = load i16* %input.addr, align 2, !dbg !79 ; [#uses=1 type=i16] [debug line = 62:1]
  %buf.load = load i128* %buf.addr, align 8, !dbg !79 ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp.12.cast = zext i4 %c to i7, !dbg !79       ; [#uses=1 type=i7] [debug line = 62:1]
  %tmp.2 = shl i7 %tmp.12.cast, 4, !dbg !79       ; [#uses=2 type=i7] [debug line = 62:1]
  %tmp.13.cast = zext i7 %tmp.2 to i9, !dbg !79   ; [#uses=1 type=i9] [debug line = 62:1]
  %tmp.3 = or i7 %tmp.2, 15                       ; [#uses=1 type=i7]
  %tmp.14.cast = zext i7 %tmp.3 to i9             ; [#uses=1 type=i9]
  %tmp.4 = call i128 @_ssdm_op_PartSet.i128.i128.i16.i9.i9(i128 %buf.load, i16 %input.load, i9 %tmp.13.cast, i9 %tmp.14.cast), !dbg !79 ; [#uses=1 type=i128] [debug line = 62:1]
  store i128 %tmp.4, i128* %buf.addr, align 8, !dbg !79 ; [debug line = 62:1]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str11, i32 %tmp.1), !dbg !85 ; [#uses=0 type=i32] [debug line = 62:66]
  %c.2 = add i4 %c, 1, !dbg !86                   ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c.2}, i64 0, metadata !87), !dbg !86 ; [debug line = 61:64] [debug variable = c]
  br label %4, !dbg !86                           ; [debug line = 61:64]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.8), !dbg !88 ; [#uses=0 type=i32] [debug line = 63:4]
  %r.2 = add i4 %r, 1, !dbg !89                   ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r.2}, i64 0, metadata !90), !dbg !89 ; [debug line = 59:61] [debug variable = r]
  br label %1, !dbg !89                           ; [debug line = 59:61]

; <label>:10                                      ; preds = %1
  ret void, !dbg !91                              ; [debug line = 64:1]
}

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str1) nounwind, !dbg !92 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !97
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !103
  %row_outbuf.i = alloca [8 x [8 x i16]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf.i = alloca [8 x [8 x i16]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x i128], align 8         ; [#uses=2 type=[8 x i128]*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %buf_2d_in = alloca [8 x i128], align 8         ; [#uses=2 type=[8 x i128]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !107), !dbg !108 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !109), !dbg !110 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i128]* %col_inbuf}, metadata !111) nounwind, !dbg !119 ; [debug line = 27:109@87:4] [debug variable = col_inbuf]
  call void @llvm.dbg.declare(metadata !{[8 x i128]* %buf_2d_in}, metadata !121), !dbg !122 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !123), !dbg !124 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* %input, [8 x i128]* %buf_2d_in) nounwind
  call fastcc void @Loop_Row_DCT_Loop_proc([8 x i128]* %buf_2d_in, [8 x [8 x i16]]* %row_outbuf.i)
  call fastcc void @Loop_Xpose_Row_Outer_Loop_proc([8 x [8 x i16]]* %row_outbuf.i, [8 x i128]* %col_inbuf)
  call fastcc void @Loop_Col_DCT_Loop_proc([8 x i128]* %col_inbuf, [8 x [8 x i16]]* %col_outbuf.i)
  call fastcc void @Loop_Xpose_Col_Outer_Loop_proc([8 x [8 x i16]]* %col_outbuf.i, [8 x [8 x i16]]* %buf_2d_out)
  call fastcc void @write_data([8 x [8 x i16]]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !125 ; [debug line = 90:4]
  ret void, !dbg !126                             ; [debug line = 91:1]
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

; [#uses=2]
declare i128 @_ssdm_op_PartSet.i128.i128.i16.i9.i9(i128, i16, i9, i9) nounwind readnone

; [#uses=16]
declare i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128, i9, i9) nounwind readnone

; [#uses=14]
declare i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127, i32, i32) nounwind readnone

; [#uses=2]
declare i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127, i32, i32) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=1]
define internal fastcc void @Loop_Xpose_Row_Outer_Loop_proc([8 x [8 x i16]]* nocapture %row_outbuf.i, [8 x i128]* nocapture %col_inbuf) nounwind {
newFuncRoot:
  br label %.preheader2.i

.preheader1.i.exitStub:                           ; preds = %.preheader2.i
  ret void

.preheader2.i:                                    ; preds = %1, %newFuncRoot
  %j.0.i = phi i4 [ %j, %1 ], [ 0, %newFuncRoot ] ; [#uses=3 type=i4]
  %tmp.1 = icmp eq i4 %j.0.i, -8, !dbg !127       ; [#uses=1 type=i1] [debug line = 37:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1, label %.preheader1.i.exitStub, label %5, !dbg !127 ; [debug line = 37:9@87:4]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str5, i32 %tmp.) nounwind, !dbg !129 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %j = add i4 %j.0.i, 1, !dbg !132                ; [#uses=1 type=i4] [debug line = 37:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !133) nounwind, !dbg !132 ; [debug line = 37:61@87:4] [debug variable = j]
  br label %.preheader2.i, !dbg !132              ; [debug line = 37:61@87:4]

; <label>:3                                       ; preds = %6, %5
  %i.1.i = phi i4 [ 0, %5 ], [ %i, %6 ]           ; [#uses=4 type=i4]
  %tmp.6 = icmp eq i4 %i.1.i, -8, !dbg !135       ; [#uses=1 type=i1] [debug line = 39:11@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.6, label %1, label %6, !dbg !135     ; [debug line = 39:11@87:4]

; <label>:5                                       ; preds = %.preheader2.i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str5) nounwind, !dbg !136 ; [debug line = 38:1@87:4]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str5) nounwind, !dbg !136 ; [#uses=1 type=i32] [debug line = 38:1@87:4]
  %tmp.3 = zext i4 %j.0.i to i64, !dbg !137       ; [#uses=2 type=i64] [debug line = 40:1@87:4]
  %col_inbuf.addr = getelementptr [8 x i128]* %col_inbuf, i64 0, i64 %tmp.3, !dbg !137 ; [#uses=2 type=i128*] [debug line = 40:1@87:4]
  br label %3, !dbg !135                          ; [debug line = 39:11@87:4]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str6) nounwind, !dbg !139 ; [debug line = 40:2@87:4]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str6) nounwind, !dbg !139 ; [#uses=1 type=i32] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !140 ; [debug line = 41:1@87:4]
  %tmp.8 = zext i4 %i.1.i to i64, !dbg !137       ; [#uses=1 type=i64] [debug line = 40:1@87:4]
  %row_outbuf.i.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf.i, i64 0, i64 %tmp.8, i64 %tmp.3, !dbg !137 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %row_outbuf.i.load = load i16* %row_outbuf.i.addr, align 2, !dbg !137 ; [#uses=1 type=i16] [debug line = 40:1@87:4]
  %col_inbuf.load = load i128* %col_inbuf.addr, align 8, !dbg !137 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp.37.cast = zext i4 %i.1.i to i7, !dbg !137  ; [#uses=1 type=i7] [debug line = 40:1@87:4]
  %tmp.4 = shl i7 %tmp.37.cast, 4, !dbg !137      ; [#uses=2 type=i7] [debug line = 40:1@87:4]
  %tmp.38.cast = zext i7 %tmp.4 to i9, !dbg !137  ; [#uses=1 type=i9] [debug line = 40:1@87:4]
  %tmp.5 = or i7 %tmp.4, 15                       ; [#uses=1 type=i7]
  %tmp.39.cast = zext i7 %tmp.5 to i9             ; [#uses=1 type=i9]
  %tmp.7 = call i128 @_ssdm_op_PartSet.i128.i128.i16.i9.i9(i128 %col_inbuf.load, i16 %row_outbuf.i.load, i9 %tmp.38.cast, i9 %tmp.39.cast), !dbg !137 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  store i128 %tmp.7, i128* %col_inbuf.addr, align 8, !dbg !137 ; [debug line = 40:1@87:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str6, i32 %tmp.2) nounwind, !dbg !141 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %i = add i4 %i.1.i, 1, !dbg !142                ; [#uses=1 type=i4] [debug line = 39:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !143) nounwind, !dbg !142 ; [debug line = 39:63@87:4] [debug variable = i]
  br label %3, !dbg !142                          ; [debug line = 39:63@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Xpose_Col_Outer_Loop_proc([8 x [8 x i16]]* nocapture %col_outbuf.i, [8 x [8 x i16]]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %.preheader.i

dct_2d.exit.exitStub:                             ; preds = %.preheader.i
  ret void

.preheader.i:                                     ; preds = %1, %newFuncRoot
  %j.1.i = phi i4 [ %j, %1 ], [ 0, %newFuncRoot ] ; [#uses=3 type=i4]
  %tmp.4 = icmp eq i4 %j.1.i, -8, !dbg !144       ; [#uses=1 type=i1] [debug line = 48:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.4, label %dct_2d.exit.exitStub, label %5, !dbg !144 ; [debug line = 48:9@87:4]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str8, i32 %tmp.) nounwind, !dbg !146 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %j = add i4 %j.1.i, 1, !dbg !149                ; [#uses=1 type=i4] [debug line = 48:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !133) nounwind, !dbg !149 ; [debug line = 48:61@87:4] [debug variable = j]
  br label %.preheader.i, !dbg !149               ; [debug line = 48:61@87:4]

; <label>:3                                       ; preds = %6, %5
  %i.3.i = phi i4 [ 0, %5 ], [ %i, %6 ]           ; [#uses=3 type=i4]
  %tmp.9 = icmp eq i4 %i.3.i, -8, !dbg !150       ; [#uses=1 type=i1] [debug line = 50:11@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.9, label %1, label %6, !dbg !150     ; [debug line = 50:11@87:4]

; <label>:5                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str8) nounwind, !dbg !151 ; [debug line = 49:1@87:4]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str8) nounwind, !dbg !151 ; [#uses=1 type=i32] [debug line = 49:1@87:4]
  %tmp.7 = zext i4 %j.1.i to i64, !dbg !152       ; [#uses=2 type=i64] [debug line = 51:1@87:4]
  br label %3, !dbg !150                          ; [debug line = 50:11@87:4]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str9) nounwind, !dbg !154 ; [debug line = 51:2@87:4]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str9) nounwind, !dbg !154 ; [#uses=1 type=i32] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !155 ; [debug line = 52:1@87:4]
  %tmp.10 = zext i4 %i.3.i to i64, !dbg !152      ; [#uses=2 type=i64] [debug line = 51:1@87:4]
  %col_outbuf.i.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf.i, i64 0, i64 %tmp.10, i64 %tmp.7, !dbg !152 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %col_outbuf.i.load = load i16* %col_outbuf.i.addr, align 2, !dbg !152 ; [#uses=1 type=i16] [debug line = 51:1@87:4]
  %buf_2d_out.addr = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.7, i64 %tmp.10, !dbg !152 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  store i16 %col_outbuf.i.load, i16* %buf_2d_out.addr, align 2, !dbg !152 ; [debug line = 51:1@87:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str9, i32 %tmp.8) nounwind, !dbg !156 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %i = add i4 %i.3.i, 1, !dbg !157                ; [#uses=1 type=i4] [debug line = 50:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !143) nounwind, !dbg !157 ; [debug line = 50:63@87:4] [debug variable = i]
  br label %3, !dbg !157                          ; [debug line = 50:63@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Row_DCT_Loop_proc([8 x i128]* nocapture %buf_2d_in, [8 x [8 x i16]]* nocapture %row_outbuf.i) nounwind {
newFuncRoot:
  br label %0, !dbg !158                          ; [debug line = 32:8@87:4]

.preheader2.i.exitStub:                           ; preds = %0
  ret void

; <label>:0                                       ; preds = %dct_1d.exit, %newFuncRoot
  %i.0.i = phi i4 [ 0, %newFuncRoot ], [ %i, %dct_1d.exit ] ; [#uses=6 type=i4]
  %tmp = icmp eq i4 %i.0.i, -8, !dbg !158         ; [#uses=1 type=i1] [debug line = 32:8@87:4]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader2.i.exitStub, label %2, !dbg !158 ; [debug line = 32:8@87:4]

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str4) nounwind, !dbg !160 ; [debug line = 32:66@87:4]
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.0.i) nounwind, !hlsrange !162
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.0.i) nounwind, !hlsrange !162
  %tmp.141.cast.i = zext i4 %i.0.i to i64         ; [#uses=1 type=i64]
  %tmp.14.cast.i = zext i4 %i.0.i to i64          ; [#uses=1 type=i64]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %buf_2d_in}, i64 0, metadata !163) nounwind, !dbg !169 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %row_outbuf.i}, i64 0, metadata !170) nounwind, !dbg !171 ; [debug line = 4:81] [debug variable = dst]
  %buf_2d_in.addr = getelementptr [8 x i128]* %buf_2d_in, i64 0, i64 %tmp.14.cast.i, !dbg !172 ; [#uses=1 type=i128*] [debug line = 17:10]
  br label %3, !dbg !178                          ; [debug line = 13:9]

; <label>:3                                       ; preds = %5, %2
  %k.i = phi i4 [ 0, %2 ], [ %k, %5 ]             ; [#uses=3 type=i4]
  %tmp.i = icmp eq i4 %k.i, -8, !dbg !178         ; [#uses=1 type=i1] [debug line = 13:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %dct_1d.exit, label %5, !dbg !178 ; [debug line = 13:9]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !179 ; [debug line = 13:67]
  %tmp.6.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str2) nounwind, !dbg !179 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !180 ; [debug line = 14:1]
  %tmp..i = zext i4 %k.i to i64, !dbg !181        ; [#uses=2 type=i64] [debug line = 16:48]
  %dct_coeff_table.addr = getelementptr [8 x i127]* @dct_coeff_table, i64 0, i64 %tmp..i, !dbg !181 ; [#uses=1 type=i127*] [debug line = 16:48]
  %dct_coeff_table.load = load i127* %dct_coeff_table.addr, align 16, !dbg !181 ; [#uses=8 type=i127] [debug line = 16:48]
  %tmp.7.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 0, i32 15) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.cast.i = sext i16 %tmp.7.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %buf_2d_in.load = load i128* %buf_2d_in.addr, align 8, !dbg !172 ; [#uses=8 type=i128] [debug line = 17:10]
  %tmp.9.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 0, i9 15) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.cast.i = sext i16 %tmp.9.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.i = mul i29 %tmp.7.cast.i, %coeff.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 16, i32 31) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.1.cast.i = sext i16 %tmp.10.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.11.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 16, i9 31) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.1.cast.i = sext i16 %tmp.11.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.1.i = mul i29 %tmp.7.1.cast.i, %coeff.1.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.12.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 32, i32 47) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.2.cast.i = sext i16 %tmp.12.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.13.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 32, i9 47) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.2.cast.i = sext i16 %tmp.13.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.2.i = mul i29 %tmp.7.2.cast.i, %coeff.2.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.15.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 48, i32 63) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.3.cast.i = sext i16 %tmp.15.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.16.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 48, i9 63) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.3.cast.i = sext i16 %tmp.16.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.3.i = mul i29 %tmp.7.3.cast.i, %coeff.3.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.17.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 64, i32 79) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.4.cast.i = sext i16 %tmp.17.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 64, i9 79) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.4.cast.i = sext i16 %tmp.18.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.4.i = mul i29 %tmp.7.4.cast.i, %coeff.4.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.19.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 80, i32 95) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.5.cast.i = sext i16 %tmp.19.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.20.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 80, i9 95) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.5.cast.i = sext i16 %tmp.20.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.5.i = mul i29 %tmp.7.5.cast.i, %coeff.5.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.21.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 96, i32 111) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.6.cast.i = sext i16 %tmp.21.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.22.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 96, i9 111) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.6.cast.i = sext i16 %tmp.22.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.6.i = mul i29 %tmp.7.6.cast.i, %coeff.6.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.1 = call i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127 %dct_coeff_table.load, i32 112, i32 126) nounwind, !dbg !181 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.7.cast.i = sext i15 %tmp.1 to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.24.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 112, i9 127) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.7.cast.i = sext i16 %tmp.24.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.7.i = mul i29 %coeff.7.cast.i, %tmp.7.7.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp2 = add i29 %tmp.8.1.i, %tmp.8.i, !dbg !182 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp.8.3.i, %tmp.8.2.i, !dbg !182 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !182         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp.8.5.i, %tmp.8.4.i, !dbg !182 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp7 = add i29 %tmp.8.7.i, 4096, !dbg !182     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp.8.6.i, %tmp7, !dbg !182    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !182         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.3.i = add i29 %tmp1, %tmp4, !dbg !182      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.4.i = lshr i29 %tmp.3.i, 13, !dbg !182     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.5.i = trunc i29 %tmp.4.i to i16, !dbg !182 ; [#uses=1 type=i16] [debug line = 19:7]
  %row_outbuf.i.addr = getelementptr [8 x [8 x i16]]* %row_outbuf.i, i64 0, i64 %tmp.141.cast.i, i64 %tmp..i, !dbg !182 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.5.i, i16* %row_outbuf.i.addr, align 2, !dbg !182 ; [debug line = 19:7]
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str2, i32 %tmp.6.i) nounwind, !dbg !183 ; [#uses=0 type=i32] [debug line = 20:4]
  %k = add i4 %k.i, 1, !dbg !184                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !185) nounwind, !dbg !184 ; [debug line = 13:61] [debug variable = k]
  br label %3, !dbg !184                          ; [debug line = 13:61]

dct_1d.exit:                                      ; preds = %3
  %i = add i4 %i.0.i, 1, !dbg !186                ; [#uses=1 type=i4] [debug line = 32:60@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !143) nounwind, !dbg !186 ; [debug line = 32:60@87:4] [debug variable = i]
  br label %0, !dbg !186                          ; [debug line = 32:60@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Col_DCT_Loop_proc([8 x i128]* nocapture %col_inbuf, [8 x [8 x i16]]* nocapture %col_outbuf.i) nounwind {
newFuncRoot:
  br label %.preheader1.i

.preheader.i.exitStub:                            ; preds = %.preheader1.i
  ret void

.preheader1.i:                                    ; preds = %dct_1d.exit, %newFuncRoot
  %i.2.i = phi i4 [ %i, %dct_1d.exit ], [ 0, %newFuncRoot ] ; [#uses=6 type=i4]
  %tmp.2 = icmp eq i4 %i.2.i, -8, !dbg !187       ; [#uses=1 type=i1] [debug line = 43:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.2, label %.preheader.i.exitStub, label %1, !dbg !187 ; [debug line = 43:9@87:4]

; <label>:1                                       ; preds = %.preheader1.i
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str7) nounwind, !dbg !189 ; [debug line = 43:67@87:4]
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.2.i) nounwind, !hlsrange !162
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.2.i) nounwind, !hlsrange !162
  %tmp.141.cast.i = zext i4 %i.2.i to i64         ; [#uses=1 type=i64]
  %tmp.14.cast.i = zext i4 %i.2.i to i64          ; [#uses=1 type=i64]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %col_inbuf}, i64 0, metadata !163) nounwind, !dbg !169 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %col_outbuf.i}, i64 0, metadata !170) nounwind, !dbg !171 ; [debug line = 4:81] [debug variable = dst]
  %col_inbuf.addr = getelementptr [8 x i128]* %col_inbuf, i64 0, i64 %tmp.14.cast.i, !dbg !172 ; [#uses=1 type=i128*] [debug line = 17:10]
  br label %2, !dbg !178                          ; [debug line = 13:9]

; <label>:2                                       ; preds = %4, %1
  %k.i = phi i4 [ 0, %1 ], [ %k, %4 ]             ; [#uses=3 type=i4]
  %tmp.i = icmp eq i4 %k.i, -8, !dbg !178         ; [#uses=1 type=i1] [debug line = 13:9]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %dct_1d.exit, label %4, !dbg !178 ; [debug line = 13:9]

; <label>:4                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !179 ; [debug line = 13:67]
  %tmp.6.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str2) nounwind, !dbg !179 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !180 ; [debug line = 14:1]
  %tmp..i = zext i4 %k.i to i64, !dbg !181        ; [#uses=2 type=i64] [debug line = 16:48]
  %dct_coeff_table.addr = getelementptr [8 x i127]* @dct_coeff_table, i64 0, i64 %tmp..i, !dbg !181 ; [#uses=1 type=i127*] [debug line = 16:48]
  %dct_coeff_table.load = load i127* %dct_coeff_table.addr, align 16, !dbg !181 ; [#uses=8 type=i127] [debug line = 16:48]
  %tmp.7.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 0, i32 15) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.cast.i = sext i16 %tmp.7.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %col_inbuf.load = load i128* %col_inbuf.addr, align 8, !dbg !172 ; [#uses=8 type=i128] [debug line = 17:10]
  %tmp.9.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 0, i9 15) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.cast.i = sext i16 %tmp.9.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.i = mul i29 %tmp.7.cast.i, %coeff.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 16, i32 31) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.1.cast.i = sext i16 %tmp.10.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.11.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 16, i9 31) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.1.cast.i = sext i16 %tmp.11.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.1.i = mul i29 %tmp.7.1.cast.i, %coeff.1.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.12.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 32, i32 47) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.2.cast.i = sext i16 %tmp.12.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.13.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 32, i9 47) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.2.cast.i = sext i16 %tmp.13.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.2.i = mul i29 %tmp.7.2.cast.i, %coeff.2.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.15.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 48, i32 63) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.3.cast.i = sext i16 %tmp.15.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.16.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 48, i9 63) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.3.cast.i = sext i16 %tmp.16.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.3.i = mul i29 %tmp.7.3.cast.i, %coeff.3.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.17.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 64, i32 79) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.4.cast.i = sext i16 %tmp.17.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 64, i9 79) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.4.cast.i = sext i16 %tmp.18.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.4.i = mul i29 %tmp.7.4.cast.i, %coeff.4.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.19.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 80, i32 95) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.5.cast.i = sext i16 %tmp.19.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.20.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 80, i9 95) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.5.cast.i = sext i16 %tmp.20.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.5.i = mul i29 %tmp.7.5.cast.i, %coeff.5.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.21.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 96, i32 111) nounwind, !dbg !181 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.6.cast.i = sext i16 %tmp.21.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.22.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 96, i9 111) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.6.cast.i = sext i16 %tmp.22.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.6.i = mul i29 %tmp.7.6.cast.i, %coeff.6.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.3 = call i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127 %dct_coeff_table.load, i32 112, i32 126) nounwind, !dbg !181 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.7.cast.i = sext i15 %tmp.3 to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.24.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 112, i9 127) nounwind, !dbg !172 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.7.7.cast.i = sext i16 %tmp.24.i to i29, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.8.7.i = mul i29 %coeff.7.cast.i, %tmp.7.7.cast.i, !dbg !172 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp1 = add i29 %tmp.8.1.i, %tmp.8.i, !dbg !182 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp2 = add i29 %tmp.8.3.i, %tmp.8.2.i, !dbg !182 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp = add i29 %tmp1, %tmp2, !dbg !182          ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp.8.5.i, %tmp.8.4.i, !dbg !182 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp.8.7.i, 4096, !dbg !182     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp.8.6.i, %tmp6, !dbg !182    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !182         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.3.i = add i29 %tmp, %tmp3, !dbg !182       ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.4.i = lshr i29 %tmp.3.i, 13, !dbg !182     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.5.i = trunc i29 %tmp.4.i to i16, !dbg !182 ; [#uses=1 type=i16] [debug line = 19:7]
  %col_outbuf.i.addr = getelementptr [8 x [8 x i16]]* %col_outbuf.i, i64 0, i64 %tmp.141.cast.i, i64 %tmp..i, !dbg !182 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.5.i, i16* %col_outbuf.i.addr, align 2, !dbg !182 ; [debug line = 19:7]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str2, i32 %tmp.6.i) nounwind, !dbg !183 ; [#uses=0 type=i32] [debug line = 20:4]
  %k = add i4 %k.i, 1, !dbg !184                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !185) nounwind, !dbg !184 ; [debug line = 13:61] [debug variable = k]
  br label %2, !dbg !184                          ; [debug line = 13:61]

dct_1d.exit:                                      ; preds = %2
  %i = add i4 %i.2.i, 1, !dbg !191                ; [#uses=1 type=i4] [debug line = 43:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !143) nounwind, !dbg !191 ; [debug line = 43:61@87:4] [debug variable = i]
  br label %.preheader1.i, !dbg !191              ; [debug line = 43:61@87:4]
}

!opencl.kernels = !{!0, !7, !10, !13, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!19}

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
!19 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution7/.autopilot/db/dct.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !20} ; [ DW_TAG_compile_unit ]
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !22, metadata !30}
!22 = metadata !{i32 786484, i32 0, null, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !23, i32 8, metadata !24, i32 1, i32 1, [8 x i127]* @dct_coeff_table} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786473, metadata !"dct.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !25, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ]
!26 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !23, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{metadata !29, metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !23, i32 8, metadata !24, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786689, metadata !32, metadata !"buf", null, i32 66, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write_data", metadata !"write_data", metadata !"", metadata !23, i32 66, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 67} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !35, metadata !38}
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !27, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !29}
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{i32 66, i32 23, metadata !32, null}
!43 = metadata !{i32 786689, metadata !32, metadata !"output", null, i32 66, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!47 = metadata !{i32 66, i32 116, metadata !32, null}
!48 = metadata !{i32 71, i32 9, metadata !49, null}
!49 = metadata !{i32 786443, metadata !50, i32 71, i32 4, metadata !23, i32 24} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786443, metadata !32, i32 67, i32 1, metadata !23, i32 23} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 71, i32 67, metadata !52, null}
!52 = metadata !{i32 786443, metadata !49, i32 71, i32 66, metadata !23, i32 25} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 74, i32 1, metadata !54, null}
!54 = metadata !{i32 786443, metadata !55, i32 74, i32 1, metadata !23, i32 27} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !52, i32 73, i32 7, metadata !23, i32 26} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 73, i32 12, metadata !55, null}
!57 = metadata !{i32 74, i32 2, metadata !54, null}
!58 = metadata !{i32 75, i32 1, metadata !54, null}
!59 = metadata !{i32 74, i32 67, metadata !54, null}
!60 = metadata !{i32 73, i32 64, metadata !55, null}
!61 = metadata !{i32 786688, metadata !50, metadata !"c", metadata !23, i32 68, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!63 = metadata !{i32 75, i32 4, metadata !52, null}
!64 = metadata !{i32 71, i32 61, metadata !49, null}
!65 = metadata !{i32 786688, metadata !50, metadata !"r", metadata !23, i32 68, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 76, i32 1, metadata !50, null}
!67 = metadata !{i32 786689, metadata !68, metadata !"input", null, i32 54, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read_data", metadata !"read_data", metadata !"", metadata !23, i32 54, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 55} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !38, metadata !35}
!71 = metadata !{i32 54, i32 22, metadata !68, null}
!72 = metadata !{i32 786689, metadata !68, metadata !"buf", null, i32 54, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 54, i32 44, metadata !68, null}
!74 = metadata !{i32 59, i32 9, metadata !75, null}
!75 = metadata !{i32 786443, metadata !76, i32 59, i32 4, metadata !23, i32 19} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !68, i32 55, i32 1, metadata !23, i32 18} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 59, i32 67, metadata !78, null}
!78 = metadata !{i32 786443, metadata !75, i32 59, i32 66, metadata !23, i32 20} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 62, i32 1, metadata !80, null}
!80 = metadata !{i32 786443, metadata !81, i32 62, i32 1, metadata !23, i32 22} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !78, i32 61, i32 7, metadata !23, i32 21} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 61, i32 12, metadata !81, null}
!83 = metadata !{i32 62, i32 2, metadata !80, null}
!84 = metadata !{i32 63, i32 1, metadata !80, null}
!85 = metadata !{i32 62, i32 66, metadata !80, null}
!86 = metadata !{i32 61, i32 64, metadata !81, null}
!87 = metadata !{i32 786688, metadata !76, metadata !"c", metadata !23, i32 56, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 63, i32 4, metadata !78, null}
!89 = metadata !{i32 59, i32 61, metadata !75, null}
!90 = metadata !{i32 786688, metadata !76, metadata !"r", metadata !23, i32 56, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 64, i32 1, metadata !76, null}
!92 = metadata !{i32 80, i32 1, metadata !93, null}
!93 = metadata !{i32 786443, metadata !94, i32 79, i32 1, metadata !23, i32 28} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786478, i32 0, metadata !23, metadata !"dct", metadata !"dct", metadata !"", metadata !23, i32 78, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 79} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !38, metadata !38}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 15, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"input", metadata !101, metadata !"short", i32 0, i32 15}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 63, i32 1}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 15, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"output", metadata !101, metadata !"short", i32 0, i32 15}
!107 = metadata !{i32 786689, metadata !94, metadata !"input", null, i32 78, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 78, i32 16, metadata !94, null}
!109 = metadata !{i32 786689, metadata !94, metadata !"output", null, i32 78, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 78, i32 38, metadata !94, null}
!111 = metadata !{i32 786688, metadata !112, metadata !"col_inbuf", metadata !23, i32 27, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786443, metadata !113, i32 25, i32 1, metadata !23, i32 5} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786478, i32 0, metadata !23, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !23, i32 23, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 25} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{null, metadata !116, metadata !116}
!116 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ]
!117 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !26, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!118 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !26, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!119 = metadata !{i32 27, i32 109, metadata !112, metadata !120}
!120 = metadata !{i32 87, i32 4, metadata !93, null}
!121 = metadata !{i32 786688, metadata !93, metadata !"buf_2d_in", metadata !23, i32 81, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 81, i32 10, metadata !93, null}
!123 = metadata !{i32 786688, metadata !93, metadata !"buf_2d_out", metadata !23, i32 82, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 82, i32 10, metadata !93, null}
!125 = metadata !{i32 90, i32 4, metadata !93, null}
!126 = metadata !{i32 91, i32 1, metadata !93, null}
!127 = metadata !{i32 37, i32 9, metadata !128, metadata !120}
!128 = metadata !{i32 786443, metadata !112, i32 37, i32 4, metadata !23, i32 8} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 40, i32 34, metadata !130, metadata !120}
!130 = metadata !{i32 786443, metadata !131, i32 39, i32 7, metadata !23, i32 10} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !128, i32 38, i32 1, metadata !23, i32 9} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 37, i32 61, metadata !128, metadata !120}
!133 = metadata !{i32 786688, metadata !112, metadata !"j", metadata !23, i32 28, metadata !134, i32 0, metadata !120} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 39, i32 11, metadata !130, metadata !120}
!136 = metadata !{i32 38, i32 1, metadata !131, metadata !120}
!137 = metadata !{i32 40, i32 1, metadata !138, metadata !120}
!138 = metadata !{i32 786443, metadata !130, i32 40, i32 1, metadata !23, i32 11} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 40, i32 2, metadata !138, metadata !120}
!140 = metadata !{i32 41, i32 1, metadata !138, metadata !120}
!141 = metadata !{i32 40, i32 34, metadata !138, metadata !120}
!142 = metadata !{i32 39, i32 63, metadata !130, metadata !120}
!143 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !23, i32 28, metadata !134, i32 0, metadata !120} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 48, i32 9, metadata !145, metadata !120}
!145 = metadata !{i32 786443, metadata !112, i32 48, i32 4, metadata !23, i32 14} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 51, i32 34, metadata !147, metadata !120}
!147 = metadata !{i32 786443, metadata !148, i32 50, i32 7, metadata !23, i32 16} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !145, i32 49, i32 1, metadata !23, i32 15} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 48, i32 61, metadata !145, metadata !120}
!150 = metadata !{i32 50, i32 11, metadata !147, metadata !120}
!151 = metadata !{i32 49, i32 1, metadata !148, metadata !120}
!152 = metadata !{i32 51, i32 1, metadata !153, metadata !120}
!153 = metadata !{i32 786443, metadata !147, i32 51, i32 1, metadata !23, i32 17} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 51, i32 2, metadata !153, metadata !120}
!155 = metadata !{i32 52, i32 1, metadata !153, metadata !120}
!156 = metadata !{i32 51, i32 34, metadata !153, metadata !120}
!157 = metadata !{i32 50, i32 63, metadata !147, metadata !120}
!158 = metadata !{i32 32, i32 8, metadata !159, metadata !120}
!159 = metadata !{i32 786443, metadata !112, i32 32, i32 4, metadata !23, i32 6} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 32, i32 66, metadata !161, metadata !120}
!161 = metadata !{i32 786443, metadata !159, i32 32, i32 65, metadata !23, i32 7} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i4 0, i4 7, i4 0, i4 7}         
!163 = metadata !{i32 786689, metadata !164, metadata !"src", null, i32 4, metadata !168, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 786478, i32 0, metadata !23, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !23, i32 4, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 5} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{null, metadata !167, metadata !167}
!167 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!168 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !26, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!169 = metadata !{i32 4, i32 24, metadata !164, null}
!170 = metadata !{i32 786689, metadata !164, metadata !"dst", null, i32 4, metadata !168, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 4, i32 81, metadata !164, null}
!172 = metadata !{i32 17, i32 10, metadata !173, null}
!173 = metadata !{i32 786443, metadata !174, i32 15, i32 77, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 786443, metadata !175, i32 15, i32 7, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 786443, metadata !176, i32 13, i32 66, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 786443, metadata !177, i32 13, i32 4, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 786443, metadata !164, i32 5, i32 1, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 13, i32 9, metadata !176, null}
!179 = metadata !{i32 13, i32 67, metadata !175, null}
!180 = metadata !{i32 14, i32 1, metadata !175, null}
!181 = metadata !{i32 16, i32 48, metadata !173, null}
!182 = metadata !{i32 19, i32 7, metadata !175, null}
!183 = metadata !{i32 20, i32 4, metadata !175, null}
!184 = metadata !{i32 13, i32 61, metadata !176, null}
!185 = metadata !{i32 786688, metadata !177, metadata !"k", metadata !23, i32 6, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 32, i32 60, metadata !159, metadata !120}
!187 = metadata !{i32 43, i32 9, metadata !188, metadata !120}
!188 = metadata !{i32 786443, metadata !112, i32 43, i32 4, metadata !23, i32 12} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 43, i32 67, metadata !190, metadata !120}
!190 = metadata !{i32 786443, metadata !188, i32 43, i32 66, metadata !23, i32 13} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 43, i32 61, metadata !188, metadata !120}
