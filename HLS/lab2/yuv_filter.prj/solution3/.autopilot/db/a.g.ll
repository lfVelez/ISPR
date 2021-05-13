; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution3/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_t = type { %struct.channel_t, i16, i16 }
%struct.channel_t = type { [1920 x [1280 x i8]], [1920 x [1280 x i8]], [1920 x [1280 x i8]] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@rgb2yuv.Wrgb = internal constant [3 x [3 x i16]] [[3 x i16] [i16 66, i16 129, i16 25], [3 x i16] [i16 -38, i16 -74, i16 112], [3 x i16] [i16 122, i16 -94, i16 -18]], align 16 ; [#uses=10 type=[3 x [3 x i16]]*]
@.str1 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_X\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=1 type=[15 x i8]*]
@yuv2rgb.Wyuv = internal constant [3 x [3 x i16]] [[3 x i16] [i16 298, i16 0, i16 409], [3 x i16] [i16 298, i16 -100, i16 -208], [3 x i16] [i16 298, i16 516, i16 0]], align 16 ; [#uses=8 type=[3 x [3 x i16]]*]
@.str3 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_X\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_X\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=1 type=[17 x i8]*]

; [#uses=0]
define void @yuv_filter(%struct.image_t* %in, %struct.image_t* %out, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) nounwind uwtable {
  %1 = alloca %struct.image_t*, align 8           ; [#uses=2 type=%struct.image_t**]
  %2 = alloca %struct.image_t*, align 8           ; [#uses=2 type=%struct.image_t**]
  %3 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %4 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %5 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %_yuv = alloca %struct.image_t, align 2         ; [#uses=1 type=%struct.image_t*]
  %_scale = alloca %struct.image_t, align 2       ; [#uses=1 type=%struct.image_t*]
  %yuv = alloca %struct.image_t*, align 8         ; [#uses=3 type=%struct.image_t**]
  %scale = alloca %struct.image_t*, align 8       ; [#uses=3 type=%struct.image_t**]
  store %struct.image_t* %in, %struct.image_t** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %1}, metadata !67), !dbg !68 ; [debug line = 5:16] [debug variable = in]
  store %struct.image_t* %out, %struct.image_t** %2, align 8
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %2}, metadata !69), !dbg !70 ; [debug line = 6:16] [debug variable = out]
  store i8 %Y_scale, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !71), !dbg !72 ; [debug line = 7:19] [debug variable = Y_scale]
  store i8 %U_scale, i8* %4, align 1
  call void @llvm.dbg.declare(metadata !{i8* %4}, metadata !73), !dbg !74 ; [debug line = 8:19] [debug variable = U_scale]
  store i8 %V_scale, i8* %5, align 1
  call void @llvm.dbg.declare(metadata !{i8* %5}, metadata !75), !dbg !76 ; [debug line = 9:19] [debug variable = V_scale]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !77 ; [debug line = 12:1]
  call void @llvm.dbg.declare(metadata !{%struct.image_t* %_yuv}, metadata !79), !dbg !80 ; [debug line = 17:12] [debug variable = _yuv]
  call void @llvm.dbg.declare(metadata !{%struct.image_t* %_scale}, metadata !81), !dbg !82 ; [debug line = 18:12] [debug variable = _scale]
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %yuv}, metadata !83), !dbg !84 ; [debug line = 19:13] [debug variable = yuv]
  store %struct.image_t* %_yuv, %struct.image_t** %yuv, align 8, !dbg !85 ; [debug line = 19:24]
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %scale}, metadata !86), !dbg !87 ; [debug line = 20:13] [debug variable = scale]
  store %struct.image_t* %_scale, %struct.image_t** %scale, align 8, !dbg !88 ; [debug line = 20:28]
  %6 = load %struct.image_t** %1, align 8, !dbg !89 ; [#uses=1 type=%struct.image_t*] [debug line = 23:4]
  %7 = load %struct.image_t** %yuv, align 8, !dbg !89 ; [#uses=1 type=%struct.image_t*] [debug line = 23:4]
  call void @rgb2yuv(%struct.image_t* %6, %struct.image_t* %7), !dbg !89 ; [debug line = 23:4]
  %8 = load %struct.image_t** %yuv, align 8, !dbg !90 ; [#uses=1 type=%struct.image_t*] [debug line = 24:4]
  %9 = load %struct.image_t** %scale, align 8, !dbg !90 ; [#uses=1 type=%struct.image_t*] [debug line = 24:4]
  %10 = load i8* %3, align 1, !dbg !90            ; [#uses=1 type=i8] [debug line = 24:4]
  %11 = load i8* %4, align 1, !dbg !90            ; [#uses=1 type=i8] [debug line = 24:4]
  %12 = load i8* %5, align 1, !dbg !90            ; [#uses=1 type=i8] [debug line = 24:4]
  call void @yuv_scale(%struct.image_t* %8, %struct.image_t* %9, i8 zeroext %10, i8 zeroext %11, i8 zeroext %12), !dbg !90 ; [debug line = 24:4]
  %13 = load %struct.image_t** %scale, align 8, !dbg !91 ; [#uses=1 type=%struct.image_t*] [debug line = 25:4]
  %14 = load %struct.image_t** %2, align 8, !dbg !91 ; [#uses=1 type=%struct.image_t*] [debug line = 25:4]
  call void @yuv2rgb(%struct.image_t* %13, %struct.image_t* %14), !dbg !91 ; [debug line = 25:4]
  ret void, !dbg !92                              ; [debug line = 26:1]
}

; [#uses=51]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=1]
define void @rgb2yuv(%struct.image_t* %in, %struct.image_t* %out) nounwind uwtable {
  %1 = alloca %struct.image_t*, align 8           ; [#uses=6 type=%struct.image_t**]
  %2 = alloca %struct.image_t*, align 8           ; [#uses=6 type=%struct.image_t**]
  %x = alloca i16, align 2                        ; [#uses=10 type=i16*]
  %y = alloca i16, align 2                        ; [#uses=10 type=i16*]
  %width = alloca i16, align 2                    ; [#uses=3 type=i16*]
  %height = alloca i16, align 2                   ; [#uses=3 type=i16*]
  %R = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %G = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %B = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %Y = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %U = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %V = alloca i8, align 1                         ; [#uses=2 type=i8*]
  store %struct.image_t* %in, %struct.image_t** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %1}, metadata !93), !dbg !94 ; [debug line = 30:16] [debug variable = in]
  store %struct.image_t* %out, %struct.image_t** %2, align 8
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %2}, metadata !95), !dbg !96 ; [debug line = 31:16] [debug variable = out]
  call void @llvm.dbg.declare(metadata !{i16* %x}, metadata !97), !dbg !99 ; [debug line = 34:16] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i16* %y}, metadata !100), !dbg !101 ; [debug line = 34:19] [debug variable = y]
  call void @llvm.dbg.declare(metadata !{i16* %width}, metadata !102), !dbg !103 ; [debug line = 35:16] [debug variable = width]
  call void @llvm.dbg.declare(metadata !{i16* %height}, metadata !104), !dbg !105 ; [debug line = 35:23] [debug variable = height]
  call void @llvm.dbg.declare(metadata !{i8* %R}, metadata !106), !dbg !107 ; [debug line = 36:16] [debug variable = R]
  call void @llvm.dbg.declare(metadata !{i8* %G}, metadata !108), !dbg !109 ; [debug line = 36:19] [debug variable = G]
  call void @llvm.dbg.declare(metadata !{i8* %B}, metadata !110), !dbg !111 ; [debug line = 36:22] [debug variable = B]
  call void @llvm.dbg.declare(metadata !{i8* %Y}, metadata !112), !dbg !113 ; [debug line = 36:25] [debug variable = Y]
  call void @llvm.dbg.declare(metadata !{i8* %U}, metadata !114), !dbg !115 ; [debug line = 36:28] [debug variable = U]
  call void @llvm.dbg.declare(metadata !{i8* %V}, metadata !116), !dbg !117 ; [debug line = 36:31] [debug variable = V]
  call void (...)* @_ssdm_SpecConstant([3 x i16]* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i32 0)) nounwind, !dbg !118 ; [debug line = 42:1]
  %3 = load %struct.image_t** %1, align 8, !dbg !119 ; [#uses=1 type=%struct.image_t*] [debug line = 43:4]
  %4 = getelementptr inbounds %struct.image_t* %3, i32 0, i32 1, !dbg !119 ; [#uses=1 type=i16*] [debug line = 43:4]
  %5 = load i16* %4, align 2, !dbg !119           ; [#uses=1 type=i16] [debug line = 43:4]
  store i16 %5, i16* %width, align 2, !dbg !119   ; [debug line = 43:4]
  %6 = load %struct.image_t** %1, align 8, !dbg !120 ; [#uses=1 type=%struct.image_t*] [debug line = 44:4]
  %7 = getelementptr inbounds %struct.image_t* %6, i32 0, i32 2, !dbg !120 ; [#uses=1 type=i16*] [debug line = 44:4]
  %8 = load i16* %7, align 2, !dbg !120           ; [#uses=1 type=i16] [debug line = 44:4]
  store i16 %8, i16* %height, align 2, !dbg !120  ; [debug line = 44:4]
  %9 = load i16* %width, align 2, !dbg !121       ; [#uses=1 type=i16] [debug line = 45:4]
  %10 = load %struct.image_t** %2, align 8, !dbg !121 ; [#uses=1 type=%struct.image_t*] [debug line = 45:4]
  %11 = getelementptr inbounds %struct.image_t* %10, i32 0, i32 1, !dbg !121 ; [#uses=1 type=i16*] [debug line = 45:4]
  store i16 %9, i16* %11, align 2, !dbg !121      ; [debug line = 45:4]
  %12 = load i16* %height, align 2, !dbg !122     ; [#uses=1 type=i16] [debug line = 46:4]
  %13 = load %struct.image_t** %2, align 8, !dbg !122 ; [#uses=1 type=%struct.image_t*] [debug line = 46:4]
  %14 = getelementptr inbounds %struct.image_t* %13, i32 0, i32 2, !dbg !122 ; [#uses=1 type=i16*] [debug line = 46:4]
  store i16 %12, i16* %14, align 2, !dbg !122     ; [debug line = 46:4]
  br label %15, !dbg !122                         ; [debug line = 46:4]

; <label>:15                                      ; preds = %0
  store i16 0, i16* %x, align 2, !dbg !123        ; [debug line = 49:9]
  br label %16, !dbg !123                         ; [debug line = 49:9]

; <label>:16                                      ; preds = %158, %15
  %17 = load i16* %x, align 2, !dbg !123          ; [#uses=1 type=i16] [debug line = 49:9]
  %18 = zext i16 %17 to i32, !dbg !123            ; [#uses=1 type=i32] [debug line = 49:9]
  %19 = load i16* %width, align 2, !dbg !123      ; [#uses=1 type=i16] [debug line = 49:9]
  %20 = zext i16 %19 to i32, !dbg !123            ; [#uses=1 type=i32] [debug line = 49:9]
  %21 = icmp slt i32 %18, %20, !dbg !123          ; [#uses=1 type=i1] [debug line = 49:9]
  br i1 %21, label %22, label %161, !dbg !123     ; [debug line = 49:9]

; <label>:22                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !125 ; [debug line = 49:29]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !125 ; [debug line = 49:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !127 ; [debug line = 50:1]
  br label %23, !dbg !127                         ; [debug line = 50:1]

; <label>:23                                      ; preds = %22
  store i16 0, i16* %y, align 2, !dbg !128        ; [debug line = 52:12]
  br label %24, !dbg !128                         ; [debug line = 52:12]

; <label>:24                                      ; preds = %154, %23
  %25 = load i16* %y, align 2, !dbg !128          ; [#uses=1 type=i16] [debug line = 52:12]
  %26 = zext i16 %25 to i32, !dbg !128            ; [#uses=1 type=i32] [debug line = 52:12]
  %27 = load i16* %height, align 2, !dbg !128     ; [#uses=1 type=i16] [debug line = 52:12]
  %28 = zext i16 %27 to i32, !dbg !128            ; [#uses=1 type=i32] [debug line = 52:12]
  %29 = icmp slt i32 %26, %28, !dbg !128          ; [#uses=1 type=i1] [debug line = 52:12]
  br i1 %29, label %30, label %157, !dbg !128     ; [debug line = 52:12]

; <label>:30                                      ; preds = %24
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 52:33]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !132 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !132 ; [debug line = 53:1]
  %31 = load i16* %y, align 2, !dbg !133          ; [#uses=1 type=i16] [debug line = 54:2]
  %32 = zext i16 %31 to i64, !dbg !133            ; [#uses=1 type=i64] [debug line = 54:2]
  %33 = load i16* %x, align 2, !dbg !133          ; [#uses=1 type=i16] [debug line = 54:2]
  %34 = zext i16 %33 to i64, !dbg !133            ; [#uses=1 type=i64] [debug line = 54:2]
  %35 = load %struct.image_t** %1, align 8, !dbg !133 ; [#uses=1 type=%struct.image_t*] [debug line = 54:2]
  %36 = getelementptr inbounds %struct.image_t* %35, i32 0, i32 0, !dbg !133 ; [#uses=1 type=%struct.channel_t*] [debug line = 54:2]
  %37 = getelementptr inbounds %struct.channel_t* %36, i32 0, i32 0, !dbg !133 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 54:2]
  %38 = getelementptr inbounds [1920 x [1280 x i8]]* %37, i32 0, i64 %34, !dbg !133 ; [#uses=1 type=[1280 x i8]*] [debug line = 54:2]
  %39 = getelementptr inbounds [1280 x i8]* %38, i32 0, i64 %32, !dbg !133 ; [#uses=1 type=i8*] [debug line = 54:2]
  %40 = load i8* %39, align 1, !dbg !133          ; [#uses=1 type=i8] [debug line = 54:2]
  store i8 %40, i8* %R, align 1, !dbg !133        ; [debug line = 54:2]
  %41 = load i16* %y, align 2, !dbg !134          ; [#uses=1 type=i16] [debug line = 55:10]
  %42 = zext i16 %41 to i64, !dbg !134            ; [#uses=1 type=i64] [debug line = 55:10]
  %43 = load i16* %x, align 2, !dbg !134          ; [#uses=1 type=i16] [debug line = 55:10]
  %44 = zext i16 %43 to i64, !dbg !134            ; [#uses=1 type=i64] [debug line = 55:10]
  %45 = load %struct.image_t** %1, align 8, !dbg !134 ; [#uses=1 type=%struct.image_t*] [debug line = 55:10]
  %46 = getelementptr inbounds %struct.image_t* %45, i32 0, i32 0, !dbg !134 ; [#uses=1 type=%struct.channel_t*] [debug line = 55:10]
  %47 = getelementptr inbounds %struct.channel_t* %46, i32 0, i32 1, !dbg !134 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 55:10]
  %48 = getelementptr inbounds [1920 x [1280 x i8]]* %47, i32 0, i64 %44, !dbg !134 ; [#uses=1 type=[1280 x i8]*] [debug line = 55:10]
  %49 = getelementptr inbounds [1280 x i8]* %48, i32 0, i64 %42, !dbg !134 ; [#uses=1 type=i8*] [debug line = 55:10]
  %50 = load i8* %49, align 1, !dbg !134          ; [#uses=1 type=i8] [debug line = 55:10]
  store i8 %50, i8* %G, align 1, !dbg !134        ; [debug line = 55:10]
  %51 = load i16* %y, align 2, !dbg !135          ; [#uses=1 type=i16] [debug line = 56:10]
  %52 = zext i16 %51 to i64, !dbg !135            ; [#uses=1 type=i64] [debug line = 56:10]
  %53 = load i16* %x, align 2, !dbg !135          ; [#uses=1 type=i16] [debug line = 56:10]
  %54 = zext i16 %53 to i64, !dbg !135            ; [#uses=1 type=i64] [debug line = 56:10]
  %55 = load %struct.image_t** %1, align 8, !dbg !135 ; [#uses=1 type=%struct.image_t*] [debug line = 56:10]
  %56 = getelementptr inbounds %struct.image_t* %55, i32 0, i32 0, !dbg !135 ; [#uses=1 type=%struct.channel_t*] [debug line = 56:10]
  %57 = getelementptr inbounds %struct.channel_t* %56, i32 0, i32 2, !dbg !135 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 56:10]
  %58 = getelementptr inbounds [1920 x [1280 x i8]]* %57, i32 0, i64 %54, !dbg !135 ; [#uses=1 type=[1280 x i8]*] [debug line = 56:10]
  %59 = getelementptr inbounds [1280 x i8]* %58, i32 0, i64 %52, !dbg !135 ; [#uses=1 type=i8*] [debug line = 56:10]
  %60 = load i8* %59, align 1, !dbg !135          ; [#uses=1 type=i8] [debug line = 56:10]
  store i8 %60, i8* %B, align 1, !dbg !135        ; [debug line = 56:10]
  %61 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 0, i64 0), align 2, !dbg !136 ; [#uses=1 type=i16] [debug line = 57:10]
  %62 = sext i16 %61 to i32, !dbg !136            ; [#uses=1 type=i32] [debug line = 57:10]
  %63 = load i8* %R, align 1, !dbg !136           ; [#uses=1 type=i8] [debug line = 57:10]
  %64 = zext i8 %63 to i32, !dbg !136             ; [#uses=1 type=i32] [debug line = 57:10]
  %65 = mul nsw i32 %62, %64, !dbg !136           ; [#uses=1 type=i32] [debug line = 57:10]
  %66 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 0, i64 1), align 2, !dbg !136 ; [#uses=1 type=i16] [debug line = 57:10]
  %67 = sext i16 %66 to i32, !dbg !136            ; [#uses=1 type=i32] [debug line = 57:10]
  %68 = load i8* %G, align 1, !dbg !136           ; [#uses=1 type=i8] [debug line = 57:10]
  %69 = zext i8 %68 to i32, !dbg !136             ; [#uses=1 type=i32] [debug line = 57:10]
  %70 = mul nsw i32 %67, %69, !dbg !136           ; [#uses=1 type=i32] [debug line = 57:10]
  %71 = add nsw i32 %65, %70, !dbg !136           ; [#uses=1 type=i32] [debug line = 57:10]
  %72 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 0, i64 2), align 2, !dbg !136 ; [#uses=1 type=i16] [debug line = 57:10]
  %73 = sext i16 %72 to i32, !dbg !136            ; [#uses=1 type=i32] [debug line = 57:10]
  %74 = load i8* %B, align 1, !dbg !136           ; [#uses=1 type=i8] [debug line = 57:10]
  %75 = zext i8 %74 to i32, !dbg !136             ; [#uses=1 type=i32] [debug line = 57:10]
  %76 = mul nsw i32 %73, %75, !dbg !136           ; [#uses=1 type=i32] [debug line = 57:10]
  %77 = add nsw i32 %71, %76, !dbg !136           ; [#uses=1 type=i32] [debug line = 57:10]
  %78 = add nsw i32 %77, 128, !dbg !136           ; [#uses=1 type=i32] [debug line = 57:10]
  %79 = ashr i32 %78, 8, !dbg !136                ; [#uses=1 type=i32] [debug line = 57:10]
  %80 = add nsw i32 %79, 16, !dbg !136            ; [#uses=1 type=i32] [debug line = 57:10]
  %81 = trunc i32 %80 to i8, !dbg !136            ; [#uses=1 type=i8] [debug line = 57:10]
  store i8 %81, i8* %Y, align 1, !dbg !136        ; [debug line = 57:10]
  %82 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 1, i64 0), align 2, !dbg !137 ; [#uses=1 type=i16] [debug line = 58:10]
  %83 = sext i16 %82 to i32, !dbg !137            ; [#uses=1 type=i32] [debug line = 58:10]
  %84 = load i8* %R, align 1, !dbg !137           ; [#uses=1 type=i8] [debug line = 58:10]
  %85 = zext i8 %84 to i32, !dbg !137             ; [#uses=1 type=i32] [debug line = 58:10]
  %86 = mul nsw i32 %83, %85, !dbg !137           ; [#uses=1 type=i32] [debug line = 58:10]
  %87 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 1, i64 1), align 2, !dbg !137 ; [#uses=1 type=i16] [debug line = 58:10]
  %88 = sext i16 %87 to i32, !dbg !137            ; [#uses=1 type=i32] [debug line = 58:10]
  %89 = load i8* %G, align 1, !dbg !137           ; [#uses=1 type=i8] [debug line = 58:10]
  %90 = zext i8 %89 to i32, !dbg !137             ; [#uses=1 type=i32] [debug line = 58:10]
  %91 = mul nsw i32 %88, %90, !dbg !137           ; [#uses=1 type=i32] [debug line = 58:10]
  %92 = add nsw i32 %86, %91, !dbg !137           ; [#uses=1 type=i32] [debug line = 58:10]
  %93 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 1, i64 2), align 2, !dbg !137 ; [#uses=1 type=i16] [debug line = 58:10]
  %94 = sext i16 %93 to i32, !dbg !137            ; [#uses=1 type=i32] [debug line = 58:10]
  %95 = load i8* %B, align 1, !dbg !137           ; [#uses=1 type=i8] [debug line = 58:10]
  %96 = zext i8 %95 to i32, !dbg !137             ; [#uses=1 type=i32] [debug line = 58:10]
  %97 = mul nsw i32 %94, %96, !dbg !137           ; [#uses=1 type=i32] [debug line = 58:10]
  %98 = add nsw i32 %92, %97, !dbg !137           ; [#uses=1 type=i32] [debug line = 58:10]
  %99 = add nsw i32 %98, 128, !dbg !137           ; [#uses=1 type=i32] [debug line = 58:10]
  %100 = ashr i32 %99, 8, !dbg !137               ; [#uses=1 type=i32] [debug line = 58:10]
  %101 = add nsw i32 %100, 128, !dbg !137         ; [#uses=1 type=i32] [debug line = 58:10]
  %102 = trunc i32 %101 to i8, !dbg !137          ; [#uses=1 type=i8] [debug line = 58:10]
  store i8 %102, i8* %U, align 1, !dbg !137       ; [debug line = 58:10]
  %103 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 2, i64 0), align 2, !dbg !138 ; [#uses=1 type=i16] [debug line = 59:10]
  %104 = sext i16 %103 to i32, !dbg !138          ; [#uses=1 type=i32] [debug line = 59:10]
  %105 = load i8* %R, align 1, !dbg !138          ; [#uses=1 type=i8] [debug line = 59:10]
  %106 = zext i8 %105 to i32, !dbg !138           ; [#uses=1 type=i32] [debug line = 59:10]
  %107 = mul nsw i32 %104, %106, !dbg !138        ; [#uses=1 type=i32] [debug line = 59:10]
  %108 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 2, i64 1), align 2, !dbg !138 ; [#uses=1 type=i16] [debug line = 59:10]
  %109 = sext i16 %108 to i32, !dbg !138          ; [#uses=1 type=i32] [debug line = 59:10]
  %110 = load i8* %G, align 1, !dbg !138          ; [#uses=1 type=i8] [debug line = 59:10]
  %111 = zext i8 %110 to i32, !dbg !138           ; [#uses=1 type=i32] [debug line = 59:10]
  %112 = mul nsw i32 %109, %111, !dbg !138        ; [#uses=1 type=i32] [debug line = 59:10]
  %113 = add nsw i32 %107, %112, !dbg !138        ; [#uses=1 type=i32] [debug line = 59:10]
  %114 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @rgb2yuv.Wrgb, i32 0, i64 2, i64 2), align 2, !dbg !138 ; [#uses=1 type=i16] [debug line = 59:10]
  %115 = sext i16 %114 to i32, !dbg !138          ; [#uses=1 type=i32] [debug line = 59:10]
  %116 = load i8* %B, align 1, !dbg !138          ; [#uses=1 type=i8] [debug line = 59:10]
  %117 = zext i8 %116 to i32, !dbg !138           ; [#uses=1 type=i32] [debug line = 59:10]
  %118 = mul nsw i32 %115, %117, !dbg !138        ; [#uses=1 type=i32] [debug line = 59:10]
  %119 = add nsw i32 %113, %118, !dbg !138        ; [#uses=1 type=i32] [debug line = 59:10]
  %120 = add nsw i32 %119, 128, !dbg !138         ; [#uses=1 type=i32] [debug line = 59:10]
  %121 = ashr i32 %120, 8, !dbg !138              ; [#uses=1 type=i32] [debug line = 59:10]
  %122 = add nsw i32 %121, 128, !dbg !138         ; [#uses=1 type=i32] [debug line = 59:10]
  %123 = trunc i32 %122 to i8, !dbg !138          ; [#uses=1 type=i8] [debug line = 59:10]
  store i8 %123, i8* %V, align 1, !dbg !138       ; [debug line = 59:10]
  %124 = load i8* %Y, align 1, !dbg !139          ; [#uses=1 type=i8] [debug line = 60:10]
  %125 = load i16* %y, align 2, !dbg !139         ; [#uses=1 type=i16] [debug line = 60:10]
  %126 = zext i16 %125 to i64, !dbg !139          ; [#uses=1 type=i64] [debug line = 60:10]
  %127 = load i16* %x, align 2, !dbg !139         ; [#uses=1 type=i16] [debug line = 60:10]
  %128 = zext i16 %127 to i64, !dbg !139          ; [#uses=1 type=i64] [debug line = 60:10]
  %129 = load %struct.image_t** %2, align 8, !dbg !139 ; [#uses=1 type=%struct.image_t*] [debug line = 60:10]
  %130 = getelementptr inbounds %struct.image_t* %129, i32 0, i32 0, !dbg !139 ; [#uses=1 type=%struct.channel_t*] [debug line = 60:10]
  %131 = getelementptr inbounds %struct.channel_t* %130, i32 0, i32 0, !dbg !139 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 60:10]
  %132 = getelementptr inbounds [1920 x [1280 x i8]]* %131, i32 0, i64 %128, !dbg !139 ; [#uses=1 type=[1280 x i8]*] [debug line = 60:10]
  %133 = getelementptr inbounds [1280 x i8]* %132, i32 0, i64 %126, !dbg !139 ; [#uses=1 type=i8*] [debug line = 60:10]
  store i8 %124, i8* %133, align 1, !dbg !139     ; [debug line = 60:10]
  %134 = load i8* %U, align 1, !dbg !140          ; [#uses=1 type=i8] [debug line = 61:10]
  %135 = load i16* %y, align 2, !dbg !140         ; [#uses=1 type=i16] [debug line = 61:10]
  %136 = zext i16 %135 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 61:10]
  %137 = load i16* %x, align 2, !dbg !140         ; [#uses=1 type=i16] [debug line = 61:10]
  %138 = zext i16 %137 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 61:10]
  %139 = load %struct.image_t** %2, align 8, !dbg !140 ; [#uses=1 type=%struct.image_t*] [debug line = 61:10]
  %140 = getelementptr inbounds %struct.image_t* %139, i32 0, i32 0, !dbg !140 ; [#uses=1 type=%struct.channel_t*] [debug line = 61:10]
  %141 = getelementptr inbounds %struct.channel_t* %140, i32 0, i32 1, !dbg !140 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 61:10]
  %142 = getelementptr inbounds [1920 x [1280 x i8]]* %141, i32 0, i64 %138, !dbg !140 ; [#uses=1 type=[1280 x i8]*] [debug line = 61:10]
  %143 = getelementptr inbounds [1280 x i8]* %142, i32 0, i64 %136, !dbg !140 ; [#uses=1 type=i8*] [debug line = 61:10]
  store i8 %134, i8* %143, align 1, !dbg !140     ; [debug line = 61:10]
  %144 = load i8* %V, align 1, !dbg !141          ; [#uses=1 type=i8] [debug line = 62:10]
  %145 = load i16* %y, align 2, !dbg !141         ; [#uses=1 type=i16] [debug line = 62:10]
  %146 = zext i16 %145 to i64, !dbg !141          ; [#uses=1 type=i64] [debug line = 62:10]
  %147 = load i16* %x, align 2, !dbg !141         ; [#uses=1 type=i16] [debug line = 62:10]
  %148 = zext i16 %147 to i64, !dbg !141          ; [#uses=1 type=i64] [debug line = 62:10]
  %149 = load %struct.image_t** %2, align 8, !dbg !141 ; [#uses=1 type=%struct.image_t*] [debug line = 62:10]
  %150 = getelementptr inbounds %struct.image_t* %149, i32 0, i32 0, !dbg !141 ; [#uses=1 type=%struct.channel_t*] [debug line = 62:10]
  %151 = getelementptr inbounds %struct.channel_t* %150, i32 0, i32 2, !dbg !141 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 62:10]
  %152 = getelementptr inbounds [1920 x [1280 x i8]]* %151, i32 0, i64 %148, !dbg !141 ; [#uses=1 type=[1280 x i8]*] [debug line = 62:10]
  %153 = getelementptr inbounds [1280 x i8]* %152, i32 0, i64 %146, !dbg !141 ; [#uses=1 type=i8*] [debug line = 62:10]
  store i8 %144, i8* %153, align 1, !dbg !141     ; [debug line = 62:10]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 63:7]
  br label %154, !dbg !142                        ; [debug line = 63:7]

; <label>:154                                     ; preds = %30
  %155 = load i16* %y, align 2, !dbg !143         ; [#uses=1 type=i16] [debug line = 52:27]
  %156 = add i16 %155, 1, !dbg !143               ; [#uses=1 type=i16] [debug line = 52:27]
  store i16 %156, i16* %y, align 2, !dbg !143     ; [debug line = 52:27]
  br label %24, !dbg !143                         ; [debug line = 52:27]

; <label>:157                                     ; preds = %24
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !144 ; [debug line = 64:4]
  br label %158, !dbg !144                        ; [debug line = 64:4]

; <label>:158                                     ; preds = %157
  %159 = load i16* %x, align 2, !dbg !145         ; [#uses=1 type=i16] [debug line = 49:23]
  %160 = add i16 %159, 1, !dbg !145               ; [#uses=1 type=i16] [debug line = 49:23]
  store i16 %160, i16* %x, align 2, !dbg !145     ; [debug line = 49:23]
  br label %16, !dbg !145                         ; [debug line = 49:23]

; <label>:161                                     ; preds = %16
  ret void, !dbg !146                             ; [debug line = 65:1]
}

; [#uses=1]
define void @yuv_scale(%struct.image_t* %in, %struct.image_t* %out, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) nounwind uwtable {
  %1 = alloca %struct.image_t*, align 8           ; [#uses=6 type=%struct.image_t**]
  %2 = alloca %struct.image_t*, align 8           ; [#uses=6 type=%struct.image_t**]
  %3 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %4 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %5 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %x = alloca i16, align 2                        ; [#uses=10 type=i16*]
  %y = alloca i16, align 2                        ; [#uses=10 type=i16*]
  %width = alloca i16, align 2                    ; [#uses=3 type=i16*]
  %height = alloca i16, align 2                   ; [#uses=3 type=i16*]
  %Y = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %U = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %V = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %Yn = alloca i16, align 2                       ; [#uses=2 type=i16*]
  %Un = alloca i16, align 2                       ; [#uses=2 type=i16*]
  %Vn = alloca i16, align 2                       ; [#uses=2 type=i16*]
  store %struct.image_t* %in, %struct.image_t** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %1}, metadata !147), !dbg !148 ; [debug line = 111:16] [debug variable = in]
  store %struct.image_t* %out, %struct.image_t** %2, align 8
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %2}, metadata !149), !dbg !150 ; [debug line = 112:16] [debug variable = out]
  store i8 %Y_scale, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !151), !dbg !152 ; [debug line = 113:19] [debug variable = Y_scale]
  store i8 %U_scale, i8* %4, align 1
  call void @llvm.dbg.declare(metadata !{i8* %4}, metadata !153), !dbg !154 ; [debug line = 114:19] [debug variable = U_scale]
  store i8 %V_scale, i8* %5, align 1
  call void @llvm.dbg.declare(metadata !{i8* %5}, metadata !155), !dbg !156 ; [debug line = 115:19] [debug variable = V_scale]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !157 ; [debug line = 118:1]
  call void @llvm.dbg.declare(metadata !{i16* %x}, metadata !159), !dbg !160 ; [debug line = 118:16] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i16* %y}, metadata !161), !dbg !162 ; [debug line = 118:18] [debug variable = y]
  call void @llvm.dbg.declare(metadata !{i16* %width}, metadata !163), !dbg !164 ; [debug line = 119:16] [debug variable = width]
  call void @llvm.dbg.declare(metadata !{i16* %height}, metadata !165), !dbg !166 ; [debug line = 119:23] [debug variable = height]
  call void @llvm.dbg.declare(metadata !{i8* %Y}, metadata !167), !dbg !168 ; [debug line = 120:16] [debug variable = Y]
  call void @llvm.dbg.declare(metadata !{i8* %U}, metadata !169), !dbg !170 ; [debug line = 120:19] [debug variable = U]
  call void @llvm.dbg.declare(metadata !{i8* %V}, metadata !171), !dbg !172 ; [debug line = 120:22] [debug variable = V]
  call void @llvm.dbg.declare(metadata !{i16* %Yn}, metadata !173), !dbg !175 ; [debug line = 121:17] [debug variable = Yn]
  call void @llvm.dbg.declare(metadata !{i16* %Un}, metadata !176), !dbg !177 ; [debug line = 121:21] [debug variable = Un]
  call void @llvm.dbg.declare(metadata !{i16* %Vn}, metadata !178), !dbg !179 ; [debug line = 121:25] [debug variable = Vn]
  %6 = load %struct.image_t** %1, align 8, !dbg !180 ; [#uses=1 type=%struct.image_t*] [debug line = 123:4]
  %7 = getelementptr inbounds %struct.image_t* %6, i32 0, i32 1, !dbg !180 ; [#uses=1 type=i16*] [debug line = 123:4]
  %8 = load i16* %7, align 2, !dbg !180           ; [#uses=1 type=i16] [debug line = 123:4]
  store i16 %8, i16* %width, align 2, !dbg !180   ; [debug line = 123:4]
  %9 = load %struct.image_t** %1, align 8, !dbg !181 ; [#uses=1 type=%struct.image_t*] [debug line = 124:4]
  %10 = getelementptr inbounds %struct.image_t* %9, i32 0, i32 2, !dbg !181 ; [#uses=1 type=i16*] [debug line = 124:4]
  %11 = load i16* %10, align 2, !dbg !181         ; [#uses=1 type=i16] [debug line = 124:4]
  store i16 %11, i16* %height, align 2, !dbg !181 ; [debug line = 124:4]
  %12 = load i16* %width, align 2, !dbg !182      ; [#uses=1 type=i16] [debug line = 125:4]
  %13 = load %struct.image_t** %2, align 8, !dbg !182 ; [#uses=1 type=%struct.image_t*] [debug line = 125:4]
  %14 = getelementptr inbounds %struct.image_t* %13, i32 0, i32 1, !dbg !182 ; [#uses=1 type=i16*] [debug line = 125:4]
  store i16 %12, i16* %14, align 2, !dbg !182     ; [debug line = 125:4]
  %15 = load i16* %height, align 2, !dbg !183     ; [#uses=1 type=i16] [debug line = 126:4]
  %16 = load %struct.image_t** %2, align 8, !dbg !183 ; [#uses=1 type=%struct.image_t*] [debug line = 126:4]
  %17 = getelementptr inbounds %struct.image_t* %16, i32 0, i32 2, !dbg !183 ; [#uses=1 type=i16*] [debug line = 126:4]
  store i16 %15, i16* %17, align 2, !dbg !183     ; [debug line = 126:4]
  br label %18, !dbg !183                         ; [debug line = 126:4]

; <label>:18                                      ; preds = %0
  store i16 0, i16* %x, align 2, !dbg !184        ; [debug line = 129:9]
  br label %19, !dbg !184                         ; [debug line = 129:9]

; <label>:19                                      ; preds = %122, %18
  %20 = load i16* %x, align 2, !dbg !184          ; [#uses=1 type=i16] [debug line = 129:9]
  %21 = zext i16 %20 to i32, !dbg !184            ; [#uses=1 type=i32] [debug line = 129:9]
  %22 = load i16* %width, align 2, !dbg !184      ; [#uses=1 type=i16] [debug line = 129:9]
  %23 = zext i16 %22 to i32, !dbg !184            ; [#uses=1 type=i32] [debug line = 129:9]
  %24 = icmp slt i32 %21, %23, !dbg !184          ; [#uses=1 type=i1] [debug line = 129:9]
  br i1 %24, label %25, label %125, !dbg !184     ; [debug line = 129:9]

; <label>:25                                      ; preds = %19
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !186 ; [debug line = 129:29]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !186 ; [debug line = 129:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !188 ; [debug line = 130:1]
  br label %26, !dbg !188                         ; [debug line = 130:1]

; <label>:26                                      ; preds = %25
  store i16 0, i16* %y, align 2, !dbg !189        ; [debug line = 132:12]
  br label %27, !dbg !189                         ; [debug line = 132:12]

; <label>:27                                      ; preds = %118, %26
  %28 = load i16* %y, align 2, !dbg !189          ; [#uses=1 type=i16] [debug line = 132:12]
  %29 = zext i16 %28 to i32, !dbg !189            ; [#uses=1 type=i32] [debug line = 132:12]
  %30 = load i16* %height, align 2, !dbg !189     ; [#uses=1 type=i16] [debug line = 132:12]
  %31 = zext i16 %30 to i32, !dbg !189            ; [#uses=1 type=i32] [debug line = 132:12]
  %32 = icmp slt i32 %29, %31, !dbg !189          ; [#uses=1 type=i1] [debug line = 132:12]
  br i1 %32, label %33, label %121, !dbg !189     ; [debug line = 132:12]

; <label>:33                                      ; preds = %27
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !191 ; [debug line = 132:33]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !191 ; [debug line = 132:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !193 ; [debug line = 133:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !193 ; [debug line = 133:1]
  %34 = load i16* %y, align 2, !dbg !194          ; [#uses=1 type=i16] [debug line = 134:2]
  %35 = zext i16 %34 to i64, !dbg !194            ; [#uses=1 type=i64] [debug line = 134:2]
  %36 = load i16* %x, align 2, !dbg !194          ; [#uses=1 type=i16] [debug line = 134:2]
  %37 = zext i16 %36 to i64, !dbg !194            ; [#uses=1 type=i64] [debug line = 134:2]
  %38 = load %struct.image_t** %1, align 8, !dbg !194 ; [#uses=1 type=%struct.image_t*] [debug line = 134:2]
  %39 = getelementptr inbounds %struct.image_t* %38, i32 0, i32 0, !dbg !194 ; [#uses=1 type=%struct.channel_t*] [debug line = 134:2]
  %40 = getelementptr inbounds %struct.channel_t* %39, i32 0, i32 0, !dbg !194 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 134:2]
  %41 = getelementptr inbounds [1920 x [1280 x i8]]* %40, i32 0, i64 %37, !dbg !194 ; [#uses=1 type=[1280 x i8]*] [debug line = 134:2]
  %42 = getelementptr inbounds [1280 x i8]* %41, i32 0, i64 %35, !dbg !194 ; [#uses=1 type=i8*] [debug line = 134:2]
  %43 = load i8* %42, align 1, !dbg !194          ; [#uses=1 type=i8] [debug line = 134:2]
  store i8 %43, i8* %Y, align 1, !dbg !194        ; [debug line = 134:2]
  %44 = load i16* %y, align 2, !dbg !195          ; [#uses=1 type=i16] [debug line = 135:10]
  %45 = zext i16 %44 to i64, !dbg !195            ; [#uses=1 type=i64] [debug line = 135:10]
  %46 = load i16* %x, align 2, !dbg !195          ; [#uses=1 type=i16] [debug line = 135:10]
  %47 = zext i16 %46 to i64, !dbg !195            ; [#uses=1 type=i64] [debug line = 135:10]
  %48 = load %struct.image_t** %1, align 8, !dbg !195 ; [#uses=1 type=%struct.image_t*] [debug line = 135:10]
  %49 = getelementptr inbounds %struct.image_t* %48, i32 0, i32 0, !dbg !195 ; [#uses=1 type=%struct.channel_t*] [debug line = 135:10]
  %50 = getelementptr inbounds %struct.channel_t* %49, i32 0, i32 1, !dbg !195 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 135:10]
  %51 = getelementptr inbounds [1920 x [1280 x i8]]* %50, i32 0, i64 %47, !dbg !195 ; [#uses=1 type=[1280 x i8]*] [debug line = 135:10]
  %52 = getelementptr inbounds [1280 x i8]* %51, i32 0, i64 %45, !dbg !195 ; [#uses=1 type=i8*] [debug line = 135:10]
  %53 = load i8* %52, align 1, !dbg !195          ; [#uses=1 type=i8] [debug line = 135:10]
  store i8 %53, i8* %U, align 1, !dbg !195        ; [debug line = 135:10]
  %54 = load i16* %y, align 2, !dbg !196          ; [#uses=1 type=i16] [debug line = 136:10]
  %55 = zext i16 %54 to i64, !dbg !196            ; [#uses=1 type=i64] [debug line = 136:10]
  %56 = load i16* %x, align 2, !dbg !196          ; [#uses=1 type=i16] [debug line = 136:10]
  %57 = zext i16 %56 to i64, !dbg !196            ; [#uses=1 type=i64] [debug line = 136:10]
  %58 = load %struct.image_t** %1, align 8, !dbg !196 ; [#uses=1 type=%struct.image_t*] [debug line = 136:10]
  %59 = getelementptr inbounds %struct.image_t* %58, i32 0, i32 0, !dbg !196 ; [#uses=1 type=%struct.channel_t*] [debug line = 136:10]
  %60 = getelementptr inbounds %struct.channel_t* %59, i32 0, i32 2, !dbg !196 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 136:10]
  %61 = getelementptr inbounds [1920 x [1280 x i8]]* %60, i32 0, i64 %57, !dbg !196 ; [#uses=1 type=[1280 x i8]*] [debug line = 136:10]
  %62 = getelementptr inbounds [1280 x i8]* %61, i32 0, i64 %55, !dbg !196 ; [#uses=1 type=i8*] [debug line = 136:10]
  %63 = load i8* %62, align 1, !dbg !196          ; [#uses=1 type=i8] [debug line = 136:10]
  store i8 %63, i8* %V, align 1, !dbg !196        ; [debug line = 136:10]
  %64 = load i8* %Y, align 1, !dbg !197           ; [#uses=1 type=i8] [debug line = 137:10]
  %65 = zext i8 %64 to i32, !dbg !197             ; [#uses=1 type=i32] [debug line = 137:10]
  %66 = load i8* %3, align 1, !dbg !197           ; [#uses=1 type=i8] [debug line = 137:10]
  %67 = zext i8 %66 to i32, !dbg !197             ; [#uses=1 type=i32] [debug line = 137:10]
  %68 = mul nsw i32 %65, %67, !dbg !197           ; [#uses=1 type=i32] [debug line = 137:10]
  %69 = ashr i32 %68, 7, !dbg !197                ; [#uses=1 type=i32] [debug line = 137:10]
  %70 = trunc i32 %69 to i16, !dbg !197           ; [#uses=1 type=i16] [debug line = 137:10]
  store i16 %70, i16* %Yn, align 2, !dbg !197     ; [debug line = 137:10]
  %71 = load i8* %U, align 1, !dbg !198           ; [#uses=1 type=i8] [debug line = 138:10]
  %72 = zext i8 %71 to i32, !dbg !198             ; [#uses=1 type=i32] [debug line = 138:10]
  %73 = load i8* %4, align 1, !dbg !198           ; [#uses=1 type=i8] [debug line = 138:10]
  %74 = zext i8 %73 to i32, !dbg !198             ; [#uses=1 type=i32] [debug line = 138:10]
  %75 = mul nsw i32 %72, %74, !dbg !198           ; [#uses=1 type=i32] [debug line = 138:10]
  %76 = ashr i32 %75, 7, !dbg !198                ; [#uses=1 type=i32] [debug line = 138:10]
  %77 = trunc i32 %76 to i16, !dbg !198           ; [#uses=1 type=i16] [debug line = 138:10]
  store i16 %77, i16* %Un, align 2, !dbg !198     ; [debug line = 138:10]
  %78 = load i8* %V, align 1, !dbg !199           ; [#uses=1 type=i8] [debug line = 139:10]
  %79 = zext i8 %78 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 139:10]
  %80 = load i8* %5, align 1, !dbg !199           ; [#uses=1 type=i8] [debug line = 139:10]
  %81 = zext i8 %80 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 139:10]
  %82 = mul nsw i32 %79, %81, !dbg !199           ; [#uses=1 type=i32] [debug line = 139:10]
  %83 = ashr i32 %82, 7, !dbg !199                ; [#uses=1 type=i32] [debug line = 139:10]
  %84 = trunc i32 %83 to i16, !dbg !199           ; [#uses=1 type=i16] [debug line = 139:10]
  store i16 %84, i16* %Vn, align 2, !dbg !199     ; [debug line = 139:10]
  %85 = load i16* %Yn, align 2, !dbg !200         ; [#uses=1 type=i16] [debug line = 140:10]
  %86 = trunc i16 %85 to i8, !dbg !200            ; [#uses=1 type=i8] [debug line = 140:10]
  %87 = load i16* %y, align 2, !dbg !200          ; [#uses=1 type=i16] [debug line = 140:10]
  %88 = zext i16 %87 to i64, !dbg !200            ; [#uses=1 type=i64] [debug line = 140:10]
  %89 = load i16* %x, align 2, !dbg !200          ; [#uses=1 type=i16] [debug line = 140:10]
  %90 = zext i16 %89 to i64, !dbg !200            ; [#uses=1 type=i64] [debug line = 140:10]
  %91 = load %struct.image_t** %2, align 8, !dbg !200 ; [#uses=1 type=%struct.image_t*] [debug line = 140:10]
  %92 = getelementptr inbounds %struct.image_t* %91, i32 0, i32 0, !dbg !200 ; [#uses=1 type=%struct.channel_t*] [debug line = 140:10]
  %93 = getelementptr inbounds %struct.channel_t* %92, i32 0, i32 0, !dbg !200 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 140:10]
  %94 = getelementptr inbounds [1920 x [1280 x i8]]* %93, i32 0, i64 %90, !dbg !200 ; [#uses=1 type=[1280 x i8]*] [debug line = 140:10]
  %95 = getelementptr inbounds [1280 x i8]* %94, i32 0, i64 %88, !dbg !200 ; [#uses=1 type=i8*] [debug line = 140:10]
  store i8 %86, i8* %95, align 1, !dbg !200       ; [debug line = 140:10]
  %96 = load i16* %Un, align 2, !dbg !201         ; [#uses=1 type=i16] [debug line = 141:10]
  %97 = trunc i16 %96 to i8, !dbg !201            ; [#uses=1 type=i8] [debug line = 141:10]
  %98 = load i16* %y, align 2, !dbg !201          ; [#uses=1 type=i16] [debug line = 141:10]
  %99 = zext i16 %98 to i64, !dbg !201            ; [#uses=1 type=i64] [debug line = 141:10]
  %100 = load i16* %x, align 2, !dbg !201         ; [#uses=1 type=i16] [debug line = 141:10]
  %101 = zext i16 %100 to i64, !dbg !201          ; [#uses=1 type=i64] [debug line = 141:10]
  %102 = load %struct.image_t** %2, align 8, !dbg !201 ; [#uses=1 type=%struct.image_t*] [debug line = 141:10]
  %103 = getelementptr inbounds %struct.image_t* %102, i32 0, i32 0, !dbg !201 ; [#uses=1 type=%struct.channel_t*] [debug line = 141:10]
  %104 = getelementptr inbounds %struct.channel_t* %103, i32 0, i32 1, !dbg !201 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 141:10]
  %105 = getelementptr inbounds [1920 x [1280 x i8]]* %104, i32 0, i64 %101, !dbg !201 ; [#uses=1 type=[1280 x i8]*] [debug line = 141:10]
  %106 = getelementptr inbounds [1280 x i8]* %105, i32 0, i64 %99, !dbg !201 ; [#uses=1 type=i8*] [debug line = 141:10]
  store i8 %97, i8* %106, align 1, !dbg !201      ; [debug line = 141:10]
  %107 = load i16* %Vn, align 2, !dbg !202        ; [#uses=1 type=i16] [debug line = 142:10]
  %108 = trunc i16 %107 to i8, !dbg !202          ; [#uses=1 type=i8] [debug line = 142:10]
  %109 = load i16* %y, align 2, !dbg !202         ; [#uses=1 type=i16] [debug line = 142:10]
  %110 = zext i16 %109 to i64, !dbg !202          ; [#uses=1 type=i64] [debug line = 142:10]
  %111 = load i16* %x, align 2, !dbg !202         ; [#uses=1 type=i16] [debug line = 142:10]
  %112 = zext i16 %111 to i64, !dbg !202          ; [#uses=1 type=i64] [debug line = 142:10]
  %113 = load %struct.image_t** %2, align 8, !dbg !202 ; [#uses=1 type=%struct.image_t*] [debug line = 142:10]
  %114 = getelementptr inbounds %struct.image_t* %113, i32 0, i32 0, !dbg !202 ; [#uses=1 type=%struct.channel_t*] [debug line = 142:10]
  %115 = getelementptr inbounds %struct.channel_t* %114, i32 0, i32 2, !dbg !202 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 142:10]
  %116 = getelementptr inbounds [1920 x [1280 x i8]]* %115, i32 0, i64 %112, !dbg !202 ; [#uses=1 type=[1280 x i8]*] [debug line = 142:10]
  %117 = getelementptr inbounds [1280 x i8]* %116, i32 0, i64 %110, !dbg !202 ; [#uses=1 type=i8*] [debug line = 142:10]
  store i8 %108, i8* %117, align 1, !dbg !202     ; [debug line = 142:10]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !203 ; [debug line = 143:7]
  br label %118, !dbg !203                        ; [debug line = 143:7]

; <label>:118                                     ; preds = %33
  %119 = load i16* %y, align 2, !dbg !204         ; [#uses=1 type=i16] [debug line = 132:27]
  %120 = add i16 %119, 1, !dbg !204               ; [#uses=1 type=i16] [debug line = 132:27]
  store i16 %120, i16* %y, align 2, !dbg !204     ; [debug line = 132:27]
  br label %27, !dbg !204                         ; [debug line = 132:27]

; <label>:121                                     ; preds = %27
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !205 ; [debug line = 144:4]
  br label %122, !dbg !205                        ; [debug line = 144:4]

; <label>:122                                     ; preds = %121
  %123 = load i16* %x, align 2, !dbg !206         ; [#uses=1 type=i16] [debug line = 129:23]
  %124 = add i16 %123, 1, !dbg !206               ; [#uses=1 type=i16] [debug line = 129:23]
  store i16 %124, i16* %x, align 2, !dbg !206     ; [debug line = 129:23]
  br label %19, !dbg !206                         ; [debug line = 129:23]

; <label>:125                                     ; preds = %19
  ret void, !dbg !207                             ; [debug line = 145:1]
}

; [#uses=1]
define void @yuv2rgb(%struct.image_t* %in, %struct.image_t* %out) nounwind uwtable {
  %1 = alloca %struct.image_t*, align 8           ; [#uses=6 type=%struct.image_t**]
  %2 = alloca %struct.image_t*, align 8           ; [#uses=6 type=%struct.image_t**]
  %x = alloca i16, align 2                        ; [#uses=10 type=i16*]
  %y = alloca i16, align 2                        ; [#uses=10 type=i16*]
  %width = alloca i16, align 2                    ; [#uses=3 type=i16*]
  %height = alloca i16, align 2                   ; [#uses=3 type=i16*]
  %R = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %G = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %B = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %Y = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %U = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %V = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %C = alloca i16, align 2                        ; [#uses=10 type=i16*]
  %D = alloca i16, align 2                        ; [#uses=7 type=i16*]
  %E = alloca i16, align 2                        ; [#uses=7 type=i16*]
  store %struct.image_t* %in, %struct.image_t** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %1}, metadata !208), !dbg !209 ; [debug line = 68:16] [debug variable = in]
  store %struct.image_t* %out, %struct.image_t** %2, align 8
  call void @llvm.dbg.declare(metadata !{%struct.image_t** %2}, metadata !210), !dbg !211 ; [debug line = 69:16] [debug variable = out]
  call void @llvm.dbg.declare(metadata !{i16* %x}, metadata !212), !dbg !214 ; [debug line = 72:16] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i16* %y}, metadata !215), !dbg !216 ; [debug line = 72:18] [debug variable = y]
  call void @llvm.dbg.declare(metadata !{i16* %width}, metadata !217), !dbg !218 ; [debug line = 73:16] [debug variable = width]
  call void @llvm.dbg.declare(metadata !{i16* %height}, metadata !219), !dbg !220 ; [debug line = 73:23] [debug variable = height]
  call void @llvm.dbg.declare(metadata !{i8* %R}, metadata !221), !dbg !222 ; [debug line = 74:16] [debug variable = R]
  call void @llvm.dbg.declare(metadata !{i8* %G}, metadata !223), !dbg !224 ; [debug line = 74:19] [debug variable = G]
  call void @llvm.dbg.declare(metadata !{i8* %B}, metadata !225), !dbg !226 ; [debug line = 74:22] [debug variable = B]
  call void @llvm.dbg.declare(metadata !{i8* %Y}, metadata !227), !dbg !228 ; [debug line = 75:16] [debug variable = Y]
  call void @llvm.dbg.declare(metadata !{i8* %U}, metadata !229), !dbg !230 ; [debug line = 75:19] [debug variable = U]
  call void @llvm.dbg.declare(metadata !{i8* %V}, metadata !231), !dbg !232 ; [debug line = 75:22] [debug variable = V]
  call void @llvm.dbg.declare(metadata !{i16* %C}, metadata !233), !dbg !234 ; [debug line = 76:17] [debug variable = C]
  call void @llvm.dbg.declare(metadata !{i16* %D}, metadata !235), !dbg !236 ; [debug line = 76:20] [debug variable = D]
  call void @llvm.dbg.declare(metadata !{i16* %E}, metadata !237), !dbg !238 ; [debug line = 76:23] [debug variable = E]
  call void (...)* @_ssdm_SpecConstant([3 x i16]* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i32 0)) nounwind, !dbg !239 ; [debug line = 82:1]
  %3 = load %struct.image_t** %1, align 8, !dbg !240 ; [#uses=1 type=%struct.image_t*] [debug line = 83:4]
  %4 = getelementptr inbounds %struct.image_t* %3, i32 0, i32 1, !dbg !240 ; [#uses=1 type=i16*] [debug line = 83:4]
  %5 = load i16* %4, align 2, !dbg !240           ; [#uses=1 type=i16] [debug line = 83:4]
  store i16 %5, i16* %width, align 2, !dbg !240   ; [debug line = 83:4]
  %6 = load %struct.image_t** %1, align 8, !dbg !241 ; [#uses=1 type=%struct.image_t*] [debug line = 84:4]
  %7 = getelementptr inbounds %struct.image_t* %6, i32 0, i32 2, !dbg !241 ; [#uses=1 type=i16*] [debug line = 84:4]
  %8 = load i16* %7, align 2, !dbg !241           ; [#uses=1 type=i16] [debug line = 84:4]
  store i16 %8, i16* %height, align 2, !dbg !241  ; [debug line = 84:4]
  %9 = load i16* %width, align 2, !dbg !242       ; [#uses=1 type=i16] [debug line = 85:4]
  %10 = load %struct.image_t** %2, align 8, !dbg !242 ; [#uses=1 type=%struct.image_t*] [debug line = 85:4]
  %11 = getelementptr inbounds %struct.image_t* %10, i32 0, i32 1, !dbg !242 ; [#uses=1 type=i16*] [debug line = 85:4]
  store i16 %9, i16* %11, align 2, !dbg !242      ; [debug line = 85:4]
  %12 = load i16* %height, align 2, !dbg !243     ; [#uses=1 type=i16] [debug line = 86:4]
  %13 = load %struct.image_t** %2, align 8, !dbg !243 ; [#uses=1 type=%struct.image_t*] [debug line = 86:4]
  %14 = getelementptr inbounds %struct.image_t* %13, i32 0, i32 2, !dbg !243 ; [#uses=1 type=i16*] [debug line = 86:4]
  store i16 %12, i16* %14, align 2, !dbg !243     ; [debug line = 86:4]
  br label %15, !dbg !243                         ; [debug line = 86:4]

; <label>:15                                      ; preds = %0
  store i16 0, i16* %x, align 2, !dbg !244        ; [debug line = 89:9]
  br label %16, !dbg !244                         ; [debug line = 89:9]

; <label>:16                                      ; preds = %275, %15
  %17 = load i16* %x, align 2, !dbg !244          ; [#uses=1 type=i16] [debug line = 89:9]
  %18 = zext i16 %17 to i32, !dbg !244            ; [#uses=1 type=i32] [debug line = 89:9]
  %19 = load i16* %width, align 2, !dbg !244      ; [#uses=1 type=i16] [debug line = 89:9]
  %20 = zext i16 %19 to i32, !dbg !244            ; [#uses=1 type=i32] [debug line = 89:9]
  %21 = icmp slt i32 %18, %20, !dbg !244          ; [#uses=1 type=i1] [debug line = 89:9]
  br i1 %21, label %22, label %278, !dbg !244     ; [debug line = 89:9]

; <label>:22                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !246 ; [debug line = 89:29]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !246 ; [debug line = 89:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !248 ; [debug line = 90:1]
  br label %23, !dbg !248                         ; [debug line = 90:1]

; <label>:23                                      ; preds = %22
  store i16 0, i16* %y, align 2, !dbg !249        ; [debug line = 92:12]
  br label %24, !dbg !249                         ; [debug line = 92:12]

; <label>:24                                      ; preds = %271, %23
  %25 = load i16* %y, align 2, !dbg !249          ; [#uses=1 type=i16] [debug line = 92:12]
  %26 = zext i16 %25 to i32, !dbg !249            ; [#uses=1 type=i32] [debug line = 92:12]
  %27 = load i16* %height, align 2, !dbg !249     ; [#uses=1 type=i16] [debug line = 92:12]
  %28 = zext i16 %27 to i32, !dbg !249            ; [#uses=1 type=i32] [debug line = 92:12]
  %29 = icmp slt i32 %26, %28, !dbg !249          ; [#uses=1 type=i1] [debug line = 92:12]
  br i1 %29, label %30, label %274, !dbg !249     ; [debug line = 92:12]

; <label>:30                                      ; preds = %24
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !251 ; [debug line = 92:33]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !251 ; [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !253 ; [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !253 ; [debug line = 93:1]
  %31 = load i16* %y, align 2, !dbg !254          ; [#uses=1 type=i16] [debug line = 94:2]
  %32 = zext i16 %31 to i64, !dbg !254            ; [#uses=1 type=i64] [debug line = 94:2]
  %33 = load i16* %x, align 2, !dbg !254          ; [#uses=1 type=i16] [debug line = 94:2]
  %34 = zext i16 %33 to i64, !dbg !254            ; [#uses=1 type=i64] [debug line = 94:2]
  %35 = load %struct.image_t** %1, align 8, !dbg !254 ; [#uses=1 type=%struct.image_t*] [debug line = 94:2]
  %36 = getelementptr inbounds %struct.image_t* %35, i32 0, i32 0, !dbg !254 ; [#uses=1 type=%struct.channel_t*] [debug line = 94:2]
  %37 = getelementptr inbounds %struct.channel_t* %36, i32 0, i32 0, !dbg !254 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 94:2]
  %38 = getelementptr inbounds [1920 x [1280 x i8]]* %37, i32 0, i64 %34, !dbg !254 ; [#uses=1 type=[1280 x i8]*] [debug line = 94:2]
  %39 = getelementptr inbounds [1280 x i8]* %38, i32 0, i64 %32, !dbg !254 ; [#uses=1 type=i8*] [debug line = 94:2]
  %40 = load i8* %39, align 1, !dbg !254          ; [#uses=1 type=i8] [debug line = 94:2]
  store i8 %40, i8* %Y, align 1, !dbg !254        ; [debug line = 94:2]
  %41 = load i16* %y, align 2, !dbg !255          ; [#uses=1 type=i16] [debug line = 95:10]
  %42 = zext i16 %41 to i64, !dbg !255            ; [#uses=1 type=i64] [debug line = 95:10]
  %43 = load i16* %x, align 2, !dbg !255          ; [#uses=1 type=i16] [debug line = 95:10]
  %44 = zext i16 %43 to i64, !dbg !255            ; [#uses=1 type=i64] [debug line = 95:10]
  %45 = load %struct.image_t** %1, align 8, !dbg !255 ; [#uses=1 type=%struct.image_t*] [debug line = 95:10]
  %46 = getelementptr inbounds %struct.image_t* %45, i32 0, i32 0, !dbg !255 ; [#uses=1 type=%struct.channel_t*] [debug line = 95:10]
  %47 = getelementptr inbounds %struct.channel_t* %46, i32 0, i32 1, !dbg !255 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 95:10]
  %48 = getelementptr inbounds [1920 x [1280 x i8]]* %47, i32 0, i64 %44, !dbg !255 ; [#uses=1 type=[1280 x i8]*] [debug line = 95:10]
  %49 = getelementptr inbounds [1280 x i8]* %48, i32 0, i64 %42, !dbg !255 ; [#uses=1 type=i8*] [debug line = 95:10]
  %50 = load i8* %49, align 1, !dbg !255          ; [#uses=1 type=i8] [debug line = 95:10]
  store i8 %50, i8* %U, align 1, !dbg !255        ; [debug line = 95:10]
  %51 = load i16* %y, align 2, !dbg !256          ; [#uses=1 type=i16] [debug line = 96:10]
  %52 = zext i16 %51 to i64, !dbg !256            ; [#uses=1 type=i64] [debug line = 96:10]
  %53 = load i16* %x, align 2, !dbg !256          ; [#uses=1 type=i16] [debug line = 96:10]
  %54 = zext i16 %53 to i64, !dbg !256            ; [#uses=1 type=i64] [debug line = 96:10]
  %55 = load %struct.image_t** %1, align 8, !dbg !256 ; [#uses=1 type=%struct.image_t*] [debug line = 96:10]
  %56 = getelementptr inbounds %struct.image_t* %55, i32 0, i32 0, !dbg !256 ; [#uses=1 type=%struct.channel_t*] [debug line = 96:10]
  %57 = getelementptr inbounds %struct.channel_t* %56, i32 0, i32 2, !dbg !256 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 96:10]
  %58 = getelementptr inbounds [1920 x [1280 x i8]]* %57, i32 0, i64 %54, !dbg !256 ; [#uses=1 type=[1280 x i8]*] [debug line = 96:10]
  %59 = getelementptr inbounds [1280 x i8]* %58, i32 0, i64 %52, !dbg !256 ; [#uses=1 type=i8*] [debug line = 96:10]
  %60 = load i8* %59, align 1, !dbg !256          ; [#uses=1 type=i8] [debug line = 96:10]
  store i8 %60, i8* %V, align 1, !dbg !256        ; [debug line = 96:10]
  %61 = load i8* %Y, align 1, !dbg !257           ; [#uses=1 type=i8] [debug line = 97:10]
  %62 = zext i8 %61 to i32, !dbg !257             ; [#uses=1 type=i32] [debug line = 97:10]
  %63 = sub nsw i32 %62, 16, !dbg !257            ; [#uses=1 type=i32] [debug line = 97:10]
  %64 = trunc i32 %63 to i16, !dbg !257           ; [#uses=1 type=i16] [debug line = 97:10]
  store i16 %64, i16* %C, align 2, !dbg !257      ; [debug line = 97:10]
  %65 = load i8* %U, align 1, !dbg !258           ; [#uses=1 type=i8] [debug line = 98:10]
  %66 = zext i8 %65 to i32, !dbg !258             ; [#uses=1 type=i32] [debug line = 98:10]
  %67 = sub nsw i32 %66, 128, !dbg !258           ; [#uses=1 type=i32] [debug line = 98:10]
  %68 = trunc i32 %67 to i16, !dbg !258           ; [#uses=1 type=i16] [debug line = 98:10]
  store i16 %68, i16* %D, align 2, !dbg !258      ; [debug line = 98:10]
  %69 = load i8* %V, align 1, !dbg !259           ; [#uses=1 type=i8] [debug line = 99:10]
  %70 = zext i8 %69 to i32, !dbg !259             ; [#uses=1 type=i32] [debug line = 99:10]
  %71 = sub nsw i32 %70, 128, !dbg !259           ; [#uses=1 type=i32] [debug line = 99:10]
  %72 = trunc i32 %71 to i16, !dbg !259           ; [#uses=1 type=i16] [debug line = 99:10]
  store i16 %72, i16* %E, align 2, !dbg !259      ; [debug line = 99:10]
  %73 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 0, i64 0), align 2, !dbg !260 ; [#uses=1 type=i16] [debug line = 100:10]
  %74 = sext i16 %73 to i32, !dbg !260            ; [#uses=1 type=i32] [debug line = 100:10]
  %75 = load i16* %C, align 2, !dbg !260          ; [#uses=1 type=i16] [debug line = 100:10]
  %76 = sext i16 %75 to i32, !dbg !260            ; [#uses=1 type=i32] [debug line = 100:10]
  %77 = mul nsw i32 %74, %76, !dbg !260           ; [#uses=1 type=i32] [debug line = 100:10]
  %78 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 0, i64 2), align 2, !dbg !260 ; [#uses=1 type=i16] [debug line = 100:10]
  %79 = sext i16 %78 to i32, !dbg !260            ; [#uses=1 type=i32] [debug line = 100:10]
  %80 = load i16* %E, align 2, !dbg !260          ; [#uses=1 type=i16] [debug line = 100:10]
  %81 = sext i16 %80 to i32, !dbg !260            ; [#uses=1 type=i32] [debug line = 100:10]
  %82 = mul nsw i32 %79, %81, !dbg !260           ; [#uses=1 type=i32] [debug line = 100:10]
  %83 = add nsw i32 %77, %82, !dbg !260           ; [#uses=1 type=i32] [debug line = 100:10]
  %84 = add nsw i32 %83, 128, !dbg !260           ; [#uses=1 type=i32] [debug line = 100:10]
  %85 = ashr i32 %84, 8, !dbg !260                ; [#uses=1 type=i32] [debug line = 100:10]
  %86 = icmp sgt i32 %85, 255, !dbg !260          ; [#uses=1 type=i1] [debug line = 100:10]
  br i1 %86, label %87, label %88, !dbg !260      ; [debug line = 100:10]

; <label>:87                                      ; preds = %30
  br label %120, !dbg !260                        ; [debug line = 100:10]

; <label>:88                                      ; preds = %30
  %89 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 0, i64 0), align 2, !dbg !260 ; [#uses=1 type=i16] [debug line = 100:10]
  %90 = sext i16 %89 to i32, !dbg !260            ; [#uses=1 type=i32] [debug line = 100:10]
  %91 = load i16* %C, align 2, !dbg !260          ; [#uses=1 type=i16] [debug line = 100:10]
  %92 = sext i16 %91 to i32, !dbg !260            ; [#uses=1 type=i32] [debug line = 100:10]
  %93 = mul nsw i32 %90, %92, !dbg !260           ; [#uses=1 type=i32] [debug line = 100:10]
  %94 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 0, i64 2), align 2, !dbg !260 ; [#uses=1 type=i16] [debug line = 100:10]
  %95 = sext i16 %94 to i32, !dbg !260            ; [#uses=1 type=i32] [debug line = 100:10]
  %96 = load i16* %E, align 2, !dbg !260          ; [#uses=1 type=i16] [debug line = 100:10]
  %97 = sext i16 %96 to i32, !dbg !260            ; [#uses=1 type=i32] [debug line = 100:10]
  %98 = mul nsw i32 %95, %97, !dbg !260           ; [#uses=1 type=i32] [debug line = 100:10]
  %99 = add nsw i32 %93, %98, !dbg !260           ; [#uses=1 type=i32] [debug line = 100:10]
  %100 = add nsw i32 %99, 128, !dbg !260          ; [#uses=1 type=i32] [debug line = 100:10]
  %101 = ashr i32 %100, 8, !dbg !260              ; [#uses=1 type=i32] [debug line = 100:10]
  %102 = icmp slt i32 %101, 0, !dbg !260          ; [#uses=1 type=i1] [debug line = 100:10]
  br i1 %102, label %103, label %104, !dbg !260   ; [debug line = 100:10]

; <label>:103                                     ; preds = %88
  br label %118, !dbg !260                        ; [debug line = 100:10]

; <label>:104                                     ; preds = %88
  %105 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 0, i64 0), align 2, !dbg !260 ; [#uses=1 type=i16] [debug line = 100:10]
  %106 = sext i16 %105 to i32, !dbg !260          ; [#uses=1 type=i32] [debug line = 100:10]
  %107 = load i16* %C, align 2, !dbg !260         ; [#uses=1 type=i16] [debug line = 100:10]
  %108 = sext i16 %107 to i32, !dbg !260          ; [#uses=1 type=i32] [debug line = 100:10]
  %109 = mul nsw i32 %106, %108, !dbg !260        ; [#uses=1 type=i32] [debug line = 100:10]
  %110 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 0, i64 2), align 2, !dbg !260 ; [#uses=1 type=i16] [debug line = 100:10]
  %111 = sext i16 %110 to i32, !dbg !260          ; [#uses=1 type=i32] [debug line = 100:10]
  %112 = load i16* %E, align 2, !dbg !260         ; [#uses=1 type=i16] [debug line = 100:10]
  %113 = sext i16 %112 to i32, !dbg !260          ; [#uses=1 type=i32] [debug line = 100:10]
  %114 = mul nsw i32 %111, %113, !dbg !260        ; [#uses=1 type=i32] [debug line = 100:10]
  %115 = add nsw i32 %109, %114, !dbg !260        ; [#uses=1 type=i32] [debug line = 100:10]
  %116 = add nsw i32 %115, 128, !dbg !260         ; [#uses=1 type=i32] [debug line = 100:10]
  %117 = ashr i32 %116, 8, !dbg !260              ; [#uses=1 type=i32] [debug line = 100:10]
  br label %118, !dbg !260                        ; [debug line = 100:10]

; <label>:118                                     ; preds = %104, %103
  %119 = phi i32 [ 0, %103 ], [ %117, %104 ], !dbg !260 ; [#uses=1 type=i32] [debug line = 100:10]
  br label %120, !dbg !260                        ; [debug line = 100:10]

; <label>:120                                     ; preds = %118, %87
  %121 = phi i32 [ 255, %87 ], [ %119, %118 ], !dbg !260 ; [#uses=1 type=i32] [debug line = 100:10]
  %122 = trunc i32 %121 to i8, !dbg !260          ; [#uses=1 type=i8] [debug line = 100:10]
  store i8 %122, i8* %R, align 1, !dbg !260       ; [debug line = 100:10]
  %123 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 0), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %124 = sext i16 %123 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %125 = load i16* %C, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %126 = sext i16 %125 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %127 = mul nsw i32 %124, %126, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %128 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 1), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %129 = sext i16 %128 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %130 = load i16* %D, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %131 = sext i16 %130 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %132 = mul nsw i32 %129, %131, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %133 = add nsw i32 %127, %132, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %134 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 2), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %135 = sext i16 %134 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %136 = load i16* %E, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %137 = sext i16 %136 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %138 = mul nsw i32 %135, %137, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %139 = add nsw i32 %133, %138, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %140 = add nsw i32 %139, 128, !dbg !261         ; [#uses=1 type=i32] [debug line = 101:10]
  %141 = ashr i32 %140, 8, !dbg !261              ; [#uses=1 type=i32] [debug line = 101:10]
  %142 = icmp sgt i32 %141, 255, !dbg !261        ; [#uses=1 type=i1] [debug line = 101:10]
  br i1 %142, label %143, label %144, !dbg !261   ; [debug line = 101:10]

; <label>:143                                     ; preds = %120
  br label %188, !dbg !261                        ; [debug line = 101:10]

; <label>:144                                     ; preds = %120
  %145 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 0), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %146 = sext i16 %145 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %147 = load i16* %C, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %148 = sext i16 %147 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %149 = mul nsw i32 %146, %148, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %150 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 1), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %151 = sext i16 %150 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %152 = load i16* %D, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %153 = sext i16 %152 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %154 = mul nsw i32 %151, %153, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %155 = add nsw i32 %149, %154, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %156 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 2), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %157 = sext i16 %156 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %158 = load i16* %E, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %159 = sext i16 %158 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %160 = mul nsw i32 %157, %159, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %161 = add nsw i32 %155, %160, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %162 = add nsw i32 %161, 128, !dbg !261         ; [#uses=1 type=i32] [debug line = 101:10]
  %163 = ashr i32 %162, 8, !dbg !261              ; [#uses=1 type=i32] [debug line = 101:10]
  %164 = icmp slt i32 %163, 0, !dbg !261          ; [#uses=1 type=i1] [debug line = 101:10]
  br i1 %164, label %165, label %166, !dbg !261   ; [debug line = 101:10]

; <label>:165                                     ; preds = %144
  br label %186, !dbg !261                        ; [debug line = 101:10]

; <label>:166                                     ; preds = %144
  %167 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 0), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %168 = sext i16 %167 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %169 = load i16* %C, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %170 = sext i16 %169 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %171 = mul nsw i32 %168, %170, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %172 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 1), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %173 = sext i16 %172 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %174 = load i16* %D, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %175 = sext i16 %174 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %176 = mul nsw i32 %173, %175, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %177 = add nsw i32 %171, %176, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %178 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 1, i64 2), align 2, !dbg !261 ; [#uses=1 type=i16] [debug line = 101:10]
  %179 = sext i16 %178 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %180 = load i16* %E, align 2, !dbg !261         ; [#uses=1 type=i16] [debug line = 101:10]
  %181 = sext i16 %180 to i32, !dbg !261          ; [#uses=1 type=i32] [debug line = 101:10]
  %182 = mul nsw i32 %179, %181, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %183 = add nsw i32 %177, %182, !dbg !261        ; [#uses=1 type=i32] [debug line = 101:10]
  %184 = add nsw i32 %183, 128, !dbg !261         ; [#uses=1 type=i32] [debug line = 101:10]
  %185 = ashr i32 %184, 8, !dbg !261              ; [#uses=1 type=i32] [debug line = 101:10]
  br label %186, !dbg !261                        ; [debug line = 101:10]

; <label>:186                                     ; preds = %166, %165
  %187 = phi i32 [ 0, %165 ], [ %185, %166 ], !dbg !261 ; [#uses=1 type=i32] [debug line = 101:10]
  br label %188, !dbg !261                        ; [debug line = 101:10]

; <label>:188                                     ; preds = %186, %143
  %189 = phi i32 [ 255, %143 ], [ %187, %186 ], !dbg !261 ; [#uses=1 type=i32] [debug line = 101:10]
  %190 = trunc i32 %189 to i8, !dbg !261          ; [#uses=1 type=i8] [debug line = 101:10]
  store i8 %190, i8* %G, align 1, !dbg !261       ; [debug line = 101:10]
  %191 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 2, i64 0), align 2, !dbg !262 ; [#uses=1 type=i16] [debug line = 102:10]
  %192 = sext i16 %191 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %193 = load i16* %C, align 2, !dbg !262         ; [#uses=1 type=i16] [debug line = 102:10]
  %194 = sext i16 %193 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %195 = mul nsw i32 %192, %194, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %196 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 2, i64 1), align 2, !dbg !262 ; [#uses=1 type=i16] [debug line = 102:10]
  %197 = sext i16 %196 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %198 = load i16* %D, align 2, !dbg !262         ; [#uses=1 type=i16] [debug line = 102:10]
  %199 = sext i16 %198 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %200 = mul nsw i32 %197, %199, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %201 = add nsw i32 %195, %200, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %202 = add nsw i32 %201, 128, !dbg !262         ; [#uses=1 type=i32] [debug line = 102:10]
  %203 = ashr i32 %202, 8, !dbg !262              ; [#uses=1 type=i32] [debug line = 102:10]
  %204 = icmp sgt i32 %203, 255, !dbg !262        ; [#uses=1 type=i1] [debug line = 102:10]
  br i1 %204, label %205, label %206, !dbg !262   ; [debug line = 102:10]

; <label>:205                                     ; preds = %188
  br label %238, !dbg !262                        ; [debug line = 102:10]

; <label>:206                                     ; preds = %188
  %207 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 2, i64 0), align 2, !dbg !262 ; [#uses=1 type=i16] [debug line = 102:10]
  %208 = sext i16 %207 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %209 = load i16* %C, align 2, !dbg !262         ; [#uses=1 type=i16] [debug line = 102:10]
  %210 = sext i16 %209 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %211 = mul nsw i32 %208, %210, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %212 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 2, i64 1), align 2, !dbg !262 ; [#uses=1 type=i16] [debug line = 102:10]
  %213 = sext i16 %212 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %214 = load i16* %D, align 2, !dbg !262         ; [#uses=1 type=i16] [debug line = 102:10]
  %215 = sext i16 %214 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %216 = mul nsw i32 %213, %215, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %217 = add nsw i32 %211, %216, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %218 = add nsw i32 %217, 128, !dbg !262         ; [#uses=1 type=i32] [debug line = 102:10]
  %219 = ashr i32 %218, 8, !dbg !262              ; [#uses=1 type=i32] [debug line = 102:10]
  %220 = icmp slt i32 %219, 0, !dbg !262          ; [#uses=1 type=i1] [debug line = 102:10]
  br i1 %220, label %221, label %222, !dbg !262   ; [debug line = 102:10]

; <label>:221                                     ; preds = %206
  br label %236, !dbg !262                        ; [debug line = 102:10]

; <label>:222                                     ; preds = %206
  %223 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 2, i64 0), align 2, !dbg !262 ; [#uses=1 type=i16] [debug line = 102:10]
  %224 = sext i16 %223 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %225 = load i16* %C, align 2, !dbg !262         ; [#uses=1 type=i16] [debug line = 102:10]
  %226 = sext i16 %225 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %227 = mul nsw i32 %224, %226, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %228 = load i16* getelementptr inbounds ([3 x [3 x i16]]* @yuv2rgb.Wyuv, i32 0, i64 2, i64 1), align 2, !dbg !262 ; [#uses=1 type=i16] [debug line = 102:10]
  %229 = sext i16 %228 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %230 = load i16* %D, align 2, !dbg !262         ; [#uses=1 type=i16] [debug line = 102:10]
  %231 = sext i16 %230 to i32, !dbg !262          ; [#uses=1 type=i32] [debug line = 102:10]
  %232 = mul nsw i32 %229, %231, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %233 = add nsw i32 %227, %232, !dbg !262        ; [#uses=1 type=i32] [debug line = 102:10]
  %234 = add nsw i32 %233, 128, !dbg !262         ; [#uses=1 type=i32] [debug line = 102:10]
  %235 = ashr i32 %234, 8, !dbg !262              ; [#uses=1 type=i32] [debug line = 102:10]
  br label %236, !dbg !262                        ; [debug line = 102:10]

; <label>:236                                     ; preds = %222, %221
  %237 = phi i32 [ 0, %221 ], [ %235, %222 ], !dbg !262 ; [#uses=1 type=i32] [debug line = 102:10]
  br label %238, !dbg !262                        ; [debug line = 102:10]

; <label>:238                                     ; preds = %236, %205
  %239 = phi i32 [ 255, %205 ], [ %237, %236 ], !dbg !262 ; [#uses=1 type=i32] [debug line = 102:10]
  %240 = trunc i32 %239 to i8, !dbg !262          ; [#uses=1 type=i8] [debug line = 102:10]
  store i8 %240, i8* %B, align 1, !dbg !262       ; [debug line = 102:10]
  %241 = load i8* %R, align 1, !dbg !263          ; [#uses=1 type=i8] [debug line = 103:10]
  %242 = load i16* %y, align 2, !dbg !263         ; [#uses=1 type=i16] [debug line = 103:10]
  %243 = zext i16 %242 to i64, !dbg !263          ; [#uses=1 type=i64] [debug line = 103:10]
  %244 = load i16* %x, align 2, !dbg !263         ; [#uses=1 type=i16] [debug line = 103:10]
  %245 = zext i16 %244 to i64, !dbg !263          ; [#uses=1 type=i64] [debug line = 103:10]
  %246 = load %struct.image_t** %2, align 8, !dbg !263 ; [#uses=1 type=%struct.image_t*] [debug line = 103:10]
  %247 = getelementptr inbounds %struct.image_t* %246, i32 0, i32 0, !dbg !263 ; [#uses=1 type=%struct.channel_t*] [debug line = 103:10]
  %248 = getelementptr inbounds %struct.channel_t* %247, i32 0, i32 0, !dbg !263 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 103:10]
  %249 = getelementptr inbounds [1920 x [1280 x i8]]* %248, i32 0, i64 %245, !dbg !263 ; [#uses=1 type=[1280 x i8]*] [debug line = 103:10]
  %250 = getelementptr inbounds [1280 x i8]* %249, i32 0, i64 %243, !dbg !263 ; [#uses=1 type=i8*] [debug line = 103:10]
  store i8 %241, i8* %250, align 1, !dbg !263     ; [debug line = 103:10]
  %251 = load i8* %G, align 1, !dbg !264          ; [#uses=1 type=i8] [debug line = 104:10]
  %252 = load i16* %y, align 2, !dbg !264         ; [#uses=1 type=i16] [debug line = 104:10]
  %253 = zext i16 %252 to i64, !dbg !264          ; [#uses=1 type=i64] [debug line = 104:10]
  %254 = load i16* %x, align 2, !dbg !264         ; [#uses=1 type=i16] [debug line = 104:10]
  %255 = zext i16 %254 to i64, !dbg !264          ; [#uses=1 type=i64] [debug line = 104:10]
  %256 = load %struct.image_t** %2, align 8, !dbg !264 ; [#uses=1 type=%struct.image_t*] [debug line = 104:10]
  %257 = getelementptr inbounds %struct.image_t* %256, i32 0, i32 0, !dbg !264 ; [#uses=1 type=%struct.channel_t*] [debug line = 104:10]
  %258 = getelementptr inbounds %struct.channel_t* %257, i32 0, i32 1, !dbg !264 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 104:10]
  %259 = getelementptr inbounds [1920 x [1280 x i8]]* %258, i32 0, i64 %255, !dbg !264 ; [#uses=1 type=[1280 x i8]*] [debug line = 104:10]
  %260 = getelementptr inbounds [1280 x i8]* %259, i32 0, i64 %253, !dbg !264 ; [#uses=1 type=i8*] [debug line = 104:10]
  store i8 %251, i8* %260, align 1, !dbg !264     ; [debug line = 104:10]
  %261 = load i8* %B, align 1, !dbg !265          ; [#uses=1 type=i8] [debug line = 105:10]
  %262 = load i16* %y, align 2, !dbg !265         ; [#uses=1 type=i16] [debug line = 105:10]
  %263 = zext i16 %262 to i64, !dbg !265          ; [#uses=1 type=i64] [debug line = 105:10]
  %264 = load i16* %x, align 2, !dbg !265         ; [#uses=1 type=i16] [debug line = 105:10]
  %265 = zext i16 %264 to i64, !dbg !265          ; [#uses=1 type=i64] [debug line = 105:10]
  %266 = load %struct.image_t** %2, align 8, !dbg !265 ; [#uses=1 type=%struct.image_t*] [debug line = 105:10]
  %267 = getelementptr inbounds %struct.image_t* %266, i32 0, i32 0, !dbg !265 ; [#uses=1 type=%struct.channel_t*] [debug line = 105:10]
  %268 = getelementptr inbounds %struct.channel_t* %267, i32 0, i32 2, !dbg !265 ; [#uses=1 type=[1920 x [1280 x i8]]*] [debug line = 105:10]
  %269 = getelementptr inbounds [1920 x [1280 x i8]]* %268, i32 0, i64 %265, !dbg !265 ; [#uses=1 type=[1280 x i8]*] [debug line = 105:10]
  %270 = getelementptr inbounds [1280 x i8]* %269, i32 0, i64 %263, !dbg !265 ; [#uses=1 type=i8*] [debug line = 105:10]
  store i8 %261, i8* %270, align 1, !dbg !265     ; [debug line = 105:10]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !266 ; [debug line = 106:7]
  br label %271, !dbg !266                        ; [debug line = 106:7]

; <label>:271                                     ; preds = %238
  %272 = load i16* %y, align 2, !dbg !267         ; [#uses=1 type=i16] [debug line = 92:27]
  %273 = add i16 %272, 1, !dbg !267               ; [#uses=1 type=i16] [debug line = 92:27]
  store i16 %273, i16* %y, align 2, !dbg !267     ; [debug line = 92:27]
  br label %24, !dbg !267                         ; [debug line = 92:27]

; <label>:274                                     ; preds = %24
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !268 ; [debug line = 107:4]
  br label %275, !dbg !268                        ; [debug line = 107:4]

; <label>:275                                     ; preds = %274
  %276 = load i16* %x, align 2, !dbg !269         ; [#uses=1 type=i16] [debug line = 89:23]
  %277 = add i16 %276, 1, !dbg !269               ; [#uses=1 type=i16] [debug line = 89:23]
  store i16 %277, i16* %x, align 2, !dbg !269     ; [debug line = 89:23]
  br label %16, !dbg !269                         ; [debug line = 89:23]

; <label>:278                                     ; preds = %16
  ret void, !dbg !270                             ; [debug line = 108:1]
}

; [#uses=2]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!52, !59, !65, !66}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution3/.autopilot/db/yuv_filter.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !39} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !34, metadata !37, metadata !38}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv_filter", metadata !"yuv_filter", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.image_t*, %struct.image_t*, i8, i8, i8)* @yuv_filter, null, null, metadata !32, i32 11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"yuv_filter.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !31, metadata !31, metadata !31}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"image_t", metadata !6, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 26, i64 58982432, i64 16, i32 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!12 = metadata !{i32 786473, metadata !"./image_aux.h", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !27, metadata !30}
!14 = metadata !{i32 786445, metadata !11, metadata !"channels", metadata !12, i32 27, i64 58982400, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786454, null, metadata !"channel_t", metadata !12, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!16 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 20, i64 58982400, i64 8, i32 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!17 = metadata !{metadata !18, metadata !25, metadata !26}
!18 = metadata !{i32 786445, metadata !16, metadata !"ch1", metadata !12, i32 21, i64 19660800, i64 8, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 19660800, i64 8, i32 0, i32 0, metadata !20, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786454, null, metadata !"image_pix_t", metadata !12, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23, metadata !24}
!23 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!24 = metadata !{i32 786465, i64 0, i64 1279}     ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 786445, metadata !16, metadata !"ch2", metadata !12, i32 22, i64 19660800, i64 8, i64 19660800, i32 0, metadata !19} ; [ DW_TAG_member ]
!26 = metadata !{i32 786445, metadata !16, metadata !"ch3", metadata !12, i32 23, i64 19660800, i64 8, i64 39321600, i32 0, metadata !19} ; [ DW_TAG_member ]
!27 = metadata !{i32 786445, metadata !11, metadata !"width", metadata !12, i32 28, i64 16, i64 16, i64 58982400, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 786454, null, metadata !"image_dim_t", metadata !12, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786445, metadata !11, metadata !"height", metadata !12, i32 29, i64 16, i64 16, i64 58982416, i32 0, metadata !28} ; [ DW_TAG_member ]
!31 = metadata !{i32 786454, null, metadata !"yuv_scale_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !6, i32 29, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.image_t*, %struct.image_t*)* @rgb2yuv, null, null, metadata !32, i32 33} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{null, metadata !9, metadata !9}
!37 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !6, i32 67, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.image_t*, %struct.image_t*)* @yuv2rgb, null, null, metadata !32, i32 71} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv_scale", metadata !"yuv_scale", metadata !"", metadata !6, i32 110, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.image_t*, %struct.image_t*, i8, i8, i8)* @yuv_scale, null, null, metadata !32, i32 117} ; [ DW_TAG_subprogram ]
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !41, metadata !48}
!41 = metadata !{i32 786484, i32 0, metadata !34, metadata !"Wrgb", metadata !"Wrgb", metadata !"", metadata !6, i32 37, metadata !42, i32 1, i32 1, [3 x [3 x i16]]* @rgb2yuv.Wrgb} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !43, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 786454, null, metadata !"rgb2yuv_coef_t", metadata !6, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!45 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{metadata !47, metadata !47}
!47 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!48 = metadata !{i32 786484, i32 0, metadata !37, metadata !"Wyuv", metadata !"Wyuv", metadata !"", metadata !6, i32 77, metadata !49, i32 1, i32 1, [3 x [3 x i16]]* @yuv2rgb.Wyuv} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !50, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ]
!51 = metadata !{i32 786454, null, metadata !"yuv2rgb_coef_t", metadata !6, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!52 = metadata !{void (%struct.image_t*, %struct.image_t*, i8, i8, i8)* @yuv_filter, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 0}
!54 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"image_t*", metadata !"image_t*", metadata !"yuv_scale_t", metadata !"yuv_scale_t", metadata !"yuv_scale_t"}
!56 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"Y_scale", metadata !"U_scale", metadata !"V_scale"}
!58 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!59 = metadata !{void (%struct.image_t*, %struct.image_t*)* @rgb2yuv, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !58}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"image_t*", metadata !"image_t*"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!65 = metadata !{void (%struct.image_t*, %struct.image_t*)* @yuv2rgb, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !58}
!66 = metadata !{void (%struct.image_t*, %struct.image_t*, i8, i8, i8)* @yuv_scale, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!67 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 5, i32 16, metadata !5, null}
!69 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 6, i32 16, metadata !5, null}
!71 = metadata !{i32 786689, metadata !5, metadata !"Y_scale", metadata !6, i32 50331655, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 7, i32 19, metadata !5, null}
!73 = metadata !{i32 786689, metadata !5, metadata !"U_scale", metadata !6, i32 67108872, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 8, i32 19, metadata !5, null}
!75 = metadata !{i32 786689, metadata !5, metadata !"V_scale", metadata !6, i32 83886089, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 9, i32 19, metadata !5, null}
!77 = metadata !{i32 12, i32 1, metadata !78, null}
!78 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786688, metadata !78, metadata !"_yuv", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 17, i32 12, metadata !78, null}
!81 = metadata !{i32 786688, metadata !78, metadata !"_scale", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 18, i32 12, metadata !78, null}
!83 = metadata !{i32 786688, metadata !78, metadata !"yuv", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 19, i32 13, metadata !78, null}
!85 = metadata !{i32 19, i32 24, metadata !78, null}
!86 = metadata !{i32 786688, metadata !78, metadata !"scale", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 20, i32 13, metadata !78, null}
!88 = metadata !{i32 20, i32 28, metadata !78, null}
!89 = metadata !{i32 23, i32 4, metadata !78, null}
!90 = metadata !{i32 24, i32 4, metadata !78, null}
!91 = metadata !{i32 25, i32 4, metadata !78, null}
!92 = metadata !{i32 26, i32 1, metadata !78, null}
!93 = metadata !{i32 786689, metadata !34, metadata !"in", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 30, i32 16, metadata !34, null}
!95 = metadata !{i32 786689, metadata !34, metadata !"out", metadata !6, i32 33554463, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 31, i32 16, metadata !34, null}
!97 = metadata !{i32 786688, metadata !98, metadata !"x", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 786443, metadata !34, i32 33, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 34, i32 16, metadata !98, null}
!100 = metadata !{i32 786688, metadata !98, metadata !"y", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 34, i32 19, metadata !98, null}
!102 = metadata !{i32 786688, metadata !98, metadata !"width", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 35, i32 16, metadata !98, null}
!104 = metadata !{i32 786688, metadata !98, metadata !"height", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 35, i32 23, metadata !98, null}
!106 = metadata !{i32 786688, metadata !98, metadata !"R", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 36, i32 16, metadata !98, null}
!108 = metadata !{i32 786688, metadata !98, metadata !"G", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 36, i32 19, metadata !98, null}
!110 = metadata !{i32 786688, metadata !98, metadata !"B", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 36, i32 22, metadata !98, null}
!112 = metadata !{i32 786688, metadata !98, metadata !"Y", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 36, i32 25, metadata !98, null}
!114 = metadata !{i32 786688, metadata !98, metadata !"U", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 36, i32 28, metadata !98, null}
!116 = metadata !{i32 786688, metadata !98, metadata !"V", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 36, i32 31, metadata !98, null}
!118 = metadata !{i32 42, i32 1, metadata !98, null}
!119 = metadata !{i32 43, i32 4, metadata !98, null}
!120 = metadata !{i32 44, i32 4, metadata !98, null}
!121 = metadata !{i32 45, i32 4, metadata !98, null}
!122 = metadata !{i32 46, i32 4, metadata !98, null}
!123 = metadata !{i32 49, i32 9, metadata !124, null}
!124 = metadata !{i32 786443, metadata !98, i32 49, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 49, i32 29, metadata !126, null}
!126 = metadata !{i32 786443, metadata !124, i32 49, i32 28, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 50, i32 1, metadata !126, null}
!128 = metadata !{i32 52, i32 12, metadata !129, null}
!129 = metadata !{i32 786443, metadata !126, i32 52, i32 7, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 52, i32 33, metadata !131, null}
!131 = metadata !{i32 786443, metadata !129, i32 52, i32 32, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 53, i32 1, metadata !131, null}
!133 = metadata !{i32 54, i32 2, metadata !131, null}
!134 = metadata !{i32 55, i32 10, metadata !131, null}
!135 = metadata !{i32 56, i32 10, metadata !131, null}
!136 = metadata !{i32 57, i32 10, metadata !131, null}
!137 = metadata !{i32 58, i32 10, metadata !131, null}
!138 = metadata !{i32 59, i32 10, metadata !131, null}
!139 = metadata !{i32 60, i32 10, metadata !131, null}
!140 = metadata !{i32 61, i32 10, metadata !131, null}
!141 = metadata !{i32 62, i32 10, metadata !131, null}
!142 = metadata !{i32 63, i32 7, metadata !131, null}
!143 = metadata !{i32 52, i32 27, metadata !129, null}
!144 = metadata !{i32 64, i32 4, metadata !126, null}
!145 = metadata !{i32 49, i32 23, metadata !124, null}
!146 = metadata !{i32 65, i32 1, metadata !98, null}
!147 = metadata !{i32 786689, metadata !38, metadata !"in", metadata !6, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 111, i32 16, metadata !38, null}
!149 = metadata !{i32 786689, metadata !38, metadata !"out", metadata !6, i32 33554544, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 112, i32 16, metadata !38, null}
!151 = metadata !{i32 786689, metadata !38, metadata !"Y_scale", metadata !6, i32 50331761, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 113, i32 19, metadata !38, null}
!153 = metadata !{i32 786689, metadata !38, metadata !"U_scale", metadata !6, i32 67108978, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 114, i32 19, metadata !38, null}
!155 = metadata !{i32 786689, metadata !38, metadata !"V_scale", metadata !6, i32 83886195, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 115, i32 19, metadata !38, null}
!157 = metadata !{i32 118, i32 1, metadata !158, null}
!158 = metadata !{i32 786443, metadata !38, i32 117, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786688, metadata !158, metadata !"x", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 118, i32 16, metadata !158, null}
!161 = metadata !{i32 786688, metadata !158, metadata !"y", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 118, i32 18, metadata !158, null}
!163 = metadata !{i32 786688, metadata !158, metadata !"width", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 119, i32 16, metadata !158, null}
!165 = metadata !{i32 786688, metadata !158, metadata !"height", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 119, i32 23, metadata !158, null}
!167 = metadata !{i32 786688, metadata !158, metadata !"Y", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 120, i32 16, metadata !158, null}
!169 = metadata !{i32 786688, metadata !158, metadata !"U", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 120, i32 19, metadata !158, null}
!171 = metadata !{i32 786688, metadata !158, metadata !"V", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 120, i32 22, metadata !158, null}
!173 = metadata !{i32 786688, metadata !158, metadata !"Yn", metadata !6, i32 121, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!175 = metadata !{i32 121, i32 17, metadata !158, null}
!176 = metadata !{i32 786688, metadata !158, metadata !"Un", metadata !6, i32 121, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 121, i32 21, metadata !158, null}
!178 = metadata !{i32 786688, metadata !158, metadata !"Vn", metadata !6, i32 121, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 121, i32 25, metadata !158, null}
!180 = metadata !{i32 123, i32 4, metadata !158, null}
!181 = metadata !{i32 124, i32 4, metadata !158, null}
!182 = metadata !{i32 125, i32 4, metadata !158, null}
!183 = metadata !{i32 126, i32 4, metadata !158, null}
!184 = metadata !{i32 129, i32 9, metadata !185, null}
!185 = metadata !{i32 786443, metadata !158, i32 129, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 129, i32 29, metadata !187, null}
!187 = metadata !{i32 786443, metadata !185, i32 129, i32 28, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 130, i32 1, metadata !187, null}
!189 = metadata !{i32 132, i32 12, metadata !190, null}
!190 = metadata !{i32 786443, metadata !187, i32 132, i32 7, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 132, i32 33, metadata !192, null}
!192 = metadata !{i32 786443, metadata !190, i32 132, i32 32, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 133, i32 1, metadata !192, null}
!194 = metadata !{i32 134, i32 2, metadata !192, null}
!195 = metadata !{i32 135, i32 10, metadata !192, null}
!196 = metadata !{i32 136, i32 10, metadata !192, null}
!197 = metadata !{i32 137, i32 10, metadata !192, null}
!198 = metadata !{i32 138, i32 10, metadata !192, null}
!199 = metadata !{i32 139, i32 10, metadata !192, null}
!200 = metadata !{i32 140, i32 10, metadata !192, null}
!201 = metadata !{i32 141, i32 10, metadata !192, null}
!202 = metadata !{i32 142, i32 10, metadata !192, null}
!203 = metadata !{i32 143, i32 7, metadata !192, null}
!204 = metadata !{i32 132, i32 27, metadata !190, null}
!205 = metadata !{i32 144, i32 4, metadata !187, null}
!206 = metadata !{i32 129, i32 23, metadata !185, null}
!207 = metadata !{i32 145, i32 1, metadata !158, null}
!208 = metadata !{i32 786689, metadata !37, metadata !"in", metadata !6, i32 16777284, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 68, i32 16, metadata !37, null}
!210 = metadata !{i32 786689, metadata !37, metadata !"out", metadata !6, i32 33554501, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!211 = metadata !{i32 69, i32 16, metadata !37, null}
!212 = metadata !{i32 786688, metadata !213, metadata !"x", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 786443, metadata !37, i32 71, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 72, i32 16, metadata !213, null}
!215 = metadata !{i32 786688, metadata !213, metadata !"y", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 72, i32 18, metadata !213, null}
!217 = metadata !{i32 786688, metadata !213, metadata !"width", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 73, i32 16, metadata !213, null}
!219 = metadata !{i32 786688, metadata !213, metadata !"height", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 73, i32 23, metadata !213, null}
!221 = metadata !{i32 786688, metadata !213, metadata !"R", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 74, i32 16, metadata !213, null}
!223 = metadata !{i32 786688, metadata !213, metadata !"G", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 74, i32 19, metadata !213, null}
!225 = metadata !{i32 786688, metadata !213, metadata !"B", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 74, i32 22, metadata !213, null}
!227 = metadata !{i32 786688, metadata !213, metadata !"Y", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 75, i32 16, metadata !213, null}
!229 = metadata !{i32 786688, metadata !213, metadata !"U", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 75, i32 19, metadata !213, null}
!231 = metadata !{i32 786688, metadata !213, metadata !"V", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 75, i32 22, metadata !213, null}
!233 = metadata !{i32 786688, metadata !213, metadata !"C", metadata !6, i32 76, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 76, i32 17, metadata !213, null}
!235 = metadata !{i32 786688, metadata !213, metadata !"D", metadata !6, i32 76, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 76, i32 20, metadata !213, null}
!237 = metadata !{i32 786688, metadata !213, metadata !"E", metadata !6, i32 76, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!238 = metadata !{i32 76, i32 23, metadata !213, null}
!239 = metadata !{i32 82, i32 1, metadata !213, null}
!240 = metadata !{i32 83, i32 4, metadata !213, null}
!241 = metadata !{i32 84, i32 4, metadata !213, null}
!242 = metadata !{i32 85, i32 4, metadata !213, null}
!243 = metadata !{i32 86, i32 4, metadata !213, null}
!244 = metadata !{i32 89, i32 9, metadata !245, null}
!245 = metadata !{i32 786443, metadata !213, i32 89, i32 4, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 89, i32 29, metadata !247, null}
!247 = metadata !{i32 786443, metadata !245, i32 89, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 90, i32 1, metadata !247, null}
!249 = metadata !{i32 92, i32 12, metadata !250, null}
!250 = metadata !{i32 786443, metadata !247, i32 92, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 92, i32 33, metadata !252, null}
!252 = metadata !{i32 786443, metadata !250, i32 92, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 93, i32 1, metadata !252, null}
!254 = metadata !{i32 94, i32 2, metadata !252, null}
!255 = metadata !{i32 95, i32 10, metadata !252, null}
!256 = metadata !{i32 96, i32 10, metadata !252, null}
!257 = metadata !{i32 97, i32 10, metadata !252, null}
!258 = metadata !{i32 98, i32 10, metadata !252, null}
!259 = metadata !{i32 99, i32 10, metadata !252, null}
!260 = metadata !{i32 100, i32 10, metadata !252, null}
!261 = metadata !{i32 101, i32 10, metadata !252, null}
!262 = metadata !{i32 102, i32 10, metadata !252, null}
!263 = metadata !{i32 103, i32 10, metadata !252, null}
!264 = metadata !{i32 104, i32 10, metadata !252, null}
!265 = metadata !{i32 105, i32 10, metadata !252, null}
!266 = metadata !{i32 106, i32 7, metadata !252, null}
!267 = metadata !{i32 92, i32 27, metadata !250, null}
!268 = metadata !{i32 107, i32 4, metadata !247, null}
!269 = metadata !{i32 89, i32 23, metadata !245, null}
!270 = metadata !{i32 108, i32 1, metadata !213, null}
