; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table = internal unnamed_addr constant [8 x [8 x i16]] [[8 x i16] [i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192], [8 x i16] [i16 11363, i16 9633, i16 6436, i16 2260, i16 -2260, i16 -6436, i16 -9632, i16 -11362], [8 x i16] [i16 10703, i16 4433, i16 -4433, i16 -10703, i16 -10703, i16 -4433, i16 4433, i16 10703], [8 x i16] [i16 9633, i16 -2260, i16 -11362, i16 -6436, i16 6436, i16 11363, i16 2260, i16 -9632], [8 x i16] [i16 8192, i16 -8192, i16 -8192, i16 8192, i16 8192, i16 -8191, i16 -8191, i16 8192], [8 x i16] [i16 6436, i16 -11362, i16 2260, i16 9633, i16 -9632, i16 -2260, i16 11363, i16 -6436], [8 x i16] [i16 4433, i16 -10703, i16 10703, i16 -4433, i16 -4433, i16 10703, i16 -10703, i16 4433], [8 x i16] [i16 2260, i16 -6436, i16 9633, i16 -11362, i16 11363, i16 -9632, i16 6436, i16 -2260]], align 16 ; [#uses=1 type=[8 x [8 x i16]]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([8 x [8 x i16]]* nocapture %in_block, [8 x [8 x i16]]* nocapture %out_block) {
  %row_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %in_block}, i64 0, metadata !36), !dbg !44 ; [debug line = 23:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %out_block}, i64 0, metadata !45), !dbg !46 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_inbuf}, metadata !47), !dbg !49 ; [debug line = 27:109] [debug variable = col_inbuf]
  br label %1, !dbg !50                           ; [debug line = 32:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.4, %3 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %i, -8, !dbg !50              ; [#uses=1 type=i1] [debug line = 32:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader2.preheader, label %3, !dbg !50 ; [debug line = 32:8]

.preheader2.preheader:                            ; preds = %1
  br label %.preheader2, !dbg !52                 ; [debug line = 37:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str3) nounwind, !dbg !54 ; [debug line = 32:66]
  call fastcc void @dct_1d([8 x [8 x i16]]* %in_block, i4 %i, [8 x [8 x i16]]* %row_outbuf, i4 %i), !dbg !56 ; [debug line = 33:7]
  %i.4 = add i4 %i, 1, !dbg !57                   ; [#uses=1 type=i4] [debug line = 32:60]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !58), !dbg !57 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !57                           ; [debug line = 32:60]

.preheader2:                                      ; preds = %10, %.preheader2.preheader
  %j = phi i4 [ %j.2, %10 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i4]
  %tmp.2 = icmp eq i4 %j, -8, !dbg !52            ; [#uses=1 type=i1] [debug line = 37:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.2, label %.preheader1.preheader, label %5, !dbg !52 ; [debug line = 37:9]

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1, !dbg !60                 ; [debug line = 43:9]

; <label>:5                                       ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str4) nounwind, !dbg !62 ; [debug line = 38:1]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str4), !dbg !62 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp.3 = zext i4 %j to i64, !dbg !64            ; [#uses=2 type=i64] [debug line = 40:1]
  br label %6, !dbg !67                           ; [debug line = 39:11]

; <label>:6                                       ; preds = %8, %5
  %i.1 = phi i4 [ 0, %5 ], [ %i.6, %8 ]           ; [#uses=3 type=i4]
  %tmp.5 = icmp eq i4 %i.1, -8, !dbg !67          ; [#uses=1 type=i1] [debug line = 39:11]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.5, label %10, label %8, !dbg !67     ; [debug line = 39:11]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str5) nounwind, !dbg !68 ; [debug line = 40:2]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str5), !dbg !68 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !69 ; [debug line = 41:1]
  %tmp.7 = zext i4 %i.1 to i64, !dbg !64          ; [#uses=2 type=i64] [debug line = 40:1]
  %row_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i64 0, i64 %tmp.7, i64 %tmp.3, !dbg !64 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf.load = load i16* %row_outbuf.addr, align 2, !dbg !64 ; [#uses=1 type=i16] [debug line = 40:1]
  %col_inbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i64 0, i64 %tmp.3, i64 %tmp.7, !dbg !64 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf.load, i16* %col_inbuf.addr, align 2, !dbg !64 ; [debug line = 40:1]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str5, i32 %tmp.6), !dbg !70 ; [#uses=0 type=i32] [debug line = 40:34]
  %i.6 = add i4 %i.1, 1, !dbg !71                 ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i.6}, i64 0, metadata !58), !dbg !71 ; [debug line = 39:63] [debug variable = i]
  br label %6, !dbg !71                           ; [debug line = 39:63]

; <label>:10                                      ; preds = %6
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str4, i32 %tmp.), !dbg !72 ; [#uses=0 type=i32] [debug line = 40:34]
  %j.2 = add i4 %j, 1, !dbg !73                   ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j.2}, i64 0, metadata !74), !dbg !73 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader2, !dbg !73                 ; [debug line = 37:61]

.preheader1:                                      ; preds = %13, %.preheader1.preheader
  %i.2 = phi i4 [ %i.5, %13 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i4]
  %tmp.4 = icmp eq i4 %i.2, -8, !dbg !60          ; [#uses=1 type=i1] [debug line = 43:9]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.4, label %.preheader.preheader, label %13, !dbg !60 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !75                  ; [debug line = 48:9]

; <label>:13                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str6) nounwind, !dbg !77 ; [debug line = 43:67]
  call fastcc void @dct_1d([8 x [8 x i16]]* %col_inbuf, i4 %i.2, [8 x [8 x i16]]* %col_outbuf, i4 %i.2), !dbg !79 ; [debug line = 44:7]
  %i.5 = add i4 %i.2, 1, !dbg !80                 ; [#uses=1 type=i4] [debug line = 43:61]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !58), !dbg !80 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader1, !dbg !80                 ; [debug line = 43:61]

.preheader:                                       ; preds = %20, %.preheader.preheader
  %j.1 = phi i4 [ %j.3, %20 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %tmp.8 = icmp eq i4 %j.1, -8, !dbg !75          ; [#uses=1 type=i1] [debug line = 48:9]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.8, label %22, label %15, !dbg !75    ; [debug line = 48:9]

; <label>:15                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str7) nounwind, !dbg !81 ; [debug line = 49:1]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str7), !dbg !81 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp.9 = zext i4 %j.1 to i64, !dbg !83          ; [#uses=2 type=i64] [debug line = 51:1]
  br label %16, !dbg !86                          ; [debug line = 50:11]

; <label>:16                                      ; preds = %18, %15
  %i.3 = phi i4 [ 0, %15 ], [ %i.7, %18 ]         ; [#uses=3 type=i4]
  %tmp.1 = icmp eq i4 %i.3, -8, !dbg !86          ; [#uses=1 type=i1] [debug line = 50:11]
  %17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.1, label %20, label %18, !dbg !86    ; [debug line = 50:11]

; <label>:18                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str8) nounwind, !dbg !87 ; [debug line = 51:2]
  %tmp.12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str8), !dbg !87 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !88 ; [debug line = 52:1]
  %tmp.10 = zext i4 %i.3 to i64, !dbg !83         ; [#uses=2 type=i64] [debug line = 51:1]
  %col_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i64 0, i64 %tmp.10, i64 %tmp.9, !dbg !83 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf.load = load i16* %col_outbuf.addr, align 2, !dbg !83 ; [#uses=1 type=i16] [debug line = 51:1]
  %out_block.addr = getelementptr [8 x [8 x i16]]* %out_block, i64 0, i64 %tmp.9, i64 %tmp.10, !dbg !83 ; [#uses=1 type=i16*] [debug line = 51:1]
  store i16 %col_outbuf.load, i16* %out_block.addr, align 2, !dbg !83 ; [debug line = 51:1]
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str8, i32 %tmp.12), !dbg !89 ; [#uses=0 type=i32] [debug line = 51:34]
  %i.7 = add i4 %i.3, 1, !dbg !90                 ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !58), !dbg !90 ; [debug line = 50:63] [debug variable = i]
  br label %16, !dbg !90                          ; [debug line = 50:63]

; <label>:20                                      ; preds = %16
  %21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str7, i32 %tmp.11), !dbg !91 ; [#uses=0 type=i32] [debug line = 51:34]
  %j.3 = add i4 %j.1, 1, !dbg !92                 ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j.3}, i64 0, metadata !74), !dbg !92 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !92                  ; [debug line = 48:61]

; <label>:22                                      ; preds = %.preheader
  ret void, !dbg !93                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d([8 x [8 x i16]]* nocapture %src, i4 %tmp.6, [8 x [8 x i16]]* nocapture %dst, i4 %tmp.61) {
  %tmp.61.cast = zext i4 %tmp.61 to i64           ; [#uses=2 type=i64]
  %tmp.6.cast = zext i4 %tmp.6 to i64             ; [#uses=2 type=i64]
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.6.cast), !hlsrange !94
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.61.cast), !hlsrange !94
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %src}, i64 0, metadata !95), !dbg !97 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %dst}, i64 0, metadata !98), !dbg !99 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !100                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %8, %0
  %k = phi i4 [ 0, %0 ], [ %k.1, %8 ]             ; [#uses=3 type=i4]
  %tmp = icmp eq i4 %k, -8, !dbg !100             ; [#uses=1 type=i1] [debug line = 13:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp, label %10, label %3, !dbg !100      ; [debug line = 13:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !103 ; [debug line = 13:67]
  %tmp.18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !103 ; [#uses=1 type=i32] [debug line = 13:67]
  %tmp. = zext i4 %k to i64, !dbg !105            ; [#uses=2 type=i64] [debug line = 16:48]
  br label %4, !dbg !108                          ; [debug line = 15:11]

; <label>:4                                       ; preds = %6, %3
  %n = phi i4 [ 0, %3 ], [ %n.1, %6 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %3 ], [ %tmp.1, %6 ]       ; [#uses=2 type=i32]
  %tmp1.cast = trunc i32 %tmp1 to i29, !dbg !108  ; [#uses=1 type=i29] [debug line = 15:11]
  %tmp.11 = icmp eq i4 %n, -8, !dbg !108          ; [#uses=1 type=i1] [debug line = 15:11]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.11, label %8, label %6, !dbg !108    ; [debug line = 15:11]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str1) nounwind, !dbg !109 ; [debug line = 15:78]
  %tmp.19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str1) nounwind, !dbg !109 ; [#uses=1 type=i32] [debug line = 15:78]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !110 ; [debug line = 16:1]
  %tmp.15 = zext i4 %n to i64, !dbg !105          ; [#uses=2 type=i64] [debug line = 16:48]
  %dct_coeff_table.addr = getelementptr inbounds [8 x [8 x i16]]* @dct_coeff_table, i64 0, i64 %tmp., i64 %tmp.15, !dbg !105 ; [#uses=1 type=i16*] [debug line = 16:48]
  %dct_coeff_table.load = load i16* %dct_coeff_table.addr, align 2, !dbg !105 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff = sext i16 %dct_coeff_table.load to i32, !dbg !105 ; [#uses=1 type=i32] [debug line = 16:48]
  call void @llvm.dbg.value(metadata !{i32 %coeff}, i64 0, metadata !111), !dbg !105 ; [debug line = 16:48] [debug variable = coeff]
  %src.addr = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.6.cast, i64 %tmp.15, !dbg !113 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.load = load i16* %src.addr, align 2, !dbg !113 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.16 = sext i16 %src.load to i32, !dbg !113  ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.17 = mul nsw i32 %coeff, %tmp.16, !dbg !113 ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.1 = add nsw i32 %tmp1, %tmp.17, !dbg !113  ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp.1}, i64 0, metadata !114), !dbg !113 ; [debug line = 17:10] [debug variable = tmp]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str1, i32 %tmp.19) nounwind, !dbg !115 ; [#uses=0 type=i32] [debug line = 18:7]
  %n.1 = add i4 %n, 1, !dbg !116                  ; [#uses=1 type=i4] [debug line = 15:72]
  call void @llvm.dbg.value(metadata !{i4 %n.1}, i64 0, metadata !117), !dbg !116 ; [debug line = 15:72] [debug variable = n]
  br label %4, !dbg !116                          ; [debug line = 15:72]

; <label>:8                                       ; preds = %4
  %tmp1.cast.lcssa = phi i29 [ %tmp1.cast, %4 ]   ; [#uses=1 type=i29]
  %tmp.12 = add i29 %tmp1.cast.lcssa, 4096, !dbg !118 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.13 = lshr i29 %tmp.12, 13, !dbg !118       ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.14 = trunc i29 %tmp.13 to i16, !dbg !118   ; [#uses=1 type=i16] [debug line = 19:7]
  %dst.addr = getelementptr [8 x [8 x i16]]* %dst, i64 0, i64 %tmp.61.cast, i64 %tmp., !dbg !118 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.14, i16* %dst.addr, align 2, !dbg !118 ; [debug line = 19:7]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.18) nounwind, !dbg !119 ; [#uses=0 type=i32] [debug line = 20:4]
  %k.1 = add i4 %k, 1, !dbg !120                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k.1}, i64 0, metadata !121), !dbg !120 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !120                          ; [debug line = 13:61]

; <label>:10                                      ; preds = %1
  ret void, !dbg !122                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !123
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !129
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %buf_2d_in = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !133), !dbg !141 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !142), !dbg !143 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !144), !dbg !147 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !148), !dbg !149 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !150) nounwind, !dbg !157 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_in}, i64 0, metadata !158) nounwind, !dbg !159 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !160                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %8, %0
  %r.i = phi i4 [ 0, %0 ], [ %r, %8 ]             ; [#uses=4 type=i4]
  %r.i.cast7 = zext i4 %r.i to i6, !dbg !160      ; [#uses=1 type=i6] [debug line = 59:9@85:4]
  %exitcond1.i = icmp eq i4 %r.i, -8, !dbg !160   ; [#uses=1 type=i1] [debug line = 59:9@85:4]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %read_data.exit, label %3, !dbg !160 ; [debug line = 59:9@85:4]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str9) nounwind, !dbg !163 ; [debug line = 59:67@85:4]
  %tmp.8.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str9) nounwind, !dbg !163 ; [#uses=1 type=i32] [debug line = 59:67@85:4]
  %tmp.i = shl i6 %r.i.cast7, 3, !dbg !165        ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %tmp.7.i = zext i4 %r.i to i64, !dbg !165       ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  br label %4, !dbg !168                          ; [debug line = 61:12@85:4]

; <label>:4                                       ; preds = %6, %3
  %c.i = phi i4 [ 0, %3 ], [ %c, %6 ]             ; [#uses=4 type=i4]
  %c.i.cast6 = zext i4 %c.i to i6, !dbg !168      ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  %exitcond.i = icmp eq i4 %c.i, -8, !dbg !168    ; [#uses=1 type=i1] [debug line = 61:12@85:4]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %8, label %6, !dbg !168 ; [debug line = 61:12@85:4]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !169 ; [debug line = 62:2@85:4]
  %tmp.10.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10) nounwind, !dbg !169 ; [#uses=1 type=i32] [debug line = 62:2@85:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !170 ; [debug line = 63:1@85:4]
  %tmp.9.i = add i6 %c.i.cast6, %tmp.i, !dbg !165 ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %tmp..i = zext i6 %tmp.9.i to i64, !dbg !165    ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp..i, !dbg !165 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  %input.load = load i16* %input.addr, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 62:1@85:4]
  %tmp.1.i = zext i4 %c.i to i64, !dbg !165       ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  %buf.assign.addr = getelementptr [8 x [8 x i16]]* %buf_2d_in, i64 0, i64 %tmp.7.i, i64 %tmp.1.i, !dbg !165 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  store i16 %input.load, i16* %buf.assign.addr, align 2, !dbg !165 ; [debug line = 62:1@85:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.10.i) nounwind, !dbg !171 ; [#uses=0 type=i32] [debug line = 62:66@85:4]
  %c = add i4 %c.i, 1, !dbg !172                  ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !173) nounwind, !dbg !172 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %4, !dbg !172                          ; [debug line = 61:64@85:4]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str9, i32 %tmp.8.i) nounwind, !dbg !174 ; [#uses=0 type=i32] [debug line = 63:4@85:4]
  %r = add i4 %r.i, 1, !dbg !175                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !176) nounwind, !dbg !175 ; [debug line = 59:61@85:4] [debug variable = r]
  br label %1, !dbg !175                          ; [debug line = 59:61@85:4]

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([8 x [8 x i16]]* %buf_2d_in, [8 x [8 x i16]]* %buf_2d_out) nounwind, !dbg !177 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_out}, i64 0, metadata !178) nounwind, !dbg !183 ; [debug line = 66:23@90:4] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !184) nounwind, !dbg !185 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %10, !dbg !186                         ; [debug line = 71:9@90:4]

; <label>:10                                      ; preds = %17, %read_data.exit
  %r.i2 = phi i4 [ 0, %read_data.exit ], [ %r.1, %17 ] ; [#uses=4 type=i4]
  %r.i2.cast4 = zext i4 %r.i2 to i6, !dbg !186    ; [#uses=1 type=i6] [debug line = 71:9@90:4]
  %exitcond1.i3 = icmp eq i4 %r.i2, -8, !dbg !186 ; [#uses=1 type=i1] [debug line = 71:9@90:4]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i3, label %write_data.exit, label %12, !dbg !186 ; [debug line = 71:9@90:4]

; <label>:12                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !189 ; [debug line = 71:67@90:4]
  %tmp.2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str11) nounwind, !dbg !189 ; [#uses=1 type=i32] [debug line = 71:67@90:4]
  %tmp.i4 = zext i4 %r.i2 to i64, !dbg !191       ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %tmp.1.i5 = shl i6 %r.i2.cast4, 3, !dbg !191    ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  br label %13, !dbg !194                         ; [debug line = 73:12@90:4]

; <label>:13                                      ; preds = %15, %12
  %c.i6 = phi i4 [ 0, %12 ], [ %c.1, %15 ]        ; [#uses=4 type=i4]
  %c.i6.cast2 = zext i4 %c.i6 to i6, !dbg !194    ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %exitcond.i7 = icmp eq i4 %c.i6, -8, !dbg !194  ; [#uses=1 type=i1] [debug line = 73:12@90:4]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i7, label %17, label %15, !dbg !194 ; [debug line = 73:12@90:4]

; <label>:15                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !195 ; [debug line = 74:2@90:4]
  %tmp.6.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12) nounwind, !dbg !195 ; [#uses=1 type=i32] [debug line = 74:2@90:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !196 ; [debug line = 75:1@90:4]
  %tmp.3.i = zext i4 %c.i6 to i64, !dbg !191      ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %buf.assign.1.addr = getelementptr [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.i4, i64 %tmp.3.i, !dbg !191 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  %buf.assign.1.load = load i16* %buf.assign.1.addr, align 2, !dbg !191 ; [#uses=1 type=i16] [debug line = 74:1@90:4]
  %tmp.4.i = add i6 %c.i6.cast2, %tmp.1.i5, !dbg !191 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %tmp.5.i = zext i6 %tmp.4.i to i64, !dbg !191   ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5.i, !dbg !191 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  store i16 %buf.assign.1.load, i16* %output.addr, align 2, !dbg !191 ; [debug line = 74:1@90:4]
  %16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.6.i) nounwind, !dbg !197 ; [#uses=0 type=i32] [debug line = 74:67@90:4]
  %c.1 = add i4 %c.i6, 1, !dbg !198               ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !199) nounwind, !dbg !198 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %13, !dbg !198                         ; [debug line = 73:64@90:4]

; <label>:17                                      ; preds = %13
  %18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str11, i32 %tmp.2.i) nounwind, !dbg !200 ; [#uses=0 type=i32] [debug line = 75:4@90:4]
  %r.1 = add i4 %r.i2, 1, !dbg !201               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !202) nounwind, !dbg !201 ; [debug line = 71:61@90:4] [debug variable = r]
  br label %10, !dbg !201                         ; [debug line = 71:61@90:4]

write_data.exit:                                  ; preds = %10
  ret void, !dbg !203                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=12]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=12]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_SpecKeepAssert(...)

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
!19 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution2/.autopilot/db/dct.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !20} ; [ DW_TAG_compile_unit ]
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786484, i32 0, metadata !23, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !24, i32 8, metadata !32, i32 1, i32 1, [8 x [8 x i16]]* @dct_coeff_table} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786478, i32 0, metadata !24, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !24, i32 4, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 5} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786473, metadata !"dct.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{null, metadata !27, metadata !27}
!27 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !24, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !33, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ]
!34 = metadata !{metadata !35, metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!36 = metadata !{i32 786689, metadata !37, metadata !"in_block", null, i32 23, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 786478, i32 0, metadata !24, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !24, i32 23, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 25} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !40, metadata !40}
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !28, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{metadata !35}
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !28, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{i32 23, i32 24, metadata !37, null}
!45 = metadata !{i32 786689, metadata !37, metadata !"out_block", null, i32 24, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 24, i32 18, metadata !37, null}
!47 = metadata !{i32 786688, metadata !48, metadata !"col_inbuf", metadata !24, i32 27, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 786443, metadata !37, i32 25, i32 1, metadata !24, i32 5} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 27, i32 109, metadata !48, null}
!50 = metadata !{i32 32, i32 8, metadata !51, null}
!51 = metadata !{i32 786443, metadata !48, i32 32, i32 4, metadata !24, i32 6} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 37, i32 9, metadata !53, null}
!53 = metadata !{i32 786443, metadata !48, i32 37, i32 4, metadata !24, i32 8} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 32, i32 66, metadata !55, null}
!55 = metadata !{i32 786443, metadata !51, i32 32, i32 65, metadata !24, i32 7} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 33, i32 7, metadata !55, null}
!57 = metadata !{i32 32, i32 60, metadata !51, null}
!58 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !24, i32 28, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!60 = metadata !{i32 43, i32 9, metadata !61, null}
!61 = metadata !{i32 786443, metadata !48, i32 43, i32 4, metadata !24, i32 12} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 38, i32 1, metadata !63, null}
!63 = metadata !{i32 786443, metadata !53, i32 38, i32 1, metadata !24, i32 9} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 40, i32 1, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 40, i32 1, metadata !24, i32 11} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !63, i32 39, i32 7, metadata !24, i32 10} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 39, i32 11, metadata !66, null}
!68 = metadata !{i32 40, i32 2, metadata !65, null}
!69 = metadata !{i32 41, i32 1, metadata !65, null}
!70 = metadata !{i32 40, i32 34, metadata !65, null}
!71 = metadata !{i32 39, i32 63, metadata !66, null}
!72 = metadata !{i32 40, i32 34, metadata !66, null}
!73 = metadata !{i32 37, i32 61, metadata !53, null}
!74 = metadata !{i32 786688, metadata !48, metadata !"j", metadata !24, i32 28, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 48, i32 9, metadata !76, null}
!76 = metadata !{i32 786443, metadata !48, i32 48, i32 4, metadata !24, i32 14} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 43, i32 67, metadata !78, null}
!78 = metadata !{i32 786443, metadata !61, i32 43, i32 66, metadata !24, i32 13} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 44, i32 7, metadata !78, null}
!80 = metadata !{i32 43, i32 61, metadata !61, null}
!81 = metadata !{i32 49, i32 1, metadata !82, null}
!82 = metadata !{i32 786443, metadata !76, i32 49, i32 1, metadata !24, i32 15} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 51, i32 1, metadata !84, null}
!84 = metadata !{i32 786443, metadata !85, i32 51, i32 1, metadata !24, i32 17} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !82, i32 50, i32 7, metadata !24, i32 16} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 50, i32 11, metadata !85, null}
!87 = metadata !{i32 51, i32 2, metadata !84, null}
!88 = metadata !{i32 52, i32 1, metadata !84, null}
!89 = metadata !{i32 51, i32 34, metadata !84, null}
!90 = metadata !{i32 50, i32 63, metadata !85, null}
!91 = metadata !{i32 51, i32 34, metadata !85, null}
!92 = metadata !{i32 48, i32 61, metadata !76, null}
!93 = metadata !{i32 52, i32 1, metadata !48, null}
!94 = metadata !{i4 0, i4 7, i4 0, i4 7}          
!95 = metadata !{i32 786689, metadata !23, metadata !"src", null, i32 4, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !28, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!97 = metadata !{i32 4, i32 24, metadata !23, null}
!98 = metadata !{i32 786689, metadata !23, metadata !"dst", null, i32 4, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 4, i32 81, metadata !23, null}
!100 = metadata !{i32 13, i32 9, metadata !101, null}
!101 = metadata !{i32 786443, metadata !102, i32 13, i32 4, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !23, i32 5, i32 1, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 13, i32 67, metadata !104, null}
!104 = metadata !{i32 786443, metadata !101, i32 13, i32 66, metadata !24, i32 2} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 16, i32 48, metadata !106, null}
!106 = metadata !{i32 786443, metadata !107, i32 15, i32 77, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !104, i32 15, i32 7, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 15, i32 11, metadata !107, null}
!109 = metadata !{i32 15, i32 78, metadata !106, null}
!110 = metadata !{i32 16, i32 1, metadata !106, null}
!111 = metadata !{i32 786688, metadata !106, metadata !"coeff", metadata !24, i32 16, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!113 = metadata !{i32 17, i32 10, metadata !106, null}
!114 = metadata !{i32 786688, metadata !102, metadata !"tmp", metadata !24, i32 7, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 18, i32 7, metadata !106, null}
!116 = metadata !{i32 15, i32 72, metadata !107, null}
!117 = metadata !{i32 786688, metadata !102, metadata !"n", metadata !24, i32 6, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 19, i32 7, metadata !104, null}
!119 = metadata !{i32 20, i32 4, metadata !104, null}
!120 = metadata !{i32 13, i32 61, metadata !101, null}
!121 = metadata !{i32 786688, metadata !102, metadata !"k", metadata !24, i32 6, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 21, i32 1, metadata !102, null}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 15, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"input", metadata !127, metadata !"short", i32 0, i32 15}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 63, i32 1}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 15, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"output", metadata !127, metadata !"short", i32 0, i32 15}
!133 = metadata !{i32 786689, metadata !134, metadata !"input", null, i32 78, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 786478, i32 0, metadata !24, metadata !"dct", metadata !"dct", metadata !"", metadata !24, i32 78, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 79} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!136 = metadata !{null, metadata !137, metadata !137}
!137 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!138 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !29, metadata !139, i32 0, i32 0} ; [ DW_TAG_array_type ]
!139 = metadata !{metadata !140}
!140 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!141 = metadata !{i32 78, i32 16, metadata !134, null}
!142 = metadata !{i32 786689, metadata !134, metadata !"output", null, i32 78, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 78, i32 38, metadata !134, null}
!144 = metadata !{i32 786688, metadata !145, metadata !"buf_2d_in", metadata !24, i32 81, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 786443, metadata !134, i32 79, i32 1, metadata !24, i32 28} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !29, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!147 = metadata !{i32 81, i32 10, metadata !145, null}
!148 = metadata !{i32 786688, metadata !145, metadata !"buf_2d_out", metadata !24, i32 82, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 82, i32 10, metadata !145, null}
!150 = metadata !{i32 786689, metadata !151, metadata !"input", null, i32 54, metadata !138, i32 0, metadata !156} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 786478, i32 0, metadata !24, metadata !"read_data", metadata !"read_data", metadata !"", metadata !24, i32 54, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 55} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{null, metadata !137, metadata !154}
!154 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ]
!155 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !29, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!156 = metadata !{i32 85, i32 4, metadata !145, null}
!157 = metadata !{i32 54, i32 22, metadata !151, metadata !156}
!158 = metadata !{i32 786689, metadata !151, metadata !"buf", null, i32 54, metadata !146, i32 0, metadata !156} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 54, i32 44, metadata !151, metadata !156}
!160 = metadata !{i32 59, i32 9, metadata !161, metadata !156}
!161 = metadata !{i32 786443, metadata !162, i32 59, i32 4, metadata !24, i32 19} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786443, metadata !151, i32 55, i32 1, metadata !24, i32 18} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 59, i32 67, metadata !164, metadata !156}
!164 = metadata !{i32 786443, metadata !161, i32 59, i32 66, metadata !24, i32 20} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 62, i32 1, metadata !166, metadata !156}
!166 = metadata !{i32 786443, metadata !167, i32 62, i32 1, metadata !24, i32 22} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 786443, metadata !164, i32 61, i32 7, metadata !24, i32 21} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 61, i32 12, metadata !167, metadata !156}
!169 = metadata !{i32 62, i32 2, metadata !166, metadata !156}
!170 = metadata !{i32 63, i32 1, metadata !166, metadata !156}
!171 = metadata !{i32 62, i32 66, metadata !166, metadata !156}
!172 = metadata !{i32 61, i32 64, metadata !167, metadata !156}
!173 = metadata !{i32 786688, metadata !162, metadata !"c", metadata !24, i32 56, metadata !112, i32 0, metadata !156} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 63, i32 4, metadata !164, metadata !156}
!175 = metadata !{i32 59, i32 61, metadata !161, metadata !156}
!176 = metadata !{i32 786688, metadata !162, metadata !"r", metadata !24, i32 56, metadata !112, i32 0, metadata !156} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 87, i32 4, metadata !145, null}
!178 = metadata !{i32 786689, metadata !179, metadata !"buf", null, i32 66, metadata !146, i32 0, metadata !182} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 786478, i32 0, metadata !24, metadata !"write_data", metadata !"write_data", metadata !"", metadata !24, i32 66, metadata !180, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 67} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{null, metadata !154, metadata !137}
!182 = metadata !{i32 90, i32 4, metadata !145, null}
!183 = metadata !{i32 66, i32 23, metadata !179, metadata !182}
!184 = metadata !{i32 786689, metadata !179, metadata !"output", null, i32 66, metadata !138, i32 0, metadata !182} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 66, i32 116, metadata !179, metadata !182}
!186 = metadata !{i32 71, i32 9, metadata !187, metadata !182}
!187 = metadata !{i32 786443, metadata !188, i32 71, i32 4, metadata !24, i32 24} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 786443, metadata !179, i32 67, i32 1, metadata !24, i32 23} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 71, i32 67, metadata !190, metadata !182}
!190 = metadata !{i32 786443, metadata !187, i32 71, i32 66, metadata !24, i32 25} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 74, i32 1, metadata !192, metadata !182}
!192 = metadata !{i32 786443, metadata !193, i32 74, i32 1, metadata !24, i32 27} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 786443, metadata !190, i32 73, i32 7, metadata !24, i32 26} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 73, i32 12, metadata !193, metadata !182}
!195 = metadata !{i32 74, i32 2, metadata !192, metadata !182}
!196 = metadata !{i32 75, i32 1, metadata !192, metadata !182}
!197 = metadata !{i32 74, i32 67, metadata !192, metadata !182}
!198 = metadata !{i32 73, i32 64, metadata !193, metadata !182}
!199 = metadata !{i32 786688, metadata !188, metadata !"c", metadata !24, i32 68, metadata !112, i32 0, metadata !182} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 75, i32 4, metadata !190, metadata !182}
!201 = metadata !{i32 71, i32 61, metadata !187, metadata !182}
!202 = metadata !{i32 786688, metadata !188, metadata !"r", metadata !24, i32 68, metadata !112, i32 0, metadata !182} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 91, i32 1, metadata !145, null}
