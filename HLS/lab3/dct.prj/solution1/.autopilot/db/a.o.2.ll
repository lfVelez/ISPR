; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_coeff_table = internal unnamed_addr constant [8 x [8 x i16]] [[8 x i16] [i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192], [8 x i16] [i16 11363, i16 9633, i16 6436, i16 2260, i16 -2260, i16 -6436, i16 -9632, i16 -11362], [8 x i16] [i16 10703, i16 4433, i16 -4433, i16 -10703, i16 -10703, i16 -4433, i16 4433, i16 10703], [8 x i16] [i16 9633, i16 -2260, i16 -11362, i16 -6436, i16 6436, i16 11363, i16 2260, i16 -9632], [8 x i16] [i16 8192, i16 -8192, i16 -8192, i16 8192, i16 8192, i16 -8191, i16 -8191, i16 8192], [8 x i16] [i16 6436, i16 -11362, i16 2260, i16 9633, i16 -9632, i16 -2260, i16 11363, i16 -6436], [8 x i16] [i16 4433, i16 -10703, i16 10703, i16 -4433, i16 -4433, i16 10703, i16 -10703, i16 4433], [8 x i16] [i16 2260, i16 -6436, i16 9633, i16 -11362, i16 11363, i16 -9632, i16 6436, i16 -2260]], align 16 ; [#uses=1 type=[8 x [8 x i16]]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
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
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str2) nounwind, !dbg !54 ; [debug line = 32:66]
  call fastcc void @dct_1d([8 x [8 x i16]]* %in_block, i4 %i, [8 x [8 x i16]]* %row_outbuf, i4 %i), !dbg !56 ; [debug line = 33:7]
  %i.4 = add i4 %i, 1, !dbg !57                   ; [#uses=1 type=i4] [debug line = 32:60]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !58), !dbg !57 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !57                           ; [debug line = 32:60]

.preheader2:                                      ; preds = %9, %.preheader2.preheader
  %j = phi i4 [ %j.2, %9 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i4]
  %tmp.2 = icmp eq i4 %j, -8, !dbg !52            ; [#uses=1 type=i1] [debug line = 37:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.2, label %.preheader1.preheader, label %5, !dbg !52 ; [debug line = 37:9]

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1, !dbg !60                 ; [debug line = 43:9]

; <label>:5                                       ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str3) nounwind, !dbg !62 ; [debug line = 38:1]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str3), !dbg !62 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp.3 = zext i4 %j to i64, !dbg !64            ; [#uses=2 type=i64] [debug line = 40:10]
  br label %6, !dbg !67                           ; [debug line = 39:11]

; <label>:6                                       ; preds = %8, %5
  %i.1 = phi i4 [ 0, %5 ], [ %i.6, %8 ]           ; [#uses=3 type=i4]
  %tmp.5 = icmp eq i4 %i.1, -8, !dbg !67          ; [#uses=1 type=i1] [debug line = 39:11]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.5, label %9, label %8, !dbg !67      ; [debug line = 39:11]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str4) nounwind, !dbg !64 ; [debug line = 40:10]
  %tmp.7 = zext i4 %i.1 to i64, !dbg !64          ; [#uses=2 type=i64] [debug line = 40:10]
  %row_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i64 0, i64 %tmp.7, i64 %tmp.3, !dbg !64 ; [#uses=1 type=i16*] [debug line = 40:10]
  %row_outbuf.load = load i16* %row_outbuf.addr, align 2, !dbg !64 ; [#uses=1 type=i16] [debug line = 40:10]
  %col_inbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i64 0, i64 %tmp.3, i64 %tmp.7, !dbg !64 ; [#uses=1 type=i16*] [debug line = 40:10]
  store i16 %row_outbuf.load, i16* %col_inbuf.addr, align 2, !dbg !64 ; [debug line = 40:10]
  %i.6 = add i4 %i.1, 1, !dbg !68                 ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i.6}, i64 0, metadata !58), !dbg !68 ; [debug line = 39:63] [debug variable = i]
  br label %6, !dbg !68                           ; [debug line = 39:63]

; <label>:9                                       ; preds = %6
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str3, i32 %tmp.), !dbg !69 ; [#uses=0 type=i32] [debug line = 40:43]
  %j.2 = add i4 %j, 1, !dbg !70                   ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j.2}, i64 0, metadata !71), !dbg !70 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader2, !dbg !70                 ; [debug line = 37:61]

.preheader1:                                      ; preds = %12, %.preheader1.preheader
  %i.2 = phi i4 [ %i.5, %12 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i4]
  %tmp.4 = icmp eq i4 %i.2, -8, !dbg !60          ; [#uses=1 type=i1] [debug line = 43:9]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.4, label %.preheader.preheader, label %12, !dbg !60 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !72                  ; [debug line = 48:9]

; <label>:12                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str5) nounwind, !dbg !74 ; [debug line = 43:67]
  call fastcc void @dct_1d([8 x [8 x i16]]* %col_inbuf, i4 %i.2, [8 x [8 x i16]]* %col_outbuf, i4 %i.2), !dbg !76 ; [debug line = 44:7]
  %i.5 = add i4 %i.2, 1, !dbg !77                 ; [#uses=1 type=i4] [debug line = 43:61]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !58), !dbg !77 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader1, !dbg !77                 ; [debug line = 43:61]

.preheader:                                       ; preds = %18, %.preheader.preheader
  %j.1 = phi i4 [ %j.3, %18 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %tmp.8 = icmp eq i4 %j.1, -8, !dbg !72          ; [#uses=1 type=i1] [debug line = 48:9]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.8, label %20, label %14, !dbg !72    ; [debug line = 48:9]

; <label>:14                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str6) nounwind, !dbg !78 ; [debug line = 49:1]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str6), !dbg !78 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp.9 = zext i4 %j.1 to i64, !dbg !80          ; [#uses=2 type=i64] [debug line = 51:10]
  br label %15, !dbg !83                          ; [debug line = 50:11]

; <label>:15                                      ; preds = %17, %14
  %i.3 = phi i4 [ 0, %14 ], [ %i.7, %17 ]         ; [#uses=3 type=i4]
  %tmp.1 = icmp eq i4 %i.3, -8, !dbg !83          ; [#uses=1 type=i1] [debug line = 50:11]
  %16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.1, label %18, label %17, !dbg !83    ; [debug line = 50:11]

; <label>:17                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str7) nounwind, !dbg !80 ; [debug line = 51:10]
  %tmp.10 = zext i4 %i.3 to i64, !dbg !80         ; [#uses=2 type=i64] [debug line = 51:10]
  %col_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i64 0, i64 %tmp.10, i64 %tmp.9, !dbg !80 ; [#uses=1 type=i16*] [debug line = 51:10]
  %col_outbuf.load = load i16* %col_outbuf.addr, align 2, !dbg !80 ; [#uses=1 type=i16] [debug line = 51:10]
  %out_block.addr = getelementptr [8 x [8 x i16]]* %out_block, i64 0, i64 %tmp.9, i64 %tmp.10, !dbg !80 ; [#uses=1 type=i16*] [debug line = 51:10]
  store i16 %col_outbuf.load, i16* %out_block.addr, align 2, !dbg !80 ; [debug line = 51:10]
  %i.7 = add i4 %i.3, 1, !dbg !84                 ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !58), !dbg !84 ; [debug line = 50:63] [debug variable = i]
  br label %15, !dbg !84                          ; [debug line = 50:63]

; <label>:18                                      ; preds = %15
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str6, i32 %tmp.6), !dbg !85 ; [#uses=0 type=i32] [debug line = 51:43]
  %j.3 = add i4 %j.1, 1, !dbg !86                 ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j.3}, i64 0, metadata !71), !dbg !86 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !86                  ; [debug line = 48:61]

; <label>:20                                      ; preds = %.preheader
  ret void, !dbg !87                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d([8 x [8 x i16]]* nocapture %src, i4 %tmp.6, [8 x [8 x i16]]* nocapture %dst, i4 %tmp.61) {
  %tmp.61.cast = zext i4 %tmp.61 to i64           ; [#uses=2 type=i64]
  %tmp.6.cast = zext i4 %tmp.6 to i64             ; [#uses=2 type=i64]
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.6.cast), !hlsrange !88
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.61.cast), !hlsrange !88
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %src}, i64 0, metadata !89), !dbg !91 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %dst}, i64 0, metadata !92), !dbg !93 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !94                           ; [debug line = 13:9]

; <label>:1                                       ; preds = %7, %0
  %k = phi i4 [ 0, %0 ], [ %k.1, %7 ]             ; [#uses=3 type=i4]
  %tmp = icmp eq i4 %k, -8, !dbg !94              ; [#uses=1 type=i1] [debug line = 13:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp, label %9, label %3, !dbg !94        ; [debug line = 13:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !97 ; [debug line = 13:67]
  %tmp.18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !97 ; [#uses=1 type=i32] [debug line = 13:67]
  %tmp. = zext i4 %k to i64, !dbg !99             ; [#uses=2 type=i64] [debug line = 16:48]
  br label %4, !dbg !102                          ; [debug line = 15:11]

; <label>:4                                       ; preds = %6, %3
  %n = phi i4 [ 0, %3 ], [ %n.1, %6 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %3 ], [ %tmp.1, %6 ]       ; [#uses=2 type=i32]
  %tmp1.cast = trunc i32 %tmp1 to i29, !dbg !102  ; [#uses=1 type=i29] [debug line = 15:11]
  %tmp.11 = icmp eq i4 %n, -8, !dbg !102          ; [#uses=1 type=i1] [debug line = 15:11]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.11, label %7, label %6, !dbg !102    ; [debug line = 15:11]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str1) nounwind, !dbg !103 ; [debug line = 15:78]
  %tmp.15 = zext i4 %n to i64, !dbg !99           ; [#uses=2 type=i64] [debug line = 16:48]
  %dct_coeff_table.addr = getelementptr inbounds [8 x [8 x i16]]* @dct_coeff_table, i64 0, i64 %tmp., i64 %tmp.15, !dbg !99 ; [#uses=1 type=i16*] [debug line = 16:48]
  %dct_coeff_table.load = load i16* %dct_coeff_table.addr, align 2, !dbg !99 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff = sext i16 %dct_coeff_table.load to i32, !dbg !99 ; [#uses=1 type=i32] [debug line = 16:48]
  call void @llvm.dbg.value(metadata !{i32 %coeff}, i64 0, metadata !104), !dbg !99 ; [debug line = 16:48] [debug variable = coeff]
  %src.addr = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.6.cast, i64 %tmp.15, !dbg !106 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.load = load i16* %src.addr, align 2, !dbg !106 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.16 = sext i16 %src.load to i32, !dbg !106  ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.17 = mul nsw i32 %coeff, %tmp.16, !dbg !106 ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.1 = add nsw i32 %tmp1, %tmp.17, !dbg !106  ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp.1}, i64 0, metadata !107), !dbg !106 ; [debug line = 17:10] [debug variable = tmp]
  %n.1 = add i4 %n, 1, !dbg !108                  ; [#uses=1 type=i4] [debug line = 15:72]
  call void @llvm.dbg.value(metadata !{i4 %n.1}, i64 0, metadata !109), !dbg !108 ; [debug line = 15:72] [debug variable = n]
  br label %4, !dbg !108                          ; [debug line = 15:72]

; <label>:7                                       ; preds = %4
  %tmp1.cast.lcssa = phi i29 [ %tmp1.cast, %4 ]   ; [#uses=1 type=i29]
  %tmp.12 = add i29 %tmp1.cast.lcssa, 4096, !dbg !110 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.13 = lshr i29 %tmp.12, 13, !dbg !110       ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.14 = trunc i29 %tmp.13 to i16, !dbg !110   ; [#uses=1 type=i16] [debug line = 19:7]
  %dst.addr = getelementptr [8 x [8 x i16]]* %dst, i64 0, i64 %tmp.61.cast, i64 %tmp., !dbg !110 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.14, i16* %dst.addr, align 2, !dbg !110 ; [debug line = 19:7]
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.18) nounwind, !dbg !111 ; [#uses=0 type=i32] [debug line = 20:4]
  %k.1 = add i4 %k, 1, !dbg !112                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k.1}, i64 0, metadata !113), !dbg !112 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !112                          ; [debug line = 13:61]

; <label>:9                                       ; preds = %1
  ret void, !dbg !114                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !115
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !121
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %buf_2d_in = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !125), !dbg !133 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !134), !dbg !135 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !136), !dbg !139 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !140), !dbg !141 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !142) nounwind, !dbg !149 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_in}, i64 0, metadata !150) nounwind, !dbg !151 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !152                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %7, %0
  %r.i = phi i4 [ 0, %0 ], [ %r, %7 ]             ; [#uses=4 type=i4]
  %r.i.cast7 = zext i4 %r.i to i6, !dbg !152      ; [#uses=1 type=i6] [debug line = 59:9@85:4]
  %exitcond1.i = icmp eq i4 %r.i, -8, !dbg !152   ; [#uses=1 type=i1] [debug line = 59:9@85:4]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %read_data.exit, label %3, !dbg !152 ; [debug line = 59:9@85:4]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str8) nounwind, !dbg !155 ; [debug line = 59:67@85:4]
  %tmp.3.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str8) nounwind, !dbg !155 ; [#uses=1 type=i32] [debug line = 59:67@85:4]
  %tmp.i = shl i6 %r.i.cast7, 3, !dbg !157        ; [#uses=1 type=i6] [debug line = 62:10@85:4]
  %tmp.7.i = zext i4 %r.i to i64, !dbg !157       ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  br label %4, !dbg !160                          ; [debug line = 61:12@85:4]

; <label>:4                                       ; preds = %6, %3
  %c.i = phi i4 [ 0, %3 ], [ %c, %6 ]             ; [#uses=4 type=i4]
  %c.i.cast6 = zext i4 %c.i to i6, !dbg !160      ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  %exitcond.i = icmp eq i4 %c.i, -8, !dbg !160    ; [#uses=1 type=i1] [debug line = 61:12@85:4]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %7, label %6, !dbg !160 ; [debug line = 61:12@85:4]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str9) nounwind, !dbg !157 ; [debug line = 62:10@85:4]
  %tmp.9.i = add i6 %c.i.cast6, %tmp.i, !dbg !157 ; [#uses=1 type=i6] [debug line = 62:10@85:4]
  %tmp..i = zext i6 %tmp.9.i to i64, !dbg !157    ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp..i, !dbg !157 ; [#uses=1 type=i16*] [debug line = 62:10@85:4]
  %input.load = load i16* %input.addr, align 2, !dbg !157 ; [#uses=1 type=i16] [debug line = 62:10@85:4]
  %tmp.1.i = zext i4 %c.i to i64, !dbg !157       ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  %buf.assign.addr = getelementptr [8 x [8 x i16]]* %buf_2d_in, i64 0, i64 %tmp.7.i, i64 %tmp.1.i, !dbg !157 ; [#uses=1 type=i16*] [debug line = 62:10@85:4]
  store i16 %input.load, i16* %buf.assign.addr, align 2, !dbg !157 ; [debug line = 62:10@85:4]
  %c = add i4 %c.i, 1, !dbg !161                  ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !162) nounwind, !dbg !161 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %4, !dbg !161                          ; [debug line = 61:64@85:4]

; <label>:7                                       ; preds = %4
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str8, i32 %tmp.3.i) nounwind, !dbg !163 ; [#uses=0 type=i32] [debug line = 63:4@85:4]
  %r = add i4 %r.i, 1, !dbg !164                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !165) nounwind, !dbg !164 ; [debug line = 59:61@85:4] [debug variable = r]
  br label %1, !dbg !164                          ; [debug line = 59:61@85:4]

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([8 x [8 x i16]]* %buf_2d_in, [8 x [8 x i16]]* %buf_2d_out) nounwind, !dbg !166 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_out}, i64 0, metadata !167) nounwind, !dbg !172 ; [debug line = 66:23@90:4] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !173) nounwind, !dbg !174 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %9, !dbg !175                          ; [debug line = 71:9@90:4]

; <label>:9                                       ; preds = %15, %read_data.exit
  %r.i2 = phi i4 [ 0, %read_data.exit ], [ %r.1, %15 ] ; [#uses=4 type=i4]
  %r.i2.cast4 = zext i4 %r.i2 to i6, !dbg !175    ; [#uses=1 type=i6] [debug line = 71:9@90:4]
  %exitcond1.i3 = icmp eq i4 %r.i2, -8, !dbg !175 ; [#uses=1 type=i1] [debug line = 71:9@90:4]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i3, label %write_data.exit, label %11, !dbg !175 ; [debug line = 71:9@90:4]

; <label>:11                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !178 ; [debug line = 71:67@90:4]
  %tmp.2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10) nounwind, !dbg !178 ; [#uses=1 type=i32] [debug line = 71:67@90:4]
  %tmp.i4 = zext i4 %r.i2 to i64, !dbg !180       ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %tmp.1.i5 = shl i6 %r.i2.cast4, 3, !dbg !180    ; [#uses=1 type=i6] [debug line = 74:10@90:4]
  br label %12, !dbg !183                         ; [debug line = 73:12@90:4]

; <label>:12                                      ; preds = %14, %11
  %c.i6 = phi i4 [ 0, %11 ], [ %c.1, %14 ]        ; [#uses=4 type=i4]
  %c.i6.cast2 = zext i4 %c.i6 to i6, !dbg !183    ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %exitcond.i7 = icmp eq i4 %c.i6, -8, !dbg !183  ; [#uses=1 type=i1] [debug line = 73:12@90:4]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i7, label %15, label %14, !dbg !183 ; [debug line = 73:12@90:4]

; <label>:14                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !180 ; [debug line = 74:10@90:4]
  %tmp.3.i8 = zext i4 %c.i6 to i64, !dbg !180     ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %buf.assign.1.addr = getelementptr [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.i4, i64 %tmp.3.i8, !dbg !180 ; [#uses=1 type=i16*] [debug line = 74:10@90:4]
  %buf.assign.1.load = load i16* %buf.assign.1.addr, align 2, !dbg !180 ; [#uses=1 type=i16] [debug line = 74:10@90:4]
  %tmp.4.i = add i6 %c.i6.cast2, %tmp.1.i5, !dbg !180 ; [#uses=1 type=i6] [debug line = 74:10@90:4]
  %tmp.5.i = zext i6 %tmp.4.i to i64, !dbg !180   ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5.i, !dbg !180 ; [#uses=1 type=i16*] [debug line = 74:10@90:4]
  store i16 %buf.assign.1.load, i16* %output.addr, align 2, !dbg !180 ; [debug line = 74:10@90:4]
  %c.1 = add i4 %c.i6, 1, !dbg !184               ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !185) nounwind, !dbg !184 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %12, !dbg !184                         ; [debug line = 73:64@90:4]

; <label>:15                                      ; preds = %12
  %16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.2.i) nounwind, !dbg !186 ; [#uses=0 type=i32] [debug line = 75:4@90:4]
  %r.1 = add i4 %r.i2, 1, !dbg !187               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !188) nounwind, !dbg !187 ; [debug line = 71:61@90:4] [debug variable = r]
  br label %9, !dbg !187                          ; [debug line = 71:61@90:4]

write_data.exit:                                  ; preds = %9
  ret void, !dbg !189                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionBegin(...)

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
!19 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution1/.autopilot/db/dct.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !20} ; [ DW_TAG_compile_unit ]
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
!64 = metadata !{i32 40, i32 10, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 40, i32 10, metadata !24, i32 11} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !63, i32 39, i32 7, metadata !24, i32 10} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 39, i32 11, metadata !66, null}
!68 = metadata !{i32 39, i32 63, metadata !66, null}
!69 = metadata !{i32 40, i32 43, metadata !66, null}
!70 = metadata !{i32 37, i32 61, metadata !53, null}
!71 = metadata !{i32 786688, metadata !48, metadata !"j", metadata !24, i32 28, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 48, i32 9, metadata !73, null}
!73 = metadata !{i32 786443, metadata !48, i32 48, i32 4, metadata !24, i32 14} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 43, i32 67, metadata !75, null}
!75 = metadata !{i32 786443, metadata !61, i32 43, i32 66, metadata !24, i32 13} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 44, i32 7, metadata !75, null}
!77 = metadata !{i32 43, i32 61, metadata !61, null}
!78 = metadata !{i32 49, i32 1, metadata !79, null}
!79 = metadata !{i32 786443, metadata !73, i32 49, i32 1, metadata !24, i32 15} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 51, i32 10, metadata !81, null}
!81 = metadata !{i32 786443, metadata !82, i32 51, i32 10, metadata !24, i32 17} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !79, i32 50, i32 7, metadata !24, i32 16} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 50, i32 11, metadata !82, null}
!84 = metadata !{i32 50, i32 63, metadata !82, null}
!85 = metadata !{i32 51, i32 43, metadata !82, null}
!86 = metadata !{i32 48, i32 61, metadata !73, null}
!87 = metadata !{i32 52, i32 1, metadata !48, null}
!88 = metadata !{i4 0, i4 7, i4 0, i4 7}          
!89 = metadata !{i32 786689, metadata !23, metadata !"src", null, i32 4, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !28, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!91 = metadata !{i32 4, i32 24, metadata !23, null}
!92 = metadata !{i32 786689, metadata !23, metadata !"dst", null, i32 4, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 4, i32 81, metadata !23, null}
!94 = metadata !{i32 13, i32 9, metadata !95, null}
!95 = metadata !{i32 786443, metadata !96, i32 13, i32 4, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !23, i32 5, i32 1, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 13, i32 67, metadata !98, null}
!98 = metadata !{i32 786443, metadata !95, i32 13, i32 66, metadata !24, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 16, i32 48, metadata !100, null}
!100 = metadata !{i32 786443, metadata !101, i32 15, i32 77, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786443, metadata !98, i32 15, i32 7, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 15, i32 11, metadata !101, null}
!103 = metadata !{i32 15, i32 78, metadata !100, null}
!104 = metadata !{i32 786688, metadata !100, metadata !"coeff", metadata !24, i32 16, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!106 = metadata !{i32 17, i32 10, metadata !100, null}
!107 = metadata !{i32 786688, metadata !96, metadata !"tmp", metadata !24, i32 7, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 15, i32 72, metadata !101, null}
!109 = metadata !{i32 786688, metadata !96, metadata !"n", metadata !24, i32 6, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 19, i32 7, metadata !98, null}
!111 = metadata !{i32 20, i32 4, metadata !98, null}
!112 = metadata !{i32 13, i32 61, metadata !95, null}
!113 = metadata !{i32 786688, metadata !96, metadata !"k", metadata !24, i32 6, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 21, i32 1, metadata !96, null}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 15, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"input", metadata !119, metadata !"short", i32 0, i32 15}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 63, i32 1}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 15, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"output", metadata !119, metadata !"short", i32 0, i32 15}
!125 = metadata !{i32 786689, metadata !126, metadata !"input", null, i32 78, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 786478, i32 0, metadata !24, metadata !"dct", metadata !"dct", metadata !"", metadata !24, i32 78, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 79} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{null, metadata !129, metadata !129}
!129 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!130 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !29, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ]
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!133 = metadata !{i32 78, i32 16, metadata !126, null}
!134 = metadata !{i32 786689, metadata !126, metadata !"output", null, i32 78, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 78, i32 38, metadata !126, null}
!136 = metadata !{i32 786688, metadata !137, metadata !"buf_2d_in", metadata !24, i32 81, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 786443, metadata !126, i32 79, i32 1, metadata !24, i32 28} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !29, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!139 = metadata !{i32 81, i32 10, metadata !137, null}
!140 = metadata !{i32 786688, metadata !137, metadata !"buf_2d_out", metadata !24, i32 82, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 82, i32 10, metadata !137, null}
!142 = metadata !{i32 786689, metadata !143, metadata !"input", null, i32 54, metadata !130, i32 0, metadata !148} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 786478, i32 0, metadata !24, metadata !"read_data", metadata !"read_data", metadata !"", metadata !24, i32 54, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 55} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{null, metadata !129, metadata !146}
!146 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ]
!147 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !29, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!148 = metadata !{i32 85, i32 4, metadata !137, null}
!149 = metadata !{i32 54, i32 22, metadata !143, metadata !148}
!150 = metadata !{i32 786689, metadata !143, metadata !"buf", null, i32 54, metadata !138, i32 0, metadata !148} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 54, i32 44, metadata !143, metadata !148}
!152 = metadata !{i32 59, i32 9, metadata !153, metadata !148}
!153 = metadata !{i32 786443, metadata !154, i32 59, i32 4, metadata !24, i32 19} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 786443, metadata !143, i32 55, i32 1, metadata !24, i32 18} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 59, i32 67, metadata !156, metadata !148}
!156 = metadata !{i32 786443, metadata !153, i32 59, i32 66, metadata !24, i32 20} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 62, i32 10, metadata !158, metadata !148}
!158 = metadata !{i32 786443, metadata !159, i32 62, i32 10, metadata !24, i32 22} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786443, metadata !156, i32 61, i32 7, metadata !24, i32 21} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 61, i32 12, metadata !159, metadata !148}
!161 = metadata !{i32 61, i32 64, metadata !159, metadata !148}
!162 = metadata !{i32 786688, metadata !154, metadata !"c", metadata !24, i32 56, metadata !105, i32 0, metadata !148} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 63, i32 4, metadata !156, metadata !148}
!164 = metadata !{i32 59, i32 61, metadata !153, metadata !148}
!165 = metadata !{i32 786688, metadata !154, metadata !"r", metadata !24, i32 56, metadata !105, i32 0, metadata !148} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 87, i32 4, metadata !137, null}
!167 = metadata !{i32 786689, metadata !168, metadata !"buf", null, i32 66, metadata !138, i32 0, metadata !171} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 786478, i32 0, metadata !24, metadata !"write_data", metadata !"write_data", metadata !"", metadata !24, i32 66, metadata !169, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 67} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{null, metadata !146, metadata !129}
!171 = metadata !{i32 90, i32 4, metadata !137, null}
!172 = metadata !{i32 66, i32 23, metadata !168, metadata !171}
!173 = metadata !{i32 786689, metadata !168, metadata !"output", null, i32 66, metadata !130, i32 0, metadata !171} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 66, i32 116, metadata !168, metadata !171}
!175 = metadata !{i32 71, i32 9, metadata !176, metadata !171}
!176 = metadata !{i32 786443, metadata !177, i32 71, i32 4, metadata !24, i32 24} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 786443, metadata !168, i32 67, i32 1, metadata !24, i32 23} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 71, i32 67, metadata !179, metadata !171}
!179 = metadata !{i32 786443, metadata !176, i32 71, i32 66, metadata !24, i32 25} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 74, i32 10, metadata !181, metadata !171}
!181 = metadata !{i32 786443, metadata !182, i32 74, i32 10, metadata !24, i32 27} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 786443, metadata !179, i32 73, i32 7, metadata !24, i32 26} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 73, i32 12, metadata !182, metadata !171}
!184 = metadata !{i32 73, i32 64, metadata !182, metadata !171}
!185 = metadata !{i32 786688, metadata !177, metadata !"c", metadata !24, i32 68, metadata !105, i32 0, metadata !171} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 75, i32 4, metadata !179, metadata !171}
!187 = metadata !{i32 71, i32 61, metadata !176, metadata !171}
!188 = metadata !{i32 786688, metadata !177, metadata !"r", metadata !24, i32 68, metadata !105, i32 0, metadata !171} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 91, i32 1, metadata !137, null}
