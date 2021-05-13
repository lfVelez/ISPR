; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_filter_str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_yuv_OC_width_OC_cha = internal unnamed_addr constant [19 x i8] c"_yuv.width.channel\00"
@p_yuv_OC_height_OC_ch = internal unnamed_addr constant [20 x i8] c"_yuv.height.channel\00"
@p_yuv_OC_channels_OC_5 = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch1\00"
@p_yuv_OC_channels_OC_4 = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch1.channel\00"
@p_yuv_OC_channels_OC_3 = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch2\00"
@p_yuv_OC_channels_OC_2 = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch2.channel\00"
@p_yuv_OC_channels_OC_1 = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch3\00"
@p_yuv_OC_channels_OC_s = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch3.channel\00"
@p_scale_OC_width_OC_c = internal unnamed_addr constant [21 x i8] c"_scale.width.channel\00"
@p_scale_OC_height_OC_s = internal unnamed_addr constant [22 x i8] c"_scale.height.channel\00"
@p_scale_OC_channels_O_5 = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch1\00"
@p_scale_OC_channels_O_4 = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch1.channel\00"
@p_scale_OC_channels_O_3 = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch2\00"
@p_scale_OC_channels_O_2 = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch2.channel\00"
@p_scale_OC_channels_O_1 = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch3\00"
@p_scale_OC_channels_O = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch3.channel\00"
@Y_scale_channel_str = internal unnamed_addr constant [16 x i8] c"Y_scale_channel\00"
@YUV_SCALE_LOOP_X_YUV = internal unnamed_addr constant [34 x i8] c"YUV_SCALE_LOOP_X_YUV_SCALE_LOOP_Y\00"
@YUV2RGB_LOOP_X_YUV2R = internal unnamed_addr constant [30 x i8] c"YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y\00"
@V_scale_channel_str = internal unnamed_addr constant [16 x i8] c"V_scale_channel\00"
@U_scale_channel_str = internal unnamed_addr constant [16 x i8] c"U_scale_channel\00"
@RGB2YUV_LOOP_X_RGB2Y = internal unnamed_addr constant [30 x i8] c"RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y\00"
@p_str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1
@p_str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1
@p_str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc void @yuv_scale(i8* %in_channels_ch1, i8* %in_channels_ch2, i8* %in_channels_ch3, i16* %in_width, i16* %in_height, i8* %out_channels_ch1, i8* %out_channels_ch2, i8* %out_channels_ch3, i16* %out_width, i16* %out_height, i8* nocapture %Y_scale, i8* nocapture %U_scale, i8* nocapture %V_scale) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_23 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_25 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_26 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_27 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_28 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %Y_scale)
  %U_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %U_scale)
  %V_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %V_scale)
  %width = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_width)
  %height = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_height)
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_width, i16 %width)
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_height, i16 %height)
  %tmp_cast_i = zext i8 %Y_scale_read to i15
  %tmp_1_cast_i = zext i8 %U_scale_read to i15
  %tmp_2_cast_i = zext i8 %V_scale_read to i15
  %cast = zext i16 %width to i32
  %cast1 = zext i16 %height to i32
  %bound = mul i32 %cast1, %cast
  br label %0

; <label>:0                                       ; preds = %entry, %.reset
  %indvar_flatten = phi i32 [ 0, %entry ], [ %indvar_flatten_next, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exit, label %.reset

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @YUV_SCALE_LOOP_X_YUV)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind
  %tmp_14_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %Y = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch1)
  %U = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch2)
  %V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch3)
  %tmp_6_cast_i = zext i8 %Y to i15
  %tmp_7_i = mul i15 %tmp_6_cast_i, %tmp_cast_i
  %tmp_9_cast_i = zext i8 %U to i15
  %tmp_i = mul i15 %tmp_9_cast_i, %tmp_1_cast_i
  %tmp_4_cast_i = zext i8 %V to i15
  %tmp_8_i = mul i15 %tmp_4_cast_i, %tmp_2_cast_i
  %tmp_10_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_7_i, i32 7, i32 14)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch1, i8 %tmp_10_i)
  %tmp_11_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_i, i32 7, i32 14)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch2, i8 %tmp_11_i)
  %tmp_12_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_8_i, i32 7, i32 14)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch3, i8 %tmp_12_i)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_14_i)
  br label %0

.exit:                                            ; preds = %0
  ret void
}

define void @yuv_filter([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale)
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale)
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale)
  %p_scale_height = alloca i16, align 2
  %p_scale_width = alloca i16, align 2
  %p_yuv_height = alloca i16, align 2
  %p_yuv_width = alloca i16, align 2
  %V_scale_channel = alloca i8, align 1
  %U_scale_channel = alloca i8, align 1
  %Y_scale_channel = alloca i8, align 1
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
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
  %p_yuv_channels_ch1 = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_4, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch1)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_yuv_channels_ch2 = alloca i8, align 1
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch2)
  %empty_32 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_yuv_channels_ch3 = alloca i8, align 1
  %empty_33 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch3, i8* %p_yuv_channels_ch3)
  %empty_34 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_scale_channels_ch1 = alloca i8, align 1
  %empty_35 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_O_4, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch1)
  %empty_36 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_scale_channels_ch2 = alloca i8, align 1
  %empty_37 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_O_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch2)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_scale_channels_ch3 = alloca i8, align 1
  %empty_39 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_O, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch3, i8* %p_scale_channels_ch3)
  %empty_40 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_41 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @Y_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %Y_scale_channel, i8* %Y_scale_channel)
  %empty_42 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_43 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @U_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %U_scale_channel, i8* %U_scale_channel)
  %empty_44 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_45 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @V_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %V_scale_channel, i8* %V_scale_channel)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @rgb2yuv11([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch3, i16* %p_yuv_width, i16* %p_yuv_height, i8 %Y_scale_read, i8 %U_scale_read, i8 %V_scale_read, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_5, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch1)
  %empty_48 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_49 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_3, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch2)
  %empty_50 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_51 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch3, i8* %p_yuv_channels_ch3)
  %empty_52 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_53 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @p_yuv_OC_width_OC_cha, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_yuv_width, i16* %p_yuv_width)
  %empty_54 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_yuv_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_55 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_yuv_OC_height_OC_ch, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_yuv_height, i16* %p_yuv_height)
  %empty_56 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_yuv_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @yuv_scale(i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch3, i16* %p_yuv_width, i16* %p_yuv_height, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch3, i16* %p_scale_width, i16* %p_scale_height, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel)
  %empty_57 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_O_5, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch1)
  %empty_58 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_59 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_O_3, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch2)
  %empty_60 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_61 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_O_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch3, i8* %p_scale_channels_ch3)
  %empty_62 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_63 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @p_scale_OC_width_OC_c, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_scale_width, i16* %p_scale_width)
  %empty_64 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_scale_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_65 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @p_scale_OC_height_OC_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_scale_height, i16* %p_scale_height)
  %empty_66 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_scale_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @yuv2rgb(i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch3, i16* %p_scale_width, i16* %p_scale_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height)
  ret void
}

define internal fastcc void @yuv2rgb(i8* %in_channels_ch1, i8* %in_channels_ch2, i8* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3, i16* nocapture %out_width, i16* nocapture %out_height) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_67 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_68 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_69 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_70 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %width = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_width)
  %height = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_height)
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_width, i16 %width)
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_height, i16 %height)
  %cast = zext i16 %width to i32
  %cast1 = zext i16 %height to i32
  %bound = mul i32 %cast1, %cast
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ]
  %y = phi i16 [ 0, %0 ], [ %y_1, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_1 = add i16 1, %x
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @YUV2RGB_LOOP_X_YUV2R)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond = icmp eq i16 %y, %height
  %y_mid2 = select i1 %exitcond, i16 0, i16 %y
  %tmp_mid2_v = select i1 %exitcond, i16 %x_1, i16 %x
  %tmp = trunc i16 %tmp_mid2_v to i13
  %p_shl2_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0)
  %tmp_1 = trunc i16 %tmp_mid2_v to i15
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_1, i8 0)
  %tmp_7 = add i23 %p_shl3_cast, %p_shl2_cast
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_cast = zext i16 %y_mid2 to i23
  %tmp_s = add i23 %tmp_7, %tmp_cast
  %tmp_15_cast = zext i23 %tmp_s to i64
  %out_channels_ch1_add = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_15_cast
  %out_channels_ch2_add = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_15_cast
  %out_channels_ch3_add = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_15_cast
  %Y = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch1)
  %U = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch2)
  %V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch3)
  %tmp_13_cast = zext i8 %Y to i9
  %C = add i9 -16, %tmp_13_cast
  %D = xor i8 %U, -128
  %E = xor i8 %V, -128
  %tmp_16_cast = sext i9 %C to i18
  %tmp_3 = mul i18 298, %tmp_16_cast
  %tmp_18_cast4 = sext i8 %E to i18
  %tmp_18_cast4_cast = sext i8 %E to i17
  %tmp_4 = mul i18 409, %tmp_18_cast4
  %tmp_5 = add i18 128, %tmp_3
  %tmp_20_cast = sext i18 %tmp_5 to i19
  %tmp_6 = add i18 %tmp_5, %tmp_4
  %tmp_8 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_6, i32 16, i32 17)
  %icmp = icmp eq i2 %tmp_8, 1
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_6, i32 17)
  %phitmp = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_6, i32 8, i32 15)
  %p_phitmp = select i1 %icmp, i8 -1, i8 0
  %tmp_10 = or i1 %icmp, %tmp_9
  %R = select i1 %tmp_10, i8 %p_phitmp, i8 %phitmp
  %tmp_26_cast3_cast = sext i8 %D to i16
  %tmp_11 = mul i16 -100, %tmp_26_cast3_cast
  %tmp_11_cast = sext i16 %tmp_11 to i17
  %tmp_12 = mul i17 -208, %tmp_18_cast4_cast
  %tmp1 = add i17 %tmp_11_cast, %tmp_12
  %tmp1_cast = sext i17 %tmp1 to i18
  %tmp_13 = add i18 %tmp1_cast, %tmp_5
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_13, i32 16, i32 17)
  %icmp1 = icmp eq i2 %tmp_14, 1
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_13, i32 17)
  %phitmp2 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_13, i32 8, i32 15)
  %p_phitmp2 = select i1 %icmp1, i8 -1, i8 0
  %tmp_16 = or i1 %icmp1, %tmp_15
  %G = select i1 %tmp_16, i8 %p_phitmp2, i8 %phitmp2
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8 %D, i9 0)
  %p_shl_cast = sext i17 %p_shl to i18
  %p_shl1 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %D, i2 0)
  %p_shl1_cast = sext i10 %p_shl1 to i18
  %tmp_17 = add i18 %p_shl_cast, %p_shl1_cast
  %tmp_35_cast = sext i18 %tmp_17 to i19
  %tmp_18 = add i18 %tmp_17, %tmp_5
  %tmp_19 = add i19 %tmp_20_cast, %tmp_35_cast
  %tmp_20 = call i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19 %tmp_19, i32 16, i32 18)
  %icmp2 = icmp sgt i3 %tmp_20, 0
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i19.i32(i19 %tmp_19, i32 18)
  %phitmp3 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_18, i32 8, i32 15)
  %p_phitmp3 = select i1 %icmp2, i8 -1, i8 0
  %tmp_22 = or i1 %icmp2, %tmp_21
  %B = select i1 %tmp_22, i8 %p_phitmp3, i8 %phitmp3
  store i8 %R, i8* %out_channels_ch1_add, align 1
  store i8 %G, i8* %out_channels_ch2_add, align 1
  store i8 %B, i8* %out_channels_ch3_add, align 1
  %empty_71 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_2)
  %y_1 = add i16 1, %y_mid2
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define internal fastcc void @rgb2yuv11([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16* nocapture %in_width, i16* nocapture %in_height, i8* %out_channels_ch1, i8* %out_channels_ch2, i8* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 %Y_scale, i8 %U_scale, i8 %V_scale, i8* %Y_scale_out, i8* %U_scale_out, i8* %V_scale_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_72 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_73 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_74 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_75 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_76 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale)
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale)
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale)
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %Y_scale_out, i8 %Y_scale_read)
  %empty_77 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %U_scale_out, i8 %U_scale_read)
  %empty_78 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %V_scale_out, i8 %V_scale_read)
  %width = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_width)
  %height = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_height)
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_width, i16 %width)
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_height, i16 %height)
  %cast = zext i16 %width to i32
  %cast1 = zext i16 %height to i32
  %bound = mul i32 %cast1, %cast
  br label %0

; <label>:0                                       ; preds = %.reset, %entry
  %indvar_flatten = phi i32 [ 0, %entry ], [ %indvar_flatten_next, %.reset ]
  %x_i_i = phi i16 [ 0, %entry ], [ %tmp_i_i_mid2_v, %.reset ]
  %y_i_i = phi i16 [ 0, %entry ], [ %y, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exit, label %.reset

.reset:                                           ; preds = %0
  %x = add i16 1, %x_i_i
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @RGB2YUV_LOOP_X_RGB2Y)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond_i_i = icmp eq i16 %y_i_i, %height
  %y_i_i_mid2 = select i1 %exitcond_i_i, i16 0, i16 %y_i_i
  %tmp_i_i_mid2_v = select i1 %exitcond_i_i, i16 %x, i16 %x_i_i
  %tmp_22 = trunc i16 %tmp_i_i_mid2_v to i13
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_22, i10 0)
  %tmp_23 = trunc i16 %tmp_i_i_mid2_v to i15
  %p_shl1_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_23, i8 0)
  %tmp_s = add i23 %p_shl_cast, %p_shl1_cast
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind
  %tmp_69_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_i_i_cast = zext i16 %y_i_i_mid2 to i23
  %tmp_24 = add i23 %tmp_i_i_cast, %tmp_s
  %tmp_26_cast = zext i23 %tmp_24 to i64
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_26_cast
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_26_cast
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_26_cast
  %R = load i8* %in_channels_ch1_addr, align 1
  %G = load i8* %in_channels_ch2_addr, align 1
  %B = load i8* %in_channels_ch3_addr, align 1
  %tmp_40_cast14_i_i = zext i8 %R to i15
  %p_shl5_i_i = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0)
  %p_shl5_cast_i_i = zext i14 %p_shl5_i_i to i15
  %p_shl6_i_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false)
  %p_shl6_cast_i_i_cast = zext i9 %p_shl6_i_i to i10
  %tmp_42_cast11_i_i = zext i8 %G to i16
  %tmp_42_cast11_i_i_ca = zext i8 %G to i13
  %p_shl4_i_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0)
  %p_shl4_cast_i_i = zext i15 %p_shl4_i_i to i16
  %tmp_44_cast10_i_i = zext i8 %B to i13
  %tmp_45_i_i = mul i13 25, %tmp_44_cast10_i_i
  %tmp = add i10 128, %p_shl6_cast_i_i_cast
  %tmp_cast = zext i10 %tmp to i15
  %tmp_46_i_i = add i15 %tmp_cast, %p_shl5_cast_i_i
  %tmp_46_cast_i_i = zext i15 %tmp_46_i_i to i16
  %tmp1 = add i16 %p_shl4_cast_i_i, %tmp_46_cast_i_i
  %tmp2 = add i13 %tmp_45_i_i, %tmp_42_cast11_i_i_ca
  %tmp2_cast = zext i13 %tmp2 to i16
  %tmp_48_i_i = add i16 %tmp2_cast, %tmp1
  %tmp_50_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_48_i_i, i32 8, i32 15)
  %Y = add i8 16, %tmp_50_i_i
  %tmp_51_i_i = mul i15 -38, %tmp_40_cast14_i_i
  %tmp_52_i_i = mul i16 -74, %tmp_42_cast11_i_i
  %p_shl2_i_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %B, i7 0)
  %p_shl2_cast_i_i = zext i15 %p_shl2_i_i to i16
  %p_shl3_i_i = call i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8 %B, i4 0)
  %p_shl3_cast7_i_i = zext i12 %p_shl3_i_i to i13
  %p_shl3_cast_i_i = zext i12 %p_shl3_i_i to i16
  %tmp_53_i_i = sub i16 %p_shl2_cast_i_i, %p_shl3_cast_i_i
  %tmp_54_i_i = add i15 128, %tmp_51_i_i
  %tmp_54_cast_i_i = sext i15 %tmp_54_i_i to i16
  %tmp3 = add i16 %tmp_53_i_i, %tmp_54_cast_i_i
  %tmp_56_i_i = add i16 %tmp3, %tmp_52_i_i
  %tmp_58_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_56_i_i, i32 8, i32 15)
  %U = xor i8 %tmp_58_i_i, -128
  %tmp_59_i_i = mul i15 122, %tmp_40_cast14_i_i
  %tmp_60_i_i = mul i16 -94, %tmp_42_cast11_i_i
  %p_neg_i_i = sub i13 0, %p_shl3_cast7_i_i
  %p_neg_cast_i_i = sext i13 %p_neg_i_i to i14
  %p_shl1_i_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %B, i1 false)
  %p_shl1_cast_i_i = zext i9 %p_shl1_i_i to i14
  %tmp_61_i_i = sub i14 %p_neg_cast_i_i, %p_shl1_cast_i_i
  %tmp_61_cast_i_i = sext i14 %tmp_61_i_i to i16
  %tmp_62_i_i = add i15 128, %tmp_59_i_i
  %tmp_62_cast_i_i = zext i15 %tmp_62_i_i to i16
  %tmp4 = add i16 %tmp_62_cast_i_i, %tmp_61_cast_i_i
  %tmp_64_i_i = add i16 %tmp4, %tmp_60_i_i
  %tmp_66_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_64_i_i, i32 8, i32 15)
  %V = xor i8 %tmp_66_i_i, -128
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch1, i8 %Y)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch2, i8 %U)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch3, i8 %V)
  %empty_79 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_69_i_i)
  %y = add i16 1, %y_i_i_mid2
  br label %0

.exit:                                            ; preds = %0
  ret void
}

declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1)
  ret void
}

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

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i8 @_ssdm_op_Read.ap_fifo.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i16 @_ssdm_op_Read.ap_fifo.i16P(i16*) {
entry:
  %empty = call i16 @_autotb_FifoRead_i16(i16* %0)
  ret i16 %empty
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

define weak i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_80 = trunc i18 %empty to i8
  ret i8 %empty_80
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_81 = trunc i16 %empty to i8
  ret i8 %empty_81
}

define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2)
  %empty_82 = trunc i15 %empty to i8
  ret i8 %empty_82
}

define weak i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_83 = trunc i19 %empty to i3
  ret i3 %empty_83
}

define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_84 = trunc i11 %empty to i3
  ret i3 %empty_84
}

define weak i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_85 = trunc i18 %empty to i2
  ret i2 %empty_85
}

define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_86 = trunc i10 %empty to i2
  ret i2 %empty_86
}

declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_87 = trunc i19 %empty to i11
  ret i11 %empty_87
}

define weak i10 @_ssdm_op_PartSelect.i10.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_88 = trunc i18 %empty to i10
  ret i10 %empty_88
}

define weak i1 @_ssdm_op_BitSelect.i1.i19.i32(i19, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i19
  %empty_89 = shl i19 1, %empty
  %empty_90 = and i19 %0, %empty_89
  %empty_91 = icmp ne i19 %empty_90, 0
  ret i1 %empty_91
}

define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18
  %empty_92 = shl i18 1, %empty
  %empty_93 = and i18 %0, %empty_92
  %empty_94 = icmp ne i18 %empty_93, 0
  ret i1 %empty_94
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_95 = zext i1 %1 to i9
  %empty_96 = shl i9 %empty, 1
  %empty_97 = or i9 %empty_96, %empty_95
  ret i9 %empty_97
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23
  %empty_98 = zext i8 %1 to i23
  %empty_99 = shl i23 %empty, 8
  %empty_100 = or i23 %empty_99, %empty_98
  ret i23 %empty_100
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23
  %empty_101 = zext i10 %1 to i23
  %empty_102 = shl i23 %empty, 10
  %empty_103 = or i23 %empty_102, %empty_101
  ret i23 %empty_103
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %0 to i17
  %empty_104 = zext i9 %1 to i17
  %empty_105 = shl i17 %empty, 9
  %empty_106 = or i17 %empty_105, %empty_104
  ret i17 %empty_106
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15
  %empty_107 = zext i7 %1 to i15
  %empty_108 = shl i15 %empty, 7
  %empty_109 = or i15 %empty_108, %empty_107
  ret i15 %empty_109
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14
  %empty_110 = zext i6 %1 to i14
  %empty_111 = shl i14 %empty, 6
  %empty_112 = or i14 %empty_111, %empty_110
  ret i14 %empty_112
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12
  %empty_113 = zext i4 %1 to i12
  %empty_114 = shl i12 %empty, 4
  %empty_115 = or i12 %empty_114, %empty_113
  ret i12 %empty_115
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10
  %empty_116 = zext i2 %1 to i10
  %empty_117 = shl i10 %empty, 2
  %empty_118 = or i10 %empty_117, %empty_116
  ret i10 %empty_118
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i16 @_autotb_FifoWrite_i16(i16*, i16)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i16 @_autotb_FifoRead_i16(i16*)

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
