; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_filter.str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@.str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_X\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=1]
define internal fastcc { i16, i16 } @yuv_scale([1920 x [1280 x i8]]* nocapture %in.channels.ch1, [1920 x [1280 x i8]]* nocapture %in.channels.ch2, [1920 x [1280 x i8]]* nocapture %in.channels.ch3, i16 %in.width.read, i16 %in.height.read, [1920 x [1280 x i8]]* nocapture %out.channels.ch1, [1920 x [1280 x i8]]* nocapture %out.channels.ch2, [1920 x [1280 x i8]]* nocapture %out.channels.ch3, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !65), !dbg !72 ; [debug line = 111:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !73), !dbg !72 ; [debug line = 111:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !79), !dbg !72 ; [debug line = 111:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !85), !dbg !72 ; [debug line = 111:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !89), !dbg !72 ; [debug line = 111:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !93), !dbg !95 ; [debug line = 112:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !96), !dbg !95 ; [debug line = 112:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !97), !dbg !95 ; [debug line = 112:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !98), !dbg !99 ; [debug line = 113:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !100), !dbg !101 ; [debug line = 114:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !102), !dbg !103 ; [debug line = 115:19] [debug variable = V_scale]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !104), !dbg !106 ; [debug line = 123:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !107), !dbg !108 ; [debug line = 124:4] [debug variable = height]
  %tmp.cast = zext i8 %Y_scale to i15, !dbg !109  ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp.1.cast = zext i8 %U_scale to i15, !dbg !114 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp.2.cast = zext i8 %V_scale to i15, !dbg !115 ; [#uses=1 type=i15] [debug line = 129:9]
  br label %1, !dbg !115                          ; [debug line = 129:9]

; <label>:1                                       ; preds = %6, %0
  %x = phi i16 [ 0, %0 ], [ %x.1, %6 ]            ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %in.width.read, !dbg !115 ; [#uses=1 type=i1] [debug line = 129:9]
  br i1 %exitcond1, label %8, label %2, !dbg !115 ; [debug line = 129:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str5) nounwind, !dbg !116 ; [debug line = 129:29]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str5), !dbg !116 ; [#uses=1 type=i32] [debug line = 129:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str1) nounwind, !dbg !117 ; [debug line = 130:1]
  %tmp.3 = zext i16 %x to i64, !dbg !118          ; [#uses=6 type=i64] [debug line = 134:2]
  br label %3, !dbg !119                          ; [debug line = 132:12]

; <label>:3                                       ; preds = %4, %2
  %y = phi i16 [ 0, %2 ], [ %y.1, %4 ]            ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %in.height.read, !dbg !119 ; [#uses=1 type=i1] [debug line = 132:12]
  br i1 %exitcond, label %6, label %4, !dbg !119  ; [debug line = 132:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str6) nounwind, !dbg !120 ; [debug line = 132:33]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str6), !dbg !120 ; [#uses=1 type=i32] [debug line = 132:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !121 ; [debug line = 133:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str1) nounwind, !dbg !121 ; [debug line = 133:1]
  %tmp.5 = zext i16 %y to i64, !dbg !118          ; [#uses=6 type=i64] [debug line = 134:2]
  %in.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch1, i64 0, i64 %tmp.3, i64 %tmp.5, !dbg !118 ; [#uses=1 type=i8*] [debug line = 134:2]
  %Y = load i8* %in.channels.ch1.addr, align 1, !dbg !118 ; [#uses=1 type=i8] [debug line = 134:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !122), !dbg !118 ; [debug line = 134:2] [debug variable = Y]
  %in.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch2, i64 0, i64 %tmp.3, i64 %tmp.5, !dbg !123 ; [#uses=1 type=i8*] [debug line = 135:10]
  %U = load i8* %in.channels.ch2.addr, align 1, !dbg !123 ; [#uses=1 type=i8] [debug line = 135:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !124), !dbg !123 ; [debug line = 135:10] [debug variable = U]
  %in.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch3, i64 0, i64 %tmp.3, i64 %tmp.5, !dbg !125 ; [#uses=1 type=i8*] [debug line = 136:10]
  %V = load i8* %in.channels.ch3.addr, align 1, !dbg !125 ; [#uses=1 type=i8] [debug line = 136:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !126), !dbg !125 ; [debug line = 136:10] [debug variable = V]
  %tmp.6.cast = zext i8 %Y to i15, !dbg !127      ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp.7 = mul i15 %tmp.cast, %tmp.6.cast, !dbg !127 ; [#uses=1 type=i15] [debug line = 137:10]
  %Yn = lshr i15 %tmp.7, 7, !dbg !127             ; [#uses=1 type=i15] [debug line = 137:10]
  call void @llvm.dbg.value(metadata !{i15 %Yn}, i64 0, metadata !128), !dbg !127 ; [debug line = 137:10] [debug variable = Yn]
  %tmp.9.cast = zext i8 %U to i15, !dbg !109      ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp. = mul i15 %tmp.1.cast, %tmp.9.cast, !dbg !109 ; [#uses=1 type=i15] [debug line = 138:10]
  %Un = lshr i15 %tmp., 7, !dbg !109              ; [#uses=1 type=i15] [debug line = 138:10]
  call void @llvm.dbg.value(metadata !{i15 %Un}, i64 0, metadata !130), !dbg !109 ; [debug line = 138:10] [debug variable = Un]
  %tmp.4.cast = zext i8 %V to i15, !dbg !114      ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp.8 = mul i15 %tmp.2.cast, %tmp.4.cast, !dbg !114 ; [#uses=1 type=i15] [debug line = 139:10]
  %Vn = lshr i15 %tmp.8, 7, !dbg !114             ; [#uses=1 type=i15] [debug line = 139:10]
  call void @llvm.dbg.value(metadata !{i15 %Vn}, i64 0, metadata !131), !dbg !114 ; [debug line = 139:10] [debug variable = Vn]
  %tmp.4 = trunc i15 %Yn to i8, !dbg !132         ; [#uses=1 type=i8] [debug line = 140:10]
  %out.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch1, i64 0, i64 %tmp.3, i64 %tmp.5, !dbg !132 ; [#uses=1 type=i8*] [debug line = 140:10]
  store i8 %tmp.4, i8* %out.channels.ch1.addr, align 1, !dbg !132 ; [debug line = 140:10]
  %tmp.6 = trunc i15 %Un to i8, !dbg !133         ; [#uses=1 type=i8] [debug line = 141:10]
  %out.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch2, i64 0, i64 %tmp.3, i64 %tmp.5, !dbg !133 ; [#uses=1 type=i8*] [debug line = 141:10]
  store i8 %tmp.6, i8* %out.channels.ch2.addr, align 1, !dbg !133 ; [debug line = 141:10]
  %tmp.9 = trunc i15 %Vn to i8, !dbg !134         ; [#uses=1 type=i8] [debug line = 142:10]
  %out.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch3, i64 0, i64 %tmp.3, i64 %tmp.5, !dbg !134 ; [#uses=1 type=i8*] [debug line = 142:10]
  store i8 %tmp.9, i8* %out.channels.ch3.addr, align 1, !dbg !134 ; [debug line = 142:10]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str6, i32 %tmp.2), !dbg !135 ; [#uses=0 type=i32] [debug line = 143:7]
  %y.1 = add i16 %y, 1, !dbg !136                 ; [#uses=1 type=i16] [debug line = 132:27]
  call void @llvm.dbg.value(metadata !{i16 %y.1}, i64 0, metadata !137), !dbg !136 ; [debug line = 132:27] [debug variable = y]
  br label %3, !dbg !136                          ; [debug line = 132:27]

; <label>:6                                       ; preds = %3
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str5, i32 %tmp.1), !dbg !138 ; [#uses=0 type=i32] [debug line = 144:4]
  %x.1 = add i16 %x, 1, !dbg !139                 ; [#uses=1 type=i16] [debug line = 129:23]
  call void @llvm.dbg.value(metadata !{i16 %x.1}, i64 0, metadata !140), !dbg !139 ; [debug line = 129:23] [debug variable = x]
  br label %1, !dbg !139                          ; [debug line = 129:23]

; <label>:8                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !141), !dbg !95 ; [debug line = 112:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !142), !dbg !95 ; [debug line = 112:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in.width.read, 0, !dbg !143 ; [#uses=1 type={ i16, i16 }] [debug line = 145:1]
  %mrv.1 = insertvalue { i16, i16 } %mrv, i16 %in.height.read, 1, !dbg !143 ; [#uses=1 type={ i16, i16 }] [debug line = 145:1]
  ret { i16, i16 } %mrv.1, !dbg !143              ; [debug line = 145:1]
}

; [#uses=0]
define void @yuv_filter([1920 x [1280 x i8]]* %in.channels.ch1, [1920 x [1280 x i8]]* %in.channels.ch2, [1920 x [1280 x i8]]* %in.channels.ch3, i16* %in.width, i16* %in.height, [1920 x [1280 x i8]]* %out.channels.ch1, [1920 x [1280 x i8]]* %out.channels.ch2, [1920 x [1280 x i8]]* %out.channels.ch3, i16* %out.width, i16* %out.height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch1), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch2), !map !151
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch3), !map !155
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in.width), !map !159
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in.height), !map !165
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch1), !map !169
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch2), !map !173
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch3), !map !177
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out.width), !map !181
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out.height), !map !185
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !189
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !195
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !199
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter.str) nounwind
  %_yuv.channels.ch1 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_yuv.channels.ch2 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_yuv.channels.ch3 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_scale.channels.ch1 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_scale.channels.ch2 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_scale.channels.ch3 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !203), !dbg !205 ; [debug line = 5:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !206), !dbg !205 ; [debug line = 5:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !207), !dbg !205 ; [debug line = 5:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !208), !dbg !205 ; [debug line = 5:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !209), !dbg !205 ; [debug line = 5:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !210), !dbg !212 ; [debug line = 6:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !213), !dbg !212 ; [debug line = 6:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !214), !dbg !212 ; [debug line = 6:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !215), !dbg !212 ; [debug line = 6:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !216), !dbg !212 ; [debug line = 6:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !217), !dbg !218 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !219), !dbg !220 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !221), !dbg !222 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch1}, metadata !223), !dbg !226 ; [debug line = 17:12] [debug variable = _yuv.channels.ch1]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch2}, metadata !227), !dbg !226 ; [debug line = 17:12] [debug variable = _yuv.channels.ch2]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch3}, metadata !228), !dbg !226 ; [debug line = 17:12] [debug variable = _yuv.channels.ch3]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch1}, metadata !229), !dbg !231 ; [debug line = 18:12] [debug variable = _scale.channels.ch1]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch2}, metadata !232), !dbg !231 ; [debug line = 18:12] [debug variable = _scale.channels.ch2]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch3}, metadata !233), !dbg !231 ; [debug line = 18:12] [debug variable = _scale.channels.ch3]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch1}, i64 0, metadata !234), !dbg !236 ; [debug line = 19:24] [debug variable = yuv.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch2}, i64 0, metadata !237), !dbg !236 ; [debug line = 19:24] [debug variable = yuv.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch3}, i64 0, metadata !238), !dbg !236 ; [debug line = 19:24] [debug variable = yuv.channels.ch3]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch1}, i64 0, metadata !239), !dbg !241 ; [debug line = 20:28] [debug variable = scale.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch2}, i64 0, metadata !242), !dbg !241 ; [debug line = 20:28] [debug variable = scale.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch3}, i64 0, metadata !243), !dbg !241 ; [debug line = 20:28] [debug variable = scale.channels.ch3]
  %in.width.load = load i16* %in.width, align 2, !dbg !244 ; [#uses=1 type=i16] [debug line = 23:4]
  %in.height.load = load i16* %in.height, align 2, !dbg !244 ; [#uses=1 type=i16] [debug line = 23:4]
  %call.ret1 = call fastcc { i16, i16 } @rgb2yuv([1920 x [1280 x i8]]* %in.channels.ch1, [1920 x [1280 x i8]]* %in.channels.ch2, [1920 x [1280 x i8]]* %in.channels.ch3, i16 %in.width.load, i16 %in.height.load, [1920 x [1280 x i8]]* %_yuv.channels.ch1, [1920 x [1280 x i8]]* %_yuv.channels.ch2, [1920 x [1280 x i8]]* %_yuv.channels.ch3), !dbg !244 ; [#uses=2 type={ i16, i16 }] [debug line = 23:4]
  %_yuv.width = extractvalue { i16, i16 } %call.ret1, 0, !dbg !244 ; [#uses=1 type=i16] [debug line = 23:4]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.width}, i64 0, metadata !245), !dbg !244 ; [debug line = 23:4] [debug variable = _yuv.width]
  %_yuv.height = extractvalue { i16, i16 } %call.ret1, 1, !dbg !244 ; [#uses=1 type=i16] [debug line = 23:4]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.height}, i64 0, metadata !246), !dbg !244 ; [debug line = 23:4] [debug variable = _yuv.height]
  %call.ret = call fastcc { i16, i16 } @yuv_scale([1920 x [1280 x i8]]* %_yuv.channels.ch1, [1920 x [1280 x i8]]* %_yuv.channels.ch2, [1920 x [1280 x i8]]* %_yuv.channels.ch3, i16 %_yuv.width, i16 %_yuv.height, [1920 x [1280 x i8]]* %_scale.channels.ch1, [1920 x [1280 x i8]]* %_scale.channels.ch2, [1920 x [1280 x i8]]* %_scale.channels.ch3, i8 %Y_scale, i8 %U_scale, i8 %V_scale), !dbg !247 ; [#uses=2 type={ i16, i16 }] [debug line = 24:4]
  %_scale.width = extractvalue { i16, i16 } %call.ret, 0, !dbg !247 ; [#uses=1 type=i16] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i16 %_scale.width}, i64 0, metadata !248), !dbg !247 ; [debug line = 24:4] [debug variable = _scale.width]
  %_scale.height = extractvalue { i16, i16 } %call.ret, 1, !dbg !247 ; [#uses=1 type=i16] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i16 %_scale.height}, i64 0, metadata !249), !dbg !247 ; [debug line = 24:4] [debug variable = _scale.height]
  %call.ret2 = call fastcc { i16, i16 } @yuv2rgb([1920 x [1280 x i8]]* %_scale.channels.ch1, [1920 x [1280 x i8]]* %_scale.channels.ch2, [1920 x [1280 x i8]]* %_scale.channels.ch3, i16 %_scale.width, i16 %_scale.height, [1920 x [1280 x i8]]* %out.channels.ch1, [1920 x [1280 x i8]]* %out.channels.ch2, [1920 x [1280 x i8]]* %out.channels.ch3), !dbg !250 ; [#uses=2 type={ i16, i16 }] [debug line = 25:4]
  %out.width.ret = extractvalue { i16, i16 } %call.ret2, 0, !dbg !250 ; [#uses=1 type=i16] [debug line = 25:4]
  store i16 %out.width.ret, i16* %out.width, align 2, !dbg !250 ; [debug line = 25:4]
  %out.height.ret = extractvalue { i16, i16 } %call.ret2, 1, !dbg !250 ; [#uses=1 type=i16] [debug line = 25:4]
  store i16 %out.height.ret, i16* %out.height, align 2, !dbg !250 ; [debug line = 25:4]
  ret void, !dbg !251                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @yuv2rgb([1920 x [1280 x i8]]* nocapture %in.channels.ch1, [1920 x [1280 x i8]]* nocapture %in.channels.ch2, [1920 x [1280 x i8]]* nocapture %in.channels.ch3, i16 %in.width.read, i16 %in.height.read, [1920 x [1280 x i8]]* nocapture %out.channels.ch1, [1920 x [1280 x i8]]* nocapture %out.channels.ch2, [1920 x [1280 x i8]]* nocapture %out.channels.ch3) {
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !252), !dbg !254 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !255), !dbg !254 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !256), !dbg !254 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !257), !dbg !254 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !258), !dbg !254 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !259), !dbg !261 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !262), !dbg !261 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !263), !dbg !261 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !264), !dbg !266 ; [debug line = 83:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !267), !dbg !268 ; [debug line = 84:4] [debug variable = height]
  br label %1, !dbg !269                          ; [debug line = 89:9]

; <label>:1                                       ; preds = %5, %0
  %x = phi i16 [ 0, %0 ], [ %x.2, %5 ]            ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %in.width.read, !dbg !269 ; [#uses=1 type=i1] [debug line = 89:9]
  br i1 %exitcond1, label %7, label %2, !dbg !269 ; [debug line = 89:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str3) nounwind, !dbg !271 ; [debug line = 89:29]
  %tmp.10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str3), !dbg !271 ; [#uses=1 type=i32] [debug line = 89:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str1) nounwind, !dbg !273 ; [debug line = 90:1]
  %tmp = zext i16 %x to i64, !dbg !274            ; [#uses=6 type=i64] [debug line = 94:2]
  br label %3, !dbg !277                          ; [debug line = 92:12]

; <label>:3                                       ; preds = %_ifconv, %2
  %y = phi i16 [ 0, %2 ], [ %y.2, %_ifconv ]      ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %in.height.read, !dbg !277 ; [#uses=1 type=i1] [debug line = 92:12]
  br i1 %exitcond, label %5, label %_ifconv, !dbg !277 ; [debug line = 92:12]

_ifconv:                                          ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str4) nounwind, !dbg !278 ; [debug line = 92:33]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str4), !dbg !278 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !279 ; [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str1) nounwind, !dbg !279 ; [debug line = 93:1]
  %tmp. = zext i16 %y to i64, !dbg !274           ; [#uses=6 type=i64] [debug line = 94:2]
  %in.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !274 ; [#uses=1 type=i8*] [debug line = 94:2]
  %Y = load i8* %in.channels.ch1.addr, align 1, !dbg !274 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !280), !dbg !274 ; [debug line = 94:2] [debug variable = Y]
  %in.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !281 ; [#uses=1 type=i8*] [debug line = 95:10]
  %U = load i8* %in.channels.ch2.addr, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !282), !dbg !281 ; [debug line = 95:10] [debug variable = U]
  %in.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !283 ; [#uses=1 type=i8*] [debug line = 96:10]
  %V = load i8* %in.channels.ch3.addr, align 1, !dbg !283 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !284), !dbg !283 ; [debug line = 96:10] [debug variable = V]
  %tmp.13.cast = zext i8 %Y to i9, !dbg !285      ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 %tmp.13.cast, -16, !dbg !285        ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !286), !dbg !285 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !287                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !288), !dbg !287 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !289                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !290), !dbg !289 ; [debug line = 99:10] [debug variable = E]
  %tmp.16.cast = sext i9 %C to i18, !dbg !291     ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.12 = mul i18 %tmp.16.cast, 298, !dbg !291  ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.18.cast5 = sext i8 %E to i17, !dbg !292    ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.18.cast = sext i8 %E to i18, !dbg !291     ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.13 = mul i18 %tmp.18.cast, 409, !dbg !291  ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.14 = add i18 %tmp.12, 128, !dbg !291       ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp.15 = add i18 %tmp.13, %tmp.14, !dbg !291   ; [#uses=2 type=i18] [debug line = 100:10]
  %tmp.1 = lshr i18 %tmp.15, 8, !dbg !291         ; [#uses=2 type=i18] [debug line = 100:10]
  %tmp.2 = trunc i18 %tmp.1 to i10, !dbg !291     ; [#uses=1 type=i10] [debug line = 100:10]
  %tmp.16 = icmp sgt i10 %tmp.2, 255, !dbg !291   ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp.17 = icmp slt i18 %tmp.15, 0, !dbg !291    ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = trunc i18 %tmp.1 to i8, !dbg !291     ; [#uses=1 type=i8] [debug line = 100:10]
  %.phitmp = sext i1 %tmp.16 to i8, !dbg !291     ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp.3 = or i1 %tmp.16, %tmp.17, !dbg !291      ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp.3, i8 %.phitmp, i8 %phitmp, !dbg !291 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !293), !dbg !291 ; [debug line = 100:10] [debug variable = R]
  %tmp.26.cast4 = sext i8 %D to i17, !dbg !292    ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.26.cast = zext i8 %D to i10, !dbg !292     ; [#uses=1 type=i10] [debug line = 101:10]
  %tmp.26.cast6 = zext i8 %D to i17, !dbg !292    ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.18 = mul i17 %tmp.26.cast4, -100, !dbg !292 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.19 = mul i17 %tmp.18.cast5, -208, !dbg !292 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp.19, %tmp.18, !dbg !292     ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1.cast = sext i17 %tmp1 to i18, !dbg !292   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp.20 = add i18 %tmp.14, %tmp1.cast, !dbg !292 ; [#uses=2 type=i18] [debug line = 101:10]
  %tmp.4 = lshr i18 %tmp.20, 8, !dbg !292         ; [#uses=2 type=i18] [debug line = 101:10]
  %tmp.5 = trunc i18 %tmp.4 to i10, !dbg !292     ; [#uses=1 type=i10] [debug line = 101:10]
  %tmp.21 = icmp sgt i10 %tmp.5, 255, !dbg !292   ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp.22 = icmp slt i18 %tmp.20, 0, !dbg !292    ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = trunc i18 %tmp.4 to i8, !dbg !292    ; [#uses=1 type=i8] [debug line = 101:10]
  %.phitmp2 = sext i1 %tmp.21 to i8, !dbg !292    ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp.6 = or i1 %tmp.21, %tmp.22, !dbg !292      ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp.6, i8 %.phitmp2, i8 %phitmp2, !dbg !292 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !294), !dbg !292 ; [debug line = 101:10] [debug variable = G]
  %_shl = shl nuw i17 %tmp.26.cast6, 9, !dbg !295 ; [#uses=1 type=i17] [debug line = 102:10]
  %_shl.cast = sext i17 %_shl to i19, !dbg !295   ; [#uses=1 type=i19] [debug line = 102:10]
  %_shl1 = shl nuw i10 %tmp.26.cast, 2, !dbg !295 ; [#uses=1 type=i10] [debug line = 102:10]
  %_shl1.cast = sext i10 %_shl1 to i18, !dbg !295 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2 = add i18 %tmp.14, %_shl1.cast, !dbg !295 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2.cast = sext i18 %tmp2 to i19, !dbg !295   ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp.23 = add i19 %_shl.cast, %tmp2.cast, !dbg !295 ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp.7 = lshr i19 %tmp.23, 8, !dbg !295         ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp.8 = trunc i19 %tmp.7 to i11, !dbg !295     ; [#uses=1 type=i11] [debug line = 102:10]
  %tmp.24 = icmp sgt i11 %tmp.8, 255, !dbg !295   ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp.25 = icmp slt i19 %tmp.23, 0, !dbg !295    ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = trunc i19 %tmp.7 to i8, !dbg !295    ; [#uses=1 type=i8] [debug line = 102:10]
  %.phitmp3 = sext i1 %tmp.24 to i8, !dbg !295    ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp.9 = or i1 %tmp.24, %tmp.25, !dbg !295      ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp.9, i8 %.phitmp3, i8 %phitmp3, !dbg !295 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !296), !dbg !295 ; [debug line = 102:10] [debug variable = B]
  %out.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !297 ; [#uses=1 type=i8*] [debug line = 103:10]
  store i8 %R, i8* %out.channels.ch1.addr, align 1, !dbg !297 ; [debug line = 103:10]
  %out.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !298 ; [#uses=1 type=i8*] [debug line = 104:10]
  store i8 %G, i8* %out.channels.ch2.addr, align 1, !dbg !298 ; [debug line = 104:10]
  %out.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !299 ; [#uses=1 type=i8*] [debug line = 105:10]
  store i8 %B, i8* %out.channels.ch3.addr, align 1, !dbg !299 ; [debug line = 105:10]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str4, i32 %tmp.11), !dbg !300 ; [#uses=0 type=i32] [debug line = 106:7]
  %y.2 = add i16 %y, 1, !dbg !301                 ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y.2}, i64 0, metadata !302), !dbg !301 ; [debug line = 92:27] [debug variable = y]
  br label %3, !dbg !301                          ; [debug line = 92:27]

; <label>:5                                       ; preds = %3
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str3, i32 %tmp.10), !dbg !303 ; [#uses=0 type=i32] [debug line = 107:4]
  %x.2 = add i16 %x, 1, !dbg !304                 ; [#uses=1 type=i16] [debug line = 89:23]
  call void @llvm.dbg.value(metadata !{i16 %x.2}, i64 0, metadata !305), !dbg !304 ; [debug line = 89:23] [debug variable = x]
  br label %1, !dbg !304                          ; [debug line = 89:23]

; <label>:7                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !306), !dbg !261 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !307), !dbg !261 ; [debug line = 69:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in.width.read, 0, !dbg !308 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  %mrv.1 = insertvalue { i16, i16 } %mrv, i16 %in.height.read, 1, !dbg !308 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  ret { i16, i16 } %mrv.1, !dbg !308              ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @rgb2yuv([1920 x [1280 x i8]]* nocapture %in.channels.ch1, [1920 x [1280 x i8]]* nocapture %in.channels.ch2, [1920 x [1280 x i8]]* nocapture %in.channels.ch3, i16 %in.width.read, i16 %in.height.read, [1920 x [1280 x i8]]* nocapture %out.channels.ch1, [1920 x [1280 x i8]]* nocapture %out.channels.ch2, [1920 x [1280 x i8]]* nocapture %out.channels.ch3) {
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !309), !dbg !311 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !312), !dbg !311 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !313), !dbg !311 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !314), !dbg !311 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !315), !dbg !311 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !316), !dbg !318 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !319), !dbg !318 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !320), !dbg !318 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !321), !dbg !323 ; [debug line = 43:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !324), !dbg !325 ; [debug line = 44:4] [debug variable = height]
  br label %1, !dbg !326                          ; [debug line = 49:9]

; <label>:1                                       ; preds = %6, %0
  %x = phi i16 [ 0, %0 ], [ %x.3, %6 ]            ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %in.width.read, !dbg !326 ; [#uses=1 type=i1] [debug line = 49:9]
  br i1 %exitcond1, label %8, label %2, !dbg !326 ; [debug line = 49:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !328 ; [debug line = 49:29]
  %tmp.26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str), !dbg !328 ; [#uses=1 type=i32] [debug line = 49:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str1) nounwind, !dbg !330 ; [debug line = 50:1]
  %tmp = zext i16 %x to i64, !dbg !331            ; [#uses=6 type=i64] [debug line = 54:2]
  br label %3, !dbg !334                          ; [debug line = 52:12]

; <label>:3                                       ; preds = %4, %2
  %y = phi i16 [ 0, %2 ], [ %y.3, %4 ]            ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %in.height.read, !dbg !334 ; [#uses=1 type=i1] [debug line = 52:12]
  br i1 %exitcond, label %6, label %4, !dbg !334  ; [debug line = 52:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !335 ; [debug line = 52:33]
  %tmp.27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str2), !dbg !335 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !336 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str1) nounwind, !dbg !336 ; [debug line = 53:1]
  %tmp. = zext i16 %y to i64, !dbg !331           ; [#uses=6 type=i64] [debug line = 54:2]
  %in.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !331 ; [#uses=1 type=i8*] [debug line = 54:2]
  %R = load i8* %in.channels.ch1.addr, align 1, !dbg !331 ; [#uses=4 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !337), !dbg !331 ; [debug line = 54:2] [debug variable = R]
  %in.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !338 ; [#uses=1 type=i8*] [debug line = 55:10]
  %G = load i8* %in.channels.ch2.addr, align 1, !dbg !338 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !339), !dbg !338 ; [debug line = 55:10] [debug variable = G]
  %in.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !340 ; [#uses=1 type=i8*] [debug line = 56:10]
  %B = load i8* %in.channels.ch3.addr, align 1, !dbg !340 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !341), !dbg !340 ; [debug line = 56:10] [debug variable = B]
  %tmp.40.cast1 = zext i8 %R to i16, !dbg !342    ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.40.cast2 = zext i8 %R to i15, !dbg !342    ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.40.cast3 = zext i8 %R to i9, !dbg !342     ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.40.cast = zext i8 %R to i14, !dbg !342     ; [#uses=1 type=i14] [debug line = 57:10]
  %_shl5 = shl nuw i14 %tmp.40.cast, 6, !dbg !342 ; [#uses=1 type=i14] [debug line = 57:10]
  %_shl5.cast = zext i14 %_shl5 to i15, !dbg !342 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl6 = shl nuw i9 %tmp.40.cast3, 1, !dbg !342 ; [#uses=1 type=i9] [debug line = 57:10]
  %_shl6.cast = zext i9 %_shl6 to i15, !dbg !342  ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.42.cast1 = zext i8 %G to i16, !dbg !342    ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp.42.cast2 = zext i8 %G to i9, !dbg !342     ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.42.cast = zext i8 %G to i15, !dbg !342     ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl4 = shl nuw i15 %tmp.42.cast, 7, !dbg !342 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl4.cast = zext i15 %_shl4 to i16, !dbg !342 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.44.cast1 = zext i8 %B to i13, !dbg !342    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp.44.cast2 = zext i8 %B to i9, !dbg !342     ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.44.cast3 = zext i8 %B to i12, !dbg !342    ; [#uses=1 type=i12] [debug line = 57:10]
  %tmp.44.cast = zext i8 %B to i15, !dbg !342     ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.28 = mul i13 %tmp.44.cast1, 25, !dbg !342  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2 = add i15 %_shl5.cast, %_shl6.cast, !dbg !342 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp2.cast = zext i15 %tmp2 to i16, !dbg !342   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %_shl4.cast, %tmp2.cast, !dbg !342 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp4 = add i9 %tmp.42.cast2, 128, !dbg !342    ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp4.cast = zext i9 %tmp4 to i13, !dbg !342    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3 = add i13 %tmp.28, %tmp4.cast, !dbg !342  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3.cast = zext i13 %tmp3 to i16, !dbg !342   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.29 = add i16 %tmp1, %tmp3.cast, !dbg !342  ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.30 = lshr i16 %tmp.29, 8, !dbg !342        ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.31 = trunc i16 %tmp.30 to i8, !dbg !342    ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 %tmp.31, 16, !dbg !342              ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !343), !dbg !342 ; [debug line = 57:10] [debug variable = Y]
  %tmp.32 = mul i15 %tmp.40.cast2, -38, !dbg !344 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp.51.cast = sext i15 %tmp.32 to i16, !dbg !344 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.33 = mul i16 %tmp.42.cast1, -74, !dbg !344 ; [#uses=1 type=i16] [debug line = 58:10]
  %_shl2 = shl nuw i15 %tmp.44.cast, 7, !dbg !344 ; [#uses=1 type=i15] [debug line = 58:10]
  %_shl2.cast = zext i15 %_shl2 to i16, !dbg !344 ; [#uses=1 type=i16] [debug line = 58:10]
  %_shl3 = shl nuw i12 %tmp.44.cast3, 4, !dbg !344 ; [#uses=2 type=i12] [debug line = 58:10]
  %_shl3.cast9 = zext i12 %_shl3 to i13, !dbg !344 ; [#uses=1 type=i13] [debug line = 58:10]
  %_shl3.cast = zext i12 %_shl3 to i16, !dbg !344 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.34 = sub i16 %_shl2.cast, %_shl3.cast, !dbg !344 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp5 = add i16 %tmp.33, %tmp.51.cast, !dbg !344 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp6 = add i16 %tmp.34, 128, !dbg !344         ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.35 = add i16 %tmp5, %tmp6, !dbg !344       ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.36 = lshr i16 %tmp.35, 8, !dbg !344        ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.37 = trunc i16 %tmp.36 to i8, !dbg !344    ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp.37, -128, !dbg !344            ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !345), !dbg !344 ; [debug line = 58:10] [debug variable = U]
  %tmp.38 = mul i16 %tmp.40.cast1, 122, !dbg !346 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.39 = mul i16 %tmp.42.cast1, -94, !dbg !346 ; [#uses=1 type=i16] [debug line = 59:10]
  %_neg = sub i13 0, %_shl3.cast9                 ; [#uses=1 type=i13]
  %_neg.cast = sext i13 %_neg to i14              ; [#uses=1 type=i14]
  %_shl1 = shl nuw i9 %tmp.44.cast2, 1, !dbg !346 ; [#uses=1 type=i9] [debug line = 59:10]
  %_shl1.cast = zext i9 %_shl1 to i14, !dbg !346  ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp.40 = sub i14 %_neg.cast, %_shl1.cast, !dbg !346 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp7 = add i16 %tmp.39, %tmp.38, !dbg !346     ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp8 = add i14 %tmp.40, 128, !dbg !346         ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp8.cast = sext i14 %tmp8 to i16, !dbg !346   ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.41 = add i16 %tmp7, %tmp8.cast, !dbg !346  ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.42 = lshr i16 %tmp.41, 8, !dbg !346        ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.43 = trunc i16 %tmp.42 to i8, !dbg !346    ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp.43, -128, !dbg !346            ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !347), !dbg !346 ; [debug line = 59:10] [debug variable = V]
  %out.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !348 ; [#uses=1 type=i8*] [debug line = 60:10]
  store i8 %Y, i8* %out.channels.ch1.addr, align 1, !dbg !348 ; [debug line = 60:10]
  %out.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !349 ; [#uses=1 type=i8*] [debug line = 61:10]
  store i8 %U, i8* %out.channels.ch2.addr, align 1, !dbg !349 ; [debug line = 61:10]
  %out.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !350 ; [#uses=1 type=i8*] [debug line = 62:10]
  store i8 %V, i8* %out.channels.ch3.addr, align 1, !dbg !350 ; [debug line = 62:10]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str2, i32 %tmp.27), !dbg !351 ; [#uses=0 type=i32] [debug line = 63:7]
  %y.3 = add i16 %y, 1, !dbg !352                 ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y.3}, i64 0, metadata !353), !dbg !352 ; [debug line = 52:27] [debug variable = y]
  br label %3, !dbg !352                          ; [debug line = 52:27]

; <label>:6                                       ; preds = %3
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.26), !dbg !354 ; [#uses=0 type=i32] [debug line = 64:4]
  %x.3 = add i16 %x, 1, !dbg !355                 ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x.3}, i64 0, metadata !356), !dbg !355 ; [debug line = 49:23] [debug variable = x]
  br label %1, !dbg !355                          ; [debug line = 49:23]

; <label>:8                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !357), !dbg !318 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !358), !dbg !318 ; [debug line = 31:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in.width.read, 0, !dbg !359 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  %mrv.1 = insertvalue { i16, i16 } %mrv, i16 %in.height.read, 1, !dbg !359 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  ret { i16, i16 } %mrv.1, !dbg !359              ; [debug line = 65:1]
}

; [#uses=89]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=13]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!52, !59, !59, !52}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution2/.autopilot/db/yuv_filter.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !39} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !34, metadata !37, metadata !38}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv_filter", metadata !"yuv_filter", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 11} ; [ DW_TAG_subprogram ]
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
!34 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !6, i32 29, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 33} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{null, metadata !9, metadata !9}
!37 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !6, i32 67, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 71} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv_scale", metadata !"yuv_scale", metadata !"", metadata !6, i32 110, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 117} ; [ DW_TAG_subprogram ]
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !41, metadata !48}
!41 = metadata !{i32 786484, i32 0, metadata !34, metadata !"Wrgb", metadata !"Wrgb", metadata !"", metadata !6, i32 37, metadata !42, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !43, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 786454, null, metadata !"rgb2yuv_coef_t", metadata !6, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!45 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{metadata !47, metadata !47}
!47 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!48 = metadata !{i32 786484, i32 0, metadata !37, metadata !"Wyuv", metadata !"Wyuv", metadata !"", metadata !6, i32 77, metadata !49, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !50, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ]
!51 = metadata !{i32 786454, null, metadata !"yuv2rgb_coef_t", metadata !6, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!52 = metadata !{null, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 0}
!54 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"image_t*", metadata !"image_t*", metadata !"yuv_scale_t", metadata !"yuv_scale_t", metadata !"yuv_scale_t"}
!56 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"Y_scale", metadata !"U_scale", metadata !"V_scale"}
!58 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!59 = metadata !{null, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !58}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"image_t*", metadata !"image_t*"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!65 = metadata !{i32 790531, metadata !66, metadata !"in.channels.ch1", null, i32 111, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!66 = metadata !{i32 786689, metadata !38, metadata !"in", metadata !6, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!71 = metadata !{metadata !18}
!72 = metadata !{i32 111, i32 16, metadata !38, null}
!73 = metadata !{i32 790531, metadata !66, metadata !"in.channels.ch2", null, i32 111, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!74 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ]
!75 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!78 = metadata !{metadata !25}
!79 = metadata !{i32 790531, metadata !66, metadata !"in.channels.ch3", null, i32 111, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!80 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ]
!81 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!84 = metadata !{metadata !26}
!85 = metadata !{i32 790533, metadata !66, metadata !"in.width", null, i32 111, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!86 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!87 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!88 = metadata !{metadata !27}
!89 = metadata !{i32 790533, metadata !66, metadata !"in.height", null, i32 111, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!90 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ]
!91 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!92 = metadata !{metadata !30}
!93 = metadata !{i32 790531, metadata !94, metadata !"out.channels.ch1", null, i32 112, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!94 = metadata !{i32 786689, metadata !38, metadata !"out", metadata !6, i32 33554544, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 112, i32 16, metadata !38, null}
!96 = metadata !{i32 790531, metadata !94, metadata !"out.channels.ch2", null, i32 112, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!97 = metadata !{i32 790531, metadata !94, metadata !"out.channels.ch3", null, i32 112, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!98 = metadata !{i32 786689, metadata !38, metadata !"Y_scale", metadata !6, i32 50331761, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 113, i32 19, metadata !38, null}
!100 = metadata !{i32 786689, metadata !38, metadata !"U_scale", metadata !6, i32 67108978, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 114, i32 19, metadata !38, null}
!102 = metadata !{i32 786689, metadata !38, metadata !"V_scale", metadata !6, i32 83886195, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 115, i32 19, metadata !38, null}
!104 = metadata !{i32 786688, metadata !105, metadata !"width", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 786443, metadata !38, i32 117, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 123, i32 4, metadata !105, null}
!107 = metadata !{i32 786688, metadata !105, metadata !"height", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 124, i32 4, metadata !105, null}
!109 = metadata !{i32 138, i32 10, metadata !110, null}
!110 = metadata !{i32 786443, metadata !111, i32 132, i32 32, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 786443, metadata !112, i32 132, i32 7, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786443, metadata !113, i32 129, i32 28, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786443, metadata !105, i32 129, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 139, i32 10, metadata !110, null}
!115 = metadata !{i32 129, i32 9, metadata !113, null}
!116 = metadata !{i32 129, i32 29, metadata !112, null}
!117 = metadata !{i32 130, i32 1, metadata !112, null}
!118 = metadata !{i32 134, i32 2, metadata !110, null}
!119 = metadata !{i32 132, i32 12, metadata !111, null}
!120 = metadata !{i32 132, i32 33, metadata !110, null}
!121 = metadata !{i32 133, i32 1, metadata !110, null}
!122 = metadata !{i32 786688, metadata !105, metadata !"Y", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 135, i32 10, metadata !110, null}
!124 = metadata !{i32 786688, metadata !105, metadata !"U", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 136, i32 10, metadata !110, null}
!126 = metadata !{i32 786688, metadata !105, metadata !"V", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 137, i32 10, metadata !110, null}
!128 = metadata !{i32 786688, metadata !105, metadata !"Yn", metadata !6, i32 121, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!130 = metadata !{i32 786688, metadata !105, metadata !"Un", metadata !6, i32 121, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 786688, metadata !105, metadata !"Vn", metadata !6, i32 121, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 140, i32 10, metadata !110, null}
!133 = metadata !{i32 141, i32 10, metadata !110, null}
!134 = metadata !{i32 142, i32 10, metadata !110, null}
!135 = metadata !{i32 143, i32 7, metadata !110, null}
!136 = metadata !{i32 132, i32 27, metadata !111, null}
!137 = metadata !{i32 786688, metadata !105, metadata !"y", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 144, i32 4, metadata !112, null}
!139 = metadata !{i32 129, i32 23, metadata !113, null}
!140 = metadata !{i32 786688, metadata !105, metadata !"x", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 790535, metadata !94, metadata !"out.width", null, i32 112, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!142 = metadata !{i32 790535, metadata !94, metadata !"out.height", null, i32 112, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!143 = metadata !{i32 145, i32 1, metadata !105, null}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 7, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"in.channels.ch1", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!148 = metadata !{metadata !149, metadata !150}
!149 = metadata !{i32 0, i32 1919, i32 1}
!150 = metadata !{i32 0, i32 1279, i32 1}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 7, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"in.channels.ch2", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 7, metadata !157}
!157 = metadata !{metadata !158}
!158 = metadata !{metadata !"in.channels.ch3", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 0, i32 15, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"in.width", metadata !163, metadata !"unsigned short", i32 0, i32 15}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 0, i32 1}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 0, i32 15, metadata !167}
!167 = metadata !{metadata !168}
!168 = metadata !{metadata !"in.height", metadata !163, metadata !"unsigned short", i32 0, i32 15}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 0, i32 7, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"out.channels.ch1", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 0, i32 7, metadata !175}
!175 = metadata !{metadata !176}
!176 = metadata !{metadata !"out.channels.ch2", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!177 = metadata !{metadata !178}
!178 = metadata !{i32 0, i32 7, metadata !179}
!179 = metadata !{metadata !180}
!180 = metadata !{metadata !"out.channels.ch3", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!181 = metadata !{metadata !182}
!182 = metadata !{i32 0, i32 15, metadata !183}
!183 = metadata !{metadata !184}
!184 = metadata !{metadata !"out.width", metadata !163, metadata !"unsigned short", i32 0, i32 15}
!185 = metadata !{metadata !186}
!186 = metadata !{i32 0, i32 15, metadata !187}
!187 = metadata !{metadata !188}
!188 = metadata !{metadata !"out.height", metadata !163, metadata !"unsigned short", i32 0, i32 15}
!189 = metadata !{metadata !190}
!190 = metadata !{i32 0, i32 7, metadata !191}
!191 = metadata !{metadata !192}
!192 = metadata !{metadata !"Y_scale", metadata !193, metadata !"unsigned char", i32 0, i32 7}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 0, i32 0, i32 0}
!195 = metadata !{metadata !196}
!196 = metadata !{i32 0, i32 7, metadata !197}
!197 = metadata !{metadata !198}
!198 = metadata !{metadata !"U_scale", metadata !193, metadata !"unsigned char", i32 0, i32 7}
!199 = metadata !{metadata !200}
!200 = metadata !{i32 0, i32 7, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"V_scale", metadata !193, metadata !"unsigned char", i32 0, i32 7}
!203 = metadata !{i32 790531, metadata !204, metadata !"in.channels.ch1", null, i32 5, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!204 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 5, i32 16, metadata !5, null}
!206 = metadata !{i32 790531, metadata !204, metadata !"in.channels.ch2", null, i32 5, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!207 = metadata !{i32 790531, metadata !204, metadata !"in.channels.ch3", null, i32 5, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!208 = metadata !{i32 790531, metadata !204, metadata !"in.width", null, i32 5, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!209 = metadata !{i32 790531, metadata !204, metadata !"in.height", null, i32 5, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!210 = metadata !{i32 790531, metadata !211, metadata !"out.channels.ch1", null, i32 6, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!211 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 6, i32 16, metadata !5, null}
!213 = metadata !{i32 790531, metadata !211, metadata !"out.channels.ch2", null, i32 6, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!214 = metadata !{i32 790531, metadata !211, metadata !"out.channels.ch3", null, i32 6, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!215 = metadata !{i32 790531, metadata !211, metadata !"out.width", null, i32 6, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!216 = metadata !{i32 790531, metadata !211, metadata !"out.height", null, i32 6, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!217 = metadata !{i32 786689, metadata !5, metadata !"Y_scale", metadata !6, i32 50331655, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 7, i32 19, metadata !5, null}
!219 = metadata !{i32 786689, metadata !5, metadata !"U_scale", metadata !6, i32 67108872, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!220 = metadata !{i32 8, i32 19, metadata !5, null}
!221 = metadata !{i32 786689, metadata !5, metadata !"V_scale", metadata !6, i32 83886089, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!222 = metadata !{i32 9, i32 19, metadata !5, null}
!223 = metadata !{i32 790529, metadata !224, metadata !"_yuv.channels.ch1", null, i32 17, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!224 = metadata !{i32 786688, metadata !225, metadata !"_yuv", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!225 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 17, i32 12, metadata !225, null}
!227 = metadata !{i32 790529, metadata !224, metadata !"_yuv.channels.ch2", null, i32 17, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!228 = metadata !{i32 790529, metadata !224, metadata !"_yuv.channels.ch3", null, i32 17, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!229 = metadata !{i32 790529, metadata !230, metadata !"_scale.channels.ch1", null, i32 18, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!230 = metadata !{i32 786688, metadata !225, metadata !"_scale", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 18, i32 12, metadata !225, null}
!232 = metadata !{i32 790529, metadata !230, metadata !"_scale.channels.ch2", null, i32 18, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!233 = metadata !{i32 790529, metadata !230, metadata !"_scale.channels.ch3", null, i32 18, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!234 = metadata !{i32 790529, metadata !235, metadata !"yuv.channels.ch1", null, i32 19, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!235 = metadata !{i32 786688, metadata !225, metadata !"yuv", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 19, i32 24, metadata !225, null}
!237 = metadata !{i32 790529, metadata !235, metadata !"yuv.channels.ch2", null, i32 19, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!238 = metadata !{i32 790529, metadata !235, metadata !"yuv.channels.ch3", null, i32 19, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!239 = metadata !{i32 790529, metadata !240, metadata !"scale.channels.ch1", null, i32 20, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!240 = metadata !{i32 786688, metadata !225, metadata !"scale", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 20, i32 28, metadata !225, null}
!242 = metadata !{i32 790529, metadata !240, metadata !"scale.channels.ch2", null, i32 20, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!243 = metadata !{i32 790529, metadata !240, metadata !"scale.channels.ch3", null, i32 20, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!244 = metadata !{i32 23, i32 4, metadata !225, null}
!245 = metadata !{i32 790529, metadata !224, metadata !"_yuv.width", null, i32 17, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!246 = metadata !{i32 790529, metadata !224, metadata !"_yuv.height", null, i32 17, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!247 = metadata !{i32 24, i32 4, metadata !225, null}
!248 = metadata !{i32 790529, metadata !230, metadata !"_scale.width", null, i32 18, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!249 = metadata !{i32 790529, metadata !230, metadata !"_scale.height", null, i32 18, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!250 = metadata !{i32 25, i32 4, metadata !225, null}
!251 = metadata !{i32 26, i32 1, metadata !225, null}
!252 = metadata !{i32 790531, metadata !253, metadata !"in.channels.ch1", null, i32 68, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!253 = metadata !{i32 786689, metadata !37, metadata !"in", metadata !6, i32 16777284, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 68, i32 16, metadata !37, null}
!255 = metadata !{i32 790531, metadata !253, metadata !"in.channels.ch2", null, i32 68, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!256 = metadata !{i32 790531, metadata !253, metadata !"in.channels.ch3", null, i32 68, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!257 = metadata !{i32 790533, metadata !253, metadata !"in.width", null, i32 68, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!258 = metadata !{i32 790533, metadata !253, metadata !"in.height", null, i32 68, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!259 = metadata !{i32 790531, metadata !260, metadata !"out.channels.ch1", null, i32 69, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!260 = metadata !{i32 786689, metadata !37, metadata !"out", metadata !6, i32 33554501, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!261 = metadata !{i32 69, i32 16, metadata !37, null}
!262 = metadata !{i32 790531, metadata !260, metadata !"out.channels.ch2", null, i32 69, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!263 = metadata !{i32 790531, metadata !260, metadata !"out.channels.ch3", null, i32 69, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!264 = metadata !{i32 786688, metadata !265, metadata !"width", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 786443, metadata !37, i32 71, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 83, i32 4, metadata !265, null}
!267 = metadata !{i32 786688, metadata !265, metadata !"height", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 84, i32 4, metadata !265, null}
!269 = metadata !{i32 89, i32 9, metadata !270, null}
!270 = metadata !{i32 786443, metadata !265, i32 89, i32 4, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 89, i32 29, metadata !272, null}
!272 = metadata !{i32 786443, metadata !270, i32 89, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 90, i32 1, metadata !272, null}
!274 = metadata !{i32 94, i32 2, metadata !275, null}
!275 = metadata !{i32 786443, metadata !276, i32 92, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 786443, metadata !272, i32 92, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 92, i32 12, metadata !276, null}
!278 = metadata !{i32 92, i32 33, metadata !275, null}
!279 = metadata !{i32 93, i32 1, metadata !275, null}
!280 = metadata !{i32 786688, metadata !265, metadata !"Y", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 95, i32 10, metadata !275, null}
!282 = metadata !{i32 786688, metadata !265, metadata !"U", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!283 = metadata !{i32 96, i32 10, metadata !275, null}
!284 = metadata !{i32 786688, metadata !265, metadata !"V", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 97, i32 10, metadata !275, null}
!286 = metadata !{i32 786688, metadata !265, metadata !"C", metadata !6, i32 76, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!287 = metadata !{i32 98, i32 10, metadata !275, null}
!288 = metadata !{i32 786688, metadata !265, metadata !"D", metadata !6, i32 76, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!289 = metadata !{i32 99, i32 10, metadata !275, null}
!290 = metadata !{i32 786688, metadata !265, metadata !"E", metadata !6, i32 76, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!291 = metadata !{i32 100, i32 10, metadata !275, null}
!292 = metadata !{i32 101, i32 10, metadata !275, null}
!293 = metadata !{i32 786688, metadata !265, metadata !"R", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 786688, metadata !265, metadata !"G", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!295 = metadata !{i32 102, i32 10, metadata !275, null}
!296 = metadata !{i32 786688, metadata !265, metadata !"B", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!297 = metadata !{i32 103, i32 10, metadata !275, null}
!298 = metadata !{i32 104, i32 10, metadata !275, null}
!299 = metadata !{i32 105, i32 10, metadata !275, null}
!300 = metadata !{i32 106, i32 7, metadata !275, null}
!301 = metadata !{i32 92, i32 27, metadata !276, null}
!302 = metadata !{i32 786688, metadata !265, metadata !"y", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 107, i32 4, metadata !272, null}
!304 = metadata !{i32 89, i32 23, metadata !270, null}
!305 = metadata !{i32 786688, metadata !265, metadata !"x", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!306 = metadata !{i32 790535, metadata !260, metadata !"out.width", null, i32 69, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!307 = metadata !{i32 790535, metadata !260, metadata !"out.height", null, i32 69, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!308 = metadata !{i32 108, i32 1, metadata !265, null}
!309 = metadata !{i32 790531, metadata !310, metadata !"in.channels.ch1", null, i32 30, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!310 = metadata !{i32 786689, metadata !34, metadata !"in", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!311 = metadata !{i32 30, i32 16, metadata !34, null}
!312 = metadata !{i32 790531, metadata !310, metadata !"in.channels.ch2", null, i32 30, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!313 = metadata !{i32 790531, metadata !310, metadata !"in.channels.ch3", null, i32 30, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!314 = metadata !{i32 790533, metadata !310, metadata !"in.width", null, i32 30, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!315 = metadata !{i32 790533, metadata !310, metadata !"in.height", null, i32 30, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!316 = metadata !{i32 790531, metadata !317, metadata !"out.channels.ch1", null, i32 31, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!317 = metadata !{i32 786689, metadata !34, metadata !"out", metadata !6, i32 33554463, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!318 = metadata !{i32 31, i32 16, metadata !34, null}
!319 = metadata !{i32 790531, metadata !317, metadata !"out.channels.ch2", null, i32 31, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!320 = metadata !{i32 790531, metadata !317, metadata !"out.channels.ch3", null, i32 31, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!321 = metadata !{i32 786688, metadata !322, metadata !"width", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!322 = metadata !{i32 786443, metadata !34, i32 33, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!323 = metadata !{i32 43, i32 4, metadata !322, null}
!324 = metadata !{i32 786688, metadata !322, metadata !"height", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!325 = metadata !{i32 44, i32 4, metadata !322, null}
!326 = metadata !{i32 49, i32 9, metadata !327, null}
!327 = metadata !{i32 786443, metadata !322, i32 49, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!328 = metadata !{i32 49, i32 29, metadata !329, null}
!329 = metadata !{i32 786443, metadata !327, i32 49, i32 28, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!330 = metadata !{i32 50, i32 1, metadata !329, null}
!331 = metadata !{i32 54, i32 2, metadata !332, null}
!332 = metadata !{i32 786443, metadata !333, i32 52, i32 32, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!333 = metadata !{i32 786443, metadata !329, i32 52, i32 7, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!334 = metadata !{i32 52, i32 12, metadata !333, null}
!335 = metadata !{i32 52, i32 33, metadata !332, null}
!336 = metadata !{i32 53, i32 1, metadata !332, null}
!337 = metadata !{i32 786688, metadata !322, metadata !"R", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!338 = metadata !{i32 55, i32 10, metadata !332, null}
!339 = metadata !{i32 786688, metadata !322, metadata !"G", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!340 = metadata !{i32 56, i32 10, metadata !332, null}
!341 = metadata !{i32 786688, metadata !322, metadata !"B", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!342 = metadata !{i32 57, i32 10, metadata !332, null}
!343 = metadata !{i32 786688, metadata !322, metadata !"Y", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!344 = metadata !{i32 58, i32 10, metadata !332, null}
!345 = metadata !{i32 786688, metadata !322, metadata !"U", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!346 = metadata !{i32 59, i32 10, metadata !332, null}
!347 = metadata !{i32 786688, metadata !322, metadata !"V", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!348 = metadata !{i32 60, i32 10, metadata !332, null}
!349 = metadata !{i32 61, i32 10, metadata !332, null}
!350 = metadata !{i32 62, i32 10, metadata !332, null}
!351 = metadata !{i32 63, i32 7, metadata !332, null}
!352 = metadata !{i32 52, i32 27, metadata !333, null}
!353 = metadata !{i32 786688, metadata !322, metadata !"y", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!354 = metadata !{i32 64, i32 4, metadata !329, null}
!355 = metadata !{i32 49, i32 23, metadata !327, null}
!356 = metadata !{i32 786688, metadata !322, metadata !"x", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!357 = metadata !{i32 790535, metadata !317, metadata !"out.width", null, i32 31, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!358 = metadata !{i32 790535, metadata !317, metadata !"out.height", null, i32 31, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!359 = metadata !{i32 65, i32 1, metadata !322, null}
