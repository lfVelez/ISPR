; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_filter.str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@.str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_X\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=0]
define void @yuv_filter([1920 x [1280 x i8]]* %in.channels.ch1, [1920 x [1280 x i8]]* %in.channels.ch2, [1920 x [1280 x i8]]* %in.channels.ch3, i16* %in.width, i16* %in.height, [1920 x [1280 x i8]]* %out.channels.ch1, [1920 x [1280 x i8]]* %out.channels.ch2, [1920 x [1280 x i8]]* %out.channels.ch3, i16* %out.width, i16* %out.height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch1), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch2), !map !72
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch3), !map !76
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in.width), !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in.height), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch1), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch2), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch3), !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out.width), !map !102
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out.height), !map !106
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !120
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter.str) nounwind
  %_yuv.channels.ch1 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_yuv.channels.ch2 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_yuv.channels.ch3 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_scale.channels.ch1 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_scale.channels.ch2 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  %_scale.channels.ch3 = alloca [1920 x [1280 x i8]], align 1 ; [#uses=2 type=[1920 x [1280 x i8]]*]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !124), !dbg !131 ; [debug line = 5:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !132), !dbg !131 ; [debug line = 5:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !138), !dbg !131 ; [debug line = 5:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !144), !dbg !131 ; [debug line = 5:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !148), !dbg !131 ; [debug line = 5:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !152), !dbg !154 ; [debug line = 6:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !155), !dbg !154 ; [debug line = 6:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !156), !dbg !154 ; [debug line = 6:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !157), !dbg !154 ; [debug line = 6:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !158), !dbg !154 ; [debug line = 6:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !159), !dbg !160 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !161), !dbg !162 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !163), !dbg !164 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch1}, metadata !165), !dbg !168 ; [debug line = 17:12] [debug variable = _yuv.channels.ch1]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch2}, metadata !169), !dbg !168 ; [debug line = 17:12] [debug variable = _yuv.channels.ch2]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch3}, metadata !170), !dbg !168 ; [debug line = 17:12] [debug variable = _yuv.channels.ch3]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch1}, metadata !171), !dbg !173 ; [debug line = 18:12] [debug variable = _scale.channels.ch1]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch2}, metadata !174), !dbg !173 ; [debug line = 18:12] [debug variable = _scale.channels.ch2]
  call void @llvm.dbg.declare(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch3}, metadata !175), !dbg !173 ; [debug line = 18:12] [debug variable = _scale.channels.ch3]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch1}, i64 0, metadata !176), !dbg !178 ; [debug line = 19:24] [debug variable = yuv.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch2}, i64 0, metadata !179), !dbg !178 ; [debug line = 19:24] [debug variable = yuv.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch3}, i64 0, metadata !180), !dbg !178 ; [debug line = 19:24] [debug variable = yuv.channels.ch3]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch1}, i64 0, metadata !181), !dbg !183 ; [debug line = 20:28] [debug variable = scale.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch2}, i64 0, metadata !184), !dbg !183 ; [debug line = 20:28] [debug variable = scale.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch3}, i64 0, metadata !185), !dbg !183 ; [debug line = 20:28] [debug variable = scale.channels.ch3]
  %in.width.load = load i16* %in.width, align 2, !dbg !186 ; [#uses=1 type=i16] [debug line = 23:4]
  %in.height.load = load i16* %in.height, align 2, !dbg !186 ; [#uses=1 type=i16] [debug line = 23:4]
  %call.ret1 = call fastcc { i16, i16 } @rgb2yuv([1920 x [1280 x i8]]* %in.channels.ch1, [1920 x [1280 x i8]]* %in.channels.ch2, [1920 x [1280 x i8]]* %in.channels.ch3, i16 %in.width.load, i16 %in.height.load, [1920 x [1280 x i8]]* %_yuv.channels.ch1, [1920 x [1280 x i8]]* %_yuv.channels.ch2, [1920 x [1280 x i8]]* %_yuv.channels.ch3), !dbg !186 ; [#uses=2 type={ i16, i16 }] [debug line = 23:4]
  %_yuv.width = extractvalue { i16, i16 } %call.ret1, 0, !dbg !186 ; [#uses=2 type=i16] [debug line = 23:4]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.width}, i64 0, metadata !187), !dbg !186 ; [debug line = 23:4] [debug variable = _yuv.width]
  %_yuv.height = extractvalue { i16, i16 } %call.ret1, 1, !dbg !186 ; [#uses=2 type=i16] [debug line = 23:4]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.height}, i64 0, metadata !188), !dbg !186 ; [debug line = 23:4] [debug variable = _yuv.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch1}, i64 0, metadata !189), !dbg !192 ; [debug line = 111:16@24:4] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch2}, i64 0, metadata !193), !dbg !192 ; [debug line = 111:16@24:4] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_yuv.channels.ch3}, i64 0, metadata !194), !dbg !192 ; [debug line = 111:16@24:4] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.width}, i64 0, metadata !195), !dbg !192 ; [debug line = 111:16@24:4] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.height}, i64 0, metadata !196), !dbg !192 ; [debug line = 111:16@24:4] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch1}, i64 0, metadata !197), !dbg !199 ; [debug line = 112:16@24:4] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch2}, i64 0, metadata !200), !dbg !199 ; [debug line = 112:16@24:4] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %_scale.channels.ch3}, i64 0, metadata !201), !dbg !199 ; [debug line = 112:16@24:4] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !202), !dbg !203 ; [debug line = 113:19@24:4] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !204), !dbg !205 ; [debug line = 114:19@24:4] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !206), !dbg !207 ; [debug line = 115:19@24:4] [debug variable = V_scale]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.width}, i64 0, metadata !208), !dbg !210 ; [debug line = 123:4@24:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.height}, i64 0, metadata !211), !dbg !212 ; [debug line = 124:4@24:4] [debug variable = height]
  %tmp.i.cast = zext i8 %Y_scale to i15, !dbg !213 ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  %tmp.1.i.cast = zext i8 %U_scale to i15, !dbg !218 ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  %tmp.2.i.cast = zext i8 %V_scale to i15, !dbg !219 ; [#uses=1 type=i15] [debug line = 129:9@24:4]
  br label %1, !dbg !219                          ; [debug line = 129:9@24:4]

; <label>:1                                       ; preds = %6, %0
  %x.i = phi i16 [ 0, %0 ], [ %x, %6 ]            ; [#uses=3 type=i16]
  %exitcond1.i = icmp eq i16 %x.i, %_yuv.width, !dbg !219 ; [#uses=1 type=i1] [debug line = 129:9@24:4]
  br i1 %exitcond1.i, label %yuv_scale.exit, label %2, !dbg !219 ; [debug line = 129:9@24:4]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str5) nounwind, !dbg !220 ; [debug line = 129:29@24:4]
  %tmp.13.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str5), !dbg !220 ; [#uses=1 type=i32] [debug line = 129:29@24:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str1) nounwind, !dbg !221 ; [debug line = 130:1@24:4]
  %tmp.3.i = zext i16 %x.i to i64, !dbg !222      ; [#uses=6 type=i64] [debug line = 134:2@24:4]
  br label %3, !dbg !223                          ; [debug line = 132:12@24:4]

; <label>:3                                       ; preds = %4, %2
  %y.i = phi i16 [ 0, %2 ], [ %y, %4 ]            ; [#uses=3 type=i16]
  %exitcond.i = icmp eq i16 %y.i, %_yuv.height, !dbg !223 ; [#uses=1 type=i1] [debug line = 132:12@24:4]
  br i1 %exitcond.i, label %6, label %4, !dbg !223 ; [debug line = 132:12@24:4]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str6) nounwind, !dbg !224 ; [debug line = 132:33@24:4]
  %tmp.14.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str6), !dbg !224 ; [#uses=1 type=i32] [debug line = 132:33@24:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str1) nounwind, !dbg !225 ; [debug line = 133:1@24:4]
  %tmp.5.i = zext i16 %y.i to i64, !dbg !222      ; [#uses=6 type=i64] [debug line = 134:2@24:4]
  %in.channels.ch1.assign.addr = getelementptr [1920 x [1280 x i8]]* %_yuv.channels.ch1, i64 0, i64 %tmp.3.i, i64 %tmp.5.i, !dbg !222 ; [#uses=1 type=i8*] [debug line = 134:2@24:4]
  %Y = load i8* %in.channels.ch1.assign.addr, align 1, !dbg !222 ; [#uses=1 type=i8] [debug line = 134:2@24:4]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !226), !dbg !222 ; [debug line = 134:2@24:4] [debug variable = Y]
  %in.channels.ch2.assign.addr = getelementptr [1920 x [1280 x i8]]* %_yuv.channels.ch2, i64 0, i64 %tmp.3.i, i64 %tmp.5.i, !dbg !227 ; [#uses=1 type=i8*] [debug line = 135:10@24:4]
  %U = load i8* %in.channels.ch2.assign.addr, align 1, !dbg !227 ; [#uses=1 type=i8] [debug line = 135:10@24:4]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !228), !dbg !227 ; [debug line = 135:10@24:4] [debug variable = U]
  %in.channels.ch3.assign.addr = getelementptr [1920 x [1280 x i8]]* %_yuv.channels.ch3, i64 0, i64 %tmp.3.i, i64 %tmp.5.i, !dbg !229 ; [#uses=1 type=i8*] [debug line = 136:10@24:4]
  %V = load i8* %in.channels.ch3.assign.addr, align 1, !dbg !229 ; [#uses=1 type=i8] [debug line = 136:10@24:4]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !230), !dbg !229 ; [debug line = 136:10@24:4] [debug variable = V]
  %tmp.6.i.cast = zext i8 %Y to i15, !dbg !231    ; [#uses=1 type=i15] [debug line = 137:10@24:4]
  %tmp.7.i = mul i15 %tmp.i.cast, %tmp.6.i.cast, !dbg !231 ; [#uses=1 type=i15] [debug line = 137:10@24:4]
  %Yn = lshr i15 %tmp.7.i, 7, !dbg !231           ; [#uses=1 type=i15] [debug line = 137:10@24:4]
  call void @llvm.dbg.value(metadata !{i15 %Yn}, i64 0, metadata !232), !dbg !231 ; [debug line = 137:10@24:4] [debug variable = Yn]
  %tmp.9.i.cast = zext i8 %U to i15, !dbg !213    ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  %tmp..i = mul i15 %tmp.1.i.cast, %tmp.9.i.cast, !dbg !213 ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  %Un = lshr i15 %tmp..i, 7, !dbg !213            ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  call void @llvm.dbg.value(metadata !{i15 %Un}, i64 0, metadata !234), !dbg !213 ; [debug line = 138:10@24:4] [debug variable = Un]
  %tmp.4.i.cast = zext i8 %V to i15, !dbg !218    ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  %tmp.8.i = mul i15 %tmp.2.i.cast, %tmp.4.i.cast, !dbg !218 ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  %Vn = lshr i15 %tmp.8.i, 7, !dbg !218           ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  call void @llvm.dbg.value(metadata !{i15 %Vn}, i64 0, metadata !235), !dbg !218 ; [debug line = 139:10@24:4] [debug variable = Vn]
  %tmp.10.i = trunc i15 %Yn to i8, !dbg !236      ; [#uses=1 type=i8] [debug line = 140:10@24:4]
  %out.channels.ch1.assign.addr = getelementptr [1920 x [1280 x i8]]* %_scale.channels.ch1, i64 0, i64 %tmp.3.i, i64 %tmp.5.i, !dbg !236 ; [#uses=1 type=i8*] [debug line = 140:10@24:4]
  store i8 %tmp.10.i, i8* %out.channels.ch1.assign.addr, align 1, !dbg !236 ; [debug line = 140:10@24:4]
  %tmp.11.i = trunc i15 %Un to i8, !dbg !237      ; [#uses=1 type=i8] [debug line = 141:10@24:4]
  %out.channels.ch2.assign.addr = getelementptr [1920 x [1280 x i8]]* %_scale.channels.ch2, i64 0, i64 %tmp.3.i, i64 %tmp.5.i, !dbg !237 ; [#uses=1 type=i8*] [debug line = 141:10@24:4]
  store i8 %tmp.11.i, i8* %out.channels.ch2.assign.addr, align 1, !dbg !237 ; [debug line = 141:10@24:4]
  %tmp.12.i = trunc i15 %Vn to i8, !dbg !238      ; [#uses=1 type=i8] [debug line = 142:10@24:4]
  %out.channels.ch3.assign.addr = getelementptr [1920 x [1280 x i8]]* %_scale.channels.ch3, i64 0, i64 %tmp.3.i, i64 %tmp.5.i, !dbg !238 ; [#uses=1 type=i8*] [debug line = 142:10@24:4]
  store i8 %tmp.12.i, i8* %out.channels.ch3.assign.addr, align 1, !dbg !238 ; [debug line = 142:10@24:4]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str6, i32 %tmp.14.i), !dbg !239 ; [#uses=0 type=i32] [debug line = 143:7@24:4]
  %y = add i16 %y.i, 1, !dbg !240                 ; [#uses=1 type=i16] [debug line = 132:27@24:4]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !241), !dbg !240 ; [debug line = 132:27@24:4] [debug variable = y]
  br label %3, !dbg !240                          ; [debug line = 132:27@24:4]

; <label>:6                                       ; preds = %3
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str5, i32 %tmp.13.i), !dbg !242 ; [#uses=0 type=i32] [debug line = 144:4@24:4]
  %x = add i16 %x.i, 1, !dbg !243                 ; [#uses=1 type=i16] [debug line = 129:23@24:4]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !244), !dbg !243 ; [debug line = 129:23@24:4] [debug variable = x]
  br label %1, !dbg !243                          ; [debug line = 129:23@24:4]

yuv_scale.exit:                                   ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %_yuv.width}, i64 0, metadata !245), !dbg !199 ; [debug line = 112:16@24:4] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.height}, i64 0, metadata !246), !dbg !199 ; [debug line = 112:16@24:4] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.width}, i64 0, metadata !247), !dbg !191 ; [debug line = 24:4] [debug variable = _scale.width]
  call void @llvm.dbg.value(metadata !{i16 %_yuv.height}, i64 0, metadata !248), !dbg !191 ; [debug line = 24:4] [debug variable = _scale.height]
  %call.ret2 = call fastcc { i16, i16 } @yuv2rgb([1920 x [1280 x i8]]* %_scale.channels.ch1, [1920 x [1280 x i8]]* %_scale.channels.ch2, [1920 x [1280 x i8]]* %_scale.channels.ch3, i16 %_yuv.width, i16 %_yuv.height, [1920 x [1280 x i8]]* %out.channels.ch1, [1920 x [1280 x i8]]* %out.channels.ch2, [1920 x [1280 x i8]]* %out.channels.ch3), !dbg !249 ; [#uses=2 type={ i16, i16 }] [debug line = 25:4]
  %out.width.ret = extractvalue { i16, i16 } %call.ret2, 0, !dbg !249 ; [#uses=1 type=i16] [debug line = 25:4]
  store i16 %out.width.ret, i16* %out.width, align 2, !dbg !249 ; [debug line = 25:4]
  %out.height.ret = extractvalue { i16, i16 } %call.ret2, 1, !dbg !249 ; [#uses=1 type=i16] [debug line = 25:4]
  store i16 %out.height.ret, i16* %out.height, align 2, !dbg !249 ; [debug line = 25:4]
  ret void, !dbg !250                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @yuv2rgb([1920 x [1280 x i8]]* nocapture %in.channels.ch1, [1920 x [1280 x i8]]* nocapture %in.channels.ch2, [1920 x [1280 x i8]]* nocapture %in.channels.ch3, i16 %in.width.read, i16 %in.height.read, [1920 x [1280 x i8]]* nocapture %out.channels.ch1, [1920 x [1280 x i8]]* nocapture %out.channels.ch2, [1920 x [1280 x i8]]* nocapture %out.channels.ch3) {
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !251), !dbg !253 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !254), !dbg !253 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !255), !dbg !253 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !256), !dbg !253 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !257), !dbg !253 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !258), !dbg !260 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !261), !dbg !260 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !262), !dbg !260 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !263), !dbg !265 ; [debug line = 83:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !266), !dbg !267 ; [debug line = 84:4] [debug variable = height]
  br label %1, !dbg !268                          ; [debug line = 89:9]

; <label>:1                                       ; preds = %5, %0
  %x = phi i16 [ 0, %0 ], [ %x.1, %5 ]            ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %in.width.read, !dbg !268 ; [#uses=1 type=i1] [debug line = 89:9]
  br i1 %exitcond1, label %7, label %2, !dbg !268 ; [debug line = 89:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str3) nounwind, !dbg !270 ; [debug line = 89:29]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str3), !dbg !270 ; [#uses=1 type=i32] [debug line = 89:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str1) nounwind, !dbg !272 ; [debug line = 90:1]
  %tmp = zext i16 %x to i64, !dbg !273            ; [#uses=6 type=i64] [debug line = 94:2]
  br label %3, !dbg !276                          ; [debug line = 92:12]

; <label>:3                                       ; preds = %_ifconv, %2
  %y = phi i16 [ 0, %2 ], [ %y.1, %_ifconv ]      ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %in.height.read, !dbg !276 ; [#uses=1 type=i1] [debug line = 92:12]
  br i1 %exitcond, label %5, label %_ifconv, !dbg !276 ; [debug line = 92:12]

_ifconv:                                          ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str4) nounwind, !dbg !277 ; [debug line = 92:33]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str4), !dbg !277 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str1) nounwind, !dbg !278 ; [debug line = 93:1]
  %tmp. = zext i16 %y to i64, !dbg !273           ; [#uses=6 type=i64] [debug line = 94:2]
  %in.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !273 ; [#uses=1 type=i8*] [debug line = 94:2]
  %Y = load i8* %in.channels.ch1.addr, align 1, !dbg !273 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !279), !dbg !273 ; [debug line = 94:2] [debug variable = Y]
  %in.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !280 ; [#uses=1 type=i8*] [debug line = 95:10]
  %U = load i8* %in.channels.ch2.addr, align 1, !dbg !280 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !281), !dbg !280 ; [debug line = 95:10] [debug variable = U]
  %in.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !282 ; [#uses=1 type=i8*] [debug line = 96:10]
  %V = load i8* %in.channels.ch3.addr, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !283), !dbg !282 ; [debug line = 96:10] [debug variable = V]
  %tmp.3.cast = zext i8 %Y to i9, !dbg !284       ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 %tmp.3.cast, -16, !dbg !284         ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !285), !dbg !284 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !286                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !287), !dbg !286 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !288                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !289), !dbg !288 ; [debug line = 99:10] [debug variable = E]
  %tmp.6.cast = sext i9 %C to i18, !dbg !290      ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.7 = mul i18 %tmp.6.cast, 298, !dbg !290    ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.8.cast5 = sext i8 %E to i17, !dbg !291     ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.8.cast = sext i8 %E to i18, !dbg !290      ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.9 = mul i18 %tmp.8.cast, 409, !dbg !290    ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.3 = add i18 %tmp.7, 128, !dbg !290         ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp.4 = add i18 %tmp.9, %tmp.3, !dbg !290      ; [#uses=2 type=i18] [debug line = 100:10]
  %tmp.5 = lshr i18 %tmp.4, 8, !dbg !290          ; [#uses=2 type=i18] [debug line = 100:10]
  %tmp.6 = trunc i18 %tmp.5 to i10, !dbg !290     ; [#uses=1 type=i10] [debug line = 100:10]
  %tmp.8 = icmp sgt i10 %tmp.6, 255, !dbg !290    ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp.10 = icmp slt i18 %tmp.4, 0, !dbg !290     ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = trunc i18 %tmp.5 to i8, !dbg !290     ; [#uses=1 type=i8] [debug line = 100:10]
  %.phitmp = sext i1 %tmp.8 to i8, !dbg !290      ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp.11 = or i1 %tmp.8, %tmp.10, !dbg !290      ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp.11, i8 %.phitmp, i8 %phitmp, !dbg !290 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !292), !dbg !290 ; [debug line = 100:10] [debug variable = R]
  %tmp.16.cast4 = sext i8 %D to i17, !dbg !291    ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.16.cast = zext i8 %D to i10, !dbg !291     ; [#uses=1 type=i10] [debug line = 101:10]
  %tmp.16.cast6 = zext i8 %D to i17, !dbg !291    ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.12 = mul i17 %tmp.16.cast4, -100, !dbg !291 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.13 = mul i17 %tmp.8.cast5, -208, !dbg !291 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp.13, %tmp.12, !dbg !291     ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1.cast = sext i17 %tmp1 to i18, !dbg !291   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp.14 = add i18 %tmp.3, %tmp1.cast, !dbg !291 ; [#uses=2 type=i18] [debug line = 101:10]
  %tmp.15 = lshr i18 %tmp.14, 8, !dbg !291        ; [#uses=2 type=i18] [debug line = 101:10]
  %tmp.16 = trunc i18 %tmp.15 to i10, !dbg !291   ; [#uses=1 type=i10] [debug line = 101:10]
  %tmp.17 = icmp sgt i10 %tmp.16, 255, !dbg !291  ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp.18 = icmp slt i18 %tmp.14, 0, !dbg !291    ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = trunc i18 %tmp.15 to i8, !dbg !291   ; [#uses=1 type=i8] [debug line = 101:10]
  %.phitmp2 = sext i1 %tmp.17 to i8, !dbg !291    ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp.19 = or i1 %tmp.17, %tmp.18, !dbg !291     ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp.19, i8 %.phitmp2, i8 %phitmp2, !dbg !291 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !293), !dbg !291 ; [debug line = 101:10] [debug variable = G]
  %_shl = shl nuw i17 %tmp.16.cast6, 9, !dbg !294 ; [#uses=1 type=i17] [debug line = 102:10]
  %_shl.cast = sext i17 %_shl to i19, !dbg !294   ; [#uses=1 type=i19] [debug line = 102:10]
  %_shl1 = shl nuw i10 %tmp.16.cast, 2, !dbg !294 ; [#uses=1 type=i10] [debug line = 102:10]
  %_shl1.cast = sext i10 %_shl1 to i18, !dbg !294 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2 = add i18 %tmp.3, %_shl1.cast, !dbg !294  ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2.cast = sext i18 %tmp2 to i19, !dbg !294   ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp.20 = add i19 %_shl.cast, %tmp2.cast, !dbg !294 ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp.21 = lshr i19 %tmp.20, 8, !dbg !294        ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp.22 = trunc i19 %tmp.21 to i11, !dbg !294   ; [#uses=1 type=i11] [debug line = 102:10]
  %tmp.23 = icmp sgt i11 %tmp.22, 255, !dbg !294  ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp.24 = icmp slt i19 %tmp.20, 0, !dbg !294    ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = trunc i19 %tmp.21 to i8, !dbg !294   ; [#uses=1 type=i8] [debug line = 102:10]
  %.phitmp3 = sext i1 %tmp.23 to i8, !dbg !294    ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp.25 = or i1 %tmp.23, %tmp.24, !dbg !294     ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp.25, i8 %.phitmp3, i8 %phitmp3, !dbg !294 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !295), !dbg !294 ; [debug line = 102:10] [debug variable = B]
  %out.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !296 ; [#uses=1 type=i8*] [debug line = 103:10]
  store i8 %R, i8* %out.channels.ch1.addr, align 1, !dbg !296 ; [debug line = 103:10]
  %out.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !297 ; [#uses=1 type=i8*] [debug line = 104:10]
  store i8 %G, i8* %out.channels.ch2.addr, align 1, !dbg !297 ; [debug line = 104:10]
  %out.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !298 ; [#uses=1 type=i8*] [debug line = 105:10]
  store i8 %B, i8* %out.channels.ch3.addr, align 1, !dbg !298 ; [debug line = 105:10]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str4, i32 %tmp.2), !dbg !299 ; [#uses=0 type=i32] [debug line = 106:7]
  %y.1 = add i16 %y, 1, !dbg !300                 ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y.1}, i64 0, metadata !301), !dbg !300 ; [debug line = 92:27] [debug variable = y]
  br label %3, !dbg !300                          ; [debug line = 92:27]

; <label>:5                                       ; preds = %3
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str3, i32 %tmp.1), !dbg !302 ; [#uses=0 type=i32] [debug line = 107:4]
  %x.1 = add i16 %x, 1, !dbg !303                 ; [#uses=1 type=i16] [debug line = 89:23]
  call void @llvm.dbg.value(metadata !{i16 %x.1}, i64 0, metadata !304), !dbg !303 ; [debug line = 89:23] [debug variable = x]
  br label %1, !dbg !303                          ; [debug line = 89:23]

; <label>:7                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !305), !dbg !260 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !306), !dbg !260 ; [debug line = 69:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in.width.read, 0, !dbg !307 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  %mrv.1 = insertvalue { i16, i16 } %mrv, i16 %in.height.read, 1, !dbg !307 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  ret { i16, i16 } %mrv.1, !dbg !307              ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @rgb2yuv([1920 x [1280 x i8]]* nocapture %in.channels.ch1, [1920 x [1280 x i8]]* nocapture %in.channels.ch2, [1920 x [1280 x i8]]* nocapture %in.channels.ch3, i16 %in.width.read, i16 %in.height.read, [1920 x [1280 x i8]]* nocapture %out.channels.ch1, [1920 x [1280 x i8]]* nocapture %out.channels.ch2, [1920 x [1280 x i8]]* nocapture %out.channels.ch3) {
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !308), !dbg !310 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !311), !dbg !310 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !312), !dbg !310 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !313), !dbg !310 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !314), !dbg !310 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !315), !dbg !317 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !318), !dbg !317 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !319), !dbg !317 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !320), !dbg !322 ; [debug line = 43:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !323), !dbg !324 ; [debug line = 44:4] [debug variable = height]
  br label %1, !dbg !325                          ; [debug line = 49:9]

; <label>:1                                       ; preds = %6, %0
  %x = phi i16 [ 0, %0 ], [ %x.2, %6 ]            ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %in.width.read, !dbg !325 ; [#uses=1 type=i1] [debug line = 49:9]
  br i1 %exitcond1, label %8, label %2, !dbg !325 ; [debug line = 49:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !327 ; [debug line = 49:29]
  %tmp.25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str), !dbg !327 ; [#uses=1 type=i32] [debug line = 49:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str1) nounwind, !dbg !329 ; [debug line = 50:1]
  %tmp = zext i16 %x to i64, !dbg !330            ; [#uses=6 type=i64] [debug line = 54:2]
  br label %3, !dbg !333                          ; [debug line = 52:12]

; <label>:3                                       ; preds = %4, %2
  %y = phi i16 [ 0, %2 ], [ %y.2, %4 ]            ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %in.height.read, !dbg !333 ; [#uses=1 type=i1] [debug line = 52:12]
  br i1 %exitcond, label %6, label %4, !dbg !333  ; [debug line = 52:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !334 ; [debug line = 52:33]
  %tmp.26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str2), !dbg !334 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str1) nounwind, !dbg !335 ; [debug line = 53:1]
  %tmp. = zext i16 %y to i64, !dbg !330           ; [#uses=6 type=i64] [debug line = 54:2]
  %in.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !330 ; [#uses=1 type=i8*] [debug line = 54:2]
  %R = load i8* %in.channels.ch1.addr, align 1, !dbg !330 ; [#uses=4 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !336), !dbg !330 ; [debug line = 54:2] [debug variable = R]
  %in.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !337 ; [#uses=1 type=i8*] [debug line = 55:10]
  %G = load i8* %in.channels.ch2.addr, align 1, !dbg !337 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !338), !dbg !337 ; [debug line = 55:10] [debug variable = G]
  %in.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !339 ; [#uses=1 type=i8*] [debug line = 56:10]
  %B = load i8* %in.channels.ch3.addr, align 1, !dbg !339 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !340), !dbg !339 ; [debug line = 56:10] [debug variable = B]
  %tmp.33.cast1 = zext i8 %R to i16, !dbg !341    ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.33.cast2 = zext i8 %R to i15, !dbg !341    ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.33.cast3 = zext i8 %R to i9, !dbg !341     ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.33.cast = zext i8 %R to i14, !dbg !341     ; [#uses=1 type=i14] [debug line = 57:10]
  %_shl5 = shl nuw i14 %tmp.33.cast, 6, !dbg !341 ; [#uses=1 type=i14] [debug line = 57:10]
  %_shl5.cast = zext i14 %_shl5 to i15, !dbg !341 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl6 = shl nuw i9 %tmp.33.cast3, 1, !dbg !341 ; [#uses=1 type=i9] [debug line = 57:10]
  %_shl6.cast = zext i9 %_shl6 to i15, !dbg !341  ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.35.cast1 = zext i8 %G to i16, !dbg !341    ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp.35.cast2 = zext i8 %G to i9, !dbg !341     ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.35.cast = zext i8 %G to i15, !dbg !341     ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl4 = shl nuw i15 %tmp.35.cast, 7, !dbg !341 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl4.cast = zext i15 %_shl4 to i16, !dbg !341 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.37.cast1 = zext i8 %B to i13, !dbg !341    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp.37.cast2 = zext i8 %B to i9, !dbg !341     ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.37.cast3 = zext i8 %B to i12, !dbg !341    ; [#uses=1 type=i12] [debug line = 57:10]
  %tmp.37.cast = zext i8 %B to i15, !dbg !341     ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.27 = mul i13 %tmp.37.cast1, 25, !dbg !341  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2 = add i15 %_shl5.cast, %_shl6.cast, !dbg !341 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp2.cast = zext i15 %tmp2 to i16, !dbg !341   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %_shl4.cast, %tmp2.cast, !dbg !341 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp4 = add i9 %tmp.35.cast2, 128, !dbg !341    ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp4.cast = zext i9 %tmp4 to i13, !dbg !341    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3 = add i13 %tmp.27, %tmp4.cast, !dbg !341  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3.cast = zext i13 %tmp3 to i16, !dbg !341   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.28 = add i16 %tmp1, %tmp3.cast, !dbg !341  ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.29 = lshr i16 %tmp.28, 8, !dbg !341        ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.30 = trunc i16 %tmp.29 to i8, !dbg !341    ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 %tmp.30, 16, !dbg !341              ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !342), !dbg !341 ; [debug line = 57:10] [debug variable = Y]
  %tmp.31 = mul i15 %tmp.33.cast2, -38, !dbg !343 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp.44.cast = sext i15 %tmp.31 to i16, !dbg !343 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.32 = mul i16 %tmp.35.cast1, -74, !dbg !343 ; [#uses=1 type=i16] [debug line = 58:10]
  %_shl2 = shl nuw i15 %tmp.37.cast, 7, !dbg !343 ; [#uses=1 type=i15] [debug line = 58:10]
  %_shl2.cast = zext i15 %_shl2 to i16, !dbg !343 ; [#uses=1 type=i16] [debug line = 58:10]
  %_shl3 = shl nuw i12 %tmp.37.cast3, 4, !dbg !343 ; [#uses=2 type=i12] [debug line = 58:10]
  %_shl3.cast9 = zext i12 %_shl3 to i13, !dbg !343 ; [#uses=1 type=i13] [debug line = 58:10]
  %_shl3.cast = zext i12 %_shl3 to i16, !dbg !343 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.33 = sub i16 %_shl2.cast, %_shl3.cast, !dbg !343 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp5 = add i16 %tmp.32, %tmp.44.cast, !dbg !343 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp6 = add i16 %tmp.33, 128, !dbg !343         ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.34 = add i16 %tmp5, %tmp6, !dbg !343       ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.35 = lshr i16 %tmp.34, 8, !dbg !343        ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.36 = trunc i16 %tmp.35 to i8, !dbg !343    ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp.36, -128, !dbg !343            ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !344), !dbg !343 ; [debug line = 58:10] [debug variable = U]
  %tmp.37 = mul i16 %tmp.33.cast1, 122, !dbg !345 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.38 = mul i16 %tmp.35.cast1, -94, !dbg !345 ; [#uses=1 type=i16] [debug line = 59:10]
  %_neg = sub i13 0, %_shl3.cast9                 ; [#uses=1 type=i13]
  %_neg.cast = sext i13 %_neg to i14              ; [#uses=1 type=i14]
  %_shl1 = shl nuw i9 %tmp.37.cast2, 1, !dbg !345 ; [#uses=1 type=i9] [debug line = 59:10]
  %_shl1.cast = zext i9 %_shl1 to i14, !dbg !345  ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp.39 = sub i14 %_neg.cast, %_shl1.cast, !dbg !345 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp7 = add i16 %tmp.38, %tmp.37, !dbg !345     ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp8 = add i14 %tmp.39, 128, !dbg !345         ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp8.cast = sext i14 %tmp8 to i16, !dbg !345   ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.40 = add i16 %tmp7, %tmp8.cast, !dbg !345  ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.41 = lshr i16 %tmp.40, 8, !dbg !345        ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.42 = trunc i16 %tmp.41 to i8, !dbg !345    ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp.42, -128, !dbg !345            ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !346), !dbg !345 ; [debug line = 59:10] [debug variable = V]
  %out.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !347 ; [#uses=1 type=i8*] [debug line = 60:10]
  store i8 %Y, i8* %out.channels.ch1.addr, align 1, !dbg !347 ; [debug line = 60:10]
  %out.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !348 ; [#uses=1 type=i8*] [debug line = 61:10]
  store i8 %U, i8* %out.channels.ch2.addr, align 1, !dbg !348 ; [debug line = 61:10]
  %out.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !349 ; [#uses=1 type=i8*] [debug line = 62:10]
  store i8 %V, i8* %out.channels.ch3.addr, align 1, !dbg !349 ; [debug line = 62:10]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str2, i32 %tmp.26), !dbg !350 ; [#uses=0 type=i32] [debug line = 63:7]
  %y.2 = add i16 %y, 1, !dbg !351                 ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y.2}, i64 0, metadata !352), !dbg !351 ; [debug line = 52:27] [debug variable = y]
  br label %3, !dbg !351                          ; [debug line = 52:27]

; <label>:6                                       ; preds = %3
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.25), !dbg !353 ; [#uses=0 type=i32] [debug line = 64:4]
  %x.2 = add i16 %x, 1, !dbg !354                 ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x.2}, i64 0, metadata !355), !dbg !354 ; [debug line = 49:23] [debug variable = x]
  br label %1, !dbg !354                          ; [debug line = 49:23]

; <label>:8                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in.width.read}, i64 0, metadata !356), !dbg !317 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in.height.read}, i64 0, metadata !357), !dbg !317 ; [debug line = 31:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in.width.read, 0, !dbg !358 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  %mrv.1 = insertvalue { i16, i16 } %mrv, i16 %in.height.read, 1, !dbg !358 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  ret { i16, i16 } %mrv.1, !dbg !358              ; [debug line = 65:1]
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

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution1/.autopilot/db/yuv_filter.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !39} ; [ DW_TAG_compile_unit ]
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
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 7, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"in.channels.ch1", metadata !69, metadata !"unsigned char", i32 0, i32 7}
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 0, i32 1919, i32 1}
!71 = metadata !{i32 0, i32 1279, i32 1}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 7, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"in.channels.ch2", metadata !69, metadata !"unsigned char", i32 0, i32 7}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 7, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"in.channels.ch3", metadata !69, metadata !"unsigned char", i32 0, i32 7}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 15, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"in.width", metadata !84, metadata !"unsigned short", i32 0, i32 15}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 0, i32 1}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 15, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"in.height", metadata !84, metadata !"unsigned short", i32 0, i32 15}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 7, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"out.channels.ch1", metadata !69, metadata !"unsigned char", i32 0, i32 7}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 7, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"out.channels.ch2", metadata !69, metadata !"unsigned char", i32 0, i32 7}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 7, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"out.channels.ch3", metadata !69, metadata !"unsigned char", i32 0, i32 7}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 15, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"out.width", metadata !84, metadata !"unsigned short", i32 0, i32 15}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 15, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"out.height", metadata !84, metadata !"unsigned short", i32 0, i32 15}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 7, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"Y_scale", metadata !114, metadata !"unsigned char", i32 0, i32 7}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 0, i32 0}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 7, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"U_scale", metadata !114, metadata !"unsigned char", i32 0, i32 7}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 7, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"V_scale", metadata !114, metadata !"unsigned char", i32 0, i32 7}
!124 = metadata !{i32 790531, metadata !125, metadata !"in.channels.ch1", null, i32 5, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!125 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ]
!127 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!128 = metadata !{metadata !129}
!129 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!130 = metadata !{metadata !18}
!131 = metadata !{i32 5, i32 16, metadata !5, null}
!132 = metadata !{i32 790531, metadata !125, metadata !"in.channels.ch2", null, i32 5, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!133 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ]
!134 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!137 = metadata !{metadata !25}
!138 = metadata !{i32 790531, metadata !125, metadata !"in.channels.ch3", null, i32 5, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!139 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ]
!140 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!141 = metadata !{metadata !142}
!142 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!143 = metadata !{metadata !26}
!144 = metadata !{i32 790531, metadata !125, metadata !"in.width", null, i32 5, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!145 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ]
!146 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!147 = metadata !{metadata !27}
!148 = metadata !{i32 790531, metadata !125, metadata !"in.height", null, i32 5, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!149 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ]
!150 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!151 = metadata !{metadata !30}
!152 = metadata !{i32 790531, metadata !153, metadata !"out.channels.ch1", null, i32 6, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!153 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 6, i32 16, metadata !5, null}
!155 = metadata !{i32 790531, metadata !153, metadata !"out.channels.ch2", null, i32 6, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!156 = metadata !{i32 790531, metadata !153, metadata !"out.channels.ch3", null, i32 6, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!157 = metadata !{i32 790531, metadata !153, metadata !"out.width", null, i32 6, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!158 = metadata !{i32 790531, metadata !153, metadata !"out.height", null, i32 6, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!159 = metadata !{i32 786689, metadata !5, metadata !"Y_scale", metadata !6, i32 50331655, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 7, i32 19, metadata !5, null}
!161 = metadata !{i32 786689, metadata !5, metadata !"U_scale", metadata !6, i32 67108872, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 8, i32 19, metadata !5, null}
!163 = metadata !{i32 786689, metadata !5, metadata !"V_scale", metadata !6, i32 83886089, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 9, i32 19, metadata !5, null}
!165 = metadata !{i32 790529, metadata !166, metadata !"_yuv.channels.ch1", null, i32 17, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!166 = metadata !{i32 786688, metadata !167, metadata !"_yuv", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 17, i32 12, metadata !167, null}
!169 = metadata !{i32 790529, metadata !166, metadata !"_yuv.channels.ch2", null, i32 17, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!170 = metadata !{i32 790529, metadata !166, metadata !"_yuv.channels.ch3", null, i32 17, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!171 = metadata !{i32 790529, metadata !172, metadata !"_scale.channels.ch1", null, i32 18, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!172 = metadata !{i32 786688, metadata !167, metadata !"_scale", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 18, i32 12, metadata !167, null}
!174 = metadata !{i32 790529, metadata !172, metadata !"_scale.channels.ch2", null, i32 18, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!175 = metadata !{i32 790529, metadata !172, metadata !"_scale.channels.ch3", null, i32 18, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!176 = metadata !{i32 790529, metadata !177, metadata !"yuv.channels.ch1", null, i32 19, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!177 = metadata !{i32 786688, metadata !167, metadata !"yuv", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 19, i32 24, metadata !167, null}
!179 = metadata !{i32 790529, metadata !177, metadata !"yuv.channels.ch2", null, i32 19, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!180 = metadata !{i32 790529, metadata !177, metadata !"yuv.channels.ch3", null, i32 19, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!181 = metadata !{i32 790529, metadata !182, metadata !"scale.channels.ch1", null, i32 20, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!182 = metadata !{i32 786688, metadata !167, metadata !"scale", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 20, i32 28, metadata !167, null}
!184 = metadata !{i32 790529, metadata !182, metadata !"scale.channels.ch2", null, i32 20, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!185 = metadata !{i32 790529, metadata !182, metadata !"scale.channels.ch3", null, i32 20, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!186 = metadata !{i32 23, i32 4, metadata !167, null}
!187 = metadata !{i32 790529, metadata !166, metadata !"_yuv.width", null, i32 17, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!188 = metadata !{i32 790529, metadata !166, metadata !"_yuv.height", null, i32 17, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!189 = metadata !{i32 790531, metadata !190, metadata !"in.channels.ch1", null, i32 111, metadata !126, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field ]
!190 = metadata !{i32 786689, metadata !38, metadata !"in", metadata !6, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 24, i32 4, metadata !167, null}
!192 = metadata !{i32 111, i32 16, metadata !38, metadata !191}
!193 = metadata !{i32 790531, metadata !190, metadata !"in.channels.ch2", null, i32 111, metadata !133, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field ]
!194 = metadata !{i32 790531, metadata !190, metadata !"in.channels.ch3", null, i32 111, metadata !139, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field ]
!195 = metadata !{i32 790533, metadata !190, metadata !"in.width", null, i32 111, metadata !145, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field_ro ]
!196 = metadata !{i32 790533, metadata !190, metadata !"in.height", null, i32 111, metadata !149, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field_ro ]
!197 = metadata !{i32 790531, metadata !198, metadata !"out.channels.ch1", null, i32 112, metadata !126, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field ]
!198 = metadata !{i32 786689, metadata !38, metadata !"out", metadata !6, i32 33554544, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 112, i32 16, metadata !38, metadata !191}
!200 = metadata !{i32 790531, metadata !198, metadata !"out.channels.ch2", null, i32 112, metadata !133, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field ]
!201 = metadata !{i32 790531, metadata !198, metadata !"out.channels.ch3", null, i32 112, metadata !139, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field ]
!202 = metadata !{i32 786689, metadata !38, metadata !"Y_scale", metadata !6, i32 50331761, metadata !31, i32 0, metadata !191} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 113, i32 19, metadata !38, metadata !191}
!204 = metadata !{i32 786689, metadata !38, metadata !"U_scale", metadata !6, i32 67108978, metadata !31, i32 0, metadata !191} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 114, i32 19, metadata !38, metadata !191}
!206 = metadata !{i32 786689, metadata !38, metadata !"V_scale", metadata !6, i32 83886195, metadata !31, i32 0, metadata !191} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 115, i32 19, metadata !38, metadata !191}
!208 = metadata !{i32 786688, metadata !209, metadata !"width", metadata !6, i32 119, metadata !28, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 786443, metadata !38, i32 117, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 123, i32 4, metadata !209, metadata !191}
!211 = metadata !{i32 786688, metadata !209, metadata !"height", metadata !6, i32 119, metadata !28, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 124, i32 4, metadata !209, metadata !191}
!213 = metadata !{i32 138, i32 10, metadata !214, metadata !191}
!214 = metadata !{i32 786443, metadata !215, i32 132, i32 32, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 786443, metadata !216, i32 132, i32 7, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 786443, metadata !217, i32 129, i32 28, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 786443, metadata !209, i32 129, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 139, i32 10, metadata !214, metadata !191}
!219 = metadata !{i32 129, i32 9, metadata !217, metadata !191}
!220 = metadata !{i32 129, i32 29, metadata !216, metadata !191}
!221 = metadata !{i32 130, i32 1, metadata !216, metadata !191}
!222 = metadata !{i32 134, i32 2, metadata !214, metadata !191}
!223 = metadata !{i32 132, i32 12, metadata !215, metadata !191}
!224 = metadata !{i32 132, i32 33, metadata !214, metadata !191}
!225 = metadata !{i32 133, i32 1, metadata !214, metadata !191}
!226 = metadata !{i32 786688, metadata !209, metadata !"Y", metadata !6, i32 120, metadata !20, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 135, i32 10, metadata !214, metadata !191}
!228 = metadata !{i32 786688, metadata !209, metadata !"U", metadata !6, i32 120, metadata !20, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 136, i32 10, metadata !214, metadata !191}
!230 = metadata !{i32 786688, metadata !209, metadata !"V", metadata !6, i32 120, metadata !20, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 137, i32 10, metadata !214, metadata !191}
!232 = metadata !{i32 786688, metadata !209, metadata !"Yn", metadata !6, i32 121, metadata !233, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!234 = metadata !{i32 786688, metadata !209, metadata !"Un", metadata !6, i32 121, metadata !233, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 786688, metadata !209, metadata !"Vn", metadata !6, i32 121, metadata !233, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 140, i32 10, metadata !214, metadata !191}
!237 = metadata !{i32 141, i32 10, metadata !214, metadata !191}
!238 = metadata !{i32 142, i32 10, metadata !214, metadata !191}
!239 = metadata !{i32 143, i32 7, metadata !214, metadata !191}
!240 = metadata !{i32 132, i32 27, metadata !215, metadata !191}
!241 = metadata !{i32 786688, metadata !209, metadata !"y", metadata !6, i32 118, metadata !28, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 144, i32 4, metadata !216, metadata !191}
!243 = metadata !{i32 129, i32 23, metadata !217, metadata !191}
!244 = metadata !{i32 786688, metadata !209, metadata !"x", metadata !6, i32 118, metadata !28, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 790535, metadata !198, metadata !"out.width", null, i32 112, metadata !145, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field_wo ]
!246 = metadata !{i32 790535, metadata !198, metadata !"out.height", null, i32 112, metadata !149, i32 0, metadata !191} ; [ DW_TAG_arg_variable_field_wo ]
!247 = metadata !{i32 790529, metadata !172, metadata !"_scale.width", null, i32 18, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!248 = metadata !{i32 790529, metadata !172, metadata !"_scale.height", null, i32 18, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!249 = metadata !{i32 25, i32 4, metadata !167, null}
!250 = metadata !{i32 26, i32 1, metadata !167, null}
!251 = metadata !{i32 790531, metadata !252, metadata !"in.channels.ch1", null, i32 68, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!252 = metadata !{i32 786689, metadata !37, metadata !"in", metadata !6, i32 16777284, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!253 = metadata !{i32 68, i32 16, metadata !37, null}
!254 = metadata !{i32 790531, metadata !252, metadata !"in.channels.ch2", null, i32 68, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!255 = metadata !{i32 790531, metadata !252, metadata !"in.channels.ch3", null, i32 68, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!256 = metadata !{i32 790533, metadata !252, metadata !"in.width", null, i32 68, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!257 = metadata !{i32 790533, metadata !252, metadata !"in.height", null, i32 68, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!258 = metadata !{i32 790531, metadata !259, metadata !"out.channels.ch1", null, i32 69, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!259 = metadata !{i32 786689, metadata !37, metadata !"out", metadata !6, i32 33554501, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!260 = metadata !{i32 69, i32 16, metadata !37, null}
!261 = metadata !{i32 790531, metadata !259, metadata !"out.channels.ch2", null, i32 69, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!262 = metadata !{i32 790531, metadata !259, metadata !"out.channels.ch3", null, i32 69, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!263 = metadata !{i32 786688, metadata !264, metadata !"width", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 786443, metadata !37, i32 71, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 83, i32 4, metadata !264, null}
!266 = metadata !{i32 786688, metadata !264, metadata !"height", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 84, i32 4, metadata !264, null}
!268 = metadata !{i32 89, i32 9, metadata !269, null}
!269 = metadata !{i32 786443, metadata !264, i32 89, i32 4, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 89, i32 29, metadata !271, null}
!271 = metadata !{i32 786443, metadata !269, i32 89, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!272 = metadata !{i32 90, i32 1, metadata !271, null}
!273 = metadata !{i32 94, i32 2, metadata !274, null}
!274 = metadata !{i32 786443, metadata !275, i32 92, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 786443, metadata !271, i32 92, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 92, i32 12, metadata !275, null}
!277 = metadata !{i32 92, i32 33, metadata !274, null}
!278 = metadata !{i32 93, i32 1, metadata !274, null}
!279 = metadata !{i32 786688, metadata !264, metadata !"Y", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 95, i32 10, metadata !274, null}
!281 = metadata !{i32 786688, metadata !264, metadata !"U", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!282 = metadata !{i32 96, i32 10, metadata !274, null}
!283 = metadata !{i32 786688, metadata !264, metadata !"V", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 97, i32 10, metadata !274, null}
!285 = metadata !{i32 786688, metadata !264, metadata !"C", metadata !6, i32 76, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 98, i32 10, metadata !274, null}
!287 = metadata !{i32 786688, metadata !264, metadata !"D", metadata !6, i32 76, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 99, i32 10, metadata !274, null}
!289 = metadata !{i32 786688, metadata !264, metadata !"E", metadata !6, i32 76, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 100, i32 10, metadata !274, null}
!291 = metadata !{i32 101, i32 10, metadata !274, null}
!292 = metadata !{i32 786688, metadata !264, metadata !"R", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 786688, metadata !264, metadata !"G", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 102, i32 10, metadata !274, null}
!295 = metadata !{i32 786688, metadata !264, metadata !"B", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!296 = metadata !{i32 103, i32 10, metadata !274, null}
!297 = metadata !{i32 104, i32 10, metadata !274, null}
!298 = metadata !{i32 105, i32 10, metadata !274, null}
!299 = metadata !{i32 106, i32 7, metadata !274, null}
!300 = metadata !{i32 92, i32 27, metadata !275, null}
!301 = metadata !{i32 786688, metadata !264, metadata !"y", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 107, i32 4, metadata !271, null}
!303 = metadata !{i32 89, i32 23, metadata !269, null}
!304 = metadata !{i32 786688, metadata !264, metadata !"x", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 790535, metadata !259, metadata !"out.width", null, i32 69, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!306 = metadata !{i32 790535, metadata !259, metadata !"out.height", null, i32 69, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!307 = metadata !{i32 108, i32 1, metadata !264, null}
!308 = metadata !{i32 790531, metadata !309, metadata !"in.channels.ch1", null, i32 30, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!309 = metadata !{i32 786689, metadata !34, metadata !"in", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!310 = metadata !{i32 30, i32 16, metadata !34, null}
!311 = metadata !{i32 790531, metadata !309, metadata !"in.channels.ch2", null, i32 30, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!312 = metadata !{i32 790531, metadata !309, metadata !"in.channels.ch3", null, i32 30, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!313 = metadata !{i32 790533, metadata !309, metadata !"in.width", null, i32 30, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!314 = metadata !{i32 790533, metadata !309, metadata !"in.height", null, i32 30, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!315 = metadata !{i32 790531, metadata !316, metadata !"out.channels.ch1", null, i32 31, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!316 = metadata !{i32 786689, metadata !34, metadata !"out", metadata !6, i32 33554463, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!317 = metadata !{i32 31, i32 16, metadata !34, null}
!318 = metadata !{i32 790531, metadata !316, metadata !"out.channels.ch2", null, i32 31, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!319 = metadata !{i32 790531, metadata !316, metadata !"out.channels.ch3", null, i32 31, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!320 = metadata !{i32 786688, metadata !321, metadata !"width", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 786443, metadata !34, i32 33, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!322 = metadata !{i32 43, i32 4, metadata !321, null}
!323 = metadata !{i32 786688, metadata !321, metadata !"height", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 44, i32 4, metadata !321, null}
!325 = metadata !{i32 49, i32 9, metadata !326, null}
!326 = metadata !{i32 786443, metadata !321, i32 49, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!327 = metadata !{i32 49, i32 29, metadata !328, null}
!328 = metadata !{i32 786443, metadata !326, i32 49, i32 28, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!329 = metadata !{i32 50, i32 1, metadata !328, null}
!330 = metadata !{i32 54, i32 2, metadata !331, null}
!331 = metadata !{i32 786443, metadata !332, i32 52, i32 32, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 786443, metadata !328, i32 52, i32 7, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!333 = metadata !{i32 52, i32 12, metadata !332, null}
!334 = metadata !{i32 52, i32 33, metadata !331, null}
!335 = metadata !{i32 53, i32 1, metadata !331, null}
!336 = metadata !{i32 786688, metadata !321, metadata !"R", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!337 = metadata !{i32 55, i32 10, metadata !331, null}
!338 = metadata !{i32 786688, metadata !321, metadata !"G", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!339 = metadata !{i32 56, i32 10, metadata !331, null}
!340 = metadata !{i32 786688, metadata !321, metadata !"B", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!341 = metadata !{i32 57, i32 10, metadata !331, null}
!342 = metadata !{i32 786688, metadata !321, metadata !"Y", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!343 = metadata !{i32 58, i32 10, metadata !331, null}
!344 = metadata !{i32 786688, metadata !321, metadata !"U", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!345 = metadata !{i32 59, i32 10, metadata !331, null}
!346 = metadata !{i32 786688, metadata !321, metadata !"V", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!347 = metadata !{i32 60, i32 10, metadata !331, null}
!348 = metadata !{i32 61, i32 10, metadata !331, null}
!349 = metadata !{i32 62, i32 10, metadata !331, null}
!350 = metadata !{i32 63, i32 7, metadata !331, null}
!351 = metadata !{i32 52, i32 27, metadata !332, null}
!352 = metadata !{i32 786688, metadata !321, metadata !"y", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!353 = metadata !{i32 64, i32 4, metadata !328, null}
!354 = metadata !{i32 49, i32 23, metadata !326, null}
!355 = metadata !{i32 786688, metadata !321, metadata !"x", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!356 = metadata !{i32 790535, metadata !316, metadata !"out.width", null, i32 31, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!357 = metadata !{i32 790535, metadata !316, metadata !"out.height", null, i32 31, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!358 = metadata !{i32 65, i32 1, metadata !321, null}
