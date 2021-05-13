; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution3/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_filter_str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=45 type=[8 x i8]*]
@p_yuv_OC_width_OC_cha = internal unnamed_addr constant [19 x i8] c"_yuv.width.channel\00" ; [#uses=1 type=[19 x i8]*]
@p_yuv_OC_height_OC_ch = internal unnamed_addr constant [20 x i8] c"_yuv.height.channel\00" ; [#uses=1 type=[20 x i8]*]
@p_yuv_OC_channels_OC_5 = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch1\00" ; [#uses=1 type=[18 x i8]*]
@p_yuv_OC_channels_OC_4 = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch1.channel\00" ; [#uses=1 type=[26 x i8]*]
@p_yuv_OC_channels_OC_3 = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch2\00" ; [#uses=1 type=[18 x i8]*]
@p_yuv_OC_channels_OC_2 = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch2.channel\00" ; [#uses=1 type=[26 x i8]*]
@p_yuv_OC_channels_OC_1 = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch3\00" ; [#uses=1 type=[18 x i8]*]
@p_yuv_OC_channels_OC_s = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch3.channel\00" ; [#uses=1 type=[26 x i8]*]
@p_scale_OC_width_OC_c = internal unnamed_addr constant [21 x i8] c"_scale.width.channel\00" ; [#uses=1 type=[21 x i8]*]
@p_scale_OC_height_OC_s = internal unnamed_addr constant [22 x i8] c"_scale.height.channel\00" ; [#uses=1 type=[22 x i8]*]
@p_scale_OC_channels_O_5 = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch1\00" ; [#uses=1 type=[20 x i8]*]
@p_scale_OC_channels_O_4 = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch1.channel\00" ; [#uses=1 type=[28 x i8]*]
@p_scale_OC_channels_O_3 = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch2\00" ; [#uses=1 type=[20 x i8]*]
@p_scale_OC_channels_O_2 = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch2.channel\00" ; [#uses=1 type=[28 x i8]*]
@p_scale_OC_channels_O_1 = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch3\00" ; [#uses=1 type=[20 x i8]*]
@p_scale_OC_channels_O = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch3.channel\00" ; [#uses=1 type=[28 x i8]*]
@Y_scale_channel_str = internal unnamed_addr constant [16 x i8] c"Y_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@YUV_SCALE_LOOP_X_YUV = internal unnamed_addr constant [34 x i8] c"YUV_SCALE_LOOP_X_YUV_SCALE_LOOP_Y\00" ; [#uses=1 type=[34 x i8]*]
@YUV2RGB_LOOP_X_YUV2R = internal unnamed_addr constant [30 x i8] c"YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y\00" ; [#uses=1 type=[30 x i8]*]
@V_scale_channel_str = internal unnamed_addr constant [16 x i8] c"V_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@U_scale_channel_str = internal unnamed_addr constant [16 x i8] c"U_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@RGB2YUV_LOOP_X_RGB2Y = internal unnamed_addr constant [30 x i8] c"RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y\00" ; [#uses=1 type=[30 x i8]*]
@p_str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=312 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @yuv_scale(i8* %in_channels_ch1, i8* %in_channels_ch2, i8* %in_channels_ch3, i16* %in_width, i16* %in_height, i8* %out_channels_ch1, i8* %out_channels_ch2, i8* %out_channels_ch3, i16* %out_width, i16* %out_height, i8* nocapture %Y_scale, i8* nocapture %U_scale, i8* nocapture %V_scale) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_26 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %Y_scale) ; [#uses=1 type=i8]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %U_scale) ; [#uses=1 type=i8]
  %V_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %V_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch1}, i64 0, metadata !13), !dbg !49 ; [debug line = 111:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch2}, i64 0, metadata !50), !dbg !49 ; [debug line = 111:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch3}, i64 0, metadata !56), !dbg !49 ; [debug line = 111:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !62), !dbg !49 ; [debug line = 111:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !66), !dbg !49 ; [debug line = 111:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch1}, i64 0, metadata !70), !dbg !72 ; [debug line = 112:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch2}, i64 0, metadata !73), !dbg !72 ; [debug line = 112:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch3}, i64 0, metadata !74), !dbg !72 ; [debug line = 112:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !75), !dbg !72 ; [debug line = 112:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !76), !dbg !72 ; [debug line = 112:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale_read}, i64 0, metadata !77), !dbg !78 ; [debug line = 113:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale_read}, i64 0, metadata !79), !dbg !80 ; [debug line = 114:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale_read}, i64 0, metadata !81), !dbg !82 ; [debug line = 115:19] [debug variable = V_scale]
  %width = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_width), !dbg !83 ; [#uses=2 type=i16] [debug line = 123:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !85), !dbg !83 ; [debug line = 123:4] [debug variable = width]
  %height = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_height), !dbg !86 ; [#uses=2 type=i16] [debug line = 124:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !87), !dbg !86 ; [debug line = 124:4] [debug variable = height]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_width, i16 %width), !dbg !88 ; [debug line = 125:4]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_height, i16 %height), !dbg !89 ; [debug line = 126:4]
  %tmp_cast_i = zext i8 %Y_scale_read to i15, !dbg !90 ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_1_cast_i = zext i8 %U_scale_read to i15, !dbg !95 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_2_cast_i = zext i8 %V_scale_read to i15, !dbg !96 ; [#uses=1 type=i15] [debug line = 129:9]
  %cast = zext i16 %width to i32                  ; [#uses=1 type=i32]
  %cast1 = zext i16 %height to i32                ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %0, !dbg !96                           ; [debug line = 129:9]

; <label>:0                                       ; preds = %.reset, %entry
  %indvar_flatten = phi i32 [ 0, %entry ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %.exit, label %.reset

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @YUV_SCALE_LOOP_X_YUV)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind, !dbg !97 ; [debug line = 132:33]
  %tmp_14_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6), !dbg !97 ; [#uses=1 type=i32] [debug line = 132:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !98 ; [debug line = 133:1]
  %Y = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch1), !dbg !99 ; [#uses=1 type=i8] [debug line = 134:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !100), !dbg !99 ; [debug line = 134:2] [debug variable = Y]
  %U = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch2), !dbg !101 ; [#uses=1 type=i8] [debug line = 135:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !102), !dbg !101 ; [debug line = 135:10] [debug variable = U]
  %V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch3), !dbg !103 ; [#uses=1 type=i8] [debug line = 136:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !104), !dbg !103 ; [debug line = 136:10] [debug variable = V]
  %tmp_6_cast_i = zext i8 %Y to i15, !dbg !105    ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp_7_i = mul i15 %tmp_6_cast_i, %tmp_cast_i, !dbg !105 ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp_9_cast_i = zext i8 %U to i15, !dbg !90     ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_i = mul i15 %tmp_9_cast_i, %tmp_1_cast_i, !dbg !90 ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_4_cast_i = zext i8 %V to i15, !dbg !95     ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_8_i = mul i15 %tmp_4_cast_i, %tmp_2_cast_i, !dbg !95 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_10_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_7_i, i32 7, i32 14), !dbg !106 ; [#uses=1 type=i8] [debug line = 140:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch1, i8 %tmp_10_i), !dbg !106 ; [debug line = 140:10]
  %tmp_11_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_i, i32 7, i32 14), !dbg !107 ; [#uses=1 type=i8] [debug line = 141:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch2, i8 %tmp_11_i), !dbg !107 ; [debug line = 141:10]
  %tmp_12_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_8_i, i32 7, i32 14), !dbg !108 ; [#uses=1 type=i8] [debug line = 142:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch3, i8 %tmp_12_i), !dbg !108 ; [debug line = 142:10]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_14_i), !dbg !109 ; [#uses=0 type=i32] [debug line = 143:7]
  br label %0, !dbg !110                          ; [debug line = 132:27]

.exit:                                            ; preds = %0
  ret void
}

; [#uses=0]
define void @yuv_filter([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %V_scale_read}, i64 0, metadata !111), !dbg !113 ; [debug line = 9:19] [debug variable = V_scale]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %U_scale_read}, i64 0, metadata !114), !dbg !115 ; [debug line = 8:19] [debug variable = U_scale]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale_read}, i64 0, metadata !116), !dbg !117 ; [debug line = 7:19] [debug variable = Y_scale]
  %p_scale_height = alloca i16, align 2           ; [#uses=5 type=i16*]
  %p_scale_width = alloca i16, align 2            ; [#uses=5 type=i16*]
  %p_yuv_height = alloca i16, align 2             ; [#uses=5 type=i16*]
  %p_yuv_width = alloca i16, align 2              ; [#uses=5 type=i16*]
  %V_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  %U_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  %Y_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !118 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch1), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch2), !map !127
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch3), !map !131
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_width), !map !135
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_height), !map !141
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch1), !map !145
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch2), !map !149
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch3), !map !153
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_width), !map !157
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_height), !map !161
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !165
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !171
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !175
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter_str) nounwind
  %p_yuv_channels_ch1 = alloca i8, align 1        ; [#uses=8 type=i8*]
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_4, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch1) ; [#uses=0 type=i32]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_yuv_channels_ch2 = alloca i8, align 1        ; [#uses=8 type=i8*]
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch2) ; [#uses=0 type=i32]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_yuv_channels_ch3 = alloca i8, align 1        ; [#uses=8 type=i8*]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch3, i8* %p_yuv_channels_ch3) ; [#uses=0 type=i32]
  %empty_34 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_scale_channels_ch1 = alloca i8, align 1      ; [#uses=8 type=i8*]
  %empty_35 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_O_4, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch1) ; [#uses=0 type=i32]
  %empty_36 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_scale_channels_ch2 = alloca i8, align 1      ; [#uses=8 type=i8*]
  %empty_37 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_O_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch2) ; [#uses=0 type=i32]
  %empty_38 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_scale_channels_ch3 = alloca i8, align 1      ; [#uses=8 type=i8*]
  %empty_39 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_O, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch3, i8* %p_scale_channels_ch3) ; [#uses=0 type=i32]
  %empty_40 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !179), !dbg !181 ; [debug line = 5:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !182), !dbg !181 ; [debug line = 5:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !183), !dbg !181 ; [debug line = 5:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !184), !dbg !181 ; [debug line = 5:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !185), !dbg !181 ; [debug line = 5:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !186), !dbg !188 ; [debug line = 6:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !189), !dbg !188 ; [debug line = 6:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !190), !dbg !188 ; [debug line = 6:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !191), !dbg !188 ; [debug line = 6:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !192), !dbg !188 ; [debug line = 6:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !116), !dbg !117 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !114), !dbg !115 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !111), !dbg !113 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.declare(metadata !{i8* %p_yuv_channels_ch1}, metadata !193), !dbg !195 ; [debug line = 17:12] [debug variable = _yuv.channels.ch1]
  call void @llvm.dbg.declare(metadata !{i8* %p_yuv_channels_ch2}, metadata !196), !dbg !195 ; [debug line = 17:12] [debug variable = _yuv.channels.ch2]
  call void @llvm.dbg.declare(metadata !{i8* %p_yuv_channels_ch3}, metadata !197), !dbg !195 ; [debug line = 17:12] [debug variable = _yuv.channels.ch3]
  call void @llvm.dbg.declare(metadata !{i16* %p_yuv_width}, metadata !198), !dbg !195 ; [debug line = 17:12] [debug variable = _yuv.width]
  call void @llvm.dbg.declare(metadata !{i16* %p_yuv_height}, metadata !199), !dbg !195 ; [debug line = 17:12] [debug variable = _yuv.height]
  call void @llvm.dbg.declare(metadata !{i8* %p_scale_channels_ch1}, metadata !200), !dbg !202 ; [debug line = 18:12] [debug variable = _scale.channels.ch1]
  call void @llvm.dbg.declare(metadata !{i8* %p_scale_channels_ch2}, metadata !203), !dbg !202 ; [debug line = 18:12] [debug variable = _scale.channels.ch2]
  call void @llvm.dbg.declare(metadata !{i8* %p_scale_channels_ch3}, metadata !204), !dbg !202 ; [debug line = 18:12] [debug variable = _scale.channels.ch3]
  call void @llvm.dbg.declare(metadata !{i16* %p_scale_width}, metadata !205), !dbg !202 ; [debug line = 18:12] [debug variable = _scale.width]
  call void @llvm.dbg.declare(metadata !{i16* %p_scale_height}, metadata !206), !dbg !202 ; [debug line = 18:12] [debug variable = _scale.height]
  call void @llvm.dbg.value(metadata !{i8* %p_yuv_channels_ch1}, i64 0, metadata !207), !dbg !209 ; [debug line = 19:24] [debug variable = yuv.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %p_yuv_channels_ch2}, i64 0, metadata !210), !dbg !209 ; [debug line = 19:24] [debug variable = yuv.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %p_yuv_channels_ch3}, i64 0, metadata !211), !dbg !209 ; [debug line = 19:24] [debug variable = yuv.channels.ch3]
  call void @llvm.dbg.value(metadata !{i8* %p_scale_channels_ch1}, i64 0, metadata !212), !dbg !214 ; [debug line = 20:28] [debug variable = scale.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %p_scale_channels_ch2}, i64 0, metadata !215), !dbg !214 ; [debug line = 20:28] [debug variable = scale.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %p_scale_channels_ch3}, i64 0, metadata !216), !dbg !214 ; [debug line = 20:28] [debug variable = scale.channels.ch3]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @Y_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %Y_scale_channel, i8* %Y_scale_channel) ; [#uses=0 type=i32]
  %empty_42 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @U_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %U_scale_channel, i8* %U_scale_channel) ; [#uses=0 type=i32]
  %empty_44 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @V_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %V_scale_channel, i8* %V_scale_channel) ; [#uses=0 type=i32]
  %empty_46 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call fastcc void @rgb2yuv11([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch3, i16* %p_yuv_width, i16* %p_yuv_height, i8 %Y_scale_read, i8 %U_scale_read, i8 %V_scale_read, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_5, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch1) ; [#uses=0 type=i32]
  %empty_48 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_49 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_3, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch2) ; [#uses=0 type=i32]
  %empty_50 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch3, i8* %p_yuv_channels_ch3) ; [#uses=0 type=i32]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @p_yuv_OC_width_OC_cha, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_yuv_width, i16* %p_yuv_width) ; [#uses=0 type=i32]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_yuv_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_55 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_yuv_OC_height_OC_ch, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_yuv_height, i16* %p_yuv_height) ; [#uses=0 type=i32]
  %empty_56 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_yuv_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call fastcc void @yuv_scale(i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch3, i16* %p_yuv_width, i16* %p_yuv_height, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch3, i16* %p_scale_width, i16* %p_scale_height, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel), !dbg !217 ; [debug line = 24:4]
  %empty_57 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_O_5, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch1) ; [#uses=0 type=i32]
  %empty_58 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_59 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_O_3, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch2) ; [#uses=0 type=i32]
  %empty_60 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_61 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_O_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch3, i8* %p_scale_channels_ch3) ; [#uses=0 type=i32]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_63 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @p_scale_OC_width_OC_c, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_scale_width, i16* %p_scale_width) ; [#uses=0 type=i32]
  %empty_64 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_scale_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_65 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @p_scale_OC_height_OC_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_scale_height, i16* %p_scale_height) ; [#uses=0 type=i32]
  %empty_66 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_scale_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call fastcc void @yuv2rgb(i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch3, i16* %p_scale_width, i16* %p_scale_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height), !dbg !218 ; [debug line = 25:4]
  ret void, !dbg !219                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc void @yuv2rgb(i8* %in_channels_ch1, i8* %in_channels_ch2, i8* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3, i16* nocapture %out_width, i16* nocapture %out_height) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_67 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_68 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_69 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_70 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch1}, i64 0, metadata !220), !dbg !225 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch2}, i64 0, metadata !226), !dbg !225 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch3}, i64 0, metadata !227), !dbg !225 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !228), !dbg !225 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !229), !dbg !225 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !230), !dbg !232 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !233), !dbg !232 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !234), !dbg !232 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !235), !dbg !232 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !236), !dbg !232 ; [debug line = 69:16] [debug variable = out.height]
  %width = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_width), !dbg !237 ; [#uses=2 type=i16] [debug line = 83:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !239), !dbg !237 ; [debug line = 83:4] [debug variable = width]
  %height = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_height), !dbg !240 ; [#uses=3 type=i16] [debug line = 84:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !241), !dbg !240 ; [debug line = 84:4] [debug variable = height]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_width, i16 %width), !dbg !242 ; [debug line = 85:4]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_height, i16 %height), !dbg !243 ; [debug line = 86:4]
  %cast = zext i16 %width to i32                  ; [#uses=1 type=i32]
  %cast1 = zext i16 %height to i32                ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %1, !dbg !244                          ; [debug line = 89:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y = phi i16 [ 0, %0 ], [ %y_1, %.reset ]       ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x_1}, i64 0, metadata !246), !dbg !247 ; [debug line = 89:23] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_1 = add i16 1, %x, !dbg !247                 ; [#uses=1 type=i16] [debug line = 89:23]
  call void @llvm.dbg.value(metadata !{i16 %x_1}, i64 0, metadata !246), !dbg !247 ; [debug line = 89:23] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @YUV2RGB_LOOP_X_YUV2R)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond = icmp eq i16 %y, %height, !dbg !248  ; [#uses=2 type=i1] [debug line = 92:12]
  %y_mid2 = select i1 %exitcond, i16 0, i16 %y    ; [#uses=2 type=i16]
  %tmp_mid2_v = select i1 %exitcond, i16 %x_1, i16 %x, !dbg !251 ; [#uses=3 type=i16] [debug line = 94:2]
  %tmp = trunc i16 %tmp_mid2_v to i13             ; [#uses=1 type=i13]
  %p_shl2_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_1 = trunc i16 %tmp_mid2_v to i15           ; [#uses=1 type=i15]
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_1, i8 0), !dbg !253 ; [#uses=1 type=i23] [debug line = 103:10]
  %tmp_7 = add i23 %p_shl3_cast, %p_shl2_cast, !dbg !253 ; [#uses=1 type=i23] [debug line = 103:10]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind, !dbg !254 ; [debug line = 92:33]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4), !dbg !254 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !255 ; [debug line = 93:1]
  %tmp_cast = zext i16 %y_mid2 to i23, !dbg !253  ; [#uses=1 type=i23] [debug line = 103:10]
  %tmp_s = add i23 %tmp_7, %tmp_cast, !dbg !253   ; [#uses=1 type=i23] [debug line = 103:10]
  %tmp_15_cast = zext i23 %tmp_s to i64, !dbg !253 ; [#uses=3 type=i64] [debug line = 103:10]
  %out_channels_ch1_add = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_15_cast, !dbg !253 ; [#uses=1 type=i8*] [debug line = 103:10]
  %out_channels_ch2_add = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_15_cast, !dbg !256 ; [#uses=1 type=i8*] [debug line = 104:10]
  %out_channels_ch3_add = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_15_cast, !dbg !257 ; [#uses=1 type=i8*] [debug line = 105:10]
  %Y = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch1), !dbg !251 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !258), !dbg !251 ; [debug line = 94:2] [debug variable = Y]
  %U = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch2), !dbg !259 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !260), !dbg !259 ; [debug line = 95:10] [debug variable = U]
  %V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch3), !dbg !261 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !262), !dbg !261 ; [debug line = 96:10] [debug variable = V]
  %tmp_13_cast = zext i8 %Y to i9, !dbg !263      ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 -16, %tmp_13_cast, !dbg !263        ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !264), !dbg !263 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !267                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !268), !dbg !267 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !269                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !270), !dbg !269 ; [debug line = 99:10] [debug variable = E]
  %tmp_16_cast = sext i9 %C to i18, !dbg !271     ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_3 = mul i18 298, %tmp_16_cast, !dbg !271   ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_18_cast4 = sext i8 %E to i18, !dbg !272    ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp_18_cast4_cast = sext i8 %E to i17, !dbg !271 ; [#uses=1 type=i17] [debug line = 100:10]
  %tmp_4 = mul i18 409, %tmp_18_cast4, !dbg !271  ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_5 = add i18 128, %tmp_3, !dbg !271         ; [#uses=4 type=i18] [debug line = 100:10]
  %tmp_20_cast = sext i18 %tmp_5 to i19, !dbg !271 ; [#uses=1 type=i19] [debug line = 100:10]
  %tmp_6 = add i18 %tmp_5, %tmp_4, !dbg !271      ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp_8 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_6, i32 16, i32 17), !dbg !271 ; [#uses=1 type=i2] [debug line = 100:10]
  %icmp = icmp eq i2 %tmp_8, 1, !dbg !271         ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_6, i32 17), !dbg !271 ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_6, i32 8, i32 15), !dbg !271 ; [#uses=1 type=i8] [debug line = 100:10]
  %p_phitmp = select i1 %icmp, i8 -1, i8 0, !dbg !271 ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp_10 = or i1 %icmp, %tmp_9, !dbg !271        ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp_10, i8 %p_phitmp, i8 %phitmp, !dbg !271 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !273), !dbg !271 ; [debug line = 100:10] [debug variable = R]
  %tmp_26_cast3_cast = sext i8 %D to i16, !dbg !272 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_11 = mul i16 -100, %tmp_26_cast3_cast, !dbg !272 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_11_cast = sext i16 %tmp_11 to i17, !dbg !272 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp_12 = mul i17 -208, %tmp_18_cast4_cast, !dbg !272 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp_11_cast, %tmp_12, !dbg !272 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1_cast = sext i17 %tmp1 to i18, !dbg !272   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp_13 = add i18 %tmp1_cast, %tmp_5, !dbg !272 ; [#uses=3 type=i18] [debug line = 101:10]
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_13, i32 16, i32 17), !dbg !272 ; [#uses=1 type=i2] [debug line = 101:10]
  %icmp1 = icmp eq i2 %tmp_14, 1, !dbg !272       ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_13, i32 17), !dbg !272 ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_13, i32 8, i32 15), !dbg !272 ; [#uses=1 type=i8] [debug line = 101:10]
  %p_phitmp2 = select i1 %icmp1, i8 -1, i8 0, !dbg !272 ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp_16 = or i1 %icmp1, %tmp_15, !dbg !272      ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp_16, i8 %p_phitmp2, i8 %phitmp2, !dbg !272 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !274), !dbg !272 ; [debug line = 101:10] [debug variable = G]
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8 %D, i9 0), !dbg !275 ; [#uses=1 type=i17] [debug line = 102:10]
  %p_shl_cast = sext i17 %p_shl to i18, !dbg !275 ; [#uses=1 type=i18] [debug line = 102:10]
  %p_shl1 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %D, i2 0), !dbg !275 ; [#uses=1 type=i10] [debug line = 102:10]
  %p_shl1_cast = sext i10 %p_shl1 to i18, !dbg !275 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp_17 = add i18 %p_shl_cast, %p_shl1_cast, !dbg !275 ; [#uses=2 type=i18] [debug line = 102:10]
  %tmp_35_cast = sext i18 %tmp_17 to i19, !dbg !275 ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp_18 = add i18 %tmp_17, %tmp_5               ; [#uses=1 type=i18]
  %tmp_19 = add i19 %tmp_20_cast, %tmp_35_cast, !dbg !275 ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp_20 = call i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19 %tmp_19, i32 16, i32 18), !dbg !275 ; [#uses=1 type=i3] [debug line = 102:10]
  %icmp2 = icmp sgt i3 %tmp_20, 0, !dbg !275      ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i19.i32(i19 %tmp_19, i32 18), !dbg !275 ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_18, i32 8, i32 15), !dbg !275 ; [#uses=1 type=i8] [debug line = 102:10]
  %p_phitmp3 = select i1 %icmp2, i8 -1, i8 0, !dbg !275 ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp_22 = or i1 %icmp2, %tmp_21, !dbg !275      ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp_22, i8 %p_phitmp3, i8 %phitmp3, !dbg !275 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !276), !dbg !275 ; [debug line = 102:10] [debug variable = B]
  store i8 %R, i8* %out_channels_ch1_add, align 1, !dbg !253 ; [debug line = 103:10]
  store i8 %G, i8* %out_channels_ch2_add, align 1, !dbg !256 ; [debug line = 104:10]
  store i8 %B, i8* %out_channels_ch3_add, align 1, !dbg !257 ; [debug line = 105:10]
  %empty_71 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_2), !dbg !277 ; [#uses=0 type=i32] [debug line = 106:7]
  %y_1 = add i16 1, %y_mid2, !dbg !278            ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y_1}, i64 0, metadata !279), !dbg !278 ; [debug line = 92:27] [debug variable = y]
  br label %1, !dbg !278                          ; [debug line = 92:27]

; <label>:2                                       ; preds = %1
  ret void, !dbg !280                             ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc void @rgb2yuv11([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16* nocapture %in_width, i16* nocapture %in_height, i8* %out_channels_ch1, i8* %out_channels_ch2, i8* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 %Y_scale, i8 %U_scale, i8 %V_scale, i8* %Y_scale_out, i8* %U_scale_out, i8* %V_scale_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_72 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_73 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_74 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_75 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_76 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale) ; [#uses=1 type=i8]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale) ; [#uses=1 type=i8]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale) ; [#uses=1 type=i8]
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %Y_scale_out, i8 %Y_scale_read)
  %empty_77 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %U_scale_out, i8 %U_scale_read)
  %empty_78 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %V_scale_out, i8 %V_scale_read)
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !281), !dbg !284 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !285), !dbg !284 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !286), !dbg !284 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !287), !dbg !284 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !288), !dbg !284 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch1}, i64 0, metadata !289), !dbg !291 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch2}, i64 0, metadata !292), !dbg !291 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch3}, i64 0, metadata !293), !dbg !291 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !294), !dbg !291 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !295), !dbg !291 ; [debug line = 31:16] [debug variable = out.height]
  %width = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_width), !dbg !296 ; [#uses=2 type=i16] [debug line = 43:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !298), !dbg !296 ; [debug line = 43:4] [debug variable = width]
  %height = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_height), !dbg !299 ; [#uses=3 type=i16] [debug line = 44:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !300), !dbg !299 ; [debug line = 44:4] [debug variable = height]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_width, i16 %width), !dbg !301 ; [debug line = 45:4]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_height, i16 %height), !dbg !302 ; [debug line = 46:4]
  %cast = zext i16 %width to i32                  ; [#uses=1 type=i32]
  %cast1 = zext i16 %height to i32                ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %0, !dbg !303                          ; [debug line = 49:9]

; <label>:0                                       ; preds = %.reset, %entry
  %indvar_flatten = phi i32 [ 0, %entry ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x_i_i = phi i16 [ 0, %entry ], [ %tmp_i_i_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y_i_i = phi i16 [ 0, %entry ], [ %y, %.reset ] ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !305), !dbg !306 ; [debug line = 49:23] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %.exit, label %.reset

.reset:                                           ; preds = %0
  %x = add i16 1, %x_i_i, !dbg !306               ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !305), !dbg !306 ; [debug line = 49:23] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @RGB2YUV_LOOP_X_RGB2Y)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond_i_i = icmp eq i16 %y_i_i, %height, !dbg !307 ; [#uses=2 type=i1] [debug line = 52:12]
  %y_i_i_mid2 = select i1 %exitcond_i_i, i16 0, i16 %y_i_i ; [#uses=2 type=i16]
  %tmp_i_i_mid2_v = select i1 %exitcond_i_i, i16 %x, i16 %x_i_i, !dbg !310 ; [#uses=3 type=i16] [debug line = 54:2]
  %tmp_22 = trunc i16 %tmp_i_i_mid2_v to i13      ; [#uses=1 type=i13]
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_22, i10 0) ; [#uses=1 type=i23]
  %tmp_23 = trunc i16 %tmp_i_i_mid2_v to i15      ; [#uses=1 type=i15]
  %p_shl1_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_23, i8 0), !dbg !310 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_s = add i23 %p_shl_cast, %p_shl1_cast, !dbg !310 ; [#uses=1 type=i23] [debug line = 54:2]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind, !dbg !312 ; [debug line = 52:33]
  %tmp_69_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2), !dbg !312 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !313 ; [debug line = 53:1]
  %tmp_i_i_cast = zext i16 %y_i_i_mid2 to i23, !dbg !310 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_24 = add i23 %tmp_i_i_cast, %tmp_s, !dbg !310 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_26_cast = zext i23 %tmp_24 to i64, !dbg !310 ; [#uses=3 type=i64] [debug line = 54:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_26_cast, !dbg !310 ; [#uses=1 type=i8*] [debug line = 54:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_26_cast, !dbg !314 ; [#uses=1 type=i8*] [debug line = 55:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_26_cast, !dbg !315 ; [#uses=1 type=i8*] [debug line = 56:10]
  %R = load i8* %in_channels_ch1_addr, align 1, !dbg !310 ; [#uses=3 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !316), !dbg !310 ; [debug line = 54:2] [debug variable = R]
  %G = load i8* %in_channels_ch2_addr, align 1, !dbg !314 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !317), !dbg !314 ; [debug line = 55:10] [debug variable = G]
  %B = load i8* %in_channels_ch3_addr, align 1, !dbg !315 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !318), !dbg !315 ; [debug line = 56:10] [debug variable = B]
  %tmp_40_cast14_i_i = zext i8 %R to i15, !dbg !319 ; [#uses=2 type=i15] [debug line = 59:10]
  %p_shl5_i_i = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0), !dbg !320 ; [#uses=1 type=i14] [debug line = 57:10]
  %p_shl5_cast_i_i = zext i14 %p_shl5_i_i to i15, !dbg !320 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl6_i_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false), !dbg !320 ; [#uses=1 type=i9] [debug line = 57:10]
  %p_shl6_cast_i_i_cast = zext i9 %p_shl6_i_i to i10, !dbg !320 ; [#uses=1 type=i10] [debug line = 57:10]
  %tmp_42_cast11_i_i = zext i8 %G to i16, !dbg !320 ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp_42_cast11_i_i_ca = zext i8 %G to i13, !dbg !320 ; [#uses=1 type=i13] [debug line = 57:10]
  %p_shl4_i_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0), !dbg !320 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl4_cast_i_i = zext i15 %p_shl4_i_i to i16, !dbg !320 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_44_cast10_i_i = zext i8 %B to i13, !dbg !320 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp_45_i_i = mul i13 25, %tmp_44_cast10_i_i, !dbg !320 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp = add i10 128, %p_shl6_cast_i_i_cast, !dbg !320 ; [#uses=1 type=i10] [debug line = 57:10]
  %tmp_cast = zext i10 %tmp to i15, !dbg !320     ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp_46_i_i = add i15 %tmp_cast, %p_shl5_cast_i_i, !dbg !320 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp_46_cast_i_i = zext i15 %tmp_46_i_i to i16, !dbg !320 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %p_shl4_cast_i_i, %tmp_46_cast_i_i, !dbg !320 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp2 = add i13 %tmp_45_i_i, %tmp_42_cast11_i_i_ca, !dbg !320 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2_cast = zext i13 %tmp2 to i16, !dbg !320   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_48_i_i = add i16 %tmp2_cast, %tmp1, !dbg !320 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_50_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_48_i_i, i32 8, i32 15), !dbg !320 ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 16, %tmp_50_i_i, !dbg !320          ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !321), !dbg !320 ; [debug line = 57:10] [debug variable = Y]
  %tmp_51_i_i = mul i15 -38, %tmp_40_cast14_i_i, !dbg !322 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp_52_i_i = mul i16 -74, %tmp_42_cast11_i_i, !dbg !322 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl2_i_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %B, i7 0), !dbg !322 ; [#uses=1 type=i15] [debug line = 58:10]
  %p_shl2_cast_i_i = zext i15 %p_shl2_i_i to i16, !dbg !322 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl3_i_i = call i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8 %B, i4 0), !dbg !322 ; [#uses=2 type=i12] [debug line = 58:10]
  %p_shl3_cast7_i_i = zext i12 %p_shl3_i_i to i13, !dbg !322 ; [#uses=1 type=i13] [debug line = 58:10]
  %p_shl3_cast_i_i = zext i12 %p_shl3_i_i to i16, !dbg !322 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_53_i_i = sub i16 %p_shl2_cast_i_i, %p_shl3_cast_i_i, !dbg !322 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_54_i_i = add i15 128, %tmp_51_i_i, !dbg !322 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp_54_cast_i_i = sext i15 %tmp_54_i_i to i16, !dbg !322 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp3 = add i16 %tmp_53_i_i, %tmp_54_cast_i_i, !dbg !322 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_56_i_i = add i16 %tmp3, %tmp_52_i_i, !dbg !322 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_58_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_56_i_i, i32 8, i32 15), !dbg !322 ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp_58_i_i, -128, !dbg !322        ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !323), !dbg !322 ; [debug line = 58:10] [debug variable = U]
  %tmp_59_i_i = mul i15 122, %tmp_40_cast14_i_i, !dbg !319 ; [#uses=1 type=i15] [debug line = 59:10]
  %tmp_60_i_i = mul i16 -94, %tmp_42_cast11_i_i, !dbg !319 ; [#uses=1 type=i16] [debug line = 59:10]
  %p_neg_i_i = sub i13 0, %p_shl3_cast7_i_i       ; [#uses=1 type=i13]
  %p_neg_cast_i_i = sext i13 %p_neg_i_i to i14    ; [#uses=1 type=i14]
  %p_shl1_i_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %B, i1 false), !dbg !319 ; [#uses=1 type=i9] [debug line = 59:10]
  %p_shl1_cast_i_i = zext i9 %p_shl1_i_i to i14, !dbg !319 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp_61_i_i = sub i14 %p_neg_cast_i_i, %p_shl1_cast_i_i, !dbg !319 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp_61_cast_i_i = sext i14 %tmp_61_i_i to i16, !dbg !319 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_62_i_i = add i15 128, %tmp_59_i_i, !dbg !319 ; [#uses=1 type=i15] [debug line = 59:10]
  %tmp_62_cast_i_i = zext i15 %tmp_62_i_i to i16, !dbg !319 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp4 = add i16 %tmp_62_cast_i_i, %tmp_61_cast_i_i, !dbg !319 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_64_i_i = add i16 %tmp4, %tmp_60_i_i, !dbg !319 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_66_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_64_i_i, i32 8, i32 15), !dbg !319 ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp_66_i_i, -128, !dbg !319        ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !324), !dbg !319 ; [debug line = 59:10] [debug variable = V]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch1, i8 %Y), !dbg !325 ; [debug line = 60:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch2, i8 %U), !dbg !326 ; [debug line = 61:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch3, i8 %V), !dbg !327 ; [debug line = 62:10]
  %empty_79 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_69_i_i), !dbg !328 ; [#uses=0 type=i32] [debug line = 63:7]
  %y = add i16 1, %y_i_i_mid2, !dbg !329          ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !330), !dbg !329 ; [debug line = 52:27] [debug variable = y]
  br label %0, !dbg !329                          ; [debug line = 52:27]

.exit:                                            ; preds = %0
  ret void
}

; [#uses=2]
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

; [#uses=85]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=10]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=6]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; [#uses=0 type=i8]
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_Write.ap_fifo.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; [#uses=0 type=i8]
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_Write.ap_fifo.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1) ; [#uses=0 type=i16]
  ret void
}

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

; [#uses=45]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=19]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=13]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=6]
define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=3]
define weak i8 @_ssdm_op_Read.ap_fifo.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=4]
define weak i16 @_ssdm_op_Read.ap_fifo.i16P(i16*) {
entry:
  %empty = call i16 @_autotb_FifoRead_i16(i16* %0) ; [#uses=1 type=i16]
  ret i16 %empty
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

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_80 = trunc i18 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_80
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_81 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_81
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; [#uses=1 type=i15]
  %empty_82 = trunc i15 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_82
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_83 = trunc i19 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_83
}

; [#uses=0]
define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_84 = trunc i11 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_84
}

; [#uses=2]
define weak i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_85 = trunc i18 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_85
}

; [#uses=0]
define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2) ; [#uses=1 type=i10]
  %empty_86 = trunc i10 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_86
}

; [#uses=0]
declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
declare i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
define weak i11 @_ssdm_op_PartSelect.i11.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_87 = trunc i19 %empty to i11             ; [#uses=1 type=i11]
  ret i11 %empty_87
}

; [#uses=0]
define weak i10 @_ssdm_op_PartSelect.i10.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_88 = trunc i18 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_88
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i19.i32(i19, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i19                    ; [#uses=1 type=i19]
  %empty_89 = shl i19 1, %empty                   ; [#uses=1 type=i19]
  %empty_90 = and i19 %0, %empty_89               ; [#uses=1 type=i19]
  %empty_91 = icmp ne i19 %empty_90, 0            ; [#uses=1 type=i1]
  ret i1 %empty_91
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18                    ; [#uses=1 type=i18]
  %empty_92 = shl i18 1, %empty                   ; [#uses=1 type=i18]
  %empty_93 = and i18 %0, %empty_92               ; [#uses=1 type=i18]
  %empty_94 = icmp ne i18 %empty_93, 0            ; [#uses=1 type=i1]
  ret i1 %empty_94
}

; [#uses=2]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_95 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_96 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_97 = or i9 %empty_96, %empty_95          ; [#uses=1 type=i9]
  ret i9 %empty_97
}

; [#uses=2]
define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23                     ; [#uses=1 type=i23]
  %empty_98 = zext i8 %1 to i23                   ; [#uses=1 type=i23]
  %empty_99 = shl i23 %empty, 8                   ; [#uses=1 type=i23]
  %empty_100 = or i23 %empty_99, %empty_98        ; [#uses=1 type=i23]
  ret i23 %empty_100
}

; [#uses=2]
define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23                     ; [#uses=1 type=i23]
  %empty_101 = zext i10 %1 to i23                 ; [#uses=1 type=i23]
  %empty_102 = shl i23 %empty, 10                 ; [#uses=1 type=i23]
  %empty_103 = or i23 %empty_102, %empty_101      ; [#uses=1 type=i23]
  ret i23 %empty_103
}

; [#uses=1]
define weak i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %0 to i17                      ; [#uses=1 type=i17]
  %empty_104 = zext i9 %1 to i17                  ; [#uses=1 type=i17]
  %empty_105 = shl i17 %empty, 9                  ; [#uses=1 type=i17]
  %empty_106 = or i17 %empty_105, %empty_104      ; [#uses=1 type=i17]
  ret i17 %empty_106
}

; [#uses=2]
define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15                      ; [#uses=1 type=i15]
  %empty_107 = zext i7 %1 to i15                  ; [#uses=1 type=i15]
  %empty_108 = shl i15 %empty, 7                  ; [#uses=1 type=i15]
  %empty_109 = or i15 %empty_108, %empty_107      ; [#uses=1 type=i15]
  ret i15 %empty_109
}

; [#uses=1]
define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14                      ; [#uses=1 type=i14]
  %empty_110 = zext i6 %1 to i14                  ; [#uses=1 type=i14]
  %empty_111 = shl i14 %empty, 6                  ; [#uses=1 type=i14]
  %empty_112 = or i14 %empty_111, %empty_110      ; [#uses=1 type=i14]
  ret i14 %empty_112
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12                      ; [#uses=1 type=i12]
  %empty_113 = zext i4 %1 to i12                  ; [#uses=1 type=i12]
  %empty_114 = shl i12 %empty, 4                  ; [#uses=1 type=i12]
  %empty_115 = or i12 %empty_114, %empty_113      ; [#uses=1 type=i12]
  ret i12 %empty_115
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10                      ; [#uses=1 type=i10]
  %empty_116 = zext i2 %1 to i10                  ; [#uses=1 type=i10]
  %empty_117 = shl i10 %empty, 2                  ; [#uses=1 type=i10]
  %empty_118 = or i10 %empty_117, %empty_116      ; [#uses=1 type=i10]
  ret i10 %empty_118
}

; [#uses=2]
declare i8 @_autotb_FifoWrite_i8(i8*, i8)

; [#uses=1]
declare i16 @_autotb_FifoWrite_i16(i16*, i16)

; [#uses=2]
declare i8 @_autotb_FifoRead_i8(i8*)

; [#uses=1]
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
!13 = metadata !{i32 790531, metadata !14, metadata !"in.channels.ch1", null, i32 111, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!14 = metadata !{i32 786689, metadata !15, metadata !"in", metadata !16, i32 16777327, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"yuv_scale", metadata !"yuv_scale", metadata !"", metadata !16, i32 110, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 117} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"yuv_filter.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !19, metadata !41, metadata !41, metadata !41}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786454, null, metadata !"image_t", metadata !16, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786451, null, metadata !"", metadata !22, i32 26, i64 58982432, i64 16, i32 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!22 = metadata !{i32 786473, metadata !"./image_aux.h", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", null} ; [ DW_TAG_file_type ]
!23 = metadata !{metadata !24, metadata !37, metadata !40}
!24 = metadata !{i32 786445, metadata !21, metadata !"channels", metadata !22, i32 27, i64 58982400, i64 8, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ]
!25 = metadata !{i32 786454, null, metadata !"channel_t", metadata !22, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 786451, null, metadata !"", metadata !22, i32 20, i64 58982400, i64 8, i32 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!27 = metadata !{metadata !28, metadata !35, metadata !36}
!28 = metadata !{i32 786445, metadata !26, metadata !"ch1", metadata !22, i32 21, i64 19660800, i64 8, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 19660800, i64 8, i32 0, i32 0, metadata !30, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{i32 786454, null, metadata !"image_pix_t", metadata !22, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33, metadata !34}
!33 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!34 = metadata !{i32 786465, i64 0, i64 1279}     ; [ DW_TAG_subrange_type ]
!35 = metadata !{i32 786445, metadata !26, metadata !"ch2", metadata !22, i32 22, i64 19660800, i64 8, i64 19660800, i32 0, metadata !29} ; [ DW_TAG_member ]
!36 = metadata !{i32 786445, metadata !26, metadata !"ch3", metadata !22, i32 23, i64 19660800, i64 8, i64 39321600, i32 0, metadata !29} ; [ DW_TAG_member ]
!37 = metadata !{i32 786445, metadata !21, metadata !"width", metadata !22, i32 28, i64 16, i64 16, i64 58982400, i32 0, metadata !38} ; [ DW_TAG_member ]
!38 = metadata !{i32 786454, null, metadata !"image_dim_t", metadata !22, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786445, metadata !21, metadata !"height", metadata !22, i32 29, i64 16, i64 16, i64 58982416, i32 0, metadata !38} ; [ DW_TAG_member ]
!41 = metadata !{i32 786454, null, metadata !"yuv_scale_t", metadata !16, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!44 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 786452, null, metadata !"", metadata !22, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786452, null, metadata !"", metadata !22, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!48 = metadata !{metadata !28}
!49 = metadata !{i32 111, i32 16, metadata !15, null}
!50 = metadata !{i32 790531, metadata !14, metadata !"in.channels.ch2", null, i32 111, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!51 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ]
!52 = metadata !{i32 786452, null, metadata !"", metadata !22, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786452, null, metadata !"", metadata !22, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!55 = metadata !{metadata !35}
!56 = metadata !{i32 790531, metadata !14, metadata !"in.channels.ch3", null, i32 111, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!57 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!58 = metadata !{i32 786452, null, metadata !"", metadata !22, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786452, null, metadata !"", metadata !22, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!61 = metadata !{metadata !36}
!62 = metadata !{i32 790531, metadata !14, metadata !"in.width", null, i32 111, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786452, null, metadata !"", metadata !22, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!65 = metadata !{metadata !37}
!66 = metadata !{i32 790531, metadata !14, metadata !"in.height", null, i32 111, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786452, null, metadata !"", metadata !22, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!69 = metadata !{metadata !40}
!70 = metadata !{i32 790531, metadata !71, metadata !"out.channels.ch1", null, i32 112, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!71 = metadata !{i32 786689, metadata !15, metadata !"out", metadata !16, i32 33554544, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 112, i32 16, metadata !15, null}
!73 = metadata !{i32 790531, metadata !71, metadata !"out.channels.ch2", null, i32 112, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!74 = metadata !{i32 790531, metadata !71, metadata !"out.channels.ch3", null, i32 112, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!75 = metadata !{i32 790531, metadata !71, metadata !"out.width", null, i32 112, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!76 = metadata !{i32 790531, metadata !71, metadata !"out.height", null, i32 112, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!77 = metadata !{i32 786689, metadata !15, metadata !"Y_scale", metadata !16, i32 50331761, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 113, i32 19, metadata !15, null}
!79 = metadata !{i32 786689, metadata !15, metadata !"U_scale", metadata !16, i32 67108978, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 114, i32 19, metadata !15, null}
!81 = metadata !{i32 786689, metadata !15, metadata !"V_scale", metadata !16, i32 83886195, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 115, i32 19, metadata !15, null}
!83 = metadata !{i32 123, i32 4, metadata !84, null}
!84 = metadata !{i32 786443, metadata !15, i32 117, i32 1, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786688, metadata !84, metadata !"width", metadata !16, i32 119, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 124, i32 4, metadata !84, null}
!87 = metadata !{i32 786688, metadata !84, metadata !"height", metadata !16, i32 119, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 125, i32 4, metadata !84, null}
!89 = metadata !{i32 126, i32 4, metadata !84, null}
!90 = metadata !{i32 138, i32 10, metadata !91, null}
!91 = metadata !{i32 786443, metadata !92, i32 132, i32 32, metadata !16, i32 15} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !93, i32 132, i32 7, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 129, i32 28, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !84, i32 129, i32 4, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 139, i32 10, metadata !91, null}
!96 = metadata !{i32 129, i32 9, metadata !94, null}
!97 = metadata !{i32 132, i32 33, metadata !91, null}
!98 = metadata !{i32 133, i32 1, metadata !91, null}
!99 = metadata !{i32 134, i32 2, metadata !91, null}
!100 = metadata !{i32 786688, metadata !84, metadata !"Y", metadata !16, i32 120, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 135, i32 10, metadata !91, null}
!102 = metadata !{i32 786688, metadata !84, metadata !"U", metadata !16, i32 120, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 136, i32 10, metadata !91, null}
!104 = metadata !{i32 786688, metadata !84, metadata !"V", metadata !16, i32 120, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 137, i32 10, metadata !91, null}
!106 = metadata !{i32 140, i32 10, metadata !91, null}
!107 = metadata !{i32 141, i32 10, metadata !91, null}
!108 = metadata !{i32 142, i32 10, metadata !91, null}
!109 = metadata !{i32 143, i32 7, metadata !91, null}
!110 = metadata !{i32 132, i32 27, metadata !92, null}
!111 = metadata !{i32 786689, metadata !112, metadata !"V_scale", metadata !16, i32 83886089, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 786478, i32 0, metadata !16, metadata !"yuv_filter", metadata !"yuv_filter", metadata !"", metadata !16, i32 4, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 11} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 9, i32 19, metadata !112, null}
!114 = metadata !{i32 786689, metadata !112, metadata !"U_scale", metadata !16, i32 67108872, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 8, i32 19, metadata !112, null}
!116 = metadata !{i32 786689, metadata !112, metadata !"Y_scale", metadata !16, i32 50331655, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 7, i32 19, metadata !112, null}
!118 = metadata !{i32 12, i32 1, metadata !119, null}
!119 = metadata !{i32 786443, metadata !112, i32 11, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 7, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"in.channels.ch1", metadata !124, metadata !"unsigned char", i32 0, i32 7}
!124 = metadata !{metadata !125, metadata !126}
!125 = metadata !{i32 0, i32 1919, i32 1}
!126 = metadata !{i32 0, i32 1279, i32 1}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 7, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"in.channels.ch2", metadata !124, metadata !"unsigned char", i32 0, i32 7}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 7, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"in.channels.ch3", metadata !124, metadata !"unsigned char", i32 0, i32 7}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 15, metadata !137}
!137 = metadata !{metadata !138}
!138 = metadata !{metadata !"in.width", metadata !139, metadata !"unsigned short", i32 0, i32 15}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 0, i32 1}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 15, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"in.height", metadata !139, metadata !"unsigned short", i32 0, i32 15}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 7, metadata !147}
!147 = metadata !{metadata !148}
!148 = metadata !{metadata !"out.channels.ch1", metadata !124, metadata !"unsigned char", i32 0, i32 7}
!149 = metadata !{metadata !150}
!150 = metadata !{i32 0, i32 7, metadata !151}
!151 = metadata !{metadata !152}
!152 = metadata !{metadata !"out.channels.ch2", metadata !124, metadata !"unsigned char", i32 0, i32 7}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 0, i32 7, metadata !155}
!155 = metadata !{metadata !156}
!156 = metadata !{metadata !"out.channels.ch3", metadata !124, metadata !"unsigned char", i32 0, i32 7}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 0, i32 15, metadata !159}
!159 = metadata !{metadata !160}
!160 = metadata !{metadata !"out.width", metadata !139, metadata !"unsigned short", i32 0, i32 15}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 0, i32 15, metadata !163}
!163 = metadata !{metadata !164}
!164 = metadata !{metadata !"out.height", metadata !139, metadata !"unsigned short", i32 0, i32 15}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 0, i32 7, metadata !167}
!167 = metadata !{metadata !168}
!168 = metadata !{metadata !"Y_scale", metadata !169, metadata !"unsigned char", i32 0, i32 7}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 0, i32 0, i32 0}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 0, i32 7, metadata !173}
!173 = metadata !{metadata !174}
!174 = metadata !{metadata !"U_scale", metadata !169, metadata !"unsigned char", i32 0, i32 7}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 0, i32 7, metadata !177}
!177 = metadata !{metadata !178}
!178 = metadata !{metadata !"V_scale", metadata !169, metadata !"unsigned char", i32 0, i32 7}
!179 = metadata !{i32 790531, metadata !180, metadata !"in.channels.ch1", null, i32 5, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!180 = metadata !{i32 786689, metadata !112, metadata !"in", metadata !16, i32 16777221, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 5, i32 16, metadata !112, null}
!182 = metadata !{i32 790531, metadata !180, metadata !"in.channels.ch2", null, i32 5, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!183 = metadata !{i32 790531, metadata !180, metadata !"in.channels.ch3", null, i32 5, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!184 = metadata !{i32 790531, metadata !180, metadata !"in.width", null, i32 5, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!185 = metadata !{i32 790531, metadata !180, metadata !"in.height", null, i32 5, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!186 = metadata !{i32 790531, metadata !187, metadata !"out.channels.ch1", null, i32 6, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!187 = metadata !{i32 786689, metadata !112, metadata !"out", metadata !16, i32 33554438, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 6, i32 16, metadata !112, null}
!189 = metadata !{i32 790531, metadata !187, metadata !"out.channels.ch2", null, i32 6, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!190 = metadata !{i32 790531, metadata !187, metadata !"out.channels.ch3", null, i32 6, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!191 = metadata !{i32 790531, metadata !187, metadata !"out.width", null, i32 6, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!192 = metadata !{i32 790531, metadata !187, metadata !"out.height", null, i32 6, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!193 = metadata !{i32 790529, metadata !194, metadata !"_yuv.channels.ch1", null, i32 17, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!194 = metadata !{i32 786688, metadata !119, metadata !"_yuv", metadata !16, i32 17, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 17, i32 12, metadata !119, null}
!196 = metadata !{i32 790529, metadata !194, metadata !"_yuv.channels.ch2", null, i32 17, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!197 = metadata !{i32 790529, metadata !194, metadata !"_yuv.channels.ch3", null, i32 17, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!198 = metadata !{i32 790529, metadata !194, metadata !"_yuv.width", null, i32 17, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!199 = metadata !{i32 790529, metadata !194, metadata !"_yuv.height", null, i32 17, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!200 = metadata !{i32 790529, metadata !201, metadata !"_scale.channels.ch1", null, i32 18, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!201 = metadata !{i32 786688, metadata !119, metadata !"_scale", metadata !16, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 18, i32 12, metadata !119, null}
!203 = metadata !{i32 790529, metadata !201, metadata !"_scale.channels.ch2", null, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!204 = metadata !{i32 790529, metadata !201, metadata !"_scale.channels.ch3", null, i32 18, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!205 = metadata !{i32 790529, metadata !201, metadata !"_scale.width", null, i32 18, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!206 = metadata !{i32 790529, metadata !201, metadata !"_scale.height", null, i32 18, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!207 = metadata !{i32 790529, metadata !208, metadata !"yuv.channels.ch1", null, i32 19, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!208 = metadata !{i32 786688, metadata !119, metadata !"yuv", metadata !16, i32 19, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 19, i32 24, metadata !119, null}
!210 = metadata !{i32 790529, metadata !208, metadata !"yuv.channels.ch2", null, i32 19, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!211 = metadata !{i32 790529, metadata !208, metadata !"yuv.channels.ch3", null, i32 19, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!212 = metadata !{i32 790529, metadata !213, metadata !"scale.channels.ch1", null, i32 20, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!213 = metadata !{i32 786688, metadata !119, metadata !"scale", metadata !16, i32 20, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 20, i32 28, metadata !119, null}
!215 = metadata !{i32 790529, metadata !213, metadata !"scale.channels.ch2", null, i32 20, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!216 = metadata !{i32 790529, metadata !213, metadata !"scale.channels.ch3", null, i32 20, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!217 = metadata !{i32 24, i32 4, metadata !119, null}
!218 = metadata !{i32 25, i32 4, metadata !119, null}
!219 = metadata !{i32 26, i32 1, metadata !119, null}
!220 = metadata !{i32 790531, metadata !221, metadata !"in.channels.ch1", null, i32 68, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!221 = metadata !{i32 786689, metadata !222, metadata !"in", metadata !16, i32 16777284, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!222 = metadata !{i32 786478, i32 0, metadata !16, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !16, i32 67, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 71} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!224 = metadata !{null, metadata !19, metadata !19}
!225 = metadata !{i32 68, i32 16, metadata !222, null}
!226 = metadata !{i32 790531, metadata !221, metadata !"in.channels.ch2", null, i32 68, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!227 = metadata !{i32 790531, metadata !221, metadata !"in.channels.ch3", null, i32 68, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!228 = metadata !{i32 790531, metadata !221, metadata !"in.width", null, i32 68, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!229 = metadata !{i32 790531, metadata !221, metadata !"in.height", null, i32 68, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!230 = metadata !{i32 790531, metadata !231, metadata !"out.channels.ch1", null, i32 69, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!231 = metadata !{i32 786689, metadata !222, metadata !"out", metadata !16, i32 33554501, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!232 = metadata !{i32 69, i32 16, metadata !222, null}
!233 = metadata !{i32 790531, metadata !231, metadata !"out.channels.ch2", null, i32 69, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!234 = metadata !{i32 790531, metadata !231, metadata !"out.channels.ch3", null, i32 69, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!235 = metadata !{i32 790531, metadata !231, metadata !"out.width", null, i32 69, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!236 = metadata !{i32 790531, metadata !231, metadata !"out.height", null, i32 69, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!237 = metadata !{i32 83, i32 4, metadata !238, null}
!238 = metadata !{i32 786443, metadata !222, i32 71, i32 1, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 786688, metadata !238, metadata !"width", metadata !16, i32 73, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 84, i32 4, metadata !238, null}
!241 = metadata !{i32 786688, metadata !238, metadata !"height", metadata !16, i32 73, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 85, i32 4, metadata !238, null}
!243 = metadata !{i32 86, i32 4, metadata !238, null}
!244 = metadata !{i32 89, i32 9, metadata !245, null}
!245 = metadata !{i32 786443, metadata !238, i32 89, i32 4, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 786688, metadata !238, metadata !"x", metadata !16, i32 72, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 89, i32 23, metadata !245, null}
!248 = metadata !{i32 92, i32 12, metadata !249, null}
!249 = metadata !{i32 786443, metadata !250, i32 92, i32 7, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 786443, metadata !245, i32 89, i32 28, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 94, i32 2, metadata !252, null}
!252 = metadata !{i32 786443, metadata !249, i32 92, i32 32, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 103, i32 10, metadata !252, null}
!254 = metadata !{i32 92, i32 33, metadata !252, null}
!255 = metadata !{i32 93, i32 1, metadata !252, null}
!256 = metadata !{i32 104, i32 10, metadata !252, null}
!257 = metadata !{i32 105, i32 10, metadata !252, null}
!258 = metadata !{i32 786688, metadata !238, metadata !"Y", metadata !16, i32 75, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 95, i32 10, metadata !252, null}
!260 = metadata !{i32 786688, metadata !238, metadata !"U", metadata !16, i32 75, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 96, i32 10, metadata !252, null}
!262 = metadata !{i32 786688, metadata !238, metadata !"V", metadata !16, i32 75, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 97, i32 10, metadata !252, null}
!264 = metadata !{i32 786688, metadata !238, metadata !"C", metadata !16, i32 76, metadata !265, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !16, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !266} ; [ DW_TAG_typedef ]
!266 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!267 = metadata !{i32 98, i32 10, metadata !252, null}
!268 = metadata !{i32 786688, metadata !238, metadata !"D", metadata !16, i32 76, metadata !265, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!269 = metadata !{i32 99, i32 10, metadata !252, null}
!270 = metadata !{i32 786688, metadata !238, metadata !"E", metadata !16, i32 76, metadata !265, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 100, i32 10, metadata !252, null}
!272 = metadata !{i32 101, i32 10, metadata !252, null}
!273 = metadata !{i32 786688, metadata !238, metadata !"R", metadata !16, i32 74, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 786688, metadata !238, metadata !"G", metadata !16, i32 74, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 102, i32 10, metadata !252, null}
!276 = metadata !{i32 786688, metadata !238, metadata !"B", metadata !16, i32 74, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 106, i32 7, metadata !252, null}
!278 = metadata !{i32 92, i32 27, metadata !249, null}
!279 = metadata !{i32 786688, metadata !238, metadata !"y", metadata !16, i32 72, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 108, i32 1, metadata !238, null}
!281 = metadata !{i32 790531, metadata !282, metadata !"in.channels.ch1", null, i32 30, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!282 = metadata !{i32 786689, metadata !283, metadata !"in", metadata !16, i32 16777246, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!283 = metadata !{i32 786478, i32 0, metadata !16, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !16, i32 29, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 33} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 30, i32 16, metadata !283, null}
!285 = metadata !{i32 790531, metadata !282, metadata !"in.channels.ch2", null, i32 30, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!286 = metadata !{i32 790531, metadata !282, metadata !"in.channels.ch3", null, i32 30, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!287 = metadata !{i32 790531, metadata !282, metadata !"in.width", null, i32 30, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!288 = metadata !{i32 790531, metadata !282, metadata !"in.height", null, i32 30, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!289 = metadata !{i32 790531, metadata !290, metadata !"out.channels.ch1", null, i32 31, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!290 = metadata !{i32 786689, metadata !283, metadata !"out", metadata !16, i32 33554463, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!291 = metadata !{i32 31, i32 16, metadata !283, null}
!292 = metadata !{i32 790531, metadata !290, metadata !"out.channels.ch2", null, i32 31, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!293 = metadata !{i32 790531, metadata !290, metadata !"out.channels.ch3", null, i32 31, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!294 = metadata !{i32 790531, metadata !290, metadata !"out.width", null, i32 31, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!295 = metadata !{i32 790531, metadata !290, metadata !"out.height", null, i32 31, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!296 = metadata !{i32 43, i32 4, metadata !297, null}
!297 = metadata !{i32 786443, metadata !283, i32 33, i32 1, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!298 = metadata !{i32 786688, metadata !297, metadata !"width", metadata !16, i32 35, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 44, i32 4, metadata !297, null}
!300 = metadata !{i32 786688, metadata !297, metadata !"height", metadata !16, i32 35, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!301 = metadata !{i32 45, i32 4, metadata !297, null}
!302 = metadata !{i32 46, i32 4, metadata !297, null}
!303 = metadata !{i32 49, i32 9, metadata !304, null}
!304 = metadata !{i32 786443, metadata !297, i32 49, i32 4, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!305 = metadata !{i32 786688, metadata !297, metadata !"x", metadata !16, i32 34, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!306 = metadata !{i32 49, i32 23, metadata !304, null}
!307 = metadata !{i32 52, i32 12, metadata !308, null}
!308 = metadata !{i32 786443, metadata !309, i32 52, i32 7, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 786443, metadata !304, i32 49, i32 28, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!310 = metadata !{i32 54, i32 2, metadata !311, null}
!311 = metadata !{i32 786443, metadata !308, i32 52, i32 32, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 52, i32 33, metadata !311, null}
!313 = metadata !{i32 53, i32 1, metadata !311, null}
!314 = metadata !{i32 55, i32 10, metadata !311, null}
!315 = metadata !{i32 56, i32 10, metadata !311, null}
!316 = metadata !{i32 786688, metadata !297, metadata !"R", metadata !16, i32 36, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!317 = metadata !{i32 786688, metadata !297, metadata !"G", metadata !16, i32 36, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!318 = metadata !{i32 786688, metadata !297, metadata !"B", metadata !16, i32 36, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!319 = metadata !{i32 59, i32 10, metadata !311, null}
!320 = metadata !{i32 57, i32 10, metadata !311, null}
!321 = metadata !{i32 786688, metadata !297, metadata !"Y", metadata !16, i32 36, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!322 = metadata !{i32 58, i32 10, metadata !311, null}
!323 = metadata !{i32 786688, metadata !297, metadata !"U", metadata !16, i32 36, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 786688, metadata !297, metadata !"V", metadata !16, i32 36, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!325 = metadata !{i32 60, i32 10, metadata !311, null}
!326 = metadata !{i32 61, i32 10, metadata !311, null}
!327 = metadata !{i32 62, i32 10, metadata !311, null}
!328 = metadata !{i32 63, i32 7, metadata !311, null}
!329 = metadata !{i32 52, i32 27, metadata !308, null}
!330 = metadata !{i32 786688, metadata !297, metadata !"y", metadata !16, i32 34, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
