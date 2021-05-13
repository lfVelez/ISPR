; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_filter_str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@YUV_SCALE_LOOP_X_YUV = internal unnamed_addr constant [34 x i8] c"YUV_SCALE_LOOP_X_YUV_SCALE_LOOP_Y\00" ; [#uses=1 type=[34 x i8]*]
@YUV2RGB_LOOP_X_YUV2R = internal unnamed_addr constant [30 x i8] c"YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y\00" ; [#uses=1 type=[30 x i8]*]
@RGB2YUV_LOOP_X_RGB2Y = internal unnamed_addr constant [30 x i8] c"RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y\00" ; [#uses=1 type=[30 x i8]*]
@p_str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]

; [#uses=1]
define internal fastcc { i16, i16 } @yuv_scale([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %V_scale_read}, i64 0, metadata !13), !dbg !43 ; [debug line = 115:19] [debug variable = V_scale]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %U_scale_read}, i64 0, metadata !44), !dbg !45 ; [debug line = 114:19] [debug variable = U_scale]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale_read}, i64 0, metadata !46), !dbg !47 ; [debug line = 113:19] [debug variable = Y_scale]
  %in_height_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read) ; [#uses=3 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_1}, i64 0, metadata !48), !dbg !53 ; [debug line = 111:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_1}, i64 0, metadata !54), !dbg !56 ; [debug line = 112:16] [debug variable = out.height]
  %in_width_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_1}, i64 0, metadata !57), !dbg !53 ; [debug line = 111:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_1}, i64 0, metadata !61), !dbg !56 ; [debug line = 112:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !62), !dbg !53 ; [debug line = 111:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !68), !dbg !53 ; [debug line = 111:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !74), !dbg !53 ; [debug line = 111:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !57), !dbg !53 ; [debug line = 111:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !48), !dbg !53 ; [debug line = 111:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !80), !dbg !56 ; [debug line = 112:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !81), !dbg !56 ; [debug line = 112:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !82), !dbg !56 ; [debug line = 112:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !46), !dbg !47 ; [debug line = 113:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !44), !dbg !45 ; [debug line = 114:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !13), !dbg !43 ; [debug line = 115:19] [debug variable = V_scale]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !83), !dbg !85 ; [debug line = 123:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !86), !dbg !87 ; [debug line = 124:4] [debug variable = height]
  %tmp_cast = zext i8 %Y_scale_read to i15, !dbg !88 ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_1_cast = zext i8 %U_scale_read to i15, !dbg !93 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_2_cast = zext i8 %V_scale_read to i15, !dbg !94 ; [#uses=1 type=i15] [debug line = 129:9]
  %cast = zext i16 %in_width_read_1 to i32        ; [#uses=1 type=i32]
  %cast1 = zext i16 %in_height_read_1 to i32      ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %1, !dbg !94                           ; [debug line = 129:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x = phi i16 [ 0, %0 ], [ %tmp_3_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y = phi i16 [ 0, %0 ], [ %y_1, %.reset ]       ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x_1}, i64 0, metadata !95), !dbg !96 ; [debug line = 129:23] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_1 = add i16 1, %x, !dbg !96                  ; [#uses=1 type=i16] [debug line = 129:23]
  call void @llvm.dbg.value(metadata !{i16 %x_1}, i64 0, metadata !95), !dbg !96 ; [debug line = 129:23] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @YUV_SCALE_LOOP_X_YUV)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond3 = icmp eq i16 %y, %in_height_read_1, !dbg !97 ; [#uses=2 type=i1] [debug line = 132:12]
  %y_mid2 = select i1 %exitcond3, i16 0, i16 %y   ; [#uses=2 type=i16]
  %tmp_3_mid2_v = select i1 %exitcond3, i16 %x_1, i16 %x, !dbg !98 ; [#uses=3 type=i16] [debug line = 134:2]
  %tmp = trunc i16 %tmp_3_mid2_v to i13           ; [#uses=1 type=i13]
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_1 = trunc i16 %tmp_3_mid2_v to i15         ; [#uses=1 type=i15]
  %p_shl1_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_1, i8 0), !dbg !98 ; [#uses=1 type=i23] [debug line = 134:2]
  %tmp_3 = add i23 %p_shl_cast, %p_shl1_cast, !dbg !98 ; [#uses=1 type=i23] [debug line = 134:2]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind, !dbg !99 ; [debug line = 132:33]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6), !dbg !99 ; [#uses=1 type=i32] [debug line = 132:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !100 ; [debug line = 133:1]
  %tmp_5_cast = zext i16 %y_mid2 to i23, !dbg !98 ; [#uses=1 type=i23] [debug line = 134:2]
  %tmp_5 = add i23 %tmp_5_cast, %tmp_3, !dbg !98  ; [#uses=1 type=i23] [debug line = 134:2]
  %tmp_10_cast = zext i23 %tmp_5 to i64, !dbg !98 ; [#uses=6 type=i64] [debug line = 134:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_10_cast, !dbg !98 ; [#uses=1 type=i8*] [debug line = 134:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_10_cast, !dbg !101 ; [#uses=1 type=i8*] [debug line = 135:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_10_cast, !dbg !102 ; [#uses=1 type=i8*] [debug line = 136:10]
  %out_channels_ch1_add = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_10_cast, !dbg !103 ; [#uses=1 type=i8*] [debug line = 140:10]
  %out_channels_ch2_add = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_10_cast, !dbg !104 ; [#uses=1 type=i8*] [debug line = 141:10]
  %out_channels_ch3_add = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_10_cast, !dbg !105 ; [#uses=1 type=i8*] [debug line = 142:10]
  %Y = load i8* %in_channels_ch1_addr, align 1, !dbg !98 ; [#uses=1 type=i8] [debug line = 134:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !106), !dbg !98 ; [debug line = 134:2] [debug variable = Y]
  %U = load i8* %in_channels_ch2_addr, align 1, !dbg !101 ; [#uses=1 type=i8] [debug line = 135:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !107), !dbg !101 ; [debug line = 135:10] [debug variable = U]
  %V = load i8* %in_channels_ch3_addr, align 1, !dbg !102 ; [#uses=1 type=i8] [debug line = 136:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !108), !dbg !102 ; [debug line = 136:10] [debug variable = V]
  %tmp_6_cast = zext i8 %Y to i15, !dbg !109      ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp_7 = mul i15 %tmp_6_cast, %tmp_cast, !dbg !109 ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp_9_cast = zext i8 %U to i15, !dbg !88       ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_s = mul i15 %tmp_9_cast, %tmp_1_cast, !dbg !88 ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_4_cast = zext i8 %V to i15, !dbg !93       ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_8 = mul i15 %tmp_4_cast, %tmp_2_cast, !dbg !93 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_7, i32 7, i32 14), !dbg !103 ; [#uses=1 type=i8] [debug line = 140:10]
  store i8 %tmp_4, i8* %out_channels_ch1_add, align 1, !dbg !103 ; [debug line = 140:10]
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_s, i32 7, i32 14), !dbg !104 ; [#uses=1 type=i8] [debug line = 141:10]
  store i8 %tmp_6, i8* %out_channels_ch2_add, align 1, !dbg !104 ; [debug line = 141:10]
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_8, i32 7, i32 14), !dbg !105 ; [#uses=1 type=i8] [debug line = 142:10]
  store i8 %tmp_9, i8* %out_channels_ch3_add, align 1, !dbg !105 ; [debug line = 142:10]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_2), !dbg !110 ; [#uses=0 type=i32] [debug line = 143:7]
  %y_1 = add i16 1, %y_mid2, !dbg !111            ; [#uses=1 type=i16] [debug line = 132:27]
  call void @llvm.dbg.value(metadata !{i16 %y_1}, i64 0, metadata !112), !dbg !111 ; [debug line = 132:27] [debug variable = y]
  br label %1, !dbg !111                          ; [debug line = 132:27]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !61), !dbg !56 ; [debug line = 112:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !54), !dbg !56 ; [debug line = 112:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_1, 0, !dbg !113 ; [#uses=1 type={ i16, i16 }] [debug line = 145:1]
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read_1, 1, !dbg !113 ; [#uses=1 type={ i16, i16 }] [debug line = 145:1]
  ret { i16, i16 } %mrv_1, !dbg !113              ; [debug line = 145:1]
}

; [#uses=0]
define void @yuv_filter([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch1), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch2), !map !121
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch3), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_width), !map !129
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_height), !map !135
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch1), !map !139
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch2), !map !143
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch3), !map !147
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_width), !map !151
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_height), !map !155
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !159
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !165
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !169
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter_str) nounwind
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %V_scale_read}, i64 0, metadata !173), !dbg !175 ; [debug line = 9:19] [debug variable = V_scale]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %U_scale_read}, i64 0, metadata !176), !dbg !177 ; [debug line = 8:19] [debug variable = U_scale]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale_read}, i64 0, metadata !178), !dbg !179 ; [debug line = 7:19] [debug variable = Y_scale]
  %p_yuv_channels_ch1 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_yuv_channels_ch2 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_yuv_channels_ch3 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_scale_channels_ch1 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_scale_channels_ch2 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_scale_channels_ch3 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !180), !dbg !182 ; [debug line = 5:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !183), !dbg !182 ; [debug line = 5:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !184), !dbg !182 ; [debug line = 5:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !185), !dbg !182 ; [debug line = 5:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !186), !dbg !182 ; [debug line = 5:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !187), !dbg !189 ; [debug line = 6:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !190), !dbg !189 ; [debug line = 6:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !191), !dbg !189 ; [debug line = 6:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !192), !dbg !189 ; [debug line = 6:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !193), !dbg !189 ; [debug line = 6:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !178), !dbg !179 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !176), !dbg !177 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !173), !dbg !175 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_yuv_channels_ch1}, metadata !194), !dbg !197 ; [debug line = 17:12] [debug variable = _yuv.channels.ch1]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_yuv_channels_ch2}, metadata !198), !dbg !197 ; [debug line = 17:12] [debug variable = _yuv.channels.ch2]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_yuv_channels_ch3}, metadata !199), !dbg !197 ; [debug line = 17:12] [debug variable = _yuv.channels.ch3]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_scale_channels_ch1}, metadata !200), !dbg !202 ; [debug line = 18:12] [debug variable = _scale.channels.ch1]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_scale_channels_ch2}, metadata !203), !dbg !202 ; [debug line = 18:12] [debug variable = _scale.channels.ch2]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_scale_channels_ch3}, metadata !204), !dbg !202 ; [debug line = 18:12] [debug variable = _scale.channels.ch3]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch1}, i64 0, metadata !205), !dbg !207 ; [debug line = 19:24] [debug variable = yuv.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch2}, i64 0, metadata !208), !dbg !207 ; [debug line = 19:24] [debug variable = yuv.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch3}, i64 0, metadata !209), !dbg !207 ; [debug line = 19:24] [debug variable = yuv.channels.ch3]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch1}, i64 0, metadata !210), !dbg !212 ; [debug line = 20:28] [debug variable = scale.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch2}, i64 0, metadata !213), !dbg !212 ; [debug line = 20:28] [debug variable = scale.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch3}, i64 0, metadata !214), !dbg !212 ; [debug line = 20:28] [debug variable = scale.channels.ch3]
  %in_width_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_width), !dbg !215 ; [#uses=1 type=i16] [debug line = 23:4]
  %in_height_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_height), !dbg !215 ; [#uses=1 type=i16] [debug line = 23:4]
  %call_ret = call fastcc { i16, i16 } @rgb2yuv([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* %p_yuv_channels_ch1, [2457600 x i8]* %p_yuv_channels_ch2, [2457600 x i8]* %p_yuv_channels_ch3), !dbg !215 ; [#uses=2 type={ i16, i16 }] [debug line = 23:4]
  %p_yuv_width = extractvalue { i16, i16 } %call_ret, 0, !dbg !215 ; [#uses=1 type=i16] [debug line = 23:4]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_width}, i64 0, metadata !216), !dbg !215 ; [debug line = 23:4] [debug variable = _yuv.width]
  %p_yuv_height = extractvalue { i16, i16 } %call_ret, 1, !dbg !215 ; [#uses=1 type=i16] [debug line = 23:4]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_height}, i64 0, metadata !217), !dbg !215 ; [debug line = 23:4] [debug variable = _yuv.height]
  %call_ret3 = call fastcc { i16, i16 } @yuv_scale([2457600 x i8]* %p_yuv_channels_ch1, [2457600 x i8]* %p_yuv_channels_ch2, [2457600 x i8]* %p_yuv_channels_ch3, i16 %p_yuv_width, i16 %p_yuv_height, [2457600 x i8]* %p_scale_channels_ch1, [2457600 x i8]* %p_scale_channels_ch2, [2457600 x i8]* %p_scale_channels_ch3, i8 %Y_scale_read, i8 %U_scale_read, i8 %V_scale_read), !dbg !218 ; [#uses=2 type={ i16, i16 }] [debug line = 24:4]
  %p_scale_width = extractvalue { i16, i16 } %call_ret3, 0, !dbg !218 ; [#uses=1 type=i16] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i16 %p_scale_width}, i64 0, metadata !219), !dbg !218 ; [debug line = 24:4] [debug variable = _scale.width]
  %p_scale_height = extractvalue { i16, i16 } %call_ret3, 1, !dbg !218 ; [#uses=1 type=i16] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i16 %p_scale_height}, i64 0, metadata !220), !dbg !218 ; [debug line = 24:4] [debug variable = _scale.height]
  %call_ret1 = call fastcc { i16, i16 } @yuv2rgb([2457600 x i8]* %p_scale_channels_ch1, [2457600 x i8]* %p_scale_channels_ch2, [2457600 x i8]* %p_scale_channels_ch3, i16 %p_scale_width, i16 %p_scale_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3), !dbg !221 ; [#uses=2 type={ i16, i16 }] [debug line = 25:4]
  %out_width_ret = extractvalue { i16, i16 } %call_ret1, 0, !dbg !221 ; [#uses=1 type=i16] [debug line = 25:4]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_width, i16 %out_width_ret), !dbg !221 ; [debug line = 25:4]
  %out_height_ret = extractvalue { i16, i16 } %call_ret1, 1, !dbg !221 ; [#uses=1 type=i16] [debug line = 25:4]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_height, i16 %out_height_ret), !dbg !221 ; [debug line = 25:4]
  ret void, !dbg !222                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @yuv2rgb([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read_2 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read) ; [#uses=3 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_2}, i64 0, metadata !223), !dbg !228 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_2}, i64 0, metadata !229), !dbg !231 ; [debug line = 69:16] [debug variable = out.height]
  %in_width_read_2 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_2}, i64 0, metadata !232), !dbg !228 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_2}, i64 0, metadata !233), !dbg !231 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !234), !dbg !228 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !235), !dbg !228 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !236), !dbg !228 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !232), !dbg !228 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !223), !dbg !228 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !237), !dbg !231 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !238), !dbg !231 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !239), !dbg !231 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !240), !dbg !242 ; [debug line = 83:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !243), !dbg !244 ; [debug line = 84:4] [debug variable = height]
  %cast = zext i16 %in_width_read_2 to i32        ; [#uses=1 type=i32]
  %cast1 = zext i16 %in_height_read_2 to i32      ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %1, !dbg !245                          ; [debug line = 89:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y = phi i16 [ 0, %0 ], [ %y_2, %.reset ]       ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x_2}, i64 0, metadata !247), !dbg !248 ; [debug line = 89:23] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_2 = add i16 1, %x, !dbg !248                 ; [#uses=1 type=i16] [debug line = 89:23]
  call void @llvm.dbg.value(metadata !{i16 %x_2}, i64 0, metadata !247), !dbg !248 ; [debug line = 89:23] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @YUV2RGB_LOOP_X_YUV2R)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond5 = icmp eq i16 %y, %in_height_read_2, !dbg !249 ; [#uses=2 type=i1] [debug line = 92:12]
  %y_mid2 = select i1 %exitcond5, i16 0, i16 %y   ; [#uses=2 type=i16]
  %tmp_mid2_v = select i1 %exitcond5, i16 %x_2, i16 %x, !dbg !252 ; [#uses=3 type=i16] [debug line = 94:2]
  %tmp = trunc i16 %tmp_mid2_v to i13             ; [#uses=1 type=i13]
  %p_shl2_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_2 = trunc i16 %tmp_mid2_v to i15           ; [#uses=1 type=i15]
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_2, i8 0), !dbg !252 ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_s = add i23 %p_shl3_cast, %p_shl2_cast, !dbg !252 ; [#uses=1 type=i23] [debug line = 94:2]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind, !dbg !254 ; [debug line = 92:33]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4), !dbg !254 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !255 ; [debug line = 93:1]
  %tmp_cast = zext i16 %y_mid2 to i23, !dbg !252  ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_8 = add i23 %tmp_s, %tmp_cast, !dbg !252   ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_28_cast = zext i23 %tmp_8 to i64, !dbg !252 ; [#uses=6 type=i64] [debug line = 94:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_28_cast, !dbg !252 ; [#uses=1 type=i8*] [debug line = 94:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_28_cast, !dbg !256 ; [#uses=1 type=i8*] [debug line = 95:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_28_cast, !dbg !257 ; [#uses=1 type=i8*] [debug line = 96:10]
  %out_channels_ch1_add = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_28_cast, !dbg !258 ; [#uses=1 type=i8*] [debug line = 103:10]
  %out_channels_ch2_add = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_28_cast, !dbg !259 ; [#uses=1 type=i8*] [debug line = 104:10]
  %out_channels_ch3_add = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_28_cast, !dbg !260 ; [#uses=1 type=i8*] [debug line = 105:10]
  %Y = load i8* %in_channels_ch1_addr, align 1, !dbg !252 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !261), !dbg !252 ; [debug line = 94:2] [debug variable = Y]
  %U = load i8* %in_channels_ch2_addr, align 1, !dbg !256 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !262), !dbg !256 ; [debug line = 95:10] [debug variable = U]
  %V = load i8* %in_channels_ch3_addr, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !263), !dbg !257 ; [debug line = 96:10] [debug variable = V]
  %tmp_13_cast = zext i8 %Y to i9, !dbg !264      ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 -16, %tmp_13_cast, !dbg !264        ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !265), !dbg !264 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !268                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !269), !dbg !268 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !270                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !271), !dbg !270 ; [debug line = 99:10] [debug variable = E]
  %tmp_16_cast = sext i9 %C to i18, !dbg !272     ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_4 = mul i18 298, %tmp_16_cast, !dbg !272   ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_18_cast5 = sext i8 %E to i17, !dbg !273    ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp_18_cast = sext i8 %E to i18, !dbg !272     ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_7 = mul i18 409, %tmp_18_cast, !dbg !272   ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_10 = add i18 128, %tmp_4, !dbg !272        ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp_11 = add i18 %tmp_7, %tmp_10, !dbg !272    ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp_5 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_11, i32 16, i32 17), !dbg !272 ; [#uses=1 type=i2] [debug line = 100:10]
  %icmp = icmp eq i2 %tmp_5, 1, !dbg !272         ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_11, i32 17), !dbg !272 ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_11, i32 8, i32 15), !dbg !272 ; [#uses=1 type=i8] [debug line = 100:10]
  %p_phitmp = select i1 %icmp, i8 -1, i8 0, !dbg !272 ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp_3 = or i1 %icmp, %tmp_12, !dbg !272        ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp_3, i8 %p_phitmp, i8 %phitmp, !dbg !272 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !274), !dbg !272 ; [debug line = 100:10] [debug variable = R]
  %tmp_26_cast4_cast = sext i8 %D to i16, !dbg !273 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_13 = mul i16 -100, %tmp_26_cast4_cast, !dbg !273 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_14_cast = sext i16 %tmp_13 to i17, !dbg !273 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp_14 = mul i17 -208, %tmp_18_cast5, !dbg !273 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp_14, %tmp_14_cast, !dbg !273 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1_cast = sext i17 %tmp1 to i18, !dbg !273   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp_15 = add i18 %tmp_10, %tmp1_cast, !dbg !273 ; [#uses=3 type=i18] [debug line = 101:10]
  %tmp_16 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_15, i32 16, i32 17), !dbg !273 ; [#uses=1 type=i2] [debug line = 101:10]
  %icmp1 = icmp eq i2 %tmp_16, 1, !dbg !273       ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_15, i32 17), !dbg !273 ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_15, i32 8, i32 15), !dbg !273 ; [#uses=1 type=i8] [debug line = 101:10]
  %p_phitmp2 = select i1 %icmp1, i8 -1, i8 0, !dbg !273 ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp_6 = or i1 %icmp1, %tmp_17, !dbg !273       ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp_6, i8 %p_phitmp2, i8 %phitmp2, !dbg !273 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !275), !dbg !273 ; [debug line = 101:10] [debug variable = G]
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8 %D, i9 0), !dbg !276 ; [#uses=1 type=i17] [debug line = 102:10]
  %p_shl_cast = sext i17 %p_shl to i19, !dbg !276 ; [#uses=1 type=i19] [debug line = 102:10]
  %p_shl1 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %D, i2 0), !dbg !276 ; [#uses=1 type=i10] [debug line = 102:10]
  %p_shl1_cast = sext i10 %p_shl1 to i18, !dbg !276 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2 = add i18 %tmp_10, %p_shl1_cast, !dbg !276 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2_cast = sext i18 %tmp2 to i19, !dbg !276   ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp_18 = add i19 %p_shl_cast, %tmp2_cast, !dbg !276 ; [#uses=3 type=i19] [debug line = 102:10]
  %tmp_19 = call i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19 %tmp_18, i32 16, i32 18), !dbg !276 ; [#uses=1 type=i3] [debug line = 102:10]
  %icmp2 = icmp sgt i3 %tmp_19, 0, !dbg !276      ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i19.i32(i19 %tmp_18, i32 18), !dbg !276 ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = call i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19 %tmp_18, i32 8, i32 15), !dbg !276 ; [#uses=1 type=i8] [debug line = 102:10]
  %p_phitmp3 = select i1 %icmp2, i8 -1, i8 0, !dbg !276 ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp_9 = or i1 %icmp2, %tmp_20, !dbg !276       ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp_9, i8 %p_phitmp3, i8 %phitmp3, !dbg !276 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !277), !dbg !276 ; [debug line = 102:10] [debug variable = B]
  store i8 %R, i8* %out_channels_ch1_add, align 1, !dbg !258 ; [debug line = 103:10]
  store i8 %G, i8* %out_channels_ch2_add, align 1, !dbg !259 ; [debug line = 104:10]
  store i8 %B, i8* %out_channels_ch3_add, align 1, !dbg !260 ; [debug line = 105:10]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_1), !dbg !278 ; [#uses=0 type=i32] [debug line = 106:7]
  %y_2 = add i16 1, %y_mid2, !dbg !279            ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y_2}, i64 0, metadata !280), !dbg !279 ; [debug line = 92:27] [debug variable = y]
  br label %1, !dbg !279                          ; [debug line = 92:27]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !233), !dbg !231 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !229), !dbg !231 ; [debug line = 69:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_2, 0, !dbg !281 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read_2, 1, !dbg !281 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  ret { i16, i16 } %mrv_1, !dbg !281              ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @rgb2yuv([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read11 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read) ; [#uses=3 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read11}, i64 0, metadata !282), !dbg !285 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read11}, i64 0, metadata !286), !dbg !288 ; [debug line = 31:16] [debug variable = out.height]
  %in_width_read_3 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_3}, i64 0, metadata !289), !dbg !285 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_3}, i64 0, metadata !290), !dbg !288 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !291), !dbg !285 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !292), !dbg !285 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !293), !dbg !285 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !289), !dbg !285 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !282), !dbg !285 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !294), !dbg !288 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !295), !dbg !288 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !296), !dbg !288 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !297), !dbg !299 ; [debug line = 43:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !300), !dbg !301 ; [debug line = 44:4] [debug variable = height]
  %cast = zext i16 %in_width_read_3 to i32        ; [#uses=1 type=i32]
  %cast1 = zext i16 %in_height_read11 to i32      ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %1, !dbg !302                          ; [debug line = 49:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y = phi i16 [ 0, %0 ], [ %y_3, %.reset ]       ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x_3}, i64 0, metadata !304), !dbg !305 ; [debug line = 49:23] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_3 = add i16 1, %x, !dbg !305                 ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x_3}, i64 0, metadata !304), !dbg !305 ; [debug line = 49:23] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @RGB2YUV_LOOP_X_RGB2Y)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond9 = icmp eq i16 %y, %in_height_read11, !dbg !306 ; [#uses=2 type=i1] [debug line = 52:12]
  %y_mid2 = select i1 %exitcond9, i16 0, i16 %y   ; [#uses=2 type=i16]
  %tmp_mid2_v = select i1 %exitcond9, i16 %x_3, i16 %x, !dbg !309 ; [#uses=3 type=i16] [debug line = 54:2]
  %tmp = trunc i16 %tmp_mid2_v to i13             ; [#uses=1 type=i13]
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_21 = trunc i16 %tmp_mid2_v to i15          ; [#uses=1 type=i15]
  %p_shl7_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_21, i8 0), !dbg !309 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_s = add i23 %p_shl_cast, %p_shl7_cast, !dbg !309 ; [#uses=1 type=i23] [debug line = 54:2]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind, !dbg !311 ; [debug line = 52:33]
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2), !dbg !311 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !312 ; [debug line = 53:1]
  %tmp_cast = zext i16 %y_mid2 to i23, !dbg !309  ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_20 = add i23 %tmp_cast, %tmp_s, !dbg !309  ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_42_cast = zext i23 %tmp_20 to i64, !dbg !309 ; [#uses=6 type=i64] [debug line = 54:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_42_cast, !dbg !309 ; [#uses=1 type=i8*] [debug line = 54:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_42_cast, !dbg !313 ; [#uses=1 type=i8*] [debug line = 55:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_42_cast, !dbg !314 ; [#uses=1 type=i8*] [debug line = 56:10]
  %out_channels_ch1_add = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_42_cast, !dbg !315 ; [#uses=1 type=i8*] [debug line = 60:10]
  %out_channels_ch2_add = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_42_cast, !dbg !316 ; [#uses=1 type=i8*] [debug line = 61:10]
  %out_channels_ch3_add = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_42_cast, !dbg !317 ; [#uses=1 type=i8*] [debug line = 62:10]
  %R = load i8* %in_channels_ch1_addr, align 1, !dbg !309 ; [#uses=4 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !318), !dbg !309 ; [debug line = 54:2] [debug variable = R]
  %G = load i8* %in_channels_ch2_addr, align 1, !dbg !313 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !319), !dbg !313 ; [debug line = 55:10] [debug variable = G]
  %B = load i8* %in_channels_ch3_addr, align 1, !dbg !314 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !320), !dbg !314 ; [debug line = 56:10] [debug variable = B]
  %tmp_40_cast1 = zext i8 %R to i16, !dbg !321    ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_40_cast2 = zext i8 %R to i15, !dbg !321    ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl5 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0), !dbg !321 ; [#uses=1 type=i14] [debug line = 57:10]
  %p_shl5_cast = zext i14 %p_shl5 to i15, !dbg !321 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false), !dbg !321 ; [#uses=1 type=i9] [debug line = 57:10]
  %p_shl6_cast = zext i9 %p_shl6 to i15, !dbg !321 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp_42_cast1 = zext i8 %G to i16, !dbg !321    ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp_42_cast2 = zext i8 %G to i9, !dbg !321     ; [#uses=1 type=i9] [debug line = 57:10]
  %p_shl4 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0), !dbg !321 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl4_cast = zext i15 %p_shl4 to i16, !dbg !321 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_44_cast1 = zext i8 %B to i13, !dbg !321    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp_22 = mul i13 25, %tmp_44_cast1, !dbg !321  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2 = add i15 %p_shl6_cast, %p_shl5_cast, !dbg !321 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp2_cast = zext i15 %tmp2 to i16, !dbg !321   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %tmp2_cast, %p_shl4_cast, !dbg !321 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp4 = add i9 128, %tmp_42_cast2, !dbg !321    ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp4_cast = zext i9 %tmp4 to i13, !dbg !321    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3 = add i13 %tmp4_cast, %tmp_22, !dbg !321  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3_cast = zext i13 %tmp3 to i16, !dbg !321   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_23 = add i16 %tmp3_cast, %tmp1, !dbg !321  ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_24 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_23, i32 8, i32 15), !dbg !321 ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 16, %tmp_24, !dbg !321              ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !322), !dbg !321 ; [debug line = 57:10] [debug variable = Y]
  %tmp_25 = mul i15 -38, %tmp_40_cast2, !dbg !323 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp_51_cast = sext i15 %tmp_25 to i16, !dbg !323 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_26 = mul i16 -74, %tmp_42_cast1, !dbg !323 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl2 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %B, i7 0), !dbg !323 ; [#uses=1 type=i15] [debug line = 58:10]
  %p_shl2_cast = zext i15 %p_shl2 to i16, !dbg !323 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl3 = call i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8 %B, i4 0), !dbg !323 ; [#uses=2 type=i12] [debug line = 58:10]
  %p_shl3_cast9 = zext i12 %p_shl3 to i13, !dbg !323 ; [#uses=1 type=i13] [debug line = 58:10]
  %p_shl3_cast = zext i12 %p_shl3 to i16, !dbg !323 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_27 = sub i16 %p_shl2_cast, %p_shl3_cast, !dbg !323 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp5 = add i16 %tmp_51_cast, %tmp_26, !dbg !323 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp6 = add i16 128, %tmp_27, !dbg !323         ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_28 = add i16 %tmp6, %tmp5, !dbg !323       ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_29 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_28, i32 8, i32 15), !dbg !323 ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp_29, -128, !dbg !323            ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !324), !dbg !323 ; [debug line = 58:10] [debug variable = U]
  %tmp_30 = mul i16 122, %tmp_40_cast1, !dbg !325 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_31 = mul i16 -94, %tmp_42_cast1, !dbg !325 ; [#uses=1 type=i16] [debug line = 59:10]
  %p_neg = sub i13 0, %p_shl3_cast9               ; [#uses=1 type=i13]
  %p_neg_cast = sext i13 %p_neg to i14            ; [#uses=1 type=i14]
  %p_shl1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %B, i1 false), !dbg !325 ; [#uses=1 type=i9] [debug line = 59:10]
  %p_shl1_cast = zext i9 %p_shl1 to i14, !dbg !325 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp_32 = sub i14 %p_neg_cast, %p_shl1_cast, !dbg !325 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp7 = add i16 %tmp_30, %tmp_31, !dbg !325     ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp8 = add i14 128, %tmp_32, !dbg !325         ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp8_cast = sext i14 %tmp8 to i16, !dbg !325   ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_33 = add i16 %tmp8_cast, %tmp7, !dbg !325  ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_34 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_33, i32 8, i32 15), !dbg !325 ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp_34, -128, !dbg !325            ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !326), !dbg !325 ; [debug line = 59:10] [debug variable = V]
  store i8 %Y, i8* %out_channels_ch1_add, align 1, !dbg !315 ; [debug line = 60:10]
  store i8 %U, i8* %out_channels_ch2_add, align 1, !dbg !316 ; [debug line = 61:10]
  store i8 %V, i8* %out_channels_ch3_add, align 1, !dbg !317 ; [debug line = 62:10]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_19), !dbg !327 ; [#uses=0 type=i32] [debug line = 63:7]
  %y_3 = add i16 1, %y_mid2, !dbg !328            ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y_3}, i64 0, metadata !329), !dbg !328 ; [debug line = 52:27] [debug variable = y]
  br label %1, !dbg !328                          ; [debug line = 52:27]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !290), !dbg !288 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !286), !dbg !288 ; [debug line = 31:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_3, 0, !dbg !330 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read11, 1, !dbg !330 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  ret { i16, i16 } %mrv_1, !dbg !330              ; [debug line = 65:1]
}

; [#uses=3]
declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

; [#uses=3]
declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=1]
declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

; [#uses=1]
declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

; [#uses=1]
declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

; [#uses=107]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define weak void @_ssdm_op_Write.ap_auto.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=13]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=6]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=2]
define weak i16 @_ssdm_op_Read.ap_auto.i16P(i16*) {
entry:
  %empty = load i16* %0                           ; [#uses=1 type=i16]
  ret i16 %empty
}

; [#uses=6]
define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_15 = trunc i19 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_15
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_16 = trunc i18 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_16
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_17 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_17
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; [#uses=1 type=i15]
  %empty_18 = trunc i15 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_18
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_19 = trunc i19 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_19
}

; [#uses=0]
define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_20 = trunc i11 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_20
}

; [#uses=2]
define weak i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_21 = trunc i18 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_21
}

; [#uses=0]
define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2) ; [#uses=1 type=i10]
  %empty_22 = trunc i10 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_22
}

; [#uses=0]
declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
declare i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
define weak i11 @_ssdm_op_PartSelect.i11.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_23 = trunc i19 %empty to i11             ; [#uses=1 type=i11]
  ret i11 %empty_23
}

; [#uses=0]
define weak i10 @_ssdm_op_PartSelect.i10.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_24 = trunc i18 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_24
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i19.i32(i19, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i19                    ; [#uses=1 type=i19]
  %empty_25 = shl i19 1, %empty                   ; [#uses=1 type=i19]
  %empty_26 = and i19 %0, %empty_25               ; [#uses=1 type=i19]
  %empty_27 = icmp ne i19 %empty_26, 0            ; [#uses=1 type=i1]
  ret i1 %empty_27
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18                    ; [#uses=1 type=i18]
  %empty_28 = shl i18 1, %empty                   ; [#uses=1 type=i18]
  %empty_29 = and i18 %0, %empty_28               ; [#uses=1 type=i18]
  %empty_30 = icmp ne i18 %empty_29, 0            ; [#uses=1 type=i1]
  ret i1 %empty_30
}

; [#uses=2]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_31 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_32 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_33 = or i9 %empty_32, %empty_31          ; [#uses=1 type=i9]
  ret i9 %empty_33
}

; [#uses=3]
define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23                     ; [#uses=1 type=i23]
  %empty_34 = zext i8 %1 to i23                   ; [#uses=1 type=i23]
  %empty_35 = shl i23 %empty, 8                   ; [#uses=1 type=i23]
  %empty_36 = or i23 %empty_35, %empty_34         ; [#uses=1 type=i23]
  ret i23 %empty_36
}

; [#uses=3]
define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23                     ; [#uses=1 type=i23]
  %empty_37 = zext i10 %1 to i23                  ; [#uses=1 type=i23]
  %empty_38 = shl i23 %empty, 10                  ; [#uses=1 type=i23]
  %empty_39 = or i23 %empty_38, %empty_37         ; [#uses=1 type=i23]
  ret i23 %empty_39
}

; [#uses=1]
define weak i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %0 to i17                      ; [#uses=1 type=i17]
  %empty_40 = zext i9 %1 to i17                   ; [#uses=1 type=i17]
  %empty_41 = shl i17 %empty, 9                   ; [#uses=1 type=i17]
  %empty_42 = or i17 %empty_41, %empty_40         ; [#uses=1 type=i17]
  ret i17 %empty_42
}

; [#uses=2]
define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15                      ; [#uses=1 type=i15]
  %empty_43 = zext i7 %1 to i15                   ; [#uses=1 type=i15]
  %empty_44 = shl i15 %empty, 7                   ; [#uses=1 type=i15]
  %empty_45 = or i15 %empty_44, %empty_43         ; [#uses=1 type=i15]
  ret i15 %empty_45
}

; [#uses=1]
define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14                      ; [#uses=1 type=i14]
  %empty_46 = zext i6 %1 to i14                   ; [#uses=1 type=i14]
  %empty_47 = shl i14 %empty, 6                   ; [#uses=1 type=i14]
  %empty_48 = or i14 %empty_47, %empty_46         ; [#uses=1 type=i14]
  ret i14 %empty_48
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12                      ; [#uses=1 type=i12]
  %empty_49 = zext i4 %1 to i12                   ; [#uses=1 type=i12]
  %empty_50 = shl i12 %empty, 4                   ; [#uses=1 type=i12]
  %empty_51 = or i12 %empty_50, %empty_49         ; [#uses=1 type=i12]
  ret i12 %empty_51
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10                      ; [#uses=1 type=i10]
  %empty_52 = zext i2 %1 to i10                   ; [#uses=1 type=i10]
  %empty_53 = shl i10 %empty, 2                   ; [#uses=1 type=i10]
  %empty_54 = or i10 %empty_53, %empty_52         ; [#uses=1 type=i10]
  ret i10 %empty_54
}

!opencl.kernels = !{!0, !7, !7, !0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"image_t*", metadata !"image_t*", metadata !"yuv_scale_t", metadata !"yuv_scale_t", metadata !"yuv_scale_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"Y_scale", metadata !"U_scale", metadata !"V_scale"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"image_t*", metadata !"image_t*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!13 = metadata !{i32 786689, metadata !14, metadata !"V_scale", metadata !15, i32 83886195, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"yuv_scale", metadata !"yuv_scale", metadata !"", metadata !15, i32 110, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !41, i32 117} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"yuv_filter.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18, metadata !18, metadata !40, metadata !40, metadata !40}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786454, null, metadata !"image_t", metadata !15, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 786451, null, metadata !"", metadata !21, i32 26, i64 58982432, i64 16, i32 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!21 = metadata !{i32 786473, metadata !"./image_aux.h", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", null} ; [ DW_TAG_file_type ]
!22 = metadata !{metadata !23, metadata !36, metadata !39}
!23 = metadata !{i32 786445, metadata !20, metadata !"channels", metadata !21, i32 27, i64 58982400, i64 8, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 786454, null, metadata !"channel_t", metadata !21, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 786451, null, metadata !"", metadata !21, i32 20, i64 58982400, i64 8, i32 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!26 = metadata !{metadata !27, metadata !34, metadata !35}
!27 = metadata !{i32 786445, metadata !25, metadata !"ch1", metadata !21, i32 21, i64 19660800, i64 8, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 19660800, i64 8, i32 0, i32 0, metadata !29, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 786454, null, metadata !"image_pix_t", metadata !21, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!31 = metadata !{metadata !32, metadata !33}
!32 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!33 = metadata !{i32 786465, i64 0, i64 1279}     ; [ DW_TAG_subrange_type ]
!34 = metadata !{i32 786445, metadata !25, metadata !"ch2", metadata !21, i32 22, i64 19660800, i64 8, i64 19660800, i32 0, metadata !28} ; [ DW_TAG_member ]
!35 = metadata !{i32 786445, metadata !25, metadata !"ch3", metadata !21, i32 23, i64 19660800, i64 8, i64 39321600, i32 0, metadata !28} ; [ DW_TAG_member ]
!36 = metadata !{i32 786445, metadata !20, metadata !"width", metadata !21, i32 28, i64 16, i64 16, i64 58982400, i32 0, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 786454, null, metadata !"image_dim_t", metadata !21, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ]
!38 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786445, metadata !20, metadata !"height", metadata !21, i32 29, i64 16, i64 16, i64 58982416, i32 0, metadata !37} ; [ DW_TAG_member ]
!40 = metadata !{i32 786454, null, metadata !"yuv_scale_t", metadata !15, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!43 = metadata !{i32 115, i32 19, metadata !14, null}
!44 = metadata !{i32 786689, metadata !14, metadata !"U_scale", metadata !15, i32 67108978, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 114, i32 19, metadata !14, null}
!46 = metadata !{i32 786689, metadata !14, metadata !"Y_scale", metadata !15, i32 50331761, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 113, i32 19, metadata !14, null}
!48 = metadata !{i32 790533, metadata !49, metadata !"in.height", null, i32 111, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!49 = metadata !{i32 786689, metadata !14, metadata !"in", metadata !15, i32 16777327, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!51 = metadata !{i32 786452, null, metadata !"", metadata !21, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!52 = metadata !{metadata !39}
!53 = metadata !{i32 111, i32 16, metadata !14, null}
!54 = metadata !{i32 790535, metadata !55, metadata !"out.height", null, i32 112, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!55 = metadata !{i32 786689, metadata !14, metadata !"out", metadata !15, i32 33554544, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 112, i32 16, metadata !14, null}
!57 = metadata !{i32 790533, metadata !49, metadata !"in.width", null, i32 111, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!58 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ]
!59 = metadata !{i32 786452, null, metadata !"", metadata !21, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!60 = metadata !{metadata !36}
!61 = metadata !{i32 790535, metadata !55, metadata !"out.width", null, i32 112, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!62 = metadata !{i32 790531, metadata !49, metadata !"in.channels.ch1", null, i32 111, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786452, null, metadata !"", metadata !21, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786452, null, metadata !"", metadata !21, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!67 = metadata !{metadata !27}
!68 = metadata !{i32 790531, metadata !49, metadata !"in.channels.ch2", null, i32 111, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786452, null, metadata !"", metadata !21, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786452, null, metadata !"", metadata !21, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!73 = metadata !{metadata !34}
!74 = metadata !{i32 790531, metadata !49, metadata !"in.channels.ch3", null, i32 111, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 786452, null, metadata !"", metadata !21, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786452, null, metadata !"", metadata !21, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!79 = metadata !{metadata !35}
!80 = metadata !{i32 790531, metadata !55, metadata !"out.channels.ch1", null, i32 112, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!81 = metadata !{i32 790531, metadata !55, metadata !"out.channels.ch2", null, i32 112, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!82 = metadata !{i32 790531, metadata !55, metadata !"out.channels.ch3", null, i32 112, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!83 = metadata !{i32 786688, metadata !84, metadata !"width", metadata !15, i32 119, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786443, metadata !14, i32 117, i32 1, metadata !15, i32 11} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 123, i32 4, metadata !84, null}
!86 = metadata !{i32 786688, metadata !84, metadata !"height", metadata !15, i32 119, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 124, i32 4, metadata !84, null}
!88 = metadata !{i32 138, i32 10, metadata !89, null}
!89 = metadata !{i32 786443, metadata !90, i32 132, i32 32, metadata !15, i32 15} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 786443, metadata !91, i32 132, i32 7, metadata !15, i32 14} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !92, i32 129, i32 28, metadata !15, i32 13} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !84, i32 129, i32 4, metadata !15, i32 12} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 139, i32 10, metadata !89, null}
!94 = metadata !{i32 129, i32 9, metadata !92, null}
!95 = metadata !{i32 786688, metadata !84, metadata !"x", metadata !15, i32 118, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 129, i32 23, metadata !92, null}
!97 = metadata !{i32 132, i32 12, metadata !90, null}
!98 = metadata !{i32 134, i32 2, metadata !89, null}
!99 = metadata !{i32 132, i32 33, metadata !89, null}
!100 = metadata !{i32 133, i32 1, metadata !89, null}
!101 = metadata !{i32 135, i32 10, metadata !89, null}
!102 = metadata !{i32 136, i32 10, metadata !89, null}
!103 = metadata !{i32 140, i32 10, metadata !89, null}
!104 = metadata !{i32 141, i32 10, metadata !89, null}
!105 = metadata !{i32 142, i32 10, metadata !89, null}
!106 = metadata !{i32 786688, metadata !84, metadata !"Y", metadata !15, i32 120, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786688, metadata !84, metadata !"U", metadata !15, i32 120, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 786688, metadata !84, metadata !"V", metadata !15, i32 120, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 137, i32 10, metadata !89, null}
!110 = metadata !{i32 143, i32 7, metadata !89, null}
!111 = metadata !{i32 132, i32 27, metadata !90, null}
!112 = metadata !{i32 786688, metadata !84, metadata !"y", metadata !15, i32 118, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 145, i32 1, metadata !84, null}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 7, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"in.channels.ch1", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!118 = metadata !{metadata !119, metadata !120}
!119 = metadata !{i32 0, i32 1919, i32 1}
!120 = metadata !{i32 0, i32 1279, i32 1}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 7, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"in.channels.ch2", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 7, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"in.channels.ch3", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 15, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"in.width", metadata !133, metadata !"unsigned short", i32 0, i32 15}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 0, i32 1}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 15, metadata !137}
!137 = metadata !{metadata !138}
!138 = metadata !{metadata !"in.height", metadata !133, metadata !"unsigned short", i32 0, i32 15}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 7, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"out.channels.ch1", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 7, metadata !145}
!145 = metadata !{metadata !146}
!146 = metadata !{metadata !"out.channels.ch2", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 7, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"out.channels.ch3", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 15, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"out.width", metadata !133, metadata !"unsigned short", i32 0, i32 15}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 15, metadata !157}
!157 = metadata !{metadata !158}
!158 = metadata !{metadata !"out.height", metadata !133, metadata !"unsigned short", i32 0, i32 15}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 0, i32 7, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"Y_scale", metadata !163, metadata !"unsigned char", i32 0, i32 7}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 0, i32 0}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 0, i32 7, metadata !167}
!167 = metadata !{metadata !168}
!168 = metadata !{metadata !"U_scale", metadata !163, metadata !"unsigned char", i32 0, i32 7}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 0, i32 7, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"V_scale", metadata !163, metadata !"unsigned char", i32 0, i32 7}
!173 = metadata !{i32 786689, metadata !174, metadata !"V_scale", metadata !15, i32 83886089, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 786478, i32 0, metadata !15, metadata !"yuv_filter", metadata !"yuv_filter", metadata !"", metadata !15, i32 4, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !41, i32 11} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 9, i32 19, metadata !174, null}
!176 = metadata !{i32 786689, metadata !174, metadata !"U_scale", metadata !15, i32 67108872, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 8, i32 19, metadata !174, null}
!178 = metadata !{i32 786689, metadata !174, metadata !"Y_scale", metadata !15, i32 50331655, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 7, i32 19, metadata !174, null}
!180 = metadata !{i32 790531, metadata !181, metadata !"in.channels.ch1", null, i32 5, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!181 = metadata !{i32 786689, metadata !174, metadata !"in", metadata !15, i32 16777221, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 5, i32 16, metadata !174, null}
!183 = metadata !{i32 790531, metadata !181, metadata !"in.channels.ch2", null, i32 5, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!184 = metadata !{i32 790531, metadata !181, metadata !"in.channels.ch3", null, i32 5, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!185 = metadata !{i32 790531, metadata !181, metadata !"in.width", null, i32 5, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!186 = metadata !{i32 790531, metadata !181, metadata !"in.height", null, i32 5, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!187 = metadata !{i32 790531, metadata !188, metadata !"out.channels.ch1", null, i32 6, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!188 = metadata !{i32 786689, metadata !174, metadata !"out", metadata !15, i32 33554438, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 6, i32 16, metadata !174, null}
!190 = metadata !{i32 790531, metadata !188, metadata !"out.channels.ch2", null, i32 6, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!191 = metadata !{i32 790531, metadata !188, metadata !"out.channels.ch3", null, i32 6, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!192 = metadata !{i32 790531, metadata !188, metadata !"out.width", null, i32 6, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!193 = metadata !{i32 790531, metadata !188, metadata !"out.height", null, i32 6, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!194 = metadata !{i32 790529, metadata !195, metadata !"_yuv.channels.ch1", null, i32 17, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!195 = metadata !{i32 786688, metadata !196, metadata !"_yuv", metadata !15, i32 17, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 786443, metadata !174, i32 11, i32 1, metadata !15, i32 0} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 17, i32 12, metadata !196, null}
!198 = metadata !{i32 790529, metadata !195, metadata !"_yuv.channels.ch2", null, i32 17, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!199 = metadata !{i32 790529, metadata !195, metadata !"_yuv.channels.ch3", null, i32 17, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!200 = metadata !{i32 790529, metadata !201, metadata !"_scale.channels.ch1", null, i32 18, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!201 = metadata !{i32 786688, metadata !196, metadata !"_scale", metadata !15, i32 18, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 18, i32 12, metadata !196, null}
!203 = metadata !{i32 790529, metadata !201, metadata !"_scale.channels.ch2", null, i32 18, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!204 = metadata !{i32 790529, metadata !201, metadata !"_scale.channels.ch3", null, i32 18, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!205 = metadata !{i32 790529, metadata !206, metadata !"yuv.channels.ch1", null, i32 19, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!206 = metadata !{i32 786688, metadata !196, metadata !"yuv", metadata !15, i32 19, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 19, i32 24, metadata !196, null}
!208 = metadata !{i32 790529, metadata !206, metadata !"yuv.channels.ch2", null, i32 19, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!209 = metadata !{i32 790529, metadata !206, metadata !"yuv.channels.ch3", null, i32 19, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!210 = metadata !{i32 790529, metadata !211, metadata !"scale.channels.ch1", null, i32 20, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!211 = metadata !{i32 786688, metadata !196, metadata !"scale", metadata !15, i32 20, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 20, i32 28, metadata !196, null}
!213 = metadata !{i32 790529, metadata !211, metadata !"scale.channels.ch2", null, i32 20, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!214 = metadata !{i32 790529, metadata !211, metadata !"scale.channels.ch3", null, i32 20, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!215 = metadata !{i32 23, i32 4, metadata !196, null}
!216 = metadata !{i32 790529, metadata !195, metadata !"_yuv.width", null, i32 17, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!217 = metadata !{i32 790529, metadata !195, metadata !"_yuv.height", null, i32 17, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!218 = metadata !{i32 24, i32 4, metadata !196, null}
!219 = metadata !{i32 790529, metadata !201, metadata !"_scale.width", null, i32 18, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!220 = metadata !{i32 790529, metadata !201, metadata !"_scale.height", null, i32 18, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!221 = metadata !{i32 25, i32 4, metadata !196, null}
!222 = metadata !{i32 26, i32 1, metadata !196, null}
!223 = metadata !{i32 790533, metadata !224, metadata !"in.height", null, i32 68, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!224 = metadata !{i32 786689, metadata !225, metadata !"in", metadata !15, i32 16777284, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 786478, i32 0, metadata !15, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !15, i32 67, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !41, i32 71} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{null, metadata !18, metadata !18}
!228 = metadata !{i32 68, i32 16, metadata !225, null}
!229 = metadata !{i32 790535, metadata !230, metadata !"out.height", null, i32 69, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!230 = metadata !{i32 786689, metadata !225, metadata !"out", metadata !15, i32 33554501, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!231 = metadata !{i32 69, i32 16, metadata !225, null}
!232 = metadata !{i32 790533, metadata !224, metadata !"in.width", null, i32 68, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!233 = metadata !{i32 790535, metadata !230, metadata !"out.width", null, i32 69, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!234 = metadata !{i32 790531, metadata !224, metadata !"in.channels.ch1", null, i32 68, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!235 = metadata !{i32 790531, metadata !224, metadata !"in.channels.ch2", null, i32 68, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!236 = metadata !{i32 790531, metadata !224, metadata !"in.channels.ch3", null, i32 68, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!237 = metadata !{i32 790531, metadata !230, metadata !"out.channels.ch1", null, i32 69, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!238 = metadata !{i32 790531, metadata !230, metadata !"out.channels.ch2", null, i32 69, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!239 = metadata !{i32 790531, metadata !230, metadata !"out.channels.ch3", null, i32 69, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!240 = metadata !{i32 786688, metadata !241, metadata !"width", metadata !15, i32 73, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 786443, metadata !225, i32 71, i32 1, metadata !15, i32 6} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 83, i32 4, metadata !241, null}
!243 = metadata !{i32 786688, metadata !241, metadata !"height", metadata !15, i32 73, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 84, i32 4, metadata !241, null}
!245 = metadata !{i32 89, i32 9, metadata !246, null}
!246 = metadata !{i32 786443, metadata !241, i32 89, i32 4, metadata !15, i32 7} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 786688, metadata !241, metadata !"x", metadata !15, i32 72, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 89, i32 23, metadata !246, null}
!249 = metadata !{i32 92, i32 12, metadata !250, null}
!250 = metadata !{i32 786443, metadata !251, i32 92, i32 7, metadata !15, i32 9} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 786443, metadata !246, i32 89, i32 28, metadata !15, i32 8} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 94, i32 2, metadata !253, null}
!253 = metadata !{i32 786443, metadata !250, i32 92, i32 32, metadata !15, i32 10} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 92, i32 33, metadata !253, null}
!255 = metadata !{i32 93, i32 1, metadata !253, null}
!256 = metadata !{i32 95, i32 10, metadata !253, null}
!257 = metadata !{i32 96, i32 10, metadata !253, null}
!258 = metadata !{i32 103, i32 10, metadata !253, null}
!259 = metadata !{i32 104, i32 10, metadata !253, null}
!260 = metadata !{i32 105, i32 10, metadata !253, null}
!261 = metadata !{i32 786688, metadata !241, metadata !"Y", metadata !15, i32 75, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 786688, metadata !241, metadata !"U", metadata !15, i32 75, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 786688, metadata !241, metadata !"V", metadata !15, i32 75, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 97, i32 10, metadata !253, null}
!265 = metadata !{i32 786688, metadata !241, metadata !"C", metadata !15, i32 76, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !15, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !267} ; [ DW_TAG_typedef ]
!267 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!268 = metadata !{i32 98, i32 10, metadata !253, null}
!269 = metadata !{i32 786688, metadata !241, metadata !"D", metadata !15, i32 76, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 99, i32 10, metadata !253, null}
!271 = metadata !{i32 786688, metadata !241, metadata !"E", metadata !15, i32 76, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 100, i32 10, metadata !253, null}
!273 = metadata !{i32 101, i32 10, metadata !253, null}
!274 = metadata !{i32 786688, metadata !241, metadata !"R", metadata !15, i32 74, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 786688, metadata !241, metadata !"G", metadata !15, i32 74, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 102, i32 10, metadata !253, null}
!277 = metadata !{i32 786688, metadata !241, metadata !"B", metadata !15, i32 74, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 106, i32 7, metadata !253, null}
!279 = metadata !{i32 92, i32 27, metadata !250, null}
!280 = metadata !{i32 786688, metadata !241, metadata !"y", metadata !15, i32 72, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 108, i32 1, metadata !241, null}
!282 = metadata !{i32 790533, metadata !283, metadata !"in.height", null, i32 30, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!283 = metadata !{i32 786689, metadata !284, metadata !"in", metadata !15, i32 16777246, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!284 = metadata !{i32 786478, i32 0, metadata !15, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !15, i32 29, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !41, i32 33} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 30, i32 16, metadata !284, null}
!286 = metadata !{i32 790535, metadata !287, metadata !"out.height", null, i32 31, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!287 = metadata !{i32 786689, metadata !284, metadata !"out", metadata !15, i32 33554463, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!288 = metadata !{i32 31, i32 16, metadata !284, null}
!289 = metadata !{i32 790533, metadata !283, metadata !"in.width", null, i32 30, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!290 = metadata !{i32 790535, metadata !287, metadata !"out.width", null, i32 31, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!291 = metadata !{i32 790531, metadata !283, metadata !"in.channels.ch1", null, i32 30, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!292 = metadata !{i32 790531, metadata !283, metadata !"in.channels.ch2", null, i32 30, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!293 = metadata !{i32 790531, metadata !283, metadata !"in.channels.ch3", null, i32 30, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!294 = metadata !{i32 790531, metadata !287, metadata !"out.channels.ch1", null, i32 31, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!295 = metadata !{i32 790531, metadata !287, metadata !"out.channels.ch2", null, i32 31, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!296 = metadata !{i32 790531, metadata !287, metadata !"out.channels.ch3", null, i32 31, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!297 = metadata !{i32 786688, metadata !298, metadata !"width", metadata !15, i32 35, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!298 = metadata !{i32 786443, metadata !284, i32 33, i32 1, metadata !15, i32 1} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 43, i32 4, metadata !298, null}
!300 = metadata !{i32 786688, metadata !298, metadata !"height", metadata !15, i32 35, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!301 = metadata !{i32 44, i32 4, metadata !298, null}
!302 = metadata !{i32 49, i32 9, metadata !303, null}
!303 = metadata !{i32 786443, metadata !298, i32 49, i32 4, metadata !15, i32 2} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 786688, metadata !298, metadata !"x", metadata !15, i32 34, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 49, i32 23, metadata !303, null}
!306 = metadata !{i32 52, i32 12, metadata !307, null}
!307 = metadata !{i32 786443, metadata !308, i32 52, i32 7, metadata !15, i32 4} ; [ DW_TAG_lexical_block ]
!308 = metadata !{i32 786443, metadata !303, i32 49, i32 28, metadata !15, i32 3} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 54, i32 2, metadata !310, null}
!310 = metadata !{i32 786443, metadata !307, i32 52, i32 32, metadata !15, i32 5} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 52, i32 33, metadata !310, null}
!312 = metadata !{i32 53, i32 1, metadata !310, null}
!313 = metadata !{i32 55, i32 10, metadata !310, null}
!314 = metadata !{i32 56, i32 10, metadata !310, null}
!315 = metadata !{i32 60, i32 10, metadata !310, null}
!316 = metadata !{i32 61, i32 10, metadata !310, null}
!317 = metadata !{i32 62, i32 10, metadata !310, null}
!318 = metadata !{i32 786688, metadata !298, metadata !"R", metadata !15, i32 36, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!319 = metadata !{i32 786688, metadata !298, metadata !"G", metadata !15, i32 36, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!320 = metadata !{i32 786688, metadata !298, metadata !"B", metadata !15, i32 36, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 57, i32 10, metadata !310, null}
!322 = metadata !{i32 786688, metadata !298, metadata !"Y", metadata !15, i32 36, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!323 = metadata !{i32 58, i32 10, metadata !310, null}
!324 = metadata !{i32 786688, metadata !298, metadata !"U", metadata !15, i32 36, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!325 = metadata !{i32 59, i32 10, metadata !310, null}
!326 = metadata !{i32 786688, metadata !298, metadata !"V", metadata !15, i32 36, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!327 = metadata !{i32 63, i32 7, metadata !310, null}
!328 = metadata !{i32 52, i32 27, metadata !307, null}
!329 = metadata !{i32 786688, metadata !298, metadata !"y", metadata !15, i32 34, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!330 = metadata !{i32 65, i32 1, metadata !298, null}
