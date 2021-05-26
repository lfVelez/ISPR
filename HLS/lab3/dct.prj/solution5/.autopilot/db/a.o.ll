; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution5/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_1d.dct_coeff_table = internal constant [8 x [8 x i16]] [[8 x i16] [i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192], [8 x i16] [i16 11363, i16 9633, i16 6436, i16 2260, i16 -2260, i16 -6436, i16 -9632, i16 -11362], [8 x i16] [i16 10703, i16 4433, i16 -4433, i16 -10703, i16 -10703, i16 -4433, i16 4433, i16 10703], [8 x i16] [i16 9633, i16 -2260, i16 -11362, i16 -6436, i16 6436, i16 11363, i16 2260, i16 -9632], [8 x i16] [i16 8192, i16 -8192, i16 -8192, i16 8192, i16 8192, i16 -8191, i16 -8191, i16 8192], [8 x i16] [i16 6436, i16 -11362, i16 2260, i16 9633, i16 -9632, i16 -2260, i16 11363, i16 -6436], [8 x i16] [i16 4433, i16 -10703, i16 10703, i16 -4433, i16 -4433, i16 10703, i16 -10703, i16 4433], [8 x i16] [i16 2260, i16 -6436, i16 9633, i16 -11362, i16 11363, i16 -9632, i16 6436, i16 -2260]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=2]
define void @dct_1d(i16* %src, i16* %dst) nounwind uwtable {
  %1 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %2 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %k = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %n = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %tmp = alloca i32, align 4                      ; [#uses=4 type=i32*]
  %coeff = alloca i32, align 4                    ; [#uses=2 type=i32*]
  store i16* %src, i16** %1, align 8
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !58), !dbg !59 ; [debug line = 4:24] [debug variable = src]
  store i16* %dst, i16** %2, align 8
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !60), !dbg !61 ; [debug line = 4:81] [debug variable = dst]
  %3 = load i16** %2, align 8, !dbg !62           ; [#uses=1 type=i16*] [debug line = 5:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %3, i32 8) nounwind, !dbg !62 ; [debug line = 5:2]
  %4 = load i16** %1, align 8, !dbg !64           ; [#uses=1 type=i16*] [debug line = 5:32]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %4, i32 8) nounwind, !dbg !64 ; [debug line = 5:32]
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !65), !dbg !67 ; [debug line = 6:17] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !68), !dbg !69 ; [debug line = 6:20] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !70), !dbg !72 ; [debug line = 7:8] [debug variable = tmp]
  call void (...)* @_ssdm_SpecConstant([8 x i16]* getelementptr inbounds ([8 x [8 x i16]]* @dct_1d.dct_coeff_table, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 11:1]
  br label %5, !dbg !73                           ; [debug line = 11:1]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %k, align 4, !dbg !74         ; [debug line = 13:9]
  br label %6, !dbg !74                           ; [debug line = 13:9]

; <label>:6                                       ; preds = %45, %5
  %7 = load i32* %k, align 4, !dbg !74            ; [#uses=1 type=i32] [debug line = 13:9]
  %8 = icmp ult i32 %7, 8, !dbg !74               ; [#uses=1 type=i1] [debug line = 13:9]
  br i1 %8, label %9, label %48, !dbg !74         ; [debug line = 13:9]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 13:67]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 14:1]
  br label %10, !dbg !78                          ; [debug line = 14:1]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %n, align 4, !dbg !79         ; [debug line = 15:11]
  store i32 0, i32* %tmp, align 4, !dbg !79       ; [debug line = 15:11]
  br label %11, !dbg !79                          ; [debug line = 15:11]

; <label>:11                                      ; preds = %33, %10
  %12 = load i32* %n, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 15:11]
  %13 = icmp ult i32 %12, 8, !dbg !79             ; [#uses=1 type=i1] [debug line = 15:11]
  br i1 %13, label %14, label %36, !dbg !79       ; [debug line = 15:11]

; <label>:14                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 15:78]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 15:78]
  call void @llvm.dbg.declare(metadata !{i32* %coeff}, metadata !83), !dbg !84 ; [debug line = 16:14] [debug variable = coeff]
  %15 = load i32* %n, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 16:48]
  %16 = zext i32 %15 to i64, !dbg !85             ; [#uses=1 type=i64] [debug line = 16:48]
  %17 = load i32* %k, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 16:48]
  %18 = zext i32 %17 to i64, !dbg !85             ; [#uses=1 type=i64] [debug line = 16:48]
  %19 = getelementptr inbounds [8 x [8 x i16]]* @dct_1d.dct_coeff_table, i32 0, i64 %18, !dbg !85 ; [#uses=1 type=[8 x i16]*] [debug line = 16:48]
  %20 = getelementptr inbounds [8 x i16]* %19, i32 0, i64 %16, !dbg !85 ; [#uses=1 type=i16*] [debug line = 16:48]
  %21 = load i16* %20, align 2, !dbg !85          ; [#uses=1 type=i16] [debug line = 16:48]
  %22 = sext i16 %21 to i32, !dbg !85             ; [#uses=1 type=i32] [debug line = 16:48]
  store i32 %22, i32* %coeff, align 4, !dbg !85   ; [debug line = 16:48]
  %23 = load i32* %n, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 17:10]
  %24 = zext i32 %23 to i64, !dbg !86             ; [#uses=1 type=i64] [debug line = 17:10]
  %25 = load i16** %1, align 8, !dbg !86          ; [#uses=1 type=i16*] [debug line = 17:10]
  %26 = getelementptr inbounds i16* %25, i64 %24, !dbg !86 ; [#uses=1 type=i16*] [debug line = 17:10]
  %27 = load i16* %26, align 2, !dbg !86          ; [#uses=1 type=i16] [debug line = 17:10]
  %28 = sext i16 %27 to i32, !dbg !86             ; [#uses=1 type=i32] [debug line = 17:10]
  %29 = load i32* %coeff, align 4, !dbg !86       ; [#uses=1 type=i32] [debug line = 17:10]
  %30 = mul nsw i32 %28, %29, !dbg !86            ; [#uses=1 type=i32] [debug line = 17:10]
  %31 = load i32* %tmp, align 4, !dbg !86         ; [#uses=1 type=i32] [debug line = 17:10]
  %32 = add nsw i32 %31, %30, !dbg !86            ; [#uses=1 type=i32] [debug line = 17:10]
  store i32 %32, i32* %tmp, align 4, !dbg !86     ; [debug line = 17:10]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !87 ; [debug line = 18:7]
  br label %33, !dbg !87                          ; [debug line = 18:7]

; <label>:33                                      ; preds = %14
  %34 = load i32* %n, align 4, !dbg !88           ; [#uses=1 type=i32] [debug line = 15:72]
  %35 = add i32 %34, 1, !dbg !88                  ; [#uses=1 type=i32] [debug line = 15:72]
  store i32 %35, i32* %n, align 4, !dbg !88       ; [debug line = 15:72]
  br label %11, !dbg !88                          ; [debug line = 15:72]

; <label>:36                                      ; preds = %11
  %37 = load i32* %tmp, align 4, !dbg !89         ; [#uses=1 type=i32] [debug line = 19:7]
  %38 = add nsw i32 %37, 4096, !dbg !89           ; [#uses=1 type=i32] [debug line = 19:7]
  %39 = ashr i32 %38, 13, !dbg !89                ; [#uses=1 type=i32] [debug line = 19:7]
  %40 = trunc i32 %39 to i16, !dbg !89            ; [#uses=1 type=i16] [debug line = 19:7]
  %41 = load i32* %k, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 19:7]
  %42 = zext i32 %41 to i64, !dbg !89             ; [#uses=1 type=i64] [debug line = 19:7]
  %43 = load i16** %2, align 8, !dbg !89          ; [#uses=1 type=i16*] [debug line = 19:7]
  %44 = getelementptr inbounds i16* %43, i64 %42, !dbg !89 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %40, i16* %44, align 2, !dbg !89      ; [debug line = 19:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !90 ; [debug line = 20:4]
  br label %45, !dbg !90                          ; [debug line = 20:4]

; <label>:45                                      ; preds = %36
  %46 = load i32* %k, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 13:61]
  %47 = add i32 %46, 1, !dbg !91                  ; [#uses=1 type=i32] [debug line = 13:61]
  store i32 %47, i32* %k, align 4, !dbg !91       ; [debug line = 13:61]
  br label %6, !dbg !91                           ; [debug line = 13:61]

; <label>:48                                      ; preds = %6
  ret void, !dbg !92                              ; [debug line = 21:1]
}

; [#uses=25]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=10]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=12]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=12]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=12]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define void @dct_2d([8 x i16]* %in_block, [8 x i16]* %out_block) nounwind uwtable {
  %1 = alloca [8 x i16]*, align 8                 ; [#uses=3 type=[8 x i16]**]
  %2 = alloca [8 x i16]*, align 8                 ; [#uses=3 type=[8 x i16]**]
  %row_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x [8 x i16]], align 16   ; [#uses=3 type=[8 x [8 x i16]]*]
  %i = alloca i32, align 4                        ; [#uses=24 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=12 type=i32*]
  store [8 x i16]* %in_block, [8 x i16]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %1}, metadata !93), !dbg !94 ; [debug line = 23:24] [debug variable = in_block]
  store [8 x i16]* %out_block, [8 x i16]** %2, align 8
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %2}, metadata !95), !dbg !96 ; [debug line = 24:18] [debug variable = out_block]
  %3 = load [8 x i16]** %2, align 8, !dbg !97     ; [#uses=1 type=[8 x i16]*] [debug line = 25:2]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %3, i32 8) nounwind, !dbg !97 ; [debug line = 25:2]
  %4 = load [8 x i16]** %1, align 8, !dbg !99     ; [#uses=1 type=[8 x i16]*] [debug line = 25:38]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %4, i32 8) nounwind, !dbg !99 ; [debug line = 25:38]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %row_outbuf}, metadata !100), !dbg !102 ; [debug line = 26:15] [debug variable = row_outbuf]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_outbuf}, metadata !103), !dbg !104 ; [debug line = 27:15] [debug variable = col_outbuf]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_inbuf}, metadata !105), !dbg !106 ; [debug line = 27:109] [debug variable = col_inbuf]
  %5 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i32 0, !dbg !107 ; [#uses=1 type=[8 x i16]*] [debug line = 28:1]
  call void (...)* @_ssdm_SpecArrayPartition([8 x i16]* %5, i32 2, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !107 ; [debug line = 28:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !108), !dbg !109 ; [debug line = 28:13] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !110), !dbg !111 ; [debug line = 28:16] [debug variable = j]
  br label %6, !dbg !112                          ; [debug line = 28:17]

; <label>:6                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !113        ; [debug line = 32:8]
  br label %7, !dbg !113                          ; [debug line = 32:8]

; <label>:7                                       ; preds = %20, %6
  %8 = load i32* %i, align 4, !dbg !113           ; [#uses=1 type=i32] [debug line = 32:8]
  %9 = icmp ult i32 %8, 8, !dbg !113              ; [#uses=1 type=i1] [debug line = 32:8]
  br i1 %9, label %10, label %23, !dbg !113       ; [debug line = 32:8]

; <label>:10                                      ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !115 ; [debug line = 32:66]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !115 ; [debug line = 32:66]
  %11 = load i32* %i, align 4, !dbg !117          ; [#uses=1 type=i32] [debug line = 33:7]
  %12 = zext i32 %11 to i64, !dbg !117            ; [#uses=1 type=i64] [debug line = 33:7]
  %13 = load [8 x i16]** %1, align 8, !dbg !117   ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %14 = getelementptr inbounds [8 x i16]* %13, i64 %12, !dbg !117 ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %15 = getelementptr inbounds [8 x i16]* %14, i32 0, i32 0, !dbg !117 ; [#uses=1 type=i16*] [debug line = 33:7]
  %16 = load i32* %i, align 4, !dbg !117          ; [#uses=1 type=i32] [debug line = 33:7]
  %17 = zext i32 %16 to i64, !dbg !117            ; [#uses=1 type=i64] [debug line = 33:7]
  %18 = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i32 0, i64 %17, !dbg !117 ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %19 = getelementptr inbounds [8 x i16]* %18, i32 0, i32 0, !dbg !117 ; [#uses=1 type=i16*] [debug line = 33:7]
  call void @dct_1d(i16* %15, i16* %19), !dbg !117 ; [debug line = 33:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !118 ; [debug line = 34:4]
  br label %20, !dbg !118                         ; [debug line = 34:4]

; <label>:20                                      ; preds = %10
  %21 = load i32* %i, align 4, !dbg !119          ; [#uses=1 type=i32] [debug line = 32:60]
  %22 = add i32 %21, 1, !dbg !119                 ; [#uses=1 type=i32] [debug line = 32:60]
  store i32 %22, i32* %i, align 4, !dbg !119      ; [debug line = 32:60]
  br label %7, !dbg !119                          ; [debug line = 32:60]

; <label>:23                                      ; preds = %7
  br label %24, !dbg !120                         ; [debug line = 34:4]

; <label>:24                                      ; preds = %23
  store i32 0, i32* %j, align 4, !dbg !121        ; [debug line = 37:9]
  br label %25, !dbg !121                         ; [debug line = 37:9]

; <label>:25                                      ; preds = %51, %24
  %26 = load i32* %j, align 4, !dbg !121          ; [#uses=1 type=i32] [debug line = 37:9]
  %27 = icmp ult i32 %26, 8, !dbg !121            ; [#uses=1 type=i1] [debug line = 37:9]
  br i1 %27, label %28, label %54, !dbg !121      ; [debug line = 37:9]

; <label>:28                                      ; preds = %25
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !123 ; [debug line = 38:1]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !123 ; [debug line = 38:1]
  br label %29, !dbg !123                         ; [debug line = 38:1]

; <label>:29                                      ; preds = %28
  store i32 0, i32* %i, align 4, !dbg !125        ; [debug line = 39:11]
  br label %30, !dbg !125                         ; [debug line = 39:11]

; <label>:30                                      ; preds = %47, %29
  %31 = load i32* %i, align 4, !dbg !125          ; [#uses=1 type=i32] [debug line = 39:11]
  %32 = icmp ult i32 %31, 8, !dbg !125            ; [#uses=1 type=i1] [debug line = 39:11]
  br i1 %32, label %33, label %50, !dbg !125      ; [debug line = 39:11]

; <label>:33                                      ; preds = %30
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !127 ; [debug line = 40:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !127 ; [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 41:1]
  %34 = load i32* %j, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 40:1]
  %35 = zext i32 %34 to i64, !dbg !130            ; [#uses=1 type=i64] [debug line = 40:1]
  %36 = load i32* %i, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 40:1]
  %37 = zext i32 %36 to i64, !dbg !130            ; [#uses=1 type=i64] [debug line = 40:1]
  %38 = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i32 0, i64 %37, !dbg !130 ; [#uses=1 type=[8 x i16]*] [debug line = 40:1]
  %39 = getelementptr inbounds [8 x i16]* %38, i32 0, i64 %35, !dbg !130 ; [#uses=1 type=i16*] [debug line = 40:1]
  %40 = load i16* %39, align 2, !dbg !130         ; [#uses=1 type=i16] [debug line = 40:1]
  %41 = load i32* %i, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 40:1]
  %42 = zext i32 %41 to i64, !dbg !130            ; [#uses=1 type=i64] [debug line = 40:1]
  %43 = load i32* %j, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 40:1]
  %44 = zext i32 %43 to i64, !dbg !130            ; [#uses=1 type=i64] [debug line = 40:1]
  %45 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i64 %44, !dbg !130 ; [#uses=1 type=[8 x i16]*] [debug line = 40:1]
  %46 = getelementptr inbounds [8 x i16]* %45, i32 0, i64 %42, !dbg !130 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %40, i16* %46, align 2, !dbg !130     ; [debug line = 40:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !131 ; [debug line = 40:34]
  br label %47, !dbg !131                         ; [debug line = 40:34]

; <label>:47                                      ; preds = %33
  %48 = load i32* %i, align 4, !dbg !132          ; [#uses=1 type=i32] [debug line = 39:63]
  %49 = add i32 %48, 1, !dbg !132                 ; [#uses=1 type=i32] [debug line = 39:63]
  store i32 %49, i32* %i, align 4, !dbg !132      ; [debug line = 39:63]
  br label %30, !dbg !132                         ; [debug line = 39:63]

; <label>:50                                      ; preds = %30
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !133 ; [debug line = 40:34]
  br label %51, !dbg !133                         ; [debug line = 40:34]

; <label>:51                                      ; preds = %50
  %52 = load i32* %j, align 4, !dbg !134          ; [#uses=1 type=i32] [debug line = 37:61]
  %53 = add i32 %52, 1, !dbg !134                 ; [#uses=1 type=i32] [debug line = 37:61]
  store i32 %53, i32* %j, align 4, !dbg !134      ; [debug line = 37:61]
  br label %25, !dbg !134                         ; [debug line = 37:61]

; <label>:54                                      ; preds = %25
  br label %55, !dbg !135                         ; [debug line = 40:34]

; <label>:55                                      ; preds = %54
  store i32 0, i32* %i, align 4, !dbg !136        ; [debug line = 43:9]
  br label %56, !dbg !136                         ; [debug line = 43:9]

; <label>:56                                      ; preds = %68, %55
  %57 = load i32* %i, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 43:9]
  %58 = icmp ult i32 %57, 8, !dbg !136            ; [#uses=1 type=i1] [debug line = 43:9]
  br i1 %58, label %59, label %71, !dbg !136      ; [debug line = 43:9]

; <label>:59                                      ; preds = %56
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 43:67]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 43:67]
  %60 = load i32* %i, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 44:7]
  %61 = zext i32 %60 to i64, !dbg !140            ; [#uses=1 type=i64] [debug line = 44:7]
  %62 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i64 %61, !dbg !140 ; [#uses=1 type=[8 x i16]*] [debug line = 44:7]
  %63 = getelementptr inbounds [8 x i16]* %62, i32 0, i32 0, !dbg !140 ; [#uses=1 type=i16*] [debug line = 44:7]
  %64 = load i32* %i, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 44:7]
  %65 = zext i32 %64 to i64, !dbg !140            ; [#uses=1 type=i64] [debug line = 44:7]
  %66 = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i32 0, i64 %65, !dbg !140 ; [#uses=1 type=[8 x i16]*] [debug line = 44:7]
  %67 = getelementptr inbounds [8 x i16]* %66, i32 0, i32 0, !dbg !140 ; [#uses=1 type=i16*] [debug line = 44:7]
  call void @dct_1d(i16* %63, i16* %67), !dbg !140 ; [debug line = 44:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !141 ; [debug line = 45:4]
  br label %68, !dbg !141                         ; [debug line = 45:4]

; <label>:68                                      ; preds = %59
  %69 = load i32* %i, align 4, !dbg !142          ; [#uses=1 type=i32] [debug line = 43:61]
  %70 = add i32 %69, 1, !dbg !142                 ; [#uses=1 type=i32] [debug line = 43:61]
  store i32 %70, i32* %i, align 4, !dbg !142      ; [debug line = 43:61]
  br label %56, !dbg !142                         ; [debug line = 43:61]

; <label>:71                                      ; preds = %56
  br label %72, !dbg !143                         ; [debug line = 45:4]

; <label>:72                                      ; preds = %71
  store i32 0, i32* %j, align 4, !dbg !144        ; [debug line = 48:9]
  br label %73, !dbg !144                         ; [debug line = 48:9]

; <label>:73                                      ; preds = %100, %72
  %74 = load i32* %j, align 4, !dbg !144          ; [#uses=1 type=i32] [debug line = 48:9]
  %75 = icmp ult i32 %74, 8, !dbg !144            ; [#uses=1 type=i1] [debug line = 48:9]
  br i1 %75, label %76, label %103, !dbg !144     ; [debug line = 48:9]

; <label>:76                                      ; preds = %73
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !146 ; [debug line = 49:1]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !146 ; [debug line = 49:1]
  br label %77, !dbg !146                         ; [debug line = 49:1]

; <label>:77                                      ; preds = %76
  store i32 0, i32* %i, align 4, !dbg !148        ; [debug line = 50:11]
  br label %78, !dbg !148                         ; [debug line = 50:11]

; <label>:78                                      ; preds = %96, %77
  %79 = load i32* %i, align 4, !dbg !148          ; [#uses=1 type=i32] [debug line = 50:11]
  %80 = icmp ult i32 %79, 8, !dbg !148            ; [#uses=1 type=i1] [debug line = 50:11]
  br i1 %80, label %81, label %99, !dbg !148      ; [debug line = 50:11]

; <label>:81                                      ; preds = %78
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !150 ; [debug line = 51:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !150 ; [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !152 ; [debug line = 52:1]
  %82 = load i32* %j, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 51:1]
  %83 = zext i32 %82 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 51:1]
  %84 = load i32* %i, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 51:1]
  %85 = zext i32 %84 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 51:1]
  %86 = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i32 0, i64 %85, !dbg !153 ; [#uses=1 type=[8 x i16]*] [debug line = 51:1]
  %87 = getelementptr inbounds [8 x i16]* %86, i32 0, i64 %83, !dbg !153 ; [#uses=1 type=i16*] [debug line = 51:1]
  %88 = load i16* %87, align 2, !dbg !153         ; [#uses=1 type=i16] [debug line = 51:1]
  %89 = load i32* %i, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 51:1]
  %90 = zext i32 %89 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 51:1]
  %91 = load i32* %j, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 51:1]
  %92 = zext i32 %91 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 51:1]
  %93 = load [8 x i16]** %2, align 8, !dbg !153   ; [#uses=1 type=[8 x i16]*] [debug line = 51:1]
  %94 = getelementptr inbounds [8 x i16]* %93, i64 %92, !dbg !153 ; [#uses=1 type=[8 x i16]*] [debug line = 51:1]
  %95 = getelementptr inbounds [8 x i16]* %94, i32 0, i64 %90, !dbg !153 ; [#uses=1 type=i16*] [debug line = 51:1]
  store i16 %88, i16* %95, align 2, !dbg !153     ; [debug line = 51:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !154 ; [debug line = 51:34]
  br label %96, !dbg !154                         ; [debug line = 51:34]

; <label>:96                                      ; preds = %81
  %97 = load i32* %i, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 50:63]
  %98 = add i32 %97, 1, !dbg !155                 ; [#uses=1 type=i32] [debug line = 50:63]
  store i32 %98, i32* %i, align 4, !dbg !155      ; [debug line = 50:63]
  br label %78, !dbg !155                         ; [debug line = 50:63]

; <label>:99                                      ; preds = %78
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !156 ; [debug line = 51:34]
  br label %100, !dbg !156                        ; [debug line = 51:34]

; <label>:100                                     ; preds = %99
  %101 = load i32* %j, align 4, !dbg !157         ; [#uses=1 type=i32] [debug line = 48:61]
  %102 = add i32 %101, 1, !dbg !157               ; [#uses=1 type=i32] [debug line = 48:61]
  store i32 %102, i32* %j, align 4, !dbg !157     ; [debug line = 48:61]
  br label %73, !dbg !157                         ; [debug line = 48:61]

; <label>:103                                     ; preds = %73
  ret void, !dbg !158                             ; [debug line = 52:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=1]
define void @read_data(i16* %input, [8 x i16]* %buf) nounwind uwtable {
  %1 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %2 = alloca [8 x i16]*, align 8                 ; [#uses=3 type=[8 x i16]**]
  %r = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %c = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i16* %input, i16** %1, align 8
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !159), !dbg !160 ; [debug line = 54:22] [debug variable = input]
  store [8 x i16]* %buf, [8 x i16]** %2, align 8
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %2}, metadata !161), !dbg !162 ; [debug line = 54:44] [debug variable = buf]
  %3 = load i16** %1, align 8, !dbg !163          ; [#uses=1 type=i16*] [debug line = 55:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %3, i32 64) nounwind, !dbg !163 ; [debug line = 55:2]
  %4 = load [8 x i16]** %2, align 8, !dbg !165    ; [#uses=1 type=[8 x i16]*] [debug line = 55:40]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %4, i32 8) nounwind, !dbg !165 ; [debug line = 55:40]
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !166), !dbg !167 ; [debug line = 56:8] [debug variable = r]
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !168), !dbg !169 ; [debug line = 56:11] [debug variable = c]
  br label %5, !dbg !170                          ; [debug line = 56:12]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %r, align 4, !dbg !171        ; [debug line = 59:9]
  br label %6, !dbg !171                          ; [debug line = 59:9]

; <label>:6                                       ; preds = %34, %5
  %7 = load i32* %r, align 4, !dbg !171           ; [#uses=1 type=i32] [debug line = 59:9]
  %8 = icmp slt i32 %7, 8, !dbg !171              ; [#uses=1 type=i1] [debug line = 59:9]
  br i1 %8, label %9, label %37, !dbg !171        ; [debug line = 59:9]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !173 ; [debug line = 59:67]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !173 ; [debug line = 59:67]
  br label %10, !dbg !173                         ; [debug line = 59:67]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %c, align 4, !dbg !175        ; [debug line = 61:12]
  br label %11, !dbg !175                         ; [debug line = 61:12]

; <label>:11                                      ; preds = %30, %10
  %12 = load i32* %c, align 4, !dbg !175          ; [#uses=1 type=i32] [debug line = 61:12]
  %13 = icmp slt i32 %12, 8, !dbg !175            ; [#uses=1 type=i1] [debug line = 61:12]
  br i1 %13, label %14, label %33, !dbg !175      ; [debug line = 61:12]

; <label>:14                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !177 ; [debug line = 62:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !177 ; [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !179 ; [debug line = 63:1]
  %15 = load i32* %r, align 4, !dbg !180          ; [#uses=1 type=i32] [debug line = 62:1]
  %16 = mul nsw i32 %15, 8, !dbg !180             ; [#uses=1 type=i32] [debug line = 62:1]
  %17 = load i32* %c, align 4, !dbg !180          ; [#uses=1 type=i32] [debug line = 62:1]
  %18 = add nsw i32 %16, %17, !dbg !180           ; [#uses=1 type=i32] [debug line = 62:1]
  %19 = sext i32 %18 to i64, !dbg !180            ; [#uses=1 type=i64] [debug line = 62:1]
  %20 = load i16** %1, align 8, !dbg !180         ; [#uses=1 type=i16*] [debug line = 62:1]
  %21 = getelementptr inbounds i16* %20, i64 %19, !dbg !180 ; [#uses=1 type=i16*] [debug line = 62:1]
  %22 = load i16* %21, align 2, !dbg !180         ; [#uses=1 type=i16] [debug line = 62:1]
  %23 = load i32* %c, align 4, !dbg !180          ; [#uses=1 type=i32] [debug line = 62:1]
  %24 = sext i32 %23 to i64, !dbg !180            ; [#uses=1 type=i64] [debug line = 62:1]
  %25 = load i32* %r, align 4, !dbg !180          ; [#uses=1 type=i32] [debug line = 62:1]
  %26 = sext i32 %25 to i64, !dbg !180            ; [#uses=1 type=i64] [debug line = 62:1]
  %27 = load [8 x i16]** %2, align 8, !dbg !180   ; [#uses=1 type=[8 x i16]*] [debug line = 62:1]
  %28 = getelementptr inbounds [8 x i16]* %27, i64 %26, !dbg !180 ; [#uses=1 type=[8 x i16]*] [debug line = 62:1]
  %29 = getelementptr inbounds [8 x i16]* %28, i32 0, i64 %24, !dbg !180 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %22, i16* %29, align 2, !dbg !180     ; [debug line = 62:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !181 ; [debug line = 62:66]
  br label %30, !dbg !181                         ; [debug line = 62:66]

; <label>:30                                      ; preds = %14
  %31 = load i32* %c, align 4, !dbg !182          ; [#uses=1 type=i32] [debug line = 61:64]
  %32 = add nsw i32 %31, 1, !dbg !182             ; [#uses=1 type=i32] [debug line = 61:64]
  store i32 %32, i32* %c, align 4, !dbg !182      ; [debug line = 61:64]
  br label %11, !dbg !182                         ; [debug line = 61:64]

; <label>:33                                      ; preds = %11
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !183 ; [debug line = 63:4]
  br label %34, !dbg !183                         ; [debug line = 63:4]

; <label>:34                                      ; preds = %33
  %35 = load i32* %r, align 4, !dbg !184          ; [#uses=1 type=i32] [debug line = 59:61]
  %36 = add nsw i32 %35, 1, !dbg !184             ; [#uses=1 type=i32] [debug line = 59:61]
  store i32 %36, i32* %r, align 4, !dbg !184      ; [debug line = 59:61]
  br label %6, !dbg !184                          ; [debug line = 59:61]

; <label>:37                                      ; preds = %6
  ret void, !dbg !185                             ; [debug line = 64:1]
}

; [#uses=1]
define void @write_data([8 x i16]* %buf, i16* %output) nounwind uwtable {
  %1 = alloca [8 x i16]*, align 8                 ; [#uses=3 type=[8 x i16]**]
  %2 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %r = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %c = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store [8 x i16]* %buf, [8 x i16]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %1}, metadata !186), !dbg !187 ; [debug line = 66:23] [debug variable = buf]
  store i16* %output, i16** %2, align 8
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !188), !dbg !189 ; [debug line = 66:116] [debug variable = output]
  %3 = load i16** %2, align 8, !dbg !190          ; [#uses=1 type=i16*] [debug line = 67:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %3, i32 64) nounwind, !dbg !190 ; [debug line = 67:2]
  %4 = load [8 x i16]** %1, align 8, !dbg !192    ; [#uses=1 type=[8 x i16]*] [debug line = 67:41]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %4, i32 8) nounwind, !dbg !192 ; [debug line = 67:41]
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !193), !dbg !194 ; [debug line = 68:8] [debug variable = r]
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !195), !dbg !196 ; [debug line = 68:11] [debug variable = c]
  br label %5, !dbg !197                          ; [debug line = 68:12]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %r, align 4, !dbg !198        ; [debug line = 71:9]
  br label %6, !dbg !198                          ; [debug line = 71:9]

; <label>:6                                       ; preds = %34, %5
  %7 = load i32* %r, align 4, !dbg !198           ; [#uses=1 type=i32] [debug line = 71:9]
  %8 = icmp slt i32 %7, 8, !dbg !198              ; [#uses=1 type=i1] [debug line = 71:9]
  br i1 %8, label %9, label %37, !dbg !198        ; [debug line = 71:9]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !200 ; [debug line = 71:67]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !200 ; [debug line = 71:67]
  br label %10, !dbg !200                         ; [debug line = 71:67]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %c, align 4, !dbg !202        ; [debug line = 73:12]
  br label %11, !dbg !202                         ; [debug line = 73:12]

; <label>:11                                      ; preds = %30, %10
  %12 = load i32* %c, align 4, !dbg !202          ; [#uses=1 type=i32] [debug line = 73:12]
  %13 = icmp slt i32 %12, 8, !dbg !202            ; [#uses=1 type=i1] [debug line = 73:12]
  br i1 %13, label %14, label %33, !dbg !202      ; [debug line = 73:12]

; <label>:14                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !204 ; [debug line = 74:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !204 ; [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !206 ; [debug line = 75:1]
  %15 = load i32* %c, align 4, !dbg !207          ; [#uses=1 type=i32] [debug line = 74:1]
  %16 = sext i32 %15 to i64, !dbg !207            ; [#uses=1 type=i64] [debug line = 74:1]
  %17 = load i32* %r, align 4, !dbg !207          ; [#uses=1 type=i32] [debug line = 74:1]
  %18 = sext i32 %17 to i64, !dbg !207            ; [#uses=1 type=i64] [debug line = 74:1]
  %19 = load [8 x i16]** %1, align 8, !dbg !207   ; [#uses=1 type=[8 x i16]*] [debug line = 74:1]
  %20 = getelementptr inbounds [8 x i16]* %19, i64 %18, !dbg !207 ; [#uses=1 type=[8 x i16]*] [debug line = 74:1]
  %21 = getelementptr inbounds [8 x i16]* %20, i32 0, i64 %16, !dbg !207 ; [#uses=1 type=i16*] [debug line = 74:1]
  %22 = load i16* %21, align 2, !dbg !207         ; [#uses=1 type=i16] [debug line = 74:1]
  %23 = load i32* %r, align 4, !dbg !207          ; [#uses=1 type=i32] [debug line = 74:1]
  %24 = mul nsw i32 %23, 8, !dbg !207             ; [#uses=1 type=i32] [debug line = 74:1]
  %25 = load i32* %c, align 4, !dbg !207          ; [#uses=1 type=i32] [debug line = 74:1]
  %26 = add nsw i32 %24, %25, !dbg !207           ; [#uses=1 type=i32] [debug line = 74:1]
  %27 = sext i32 %26 to i64, !dbg !207            ; [#uses=1 type=i64] [debug line = 74:1]
  %28 = load i16** %2, align 8, !dbg !207         ; [#uses=1 type=i16*] [debug line = 74:1]
  %29 = getelementptr inbounds i16* %28, i64 %27, !dbg !207 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %22, i16* %29, align 2, !dbg !207     ; [debug line = 74:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !208 ; [debug line = 74:67]
  br label %30, !dbg !208                         ; [debug line = 74:67]

; <label>:30                                      ; preds = %14
  %31 = load i32* %c, align 4, !dbg !209          ; [#uses=1 type=i32] [debug line = 73:64]
  %32 = add nsw i32 %31, 1, !dbg !209             ; [#uses=1 type=i32] [debug line = 73:64]
  store i32 %32, i32* %c, align 4, !dbg !209      ; [debug line = 73:64]
  br label %11, !dbg !209                         ; [debug line = 73:64]

; <label>:33                                      ; preds = %11
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !210 ; [debug line = 75:4]
  br label %34, !dbg !210                         ; [debug line = 75:4]

; <label>:34                                      ; preds = %33
  %35 = load i32* %r, align 4, !dbg !211          ; [#uses=1 type=i32] [debug line = 71:61]
  %36 = add nsw i32 %35, 1, !dbg !211             ; [#uses=1 type=i32] [debug line = 71:61]
  store i32 %36, i32* %r, align 4, !dbg !211      ; [debug line = 71:61]
  br label %6, !dbg !211                          ; [debug line = 71:61]

; <label>:37                                      ; preds = %6
  ret void, !dbg !212                             ; [debug line = 76:1]
}

; [#uses=0]
define void @dct(i16* %input, i16* %output) nounwind uwtable {
  %1 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %2 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %buf_2d_in = alloca [8 x [8 x i16]], align 16   ; [#uses=3 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  store i16* %input, i16** %1, align 8
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !213), !dbg !214 ; [debug line = 78:16] [debug variable = input]
  store i16* %output, i16** %2, align 8
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !215), !dbg !216 ; [debug line = 78:38] [debug variable = output]
  %3 = load i16** %2, align 8, !dbg !217          ; [#uses=1 type=i16*] [debug line = 79:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %3, i32 64) nounwind, !dbg !217 ; [debug line = 79:2]
  %4 = load i16** %1, align 8, !dbg !219          ; [#uses=1 type=i16*] [debug line = 79:41]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %4, i32 64) nounwind, !dbg !219 ; [debug line = 79:41]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !220 ; [debug line = 80:1]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !221), !dbg !223 ; [debug line = 81:10] [debug variable = buf_2d_in]
  %5 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i32 0, i32 0, !dbg !224 ; [#uses=1 type=[8 x i16]*] [debug line = 82:1]
  call void (...)* @_ssdm_SpecArrayPartition([8 x i16]* %5, i32 2, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !224 ; [debug line = 82:1]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !225), !dbg !226 ; [debug line = 82:10] [debug variable = buf_2d_out]
  %6 = load i16** %1, align 8, !dbg !227          ; [#uses=1 type=i16*] [debug line = 85:4]
  %7 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i32 0, i32 0, !dbg !227 ; [#uses=1 type=[8 x i16]*] [debug line = 85:4]
  call void @read_data(i16* %6, [8 x i16]* %7), !dbg !227 ; [debug line = 85:4]
  %8 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i32 0, i32 0, !dbg !228 ; [#uses=1 type=[8 x i16]*] [debug line = 87:4]
  %9 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i32 0, i32 0, !dbg !228 ; [#uses=1 type=[8 x i16]*] [debug line = 87:4]
  call void @dct_2d([8 x i16]* %8, [8 x i16]* %9), !dbg !228 ; [debug line = 87:4]
  %10 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i32 0, i32 0, !dbg !229 ; [#uses=1 type=[8 x i16]*] [debug line = 90:4]
  %11 = load i16** %2, align 8, !dbg !229         ; [#uses=1 type=i16*] [debug line = 90:4]
  call void @write_data([8 x i16]* %10, i16* %11), !dbg !229 ; [debug line = 90:4]
  ret void, !dbg !230                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!39, !46, !49, !52, !55}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution5/.autopilot/db/dct.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !33} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !21, metadata !27, metadata !30}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16*)* @dct_1d, null, null, metadata !12, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"dct.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !6, i32 23, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i16]*, [8 x i16]*)* @dct_2d, null, null, metadata !12, i32 25} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17, metadata !17}
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !10, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"read_data", metadata !"read_data", metadata !"", metadata !6, i32 54, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, [8 x i16]*)* @read_data, null, null, metadata !12, i32 55} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !25}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !11, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{i32 786478, i32 0, metadata !6, metadata !"write_data", metadata !"write_data", metadata !"", metadata !6, i32 66, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i16]*, i16*)* @write_data, null, null, metadata !12, i32 67} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !25, metadata !24}
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct", metadata !"dct", metadata !"", metadata !6, i32 78, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16*)* @dct, null, null, metadata !12, i32 79} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !24, metadata !24}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786484, i32 0, metadata !5, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !6, i32 8, metadata !36, i32 1, i32 1, [8 x [8 x i16]]* @dct_1d.dct_coeff_table} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !37, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!38 = metadata !{metadata !20, metadata !20}
!39 = metadata !{void (i16*, i16*)* @dct_1d, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!41 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"dct_data_t*", metadata !"dct_data_t*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"dst"}
!45 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!46 = metadata !{void ([8 x i16]*, [8 x i16]*)* @dct_2d, metadata !40, metadata !41, metadata !47, metadata !43, metadata !48, metadata !45}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"dct_data_t [8]*", metadata !"dct_data_t [8]*"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"in_block", metadata !"out_block"}
!49 = metadata !{void (i16*, [8 x i16]*)* @read_data, metadata !40, metadata !41, metadata !50, metadata !43, metadata !51, metadata !45}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"short*", metadata !"short [8]*"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"buf"}
!52 = metadata !{void ([8 x i16]*, i16*)* @write_data, metadata !40, metadata !41, metadata !53, metadata !43, metadata !54, metadata !45}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"short [8]*", metadata !"short*"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"output"}
!55 = metadata !{void (i16*, i16*)* @dct, metadata !40, metadata !41, metadata !56, metadata !43, metadata !57, metadata !45}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"short*", metadata !"short*"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!58 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 4, i32 24, metadata !5, null}
!60 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 4, i32 81, metadata !5, null}
!62 = metadata !{i32 5, i32 2, metadata !63, null}
!63 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 5, i32 32, metadata !63, null}
!65 = metadata !{i32 786688, metadata !63, metadata !"k", metadata !6, i32 6, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 6, i32 17, metadata !63, null}
!68 = metadata !{i32 786688, metadata !63, metadata !"n", metadata !6, i32 6, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 6, i32 20, metadata !63, null}
!70 = metadata !{i32 786688, metadata !63, metadata !"tmp", metadata !6, i32 7, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 7, i32 8, metadata !63, null}
!73 = metadata !{i32 11, i32 1, metadata !63, null}
!74 = metadata !{i32 13, i32 9, metadata !75, null}
!75 = metadata !{i32 786443, metadata !63, i32 13, i32 4, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 13, i32 67, metadata !77, null}
!77 = metadata !{i32 786443, metadata !75, i32 13, i32 66, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 14, i32 1, metadata !77, null}
!79 = metadata !{i32 15, i32 11, metadata !80, null}
!80 = metadata !{i32 786443, metadata !77, i32 15, i32 7, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 15, i32 78, metadata !82, null}
!82 = metadata !{i32 786443, metadata !80, i32 15, i32 77, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786688, metadata !82, metadata !"coeff", metadata !6, i32 16, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 16, i32 14, metadata !82, null}
!85 = metadata !{i32 16, i32 48, metadata !82, null}
!86 = metadata !{i32 17, i32 10, metadata !82, null}
!87 = metadata !{i32 18, i32 7, metadata !82, null}
!88 = metadata !{i32 15, i32 72, metadata !80, null}
!89 = metadata !{i32 19, i32 7, metadata !77, null}
!90 = metadata !{i32 20, i32 4, metadata !77, null}
!91 = metadata !{i32 13, i32 61, metadata !75, null}
!92 = metadata !{i32 21, i32 1, metadata !63, null}
!93 = metadata !{i32 786689, metadata !14, metadata !"in_block", metadata !6, i32 16777239, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 23, i32 24, metadata !14, null}
!95 = metadata !{i32 786689, metadata !14, metadata !"out_block", metadata !6, i32 33554456, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 24, i32 18, metadata !14, null}
!97 = metadata !{i32 25, i32 2, metadata !98, null}
!98 = metadata !{i32 786443, metadata !14, i32 25, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 25, i32 38, metadata !98, null}
!100 = metadata !{i32 786688, metadata !98, metadata !"row_outbuf", metadata !6, i32 26, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !10, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!102 = metadata !{i32 26, i32 15, metadata !98, null}
!103 = metadata !{i32 786688, metadata !98, metadata !"col_outbuf", metadata !6, i32 27, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 27, i32 15, metadata !98, null}
!105 = metadata !{i32 786688, metadata !98, metadata !"col_inbuf", metadata !6, i32 27, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 27, i32 109, metadata !98, null}
!107 = metadata !{i32 28, i32 1, metadata !98, null}
!108 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !6, i32 28, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 28, i32 13, metadata !98, null}
!110 = metadata !{i32 786688, metadata !98, metadata !"j", metadata !6, i32 28, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 28, i32 16, metadata !98, null}
!112 = metadata !{i32 28, i32 17, metadata !98, null}
!113 = metadata !{i32 32, i32 8, metadata !114, null}
!114 = metadata !{i32 786443, metadata !98, i32 32, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 32, i32 66, metadata !116, null}
!116 = metadata !{i32 786443, metadata !114, i32 32, i32 65, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 33, i32 7, metadata !116, null}
!118 = metadata !{i32 34, i32 4, metadata !116, null}
!119 = metadata !{i32 32, i32 60, metadata !114, null}
!120 = metadata !{i32 34, i32 4, metadata !114, null}
!121 = metadata !{i32 37, i32 9, metadata !122, null}
!122 = metadata !{i32 786443, metadata !98, i32 37, i32 4, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 38, i32 1, metadata !124, null}
!124 = metadata !{i32 786443, metadata !122, i32 38, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 39, i32 11, metadata !126, null}
!126 = metadata !{i32 786443, metadata !124, i32 39, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 40, i32 2, metadata !128, null}
!128 = metadata !{i32 786443, metadata !126, i32 40, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 41, i32 1, metadata !128, null}
!130 = metadata !{i32 40, i32 1, metadata !128, null}
!131 = metadata !{i32 40, i32 34, metadata !128, null}
!132 = metadata !{i32 39, i32 63, metadata !126, null}
!133 = metadata !{i32 40, i32 34, metadata !126, null}
!134 = metadata !{i32 37, i32 61, metadata !122, null}
!135 = metadata !{i32 40, i32 34, metadata !122, null}
!136 = metadata !{i32 43, i32 9, metadata !137, null}
!137 = metadata !{i32 786443, metadata !98, i32 43, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 43, i32 67, metadata !139, null}
!139 = metadata !{i32 786443, metadata !137, i32 43, i32 66, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 44, i32 7, metadata !139, null}
!141 = metadata !{i32 45, i32 4, metadata !139, null}
!142 = metadata !{i32 43, i32 61, metadata !137, null}
!143 = metadata !{i32 45, i32 4, metadata !137, null}
!144 = metadata !{i32 48, i32 9, metadata !145, null}
!145 = metadata !{i32 786443, metadata !98, i32 48, i32 4, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 49, i32 1, metadata !147, null}
!147 = metadata !{i32 786443, metadata !145, i32 49, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 50, i32 11, metadata !149, null}
!149 = metadata !{i32 786443, metadata !147, i32 50, i32 7, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 51, i32 2, metadata !151, null}
!151 = metadata !{i32 786443, metadata !149, i32 51, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 52, i32 1, metadata !151, null}
!153 = metadata !{i32 51, i32 1, metadata !151, null}
!154 = metadata !{i32 51, i32 34, metadata !151, null}
!155 = metadata !{i32 50, i32 63, metadata !149, null}
!156 = metadata !{i32 51, i32 34, metadata !149, null}
!157 = metadata !{i32 48, i32 61, metadata !145, null}
!158 = metadata !{i32 52, i32 1, metadata !98, null}
!159 = metadata !{i32 786689, metadata !21, metadata !"input", metadata !6, i32 16777270, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 54, i32 22, metadata !21, null}
!161 = metadata !{i32 786689, metadata !21, metadata !"buf", metadata !6, i32 33554486, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 54, i32 44, metadata !21, null}
!163 = metadata !{i32 55, i32 2, metadata !164, null}
!164 = metadata !{i32 786443, metadata !21, i32 55, i32 1, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 55, i32 40, metadata !164, null}
!166 = metadata !{i32 786688, metadata !164, metadata !"r", metadata !6, i32 56, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 56, i32 8, metadata !164, null}
!168 = metadata !{i32 786688, metadata !164, metadata !"c", metadata !6, i32 56, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 56, i32 11, metadata !164, null}
!170 = metadata !{i32 56, i32 12, metadata !164, null}
!171 = metadata !{i32 59, i32 9, metadata !172, null}
!172 = metadata !{i32 786443, metadata !164, i32 59, i32 4, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 59, i32 67, metadata !174, null}
!174 = metadata !{i32 786443, metadata !172, i32 59, i32 66, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 61, i32 12, metadata !176, null}
!176 = metadata !{i32 786443, metadata !174, i32 61, i32 7, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 62, i32 2, metadata !178, null}
!178 = metadata !{i32 786443, metadata !176, i32 62, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 63, i32 1, metadata !178, null}
!180 = metadata !{i32 62, i32 1, metadata !178, null}
!181 = metadata !{i32 62, i32 66, metadata !178, null}
!182 = metadata !{i32 61, i32 64, metadata !176, null}
!183 = metadata !{i32 63, i32 4, metadata !174, null}
!184 = metadata !{i32 59, i32 61, metadata !172, null}
!185 = metadata !{i32 64, i32 1, metadata !164, null}
!186 = metadata !{i32 786689, metadata !27, metadata !"buf", metadata !6, i32 16777282, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 66, i32 23, metadata !27, null}
!188 = metadata !{i32 786689, metadata !27, metadata !"output", metadata !6, i32 33554498, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 66, i32 116, metadata !27, null}
!190 = metadata !{i32 67, i32 2, metadata !191, null}
!191 = metadata !{i32 786443, metadata !27, i32 67, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 67, i32 41, metadata !191, null}
!193 = metadata !{i32 786688, metadata !191, metadata !"r", metadata !6, i32 68, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 68, i32 8, metadata !191, null}
!195 = metadata !{i32 786688, metadata !191, metadata !"c", metadata !6, i32 68, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 68, i32 11, metadata !191, null}
!197 = metadata !{i32 68, i32 12, metadata !191, null}
!198 = metadata !{i32 71, i32 9, metadata !199, null}
!199 = metadata !{i32 786443, metadata !191, i32 71, i32 4, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 71, i32 67, metadata !201, null}
!201 = metadata !{i32 786443, metadata !199, i32 71, i32 66, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 73, i32 12, metadata !203, null}
!203 = metadata !{i32 786443, metadata !201, i32 73, i32 7, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 74, i32 2, metadata !205, null}
!205 = metadata !{i32 786443, metadata !203, i32 74, i32 1, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 75, i32 1, metadata !205, null}
!207 = metadata !{i32 74, i32 1, metadata !205, null}
!208 = metadata !{i32 74, i32 67, metadata !205, null}
!209 = metadata !{i32 73, i32 64, metadata !203, null}
!210 = metadata !{i32 75, i32 4, metadata !201, null}
!211 = metadata !{i32 71, i32 61, metadata !199, null}
!212 = metadata !{i32 76, i32 1, metadata !191, null}
!213 = metadata !{i32 786689, metadata !30, metadata !"input", metadata !6, i32 16777294, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 78, i32 16, metadata !30, null}
!215 = metadata !{i32 786689, metadata !30, metadata !"output", metadata !6, i32 33554510, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 78, i32 38, metadata !30, null}
!217 = metadata !{i32 79, i32 2, metadata !218, null}
!218 = metadata !{i32 786443, metadata !30, i32 79, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 79, i32 41, metadata !218, null}
!220 = metadata !{i32 80, i32 1, metadata !218, null}
!221 = metadata !{i32 786688, metadata !218, metadata !"buf_2d_in", metadata !6, i32 81, metadata !222, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !11, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!223 = metadata !{i32 81, i32 10, metadata !218, null}
!224 = metadata !{i32 82, i32 1, metadata !218, null}
!225 = metadata !{i32 786688, metadata !218, metadata !"buf_2d_out", metadata !6, i32 82, metadata !222, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 82, i32 10, metadata !218, null}
!227 = metadata !{i32 85, i32 4, metadata !218, null}
!228 = metadata !{i32 87, i32 4, metadata !218, null}
!229 = metadata !{i32 90, i32 4, metadata !218, null}
!230 = metadata !{i32 91, i32 1, metadata !218, null}
