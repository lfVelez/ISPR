; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution2/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dct_1d.dct_coeff_table = internal constant [8 x [8 x i16]] [[8 x i16] [i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192], [8 x i16] [i16 11363, i16 9633, i16 6436, i16 2260, i16 -2260, i16 -6436, i16 -9632, i16 -11362], [8 x i16] [i16 10703, i16 4433, i16 -4433, i16 -10703, i16 -10703, i16 -4433, i16 4433, i16 10703], [8 x i16] [i16 9633, i16 -2260, i16 -11362, i16 -6436, i16 6436, i16 11363, i16 2260, i16 -9632], [8 x i16] [i16 8192, i16 -8192, i16 -8192, i16 8192, i16 8192, i16 -8191, i16 -8191, i16 8192], [8 x i16] [i16 6436, i16 -11362, i16 2260, i16 9633, i16 -9632, i16 -2260, i16 11363, i16 -6436], [8 x i16] [i16 4433, i16 -10703, i16 10703, i16 -4433, i16 -4433, i16 10703, i16 -10703, i16 4433], [8 x i16] [i16 2260, i16 -6436, i16 9633, i16 -11362, i16 11363, i16 -9632, i16 6436, i16 -2260]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]

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
  br label %10, !dbg !76                          ; [debug line = 13:67]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %n, align 4, !dbg !78         ; [debug line = 15:11]
  store i32 0, i32* %tmp, align 4, !dbg !78       ; [debug line = 15:11]
  br label %11, !dbg !78                          ; [debug line = 15:11]

; <label>:11                                      ; preds = %33, %10
  %12 = load i32* %n, align 4, !dbg !78           ; [#uses=1 type=i32] [debug line = 15:11]
  %13 = icmp ult i32 %12, 8, !dbg !78             ; [#uses=1 type=i1] [debug line = 15:11]
  br i1 %13, label %14, label %36, !dbg !78       ; [debug line = 15:11]

; <label>:14                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 15:78]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 15:78]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 16:1]
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
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !87 ; [debug line = 18:7]
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
  %col_inbuf = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
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
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !107), !dbg !108 ; [debug line = 28:13] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !109), !dbg !110 ; [debug line = 28:16] [debug variable = j]
  br label %5, !dbg !111                          ; [debug line = 28:17]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !112        ; [debug line = 32:8]
  br label %6, !dbg !112                          ; [debug line = 32:8]

; <label>:6                                       ; preds = %19, %5
  %7 = load i32* %i, align 4, !dbg !112           ; [#uses=1 type=i32] [debug line = 32:8]
  %8 = icmp ult i32 %7, 8, !dbg !112              ; [#uses=1 type=i1] [debug line = 32:8]
  br i1 %8, label %9, label %22, !dbg !112        ; [debug line = 32:8]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 32:66]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 32:66]
  %10 = load i32* %i, align 4, !dbg !116          ; [#uses=1 type=i32] [debug line = 33:7]
  %11 = zext i32 %10 to i64, !dbg !116            ; [#uses=1 type=i64] [debug line = 33:7]
  %12 = load [8 x i16]** %1, align 8, !dbg !116   ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %13 = getelementptr inbounds [8 x i16]* %12, i64 %11, !dbg !116 ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %14 = getelementptr inbounds [8 x i16]* %13, i32 0, i32 0, !dbg !116 ; [#uses=1 type=i16*] [debug line = 33:7]
  %15 = load i32* %i, align 4, !dbg !116          ; [#uses=1 type=i32] [debug line = 33:7]
  %16 = zext i32 %15 to i64, !dbg !116            ; [#uses=1 type=i64] [debug line = 33:7]
  %17 = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i32 0, i64 %16, !dbg !116 ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %18 = getelementptr inbounds [8 x i16]* %17, i32 0, i32 0, !dbg !116 ; [#uses=1 type=i16*] [debug line = 33:7]
  call void @dct_1d(i16* %14, i16* %18), !dbg !116 ; [debug line = 33:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !117 ; [debug line = 34:4]
  br label %19, !dbg !117                         ; [debug line = 34:4]

; <label>:19                                      ; preds = %9
  %20 = load i32* %i, align 4, !dbg !118          ; [#uses=1 type=i32] [debug line = 32:60]
  %21 = add i32 %20, 1, !dbg !118                 ; [#uses=1 type=i32] [debug line = 32:60]
  store i32 %21, i32* %i, align 4, !dbg !118      ; [debug line = 32:60]
  br label %6, !dbg !118                          ; [debug line = 32:60]

; <label>:22                                      ; preds = %6
  br label %23, !dbg !119                         ; [debug line = 34:4]

; <label>:23                                      ; preds = %22
  store i32 0, i32* %j, align 4, !dbg !120        ; [debug line = 37:9]
  br label %24, !dbg !120                         ; [debug line = 37:9]

; <label>:24                                      ; preds = %50, %23
  %25 = load i32* %j, align 4, !dbg !120          ; [#uses=1 type=i32] [debug line = 37:9]
  %26 = icmp ult i32 %25, 8, !dbg !120            ; [#uses=1 type=i1] [debug line = 37:9]
  br i1 %26, label %27, label %53, !dbg !120      ; [debug line = 37:9]

; <label>:27                                      ; preds = %24
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !122 ; [debug line = 38:1]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !122 ; [debug line = 38:1]
  br label %28, !dbg !122                         ; [debug line = 38:1]

; <label>:28                                      ; preds = %27
  store i32 0, i32* %i, align 4, !dbg !124        ; [debug line = 39:11]
  br label %29, !dbg !124                         ; [debug line = 39:11]

; <label>:29                                      ; preds = %46, %28
  %30 = load i32* %i, align 4, !dbg !124          ; [#uses=1 type=i32] [debug line = 39:11]
  %31 = icmp ult i32 %30, 8, !dbg !124            ; [#uses=1 type=i1] [debug line = 39:11]
  br i1 %31, label %32, label %49, !dbg !124      ; [debug line = 39:11]

; <label>:32                                      ; preds = %29
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !126 ; [debug line = 40:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !126 ; [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !128 ; [debug line = 41:1]
  %33 = load i32* %j, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 40:1]
  %34 = zext i32 %33 to i64, !dbg !129            ; [#uses=1 type=i64] [debug line = 40:1]
  %35 = load i32* %i, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 40:1]
  %36 = zext i32 %35 to i64, !dbg !129            ; [#uses=1 type=i64] [debug line = 40:1]
  %37 = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i32 0, i64 %36, !dbg !129 ; [#uses=1 type=[8 x i16]*] [debug line = 40:1]
  %38 = getelementptr inbounds [8 x i16]* %37, i32 0, i64 %34, !dbg !129 ; [#uses=1 type=i16*] [debug line = 40:1]
  %39 = load i16* %38, align 2, !dbg !129         ; [#uses=1 type=i16] [debug line = 40:1]
  %40 = load i32* %i, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 40:1]
  %41 = zext i32 %40 to i64, !dbg !129            ; [#uses=1 type=i64] [debug line = 40:1]
  %42 = load i32* %j, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 40:1]
  %43 = zext i32 %42 to i64, !dbg !129            ; [#uses=1 type=i64] [debug line = 40:1]
  %44 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i64 %43, !dbg !129 ; [#uses=1 type=[8 x i16]*] [debug line = 40:1]
  %45 = getelementptr inbounds [8 x i16]* %44, i32 0, i64 %41, !dbg !129 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %39, i16* %45, align 2, !dbg !129     ; [debug line = 40:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 40:34]
  br label %46, !dbg !130                         ; [debug line = 40:34]

; <label>:46                                      ; preds = %32
  %47 = load i32* %i, align 4, !dbg !131          ; [#uses=1 type=i32] [debug line = 39:63]
  %48 = add i32 %47, 1, !dbg !131                 ; [#uses=1 type=i32] [debug line = 39:63]
  store i32 %48, i32* %i, align 4, !dbg !131      ; [debug line = 39:63]
  br label %29, !dbg !131                         ; [debug line = 39:63]

; <label>:49                                      ; preds = %29
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !132 ; [debug line = 40:34]
  br label %50, !dbg !132                         ; [debug line = 40:34]

; <label>:50                                      ; preds = %49
  %51 = load i32* %j, align 4, !dbg !133          ; [#uses=1 type=i32] [debug line = 37:61]
  %52 = add i32 %51, 1, !dbg !133                 ; [#uses=1 type=i32] [debug line = 37:61]
  store i32 %52, i32* %j, align 4, !dbg !133      ; [debug line = 37:61]
  br label %24, !dbg !133                         ; [debug line = 37:61]

; <label>:53                                      ; preds = %24
  br label %54, !dbg !134                         ; [debug line = 40:34]

; <label>:54                                      ; preds = %53
  store i32 0, i32* %i, align 4, !dbg !135        ; [debug line = 43:9]
  br label %55, !dbg !135                         ; [debug line = 43:9]

; <label>:55                                      ; preds = %67, %54
  %56 = load i32* %i, align 4, !dbg !135          ; [#uses=1 type=i32] [debug line = 43:9]
  %57 = icmp ult i32 %56, 8, !dbg !135            ; [#uses=1 type=i1] [debug line = 43:9]
  br i1 %57, label %58, label %70, !dbg !135      ; [debug line = 43:9]

; <label>:58                                      ; preds = %55
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !137 ; [debug line = 43:67]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !137 ; [debug line = 43:67]
  %59 = load i32* %i, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 44:7]
  %60 = zext i32 %59 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 44:7]
  %61 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i64 %60, !dbg !139 ; [#uses=1 type=[8 x i16]*] [debug line = 44:7]
  %62 = getelementptr inbounds [8 x i16]* %61, i32 0, i32 0, !dbg !139 ; [#uses=1 type=i16*] [debug line = 44:7]
  %63 = load i32* %i, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 44:7]
  %64 = zext i32 %63 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 44:7]
  %65 = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i32 0, i64 %64, !dbg !139 ; [#uses=1 type=[8 x i16]*] [debug line = 44:7]
  %66 = getelementptr inbounds [8 x i16]* %65, i32 0, i32 0, !dbg !139 ; [#uses=1 type=i16*] [debug line = 44:7]
  call void @dct_1d(i16* %62, i16* %66), !dbg !139 ; [debug line = 44:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 45:4]
  br label %67, !dbg !140                         ; [debug line = 45:4]

; <label>:67                                      ; preds = %58
  %68 = load i32* %i, align 4, !dbg !141          ; [#uses=1 type=i32] [debug line = 43:61]
  %69 = add i32 %68, 1, !dbg !141                 ; [#uses=1 type=i32] [debug line = 43:61]
  store i32 %69, i32* %i, align 4, !dbg !141      ; [debug line = 43:61]
  br label %55, !dbg !141                         ; [debug line = 43:61]

; <label>:70                                      ; preds = %55
  br label %71, !dbg !142                         ; [debug line = 45:4]

; <label>:71                                      ; preds = %70
  store i32 0, i32* %j, align 4, !dbg !143        ; [debug line = 48:9]
  br label %72, !dbg !143                         ; [debug line = 48:9]

; <label>:72                                      ; preds = %99, %71
  %73 = load i32* %j, align 4, !dbg !143          ; [#uses=1 type=i32] [debug line = 48:9]
  %74 = icmp ult i32 %73, 8, !dbg !143            ; [#uses=1 type=i1] [debug line = 48:9]
  br i1 %74, label %75, label %102, !dbg !143     ; [debug line = 48:9]

; <label>:75                                      ; preds = %72
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !145 ; [debug line = 49:1]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !145 ; [debug line = 49:1]
  br label %76, !dbg !145                         ; [debug line = 49:1]

; <label>:76                                      ; preds = %75
  store i32 0, i32* %i, align 4, !dbg !147        ; [debug line = 50:11]
  br label %77, !dbg !147                         ; [debug line = 50:11]

; <label>:77                                      ; preds = %95, %76
  %78 = load i32* %i, align 4, !dbg !147          ; [#uses=1 type=i32] [debug line = 50:11]
  %79 = icmp ult i32 %78, 8, !dbg !147            ; [#uses=1 type=i1] [debug line = 50:11]
  br i1 %79, label %80, label %98, !dbg !147      ; [debug line = 50:11]

; <label>:80                                      ; preds = %77
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 51:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !151 ; [debug line = 52:1]
  %81 = load i32* %j, align 4, !dbg !152          ; [#uses=1 type=i32] [debug line = 51:1]
  %82 = zext i32 %81 to i64, !dbg !152            ; [#uses=1 type=i64] [debug line = 51:1]
  %83 = load i32* %i, align 4, !dbg !152          ; [#uses=1 type=i32] [debug line = 51:1]
  %84 = zext i32 %83 to i64, !dbg !152            ; [#uses=1 type=i64] [debug line = 51:1]
  %85 = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i32 0, i64 %84, !dbg !152 ; [#uses=1 type=[8 x i16]*] [debug line = 51:1]
  %86 = getelementptr inbounds [8 x i16]* %85, i32 0, i64 %82, !dbg !152 ; [#uses=1 type=i16*] [debug line = 51:1]
  %87 = load i16* %86, align 2, !dbg !152         ; [#uses=1 type=i16] [debug line = 51:1]
  %88 = load i32* %i, align 4, !dbg !152          ; [#uses=1 type=i32] [debug line = 51:1]
  %89 = zext i32 %88 to i64, !dbg !152            ; [#uses=1 type=i64] [debug line = 51:1]
  %90 = load i32* %j, align 4, !dbg !152          ; [#uses=1 type=i32] [debug line = 51:1]
  %91 = zext i32 %90 to i64, !dbg !152            ; [#uses=1 type=i64] [debug line = 51:1]
  %92 = load [8 x i16]** %2, align 8, !dbg !152   ; [#uses=1 type=[8 x i16]*] [debug line = 51:1]
  %93 = getelementptr inbounds [8 x i16]* %92, i64 %91, !dbg !152 ; [#uses=1 type=[8 x i16]*] [debug line = 51:1]
  %94 = getelementptr inbounds [8 x i16]* %93, i32 0, i64 %89, !dbg !152 ; [#uses=1 type=i16*] [debug line = 51:1]
  store i16 %87, i16* %94, align 2, !dbg !152     ; [debug line = 51:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !153 ; [debug line = 51:34]
  br label %95, !dbg !153                         ; [debug line = 51:34]

; <label>:95                                      ; preds = %80
  %96 = load i32* %i, align 4, !dbg !154          ; [#uses=1 type=i32] [debug line = 50:63]
  %97 = add i32 %96, 1, !dbg !154                 ; [#uses=1 type=i32] [debug line = 50:63]
  store i32 %97, i32* %i, align 4, !dbg !154      ; [debug line = 50:63]
  br label %77, !dbg !154                         ; [debug line = 50:63]

; <label>:98                                      ; preds = %77
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !155 ; [debug line = 51:34]
  br label %99, !dbg !155                         ; [debug line = 51:34]

; <label>:99                                      ; preds = %98
  %100 = load i32* %j, align 4, !dbg !156         ; [#uses=1 type=i32] [debug line = 48:61]
  %101 = add i32 %100, 1, !dbg !156               ; [#uses=1 type=i32] [debug line = 48:61]
  store i32 %101, i32* %j, align 4, !dbg !156     ; [debug line = 48:61]
  br label %72, !dbg !156                         ; [debug line = 48:61]

; <label>:102                                     ; preds = %72
  ret void, !dbg !157                             ; [debug line = 52:1]
}

; [#uses=1]
define void @read_data(i16* %input, [8 x i16]* %buf) nounwind uwtable {
  %1 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %2 = alloca [8 x i16]*, align 8                 ; [#uses=3 type=[8 x i16]**]
  %r = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %c = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i16* %input, i16** %1, align 8
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !158), !dbg !159 ; [debug line = 54:22] [debug variable = input]
  store [8 x i16]* %buf, [8 x i16]** %2, align 8
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %2}, metadata !160), !dbg !161 ; [debug line = 54:44] [debug variable = buf]
  %3 = load i16** %1, align 8, !dbg !162          ; [#uses=1 type=i16*] [debug line = 55:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %3, i32 64) nounwind, !dbg !162 ; [debug line = 55:2]
  %4 = load [8 x i16]** %2, align 8, !dbg !164    ; [#uses=1 type=[8 x i16]*] [debug line = 55:40]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %4, i32 8) nounwind, !dbg !164 ; [debug line = 55:40]
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !165), !dbg !166 ; [debug line = 56:8] [debug variable = r]
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !167), !dbg !168 ; [debug line = 56:11] [debug variable = c]
  br label %5, !dbg !169                          ; [debug line = 56:12]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %r, align 4, !dbg !170        ; [debug line = 59:9]
  br label %6, !dbg !170                          ; [debug line = 59:9]

; <label>:6                                       ; preds = %34, %5
  %7 = load i32* %r, align 4, !dbg !170           ; [#uses=1 type=i32] [debug line = 59:9]
  %8 = icmp slt i32 %7, 8, !dbg !170              ; [#uses=1 type=i1] [debug line = 59:9]
  br i1 %8, label %9, label %37, !dbg !170        ; [debug line = 59:9]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !172 ; [debug line = 59:67]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !172 ; [debug line = 59:67]
  br label %10, !dbg !172                         ; [debug line = 59:67]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %c, align 4, !dbg !174        ; [debug line = 61:12]
  br label %11, !dbg !174                         ; [debug line = 61:12]

; <label>:11                                      ; preds = %30, %10
  %12 = load i32* %c, align 4, !dbg !174          ; [#uses=1 type=i32] [debug line = 61:12]
  %13 = icmp slt i32 %12, 8, !dbg !174            ; [#uses=1 type=i1] [debug line = 61:12]
  br i1 %13, label %14, label %33, !dbg !174      ; [debug line = 61:12]

; <label>:14                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !176 ; [debug line = 62:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !176 ; [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !178 ; [debug line = 63:1]
  %15 = load i32* %r, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 62:1]
  %16 = mul nsw i32 %15, 8, !dbg !179             ; [#uses=1 type=i32] [debug line = 62:1]
  %17 = load i32* %c, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 62:1]
  %18 = add nsw i32 %16, %17, !dbg !179           ; [#uses=1 type=i32] [debug line = 62:1]
  %19 = sext i32 %18 to i64, !dbg !179            ; [#uses=1 type=i64] [debug line = 62:1]
  %20 = load i16** %1, align 8, !dbg !179         ; [#uses=1 type=i16*] [debug line = 62:1]
  %21 = getelementptr inbounds i16* %20, i64 %19, !dbg !179 ; [#uses=1 type=i16*] [debug line = 62:1]
  %22 = load i16* %21, align 2, !dbg !179         ; [#uses=1 type=i16] [debug line = 62:1]
  %23 = load i32* %c, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 62:1]
  %24 = sext i32 %23 to i64, !dbg !179            ; [#uses=1 type=i64] [debug line = 62:1]
  %25 = load i32* %r, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 62:1]
  %26 = sext i32 %25 to i64, !dbg !179            ; [#uses=1 type=i64] [debug line = 62:1]
  %27 = load [8 x i16]** %2, align 8, !dbg !179   ; [#uses=1 type=[8 x i16]*] [debug line = 62:1]
  %28 = getelementptr inbounds [8 x i16]* %27, i64 %26, !dbg !179 ; [#uses=1 type=[8 x i16]*] [debug line = 62:1]
  %29 = getelementptr inbounds [8 x i16]* %28, i32 0, i64 %24, !dbg !179 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %22, i16* %29, align 2, !dbg !179     ; [debug line = 62:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !180 ; [debug line = 62:66]
  br label %30, !dbg !180                         ; [debug line = 62:66]

; <label>:30                                      ; preds = %14
  %31 = load i32* %c, align 4, !dbg !181          ; [#uses=1 type=i32] [debug line = 61:64]
  %32 = add nsw i32 %31, 1, !dbg !181             ; [#uses=1 type=i32] [debug line = 61:64]
  store i32 %32, i32* %c, align 4, !dbg !181      ; [debug line = 61:64]
  br label %11, !dbg !181                         ; [debug line = 61:64]

; <label>:33                                      ; preds = %11
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !182 ; [debug line = 63:4]
  br label %34, !dbg !182                         ; [debug line = 63:4]

; <label>:34                                      ; preds = %33
  %35 = load i32* %r, align 4, !dbg !183          ; [#uses=1 type=i32] [debug line = 59:61]
  %36 = add nsw i32 %35, 1, !dbg !183             ; [#uses=1 type=i32] [debug line = 59:61]
  store i32 %36, i32* %r, align 4, !dbg !183      ; [debug line = 59:61]
  br label %6, !dbg !183                          ; [debug line = 59:61]

; <label>:37                                      ; preds = %6
  ret void, !dbg !184                             ; [debug line = 64:1]
}

; [#uses=1]
define void @write_data([8 x i16]* %buf, i16* %output) nounwind uwtable {
  %1 = alloca [8 x i16]*, align 8                 ; [#uses=3 type=[8 x i16]**]
  %2 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %r = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %c = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store [8 x i16]* %buf, [8 x i16]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %1}, metadata !185), !dbg !186 ; [debug line = 66:23] [debug variable = buf]
  store i16* %output, i16** %2, align 8
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !187), !dbg !188 ; [debug line = 66:116] [debug variable = output]
  %3 = load i16** %2, align 8, !dbg !189          ; [#uses=1 type=i16*] [debug line = 67:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %3, i32 64) nounwind, !dbg !189 ; [debug line = 67:2]
  %4 = load [8 x i16]** %1, align 8, !dbg !191    ; [#uses=1 type=[8 x i16]*] [debug line = 67:41]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %4, i32 8) nounwind, !dbg !191 ; [debug line = 67:41]
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !192), !dbg !193 ; [debug line = 68:8] [debug variable = r]
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !194), !dbg !195 ; [debug line = 68:11] [debug variable = c]
  br label %5, !dbg !196                          ; [debug line = 68:12]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %r, align 4, !dbg !197        ; [debug line = 71:9]
  br label %6, !dbg !197                          ; [debug line = 71:9]

; <label>:6                                       ; preds = %34, %5
  %7 = load i32* %r, align 4, !dbg !197           ; [#uses=1 type=i32] [debug line = 71:9]
  %8 = icmp slt i32 %7, 8, !dbg !197              ; [#uses=1 type=i1] [debug line = 71:9]
  br i1 %8, label %9, label %37, !dbg !197        ; [debug line = 71:9]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !199 ; [debug line = 71:67]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !199 ; [debug line = 71:67]
  br label %10, !dbg !199                         ; [debug line = 71:67]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %c, align 4, !dbg !201        ; [debug line = 73:12]
  br label %11, !dbg !201                         ; [debug line = 73:12]

; <label>:11                                      ; preds = %30, %10
  %12 = load i32* %c, align 4, !dbg !201          ; [#uses=1 type=i32] [debug line = 73:12]
  %13 = icmp slt i32 %12, 8, !dbg !201            ; [#uses=1 type=i1] [debug line = 73:12]
  br i1 %13, label %14, label %33, !dbg !201      ; [debug line = 73:12]

; <label>:14                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !203 ; [debug line = 74:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !203 ; [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !205 ; [debug line = 75:1]
  %15 = load i32* %c, align 4, !dbg !206          ; [#uses=1 type=i32] [debug line = 74:1]
  %16 = sext i32 %15 to i64, !dbg !206            ; [#uses=1 type=i64] [debug line = 74:1]
  %17 = load i32* %r, align 4, !dbg !206          ; [#uses=1 type=i32] [debug line = 74:1]
  %18 = sext i32 %17 to i64, !dbg !206            ; [#uses=1 type=i64] [debug line = 74:1]
  %19 = load [8 x i16]** %1, align 8, !dbg !206   ; [#uses=1 type=[8 x i16]*] [debug line = 74:1]
  %20 = getelementptr inbounds [8 x i16]* %19, i64 %18, !dbg !206 ; [#uses=1 type=[8 x i16]*] [debug line = 74:1]
  %21 = getelementptr inbounds [8 x i16]* %20, i32 0, i64 %16, !dbg !206 ; [#uses=1 type=i16*] [debug line = 74:1]
  %22 = load i16* %21, align 2, !dbg !206         ; [#uses=1 type=i16] [debug line = 74:1]
  %23 = load i32* %r, align 4, !dbg !206          ; [#uses=1 type=i32] [debug line = 74:1]
  %24 = mul nsw i32 %23, 8, !dbg !206             ; [#uses=1 type=i32] [debug line = 74:1]
  %25 = load i32* %c, align 4, !dbg !206          ; [#uses=1 type=i32] [debug line = 74:1]
  %26 = add nsw i32 %24, %25, !dbg !206           ; [#uses=1 type=i32] [debug line = 74:1]
  %27 = sext i32 %26 to i64, !dbg !206            ; [#uses=1 type=i64] [debug line = 74:1]
  %28 = load i16** %2, align 8, !dbg !206         ; [#uses=1 type=i16*] [debug line = 74:1]
  %29 = getelementptr inbounds i16* %28, i64 %27, !dbg !206 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %22, i16* %29, align 2, !dbg !206     ; [debug line = 74:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !207 ; [debug line = 74:67]
  br label %30, !dbg !207                         ; [debug line = 74:67]

; <label>:30                                      ; preds = %14
  %31 = load i32* %c, align 4, !dbg !208          ; [#uses=1 type=i32] [debug line = 73:64]
  %32 = add nsw i32 %31, 1, !dbg !208             ; [#uses=1 type=i32] [debug line = 73:64]
  store i32 %32, i32* %c, align 4, !dbg !208      ; [debug line = 73:64]
  br label %11, !dbg !208                         ; [debug line = 73:64]

; <label>:33                                      ; preds = %11
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !209 ; [debug line = 75:4]
  br label %34, !dbg !209                         ; [debug line = 75:4]

; <label>:34                                      ; preds = %33
  %35 = load i32* %r, align 4, !dbg !210          ; [#uses=1 type=i32] [debug line = 71:61]
  %36 = add nsw i32 %35, 1, !dbg !210             ; [#uses=1 type=i32] [debug line = 71:61]
  store i32 %36, i32* %r, align 4, !dbg !210      ; [debug line = 71:61]
  br label %6, !dbg !210                          ; [debug line = 71:61]

; <label>:37                                      ; preds = %6
  ret void, !dbg !211                             ; [debug line = 76:1]
}

; [#uses=0]
define void @dct(i16* %input, i16* %output) nounwind uwtable {
  %1 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %2 = alloca i16*, align 8                       ; [#uses=3 type=i16**]
  %buf_2d_in = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  store i16* %input, i16** %1, align 8
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !212), !dbg !213 ; [debug line = 78:16] [debug variable = input]
  store i16* %output, i16** %2, align 8
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !214), !dbg !215 ; [debug line = 78:38] [debug variable = output]
  %3 = load i16** %2, align 8, !dbg !216          ; [#uses=1 type=i16*] [debug line = 79:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %3, i32 64) nounwind, !dbg !216 ; [debug line = 79:2]
  %4 = load i16** %1, align 8, !dbg !218          ; [#uses=1 type=i16*] [debug line = 79:41]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %4, i32 64) nounwind, !dbg !218 ; [debug line = 79:41]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !219), !dbg !221 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !222), !dbg !223 ; [debug line = 82:10] [debug variable = buf_2d_out]
  %5 = load i16** %1, align 8, !dbg !224          ; [#uses=1 type=i16*] [debug line = 85:4]
  %6 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i32 0, i32 0, !dbg !224 ; [#uses=1 type=[8 x i16]*] [debug line = 85:4]
  call void @read_data(i16* %5, [8 x i16]* %6), !dbg !224 ; [debug line = 85:4]
  %7 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i32 0, i32 0, !dbg !225 ; [#uses=1 type=[8 x i16]*] [debug line = 87:4]
  %8 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i32 0, i32 0, !dbg !225 ; [#uses=1 type=[8 x i16]*] [debug line = 87:4]
  call void @dct_2d([8 x i16]* %7, [8 x i16]* %8), !dbg !225 ; [debug line = 87:4]
  %9 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i32 0, i32 0, !dbg !226 ; [#uses=1 type=[8 x i16]*] [debug line = 90:4]
  %10 = load i16** %2, align 8, !dbg !226         ; [#uses=1 type=i16*] [debug line = 90:4]
  call void @write_data([8 x i16]* %9, i16* %10), !dbg !226 ; [debug line = 90:4]
  ret void, !dbg !227                             ; [debug line = 91:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!39, !46, !49, !52, !55}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution2/.autopilot/db/dct.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !33} ; [ DW_TAG_compile_unit ]
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
!78 = metadata !{i32 15, i32 11, metadata !79, null}
!79 = metadata !{i32 786443, metadata !77, i32 15, i32 7, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 15, i32 78, metadata !81, null}
!81 = metadata !{i32 786443, metadata !79, i32 15, i32 77, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 16, i32 1, metadata !81, null}
!83 = metadata !{i32 786688, metadata !81, metadata !"coeff", metadata !6, i32 16, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 16, i32 14, metadata !81, null}
!85 = metadata !{i32 16, i32 48, metadata !81, null}
!86 = metadata !{i32 17, i32 10, metadata !81, null}
!87 = metadata !{i32 18, i32 7, metadata !81, null}
!88 = metadata !{i32 15, i32 72, metadata !79, null}
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
!107 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !6, i32 28, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 28, i32 13, metadata !98, null}
!109 = metadata !{i32 786688, metadata !98, metadata !"j", metadata !6, i32 28, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 28, i32 16, metadata !98, null}
!111 = metadata !{i32 28, i32 17, metadata !98, null}
!112 = metadata !{i32 32, i32 8, metadata !113, null}
!113 = metadata !{i32 786443, metadata !98, i32 32, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 32, i32 66, metadata !115, null}
!115 = metadata !{i32 786443, metadata !113, i32 32, i32 65, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 33, i32 7, metadata !115, null}
!117 = metadata !{i32 34, i32 4, metadata !115, null}
!118 = metadata !{i32 32, i32 60, metadata !113, null}
!119 = metadata !{i32 34, i32 4, metadata !113, null}
!120 = metadata !{i32 37, i32 9, metadata !121, null}
!121 = metadata !{i32 786443, metadata !98, i32 37, i32 4, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 38, i32 1, metadata !123, null}
!123 = metadata !{i32 786443, metadata !121, i32 38, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 39, i32 11, metadata !125, null}
!125 = metadata !{i32 786443, metadata !123, i32 39, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 40, i32 2, metadata !127, null}
!127 = metadata !{i32 786443, metadata !125, i32 40, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 41, i32 1, metadata !127, null}
!129 = metadata !{i32 40, i32 1, metadata !127, null}
!130 = metadata !{i32 40, i32 34, metadata !127, null}
!131 = metadata !{i32 39, i32 63, metadata !125, null}
!132 = metadata !{i32 40, i32 34, metadata !125, null}
!133 = metadata !{i32 37, i32 61, metadata !121, null}
!134 = metadata !{i32 40, i32 34, metadata !121, null}
!135 = metadata !{i32 43, i32 9, metadata !136, null}
!136 = metadata !{i32 786443, metadata !98, i32 43, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 43, i32 67, metadata !138, null}
!138 = metadata !{i32 786443, metadata !136, i32 43, i32 66, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 44, i32 7, metadata !138, null}
!140 = metadata !{i32 45, i32 4, metadata !138, null}
!141 = metadata !{i32 43, i32 61, metadata !136, null}
!142 = metadata !{i32 45, i32 4, metadata !136, null}
!143 = metadata !{i32 48, i32 9, metadata !144, null}
!144 = metadata !{i32 786443, metadata !98, i32 48, i32 4, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 49, i32 1, metadata !146, null}
!146 = metadata !{i32 786443, metadata !144, i32 49, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 50, i32 11, metadata !148, null}
!148 = metadata !{i32 786443, metadata !146, i32 50, i32 7, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 51, i32 2, metadata !150, null}
!150 = metadata !{i32 786443, metadata !148, i32 51, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 52, i32 1, metadata !150, null}
!152 = metadata !{i32 51, i32 1, metadata !150, null}
!153 = metadata !{i32 51, i32 34, metadata !150, null}
!154 = metadata !{i32 50, i32 63, metadata !148, null}
!155 = metadata !{i32 51, i32 34, metadata !148, null}
!156 = metadata !{i32 48, i32 61, metadata !144, null}
!157 = metadata !{i32 52, i32 1, metadata !98, null}
!158 = metadata !{i32 786689, metadata !21, metadata !"input", metadata !6, i32 16777270, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 54, i32 22, metadata !21, null}
!160 = metadata !{i32 786689, metadata !21, metadata !"buf", metadata !6, i32 33554486, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 54, i32 44, metadata !21, null}
!162 = metadata !{i32 55, i32 2, metadata !163, null}
!163 = metadata !{i32 786443, metadata !21, i32 55, i32 1, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 55, i32 40, metadata !163, null}
!165 = metadata !{i32 786688, metadata !163, metadata !"r", metadata !6, i32 56, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 56, i32 8, metadata !163, null}
!167 = metadata !{i32 786688, metadata !163, metadata !"c", metadata !6, i32 56, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 56, i32 11, metadata !163, null}
!169 = metadata !{i32 56, i32 12, metadata !163, null}
!170 = metadata !{i32 59, i32 9, metadata !171, null}
!171 = metadata !{i32 786443, metadata !163, i32 59, i32 4, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 59, i32 67, metadata !173, null}
!173 = metadata !{i32 786443, metadata !171, i32 59, i32 66, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 61, i32 12, metadata !175, null}
!175 = metadata !{i32 786443, metadata !173, i32 61, i32 7, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 62, i32 2, metadata !177, null}
!177 = metadata !{i32 786443, metadata !175, i32 62, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 63, i32 1, metadata !177, null}
!179 = metadata !{i32 62, i32 1, metadata !177, null}
!180 = metadata !{i32 62, i32 66, metadata !177, null}
!181 = metadata !{i32 61, i32 64, metadata !175, null}
!182 = metadata !{i32 63, i32 4, metadata !173, null}
!183 = metadata !{i32 59, i32 61, metadata !171, null}
!184 = metadata !{i32 64, i32 1, metadata !163, null}
!185 = metadata !{i32 786689, metadata !27, metadata !"buf", metadata !6, i32 16777282, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 66, i32 23, metadata !27, null}
!187 = metadata !{i32 786689, metadata !27, metadata !"output", metadata !6, i32 33554498, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 66, i32 116, metadata !27, null}
!189 = metadata !{i32 67, i32 2, metadata !190, null}
!190 = metadata !{i32 786443, metadata !27, i32 67, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 67, i32 41, metadata !190, null}
!192 = metadata !{i32 786688, metadata !190, metadata !"r", metadata !6, i32 68, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 68, i32 8, metadata !190, null}
!194 = metadata !{i32 786688, metadata !190, metadata !"c", metadata !6, i32 68, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 68, i32 11, metadata !190, null}
!196 = metadata !{i32 68, i32 12, metadata !190, null}
!197 = metadata !{i32 71, i32 9, metadata !198, null}
!198 = metadata !{i32 786443, metadata !190, i32 71, i32 4, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 71, i32 67, metadata !200, null}
!200 = metadata !{i32 786443, metadata !198, i32 71, i32 66, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 73, i32 12, metadata !202, null}
!202 = metadata !{i32 786443, metadata !200, i32 73, i32 7, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 74, i32 2, metadata !204, null}
!204 = metadata !{i32 786443, metadata !202, i32 74, i32 1, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 75, i32 1, metadata !204, null}
!206 = metadata !{i32 74, i32 1, metadata !204, null}
!207 = metadata !{i32 74, i32 67, metadata !204, null}
!208 = metadata !{i32 73, i32 64, metadata !202, null}
!209 = metadata !{i32 75, i32 4, metadata !200, null}
!210 = metadata !{i32 71, i32 61, metadata !198, null}
!211 = metadata !{i32 76, i32 1, metadata !190, null}
!212 = metadata !{i32 786689, metadata !30, metadata !"input", metadata !6, i32 16777294, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!213 = metadata !{i32 78, i32 16, metadata !30, null}
!214 = metadata !{i32 786689, metadata !30, metadata !"output", metadata !6, i32 33554510, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 78, i32 38, metadata !30, null}
!216 = metadata !{i32 79, i32 2, metadata !217, null}
!217 = metadata !{i32 786443, metadata !30, i32 79, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 79, i32 41, metadata !217, null}
!219 = metadata !{i32 786688, metadata !217, metadata !"buf_2d_in", metadata !6, i32 81, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !11, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!221 = metadata !{i32 81, i32 10, metadata !217, null}
!222 = metadata !{i32 786688, metadata !217, metadata !"buf_2d_out", metadata !6, i32 82, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!223 = metadata !{i32 82, i32 10, metadata !217, null}
!224 = metadata !{i32 85, i32 4, metadata !217, null}
!225 = metadata !{i32 87, i32 4, metadata !217, null}
!226 = metadata !{i32 90, i32 4, metadata !217, null}
!227 = metadata !{i32 91, i32 1, metadata !217, null}
