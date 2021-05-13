; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_filter_str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00"
@YUV_SCALE_LOOP_X_YUV = internal unnamed_addr constant [34 x i8] c"YUV_SCALE_LOOP_X_YUV_SCALE_LOOP_Y\00"
@YUV2RGB_LOOP_X_YUV2R = internal unnamed_addr constant [30 x i8] c"YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y\00"
@RGB2YUV_LOOP_X_RGB2Y = internal unnamed_addr constant [30 x i8] c"RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y\00"
@p_str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1
@p_str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1
@p_str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc { i16, i16 } @yuv_scale([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale)
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale)
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale)
  %in_height_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read)
  %in_width_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read)
  %tmp_cast = zext i8 %Y_scale_read to i15
  %tmp_1_cast = zext i8 %U_scale_read to i15
  %tmp_2_cast = zext i8 %V_scale_read to i15
  %cast = zext i16 %in_width_read_1 to i32
  %cast1 = zext i16 %in_height_read_1 to i32
  %bound = mul i32 %cast1, %cast
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %x = phi i16 [ 0, %0 ], [ %tmp_3_mid2_v, %.reset ]
  %y = phi i16 [ 0, %0 ], [ %y_1, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_1 = add i16 1, %x
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @YUV_SCALE_LOOP_X_YUV)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond3 = icmp eq i16 %y, %in_height_read_1
  %y_mid2 = select i1 %exitcond3, i16 0, i16 %y
  %tmp_3_mid2_v = select i1 %exitcond3, i16 %x_1, i16 %x
  %tmp = trunc i16 %tmp_3_mid2_v to i13
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0)
  %tmp_1 = trunc i16 %tmp_3_mid2_v to i15
  %p_shl1_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_1, i8 0)
  %tmp_3 = add i23 %p_shl_cast, %p_shl1_cast
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_5_cast = zext i16 %y_mid2 to i23
  %tmp_5 = add i23 %tmp_5_cast, %tmp_3
  %tmp_10_cast = zext i23 %tmp_5 to i64
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_10_cast
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_10_cast
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_10_cast
  %out_channels_ch1_add = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_10_cast
  %out_channels_ch2_add = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_10_cast
  %out_channels_ch3_add = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_10_cast
  %Y = load i8* %in_channels_ch1_addr, align 1
  %U = load i8* %in_channels_ch2_addr, align 1
  %V = load i8* %in_channels_ch3_addr, align 1
  %tmp_6_cast = zext i8 %Y to i15
  %tmp_7 = mul i15 %tmp_6_cast, %tmp_cast
  %tmp_9_cast = zext i8 %U to i15
  %tmp_s = mul i15 %tmp_9_cast, %tmp_1_cast
  %tmp_4_cast = zext i8 %V to i15
  %tmp_8 = mul i15 %tmp_4_cast, %tmp_2_cast
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_7, i32 7, i32 14)
  store i8 %tmp_4, i8* %out_channels_ch1_add, align 1
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_s, i32 7, i32 14)
  store i8 %tmp_6, i8* %out_channels_ch2_add, align 1
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_8, i32 7, i32 14)
  store i8 %tmp_9, i8* %out_channels_ch3_add, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_2)
  %y_1 = add i16 1, %y_mid2
  br label %1

; <label>:2                                       ; preds = %1
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_1, 0
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read_1, 1
  ret { i16, i16 } %mrv_1
}

define void @yuv_filter([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch1), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch2), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch3), !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_width), !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_height), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch1), !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch2), !map !42
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch3), !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_width), !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_height), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !68
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter_str) nounwind
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale)
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale)
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale)
  %p_yuv_channels_ch1 = alloca [2457600 x i8], align 1
  %p_yuv_channels_ch2 = alloca [2457600 x i8], align 1
  %p_yuv_channels_ch3 = alloca [2457600 x i8], align 1
  %p_scale_channels_ch1 = alloca [2457600 x i8], align 1
  %p_scale_channels_ch2 = alloca [2457600 x i8], align 1
  %p_scale_channels_ch3 = alloca [2457600 x i8], align 1
  %in_width_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_width)
  %in_height_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_height)
  %call_ret = call fastcc { i16, i16 } @rgb2yuv([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* %p_yuv_channels_ch1, [2457600 x i8]* %p_yuv_channels_ch2, [2457600 x i8]* %p_yuv_channels_ch3)
  %p_yuv_width = extractvalue { i16, i16 } %call_ret, 0
  %p_yuv_height = extractvalue { i16, i16 } %call_ret, 1
  %call_ret3 = call fastcc { i16, i16 } @yuv_scale([2457600 x i8]* %p_yuv_channels_ch1, [2457600 x i8]* %p_yuv_channels_ch2, [2457600 x i8]* %p_yuv_channels_ch3, i16 %p_yuv_width, i16 %p_yuv_height, [2457600 x i8]* %p_scale_channels_ch1, [2457600 x i8]* %p_scale_channels_ch2, [2457600 x i8]* %p_scale_channels_ch3, i8 %Y_scale_read, i8 %U_scale_read, i8 %V_scale_read)
  %p_scale_width = extractvalue { i16, i16 } %call_ret3, 0
  %p_scale_height = extractvalue { i16, i16 } %call_ret3, 1
  %call_ret1 = call fastcc { i16, i16 } @yuv2rgb([2457600 x i8]* %p_scale_channels_ch1, [2457600 x i8]* %p_scale_channels_ch2, [2457600 x i8]* %p_scale_channels_ch3, i16 %p_scale_width, i16 %p_scale_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3)
  %out_width_ret = extractvalue { i16, i16 } %call_ret1, 0
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_width, i16 %out_width_ret)
  %out_height_ret = extractvalue { i16, i16 } %call_ret1, 1
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_height, i16 %out_height_ret)
  ret void
}

define internal fastcc { i16, i16 } @yuv2rgb([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read_2 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read)
  %in_width_read_2 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read)
  %cast = zext i16 %in_width_read_2 to i32
  %cast1 = zext i16 %in_height_read_2 to i32
  %bound = mul i32 %cast1, %cast
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ]
  %y = phi i16 [ 0, %0 ], [ %y_2, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_2 = add i16 1, %x
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @YUV2RGB_LOOP_X_YUV2R)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond5 = icmp eq i16 %y, %in_height_read_2
  %y_mid2 = select i1 %exitcond5, i16 0, i16 %y
  %tmp_mid2_v = select i1 %exitcond5, i16 %x_2, i16 %x
  %tmp = trunc i16 %tmp_mid2_v to i13
  %p_shl2_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0)
  %tmp_2 = trunc i16 %tmp_mid2_v to i15
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_2, i8 0)
  %tmp_s = add i23 %p_shl3_cast, %p_shl2_cast
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_cast = zext i16 %y_mid2 to i23
  %tmp_8 = add i23 %tmp_s, %tmp_cast
  %tmp_28_cast = zext i23 %tmp_8 to i64
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_28_cast
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_28_cast
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_28_cast
  %out_channels_ch1_add = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_28_cast
  %out_channels_ch2_add = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_28_cast
  %out_channels_ch3_add = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_28_cast
  %Y = load i8* %in_channels_ch1_addr, align 1
  %U = load i8* %in_channels_ch2_addr, align 1
  %V = load i8* %in_channels_ch3_addr, align 1
  %tmp_13_cast = zext i8 %Y to i9
  %C = add i9 -16, %tmp_13_cast
  %D = xor i8 %U, -128
  %E = xor i8 %V, -128
  %tmp_16_cast = sext i9 %C to i18
  %tmp_4 = mul i18 298, %tmp_16_cast
  %tmp_18_cast5 = sext i8 %E to i17
  %tmp_18_cast = sext i8 %E to i18
  %tmp_7 = mul i18 409, %tmp_18_cast
  %tmp_10 = add i18 128, %tmp_4
  %tmp_11 = add i18 %tmp_7, %tmp_10
  %tmp_5 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_11, i32 16, i32 17)
  %icmp = icmp eq i2 %tmp_5, 1
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_11, i32 17)
  %phitmp = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_11, i32 8, i32 15)
  %p_phitmp = select i1 %icmp, i8 -1, i8 0
  %tmp_3 = or i1 %icmp, %tmp_12
  %R = select i1 %tmp_3, i8 %p_phitmp, i8 %phitmp
  %tmp_26_cast4_cast = sext i8 %D to i16
  %tmp_13 = mul i16 -100, %tmp_26_cast4_cast
  %tmp_14_cast = sext i16 %tmp_13 to i17
  %tmp_14 = mul i17 -208, %tmp_18_cast5
  %tmp1 = add i17 %tmp_14, %tmp_14_cast
  %tmp1_cast = sext i17 %tmp1 to i18
  %tmp_15 = add i18 %tmp_10, %tmp1_cast
  %tmp_16 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_15, i32 16, i32 17)
  %icmp1 = icmp eq i2 %tmp_16, 1
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_15, i32 17)
  %phitmp2 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_15, i32 8, i32 15)
  %p_phitmp2 = select i1 %icmp1, i8 -1, i8 0
  %tmp_6 = or i1 %icmp1, %tmp_17
  %G = select i1 %tmp_6, i8 %p_phitmp2, i8 %phitmp2
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8 %D, i9 0)
  %p_shl_cast = sext i17 %p_shl to i19
  %p_shl1 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %D, i2 0)
  %p_shl1_cast = sext i10 %p_shl1 to i18
  %tmp2 = add i18 %tmp_10, %p_shl1_cast
  %tmp2_cast = sext i18 %tmp2 to i19
  %tmp_18 = add i19 %p_shl_cast, %tmp2_cast
  %tmp_19 = call i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19 %tmp_18, i32 16, i32 18)
  %icmp2 = icmp sgt i3 %tmp_19, 0
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i19.i32(i19 %tmp_18, i32 18)
  %phitmp3 = call i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19 %tmp_18, i32 8, i32 15)
  %p_phitmp3 = select i1 %icmp2, i8 -1, i8 0
  %tmp_9 = or i1 %icmp2, %tmp_20
  %B = select i1 %tmp_9, i8 %p_phitmp3, i8 %phitmp3
  store i8 %R, i8* %out_channels_ch1_add, align 1
  store i8 %G, i8* %out_channels_ch2_add, align 1
  store i8 %B, i8* %out_channels_ch3_add, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_1)
  %y_2 = add i16 1, %y_mid2
  br label %1

; <label>:2                                       ; preds = %1
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_2, 0
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read_2, 1
  ret { i16, i16 } %mrv_1
}

define internal fastcc { i16, i16 } @rgb2yuv([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read11 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read)
  %in_width_read_3 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read)
  %cast = zext i16 %in_width_read_3 to i32
  %cast1 = zext i16 %in_height_read11 to i32
  %bound = mul i32 %cast1, %cast
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ]
  %y = phi i16 [ 0, %0 ], [ %y_3, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_3 = add i16 1, %x
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @RGB2YUV_LOOP_X_RGB2Y)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond9 = icmp eq i16 %y, %in_height_read11
  %y_mid2 = select i1 %exitcond9, i16 0, i16 %y
  %tmp_mid2_v = select i1 %exitcond9, i16 %x_3, i16 %x
  %tmp = trunc i16 %tmp_mid2_v to i13
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0)
  %tmp_21 = trunc i16 %tmp_mid2_v to i15
  %p_shl7_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_21, i8 0)
  %tmp_s = add i23 %p_shl_cast, %p_shl7_cast
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_cast = zext i16 %y_mid2 to i23
  %tmp_20 = add i23 %tmp_cast, %tmp_s
  %tmp_42_cast = zext i23 %tmp_20 to i64
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_42_cast
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_42_cast
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_42_cast
  %out_channels_ch1_add = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_42_cast
  %out_channels_ch2_add = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_42_cast
  %out_channels_ch3_add = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_42_cast
  %R = load i8* %in_channels_ch1_addr, align 1
  %G = load i8* %in_channels_ch2_addr, align 1
  %B = load i8* %in_channels_ch3_addr, align 1
  %tmp_40_cast1 = zext i8 %R to i16
  %tmp_40_cast2 = zext i8 %R to i15
  %p_shl5 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0)
  %p_shl5_cast = zext i14 %p_shl5 to i15
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false)
  %p_shl6_cast = zext i9 %p_shl6 to i15
  %tmp_42_cast1 = zext i8 %G to i16
  %tmp_42_cast2 = zext i8 %G to i9
  %p_shl4 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0)
  %p_shl4_cast = zext i15 %p_shl4 to i16
  %tmp_44_cast1 = zext i8 %B to i13
  %tmp_22 = mul i13 25, %tmp_44_cast1
  %tmp2 = add i15 %p_shl6_cast, %p_shl5_cast
  %tmp2_cast = zext i15 %tmp2 to i16
  %tmp1 = add i16 %tmp2_cast, %p_shl4_cast
  %tmp4 = add i9 128, %tmp_42_cast2
  %tmp4_cast = zext i9 %tmp4 to i13
  %tmp3 = add i13 %tmp4_cast, %tmp_22
  %tmp3_cast = zext i13 %tmp3 to i16
  %tmp_23 = add i16 %tmp3_cast, %tmp1
  %tmp_24 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_23, i32 8, i32 15)
  %Y = add i8 16, %tmp_24
  %tmp_25 = mul i15 -38, %tmp_40_cast2
  %tmp_51_cast = sext i15 %tmp_25 to i16
  %tmp_26 = mul i16 -74, %tmp_42_cast1
  %p_shl2 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %B, i7 0)
  %p_shl2_cast = zext i15 %p_shl2 to i16
  %p_shl3 = call i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8 %B, i4 0)
  %p_shl3_cast9 = zext i12 %p_shl3 to i13
  %p_shl3_cast = zext i12 %p_shl3 to i16
  %tmp_27 = sub i16 %p_shl2_cast, %p_shl3_cast
  %tmp5 = add i16 %tmp_51_cast, %tmp_26
  %tmp6 = add i16 128, %tmp_27
  %tmp_28 = add i16 %tmp6, %tmp5
  %tmp_29 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_28, i32 8, i32 15)
  %U = xor i8 %tmp_29, -128
  %tmp_30 = mul i16 122, %tmp_40_cast1
  %tmp_31 = mul i16 -94, %tmp_42_cast1
  %p_neg = sub i13 0, %p_shl3_cast9
  %p_neg_cast = sext i13 %p_neg to i14
  %p_shl1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %B, i1 false)
  %p_shl1_cast = zext i9 %p_shl1 to i14
  %tmp_32 = sub i14 %p_neg_cast, %p_shl1_cast
  %tmp7 = add i16 %tmp_30, %tmp_31
  %tmp8 = add i14 128, %tmp_32
  %tmp8_cast = sext i14 %tmp8 to i16
  %tmp_33 = add i16 %tmp8_cast, %tmp7
  %tmp_34 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_33, i32 8, i32 15)
  %V = xor i8 %tmp_34, -128
  store i8 %Y, i8* %out_channels_ch1_add, align 1
  store i8 %U, i8* %out_channels_ch2_add, align 1
  store i8 %V, i8* %out_channels_ch3_add, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_19)
  %y_3 = add i16 1, %y_mid2
  br label %1

; <label>:2                                       ; preds = %1
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_3, 0
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read11, 1
  ret { i16, i16 } %mrv_1
}

declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i16 @_ssdm_op_Read.ap_auto.i16P(i16*) {
entry:
  %empty = load i16* %0
  ret i16 %empty
}

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_15 = trunc i19 %empty to i8
  ret i8 %empty_15
}

define weak i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_16 = trunc i18 %empty to i8
  ret i8 %empty_16
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_17 = trunc i16 %empty to i8
  ret i8 %empty_17
}

define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2)
  %empty_18 = trunc i15 %empty to i8
  ret i8 %empty_18
}

define weak i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_19 = trunc i19 %empty to i3
  ret i3 %empty_19
}

define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_20 = trunc i11 %empty to i3
  ret i3 %empty_20
}

define weak i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_21 = trunc i18 %empty to i2
  ret i2 %empty_21
}

define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_22 = trunc i10 %empty to i2
  ret i2 %empty_22
}

declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_23 = trunc i19 %empty to i11
  ret i11 %empty_23
}

define weak i10 @_ssdm_op_PartSelect.i10.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_24 = trunc i18 %empty to i10
  ret i10 %empty_24
}

define weak i1 @_ssdm_op_BitSelect.i1.i19.i32(i19, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i19
  %empty_25 = shl i19 1, %empty
  %empty_26 = and i19 %0, %empty_25
  %empty_27 = icmp ne i19 %empty_26, 0
  ret i1 %empty_27
}

define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18
  %empty_28 = shl i18 1, %empty
  %empty_29 = and i18 %0, %empty_28
  %empty_30 = icmp ne i18 %empty_29, 0
  ret i1 %empty_30
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_31 = zext i1 %1 to i9
  %empty_32 = shl i9 %empty, 1
  %empty_33 = or i9 %empty_32, %empty_31
  ret i9 %empty_33
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23
  %empty_34 = zext i8 %1 to i23
  %empty_35 = shl i23 %empty, 8
  %empty_36 = or i23 %empty_35, %empty_34
  ret i23 %empty_36
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23
  %empty_37 = zext i10 %1 to i23
  %empty_38 = shl i23 %empty, 10
  %empty_39 = or i23 %empty_38, %empty_37
  ret i23 %empty_39
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %0 to i17
  %empty_40 = zext i9 %1 to i17
  %empty_41 = shl i17 %empty, 9
  %empty_42 = or i17 %empty_41, %empty_40
  ret i17 %empty_42
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15
  %empty_43 = zext i7 %1 to i15
  %empty_44 = shl i15 %empty, 7
  %empty_45 = or i15 %empty_44, %empty_43
  ret i15 %empty_45
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14
  %empty_46 = zext i6 %1 to i14
  %empty_47 = shl i14 %empty, 6
  %empty_48 = or i14 %empty_47, %empty_46
  ret i14 %empty_48
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12
  %empty_49 = zext i4 %1 to i12
  %empty_50 = shl i12 %empty, 4
  %empty_51 = or i12 %empty_50, %empty_49
  ret i12 %empty_51
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10
  %empty_52 = zext i2 %1 to i10
  %empty_53 = shl i10 %empty, 2
  %empty_54 = or i10 %empty_53, %empty_52
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
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"in.channels.ch1", metadata !17, metadata !"unsigned char", i32 0, i32 7}
!17 = metadata !{metadata !18, metadata !19}
!18 = metadata !{i32 0, i32 1919, i32 1}
!19 = metadata !{i32 0, i32 1279, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 7, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"in.channels.ch2", metadata !17, metadata !"unsigned char", i32 0, i32 7}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 7, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"in.channels.ch3", metadata !17, metadata !"unsigned char", i32 0, i32 7}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 15, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"in.width", metadata !32, metadata !"unsigned short", i32 0, i32 15}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 15, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"in.height", metadata !32, metadata !"unsigned short", i32 0, i32 15}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 7, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"out.channels.ch1", metadata !17, metadata !"unsigned char", i32 0, i32 7}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 7, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"out.channels.ch2", metadata !17, metadata !"unsigned char", i32 0, i32 7}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 7, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"out.channels.ch3", metadata !17, metadata !"unsigned char", i32 0, i32 7}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 15, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"out.width", metadata !32, metadata !"unsigned short", i32 0, i32 15}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 15, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"out.height", metadata !32, metadata !"unsigned short", i32 0, i32 15}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 7, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"Y_scale", metadata !62, metadata !"unsigned char", i32 0, i32 7}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 0, i32 0}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 7, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"U_scale", metadata !62, metadata !"unsigned char", i32 0, i32 7}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 7, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"V_scale", metadata !62, metadata !"unsigned char", i32 0, i32 7}
