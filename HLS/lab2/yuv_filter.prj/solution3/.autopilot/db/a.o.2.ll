; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_filter.str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=45 type=[8 x i8]*]
@_yuv_OC_width_OC_channel.str = internal unnamed_addr constant [19 x i8] c"_yuv.width.channel\00" ; [#uses=1 type=[19 x i8]*]
@_yuv_OC_height_OC_channel.str = internal unnamed_addr constant [20 x i8] c"_yuv.height.channel\00" ; [#uses=1 type=[20 x i8]*]
@_yuv_OC_channels_OC_ch3_OC_channel.str = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch3.channel\00" ; [#uses=1 type=[26 x i8]*]
@_yuv_OC_channels_OC_ch3.str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch3\00" ; [#uses=1 type=[18 x i8]*]
@_yuv_OC_channels_OC_ch2_OC_channel.str = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch2.channel\00" ; [#uses=1 type=[26 x i8]*]
@_yuv_OC_channels_OC_ch2.str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch2\00" ; [#uses=1 type=[18 x i8]*]
@_yuv_OC_channels_OC_ch1_OC_channel.str = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch1.channel\00" ; [#uses=1 type=[26 x i8]*]
@_yuv_OC_channels_OC_ch1.str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch1\00" ; [#uses=1 type=[18 x i8]*]
@_scale_OC_width_OC_channel.str = internal unnamed_addr constant [21 x i8] c"_scale.width.channel\00" ; [#uses=1 type=[21 x i8]*]
@_scale_OC_height_OC_channel.str = internal unnamed_addr constant [22 x i8] c"_scale.height.channel\00" ; [#uses=1 type=[22 x i8]*]
@_scale_OC_channels_OC_ch3_OC_channel.str = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch3.channel\00" ; [#uses=1 type=[28 x i8]*]
@_scale_OC_channels_OC_ch3.str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch3\00" ; [#uses=1 type=[20 x i8]*]
@_scale_OC_channels_OC_ch2_OC_channel.str = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch2.channel\00" ; [#uses=1 type=[28 x i8]*]
@_scale_OC_channels_OC_ch2.str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch2\00" ; [#uses=1 type=[20 x i8]*]
@_scale_OC_channels_OC_ch1_OC_channel.str = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch1.channel\00" ; [#uses=1 type=[28 x i8]*]
@_scale_OC_channels_OC_ch1.str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch1\00" ; [#uses=1 type=[20 x i8]*]
@Y_scale_channel.str = internal unnamed_addr constant [16 x i8] c"Y_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@V_scale_channel.str = internal unnamed_addr constant [16 x i8] c"V_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@U_scale_channel.str = internal unnamed_addr constant [16 x i8] c"U_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@.str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_X\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=318 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @yuv_scale(i8* %in.channels.ch1, i8* %in.channels.ch2, i8* %in.channels.ch3, i16* %in.width, i16* %in.height, i8* %out.channels.ch1, i8* %out.channels.ch2, i8* %out.channels.ch3, i16* %out.width, i16* %out.height, i8* nocapture %Y_scale, i8* nocapture %U_scale, i8* nocapture %V_scale) {
entry:
  %0 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %9 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %10 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %11 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %12 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %Y_scale.assign = load i8* %Y_scale, align 1    ; [#uses=1 type=i8]
  %U_scale.assign = load i8* %U_scale, align 1    ; [#uses=1 type=i8]
  %V_scale.assign = load i8* %V_scale, align 1    ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch1}, i64 0, metadata !65), !dbg !72 ; [debug line = 111:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch2}, i64 0, metadata !73), !dbg !72 ; [debug line = 111:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch3}, i64 0, metadata !79), !dbg !72 ; [debug line = 111:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !85), !dbg !72 ; [debug line = 111:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !89), !dbg !72 ; [debug line = 111:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch1}, i64 0, metadata !93), !dbg !95 ; [debug line = 112:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch2}, i64 0, metadata !96), !dbg !95 ; [debug line = 112:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch3}, i64 0, metadata !97), !dbg !95 ; [debug line = 112:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !98), !dbg !95 ; [debug line = 112:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !99), !dbg !95 ; [debug line = 112:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale.assign}, i64 0, metadata !100), !dbg !101 ; [debug line = 113:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale.assign}, i64 0, metadata !102), !dbg !103 ; [debug line = 114:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale.assign}, i64 0, metadata !104), !dbg !105 ; [debug line = 115:19] [debug variable = V_scale]
  %width = load i16* %in.width, align 2, !dbg !106 ; [#uses=2 type=i16] [debug line = 123:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !108), !dbg !106 ; [debug line = 123:4] [debug variable = width]
  %height = load i16* %in.height, align 2, !dbg !109 ; [#uses=2 type=i16] [debug line = 124:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !110), !dbg !109 ; [debug line = 124:4] [debug variable = height]
  store i16 %width, i16* %out.width, align 2, !dbg !111 ; [debug line = 125:4]
  store i16 %height, i16* %out.height, align 2, !dbg !112 ; [debug line = 126:4]
  %tmp.cast.i = zext i8 %Y_scale.assign to i15, !dbg !113 ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp.1.cast.i = zext i8 %U_scale.assign to i15, !dbg !118 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp.2.cast.i = zext i8 %V_scale.assign to i15, !dbg !119 ; [#uses=1 type=i15] [debug line = 129:9]
  br label %13, !dbg !119                         ; [debug line = 129:9]

; <label>:13                                      ; preds = %18, %entry
  %x.i = phi i16 [ 0, %entry ], [ %x, %18 ]       ; [#uses=2 type=i16]
  %exitcond1.i = icmp eq i16 %x.i, %width, !dbg !119 ; [#uses=1 type=i1] [debug line = 129:9]
  br i1 %exitcond1.i, label %.exit, label %14, !dbg !119 ; [debug line = 129:9]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str5) nounwind, !dbg !120 ; [debug line = 129:29]
  %tmp.13.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str5), !dbg !120 ; [#uses=1 type=i32] [debug line = 129:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str) nounwind, !dbg !121 ; [debug line = 130:1]
  br label %15, !dbg !122                         ; [debug line = 132:12]

; <label>:15                                      ; preds = %16, %14
  %y.i = phi i16 [ 0, %14 ], [ %y, %16 ]          ; [#uses=2 type=i16]
  %exitcond.i = icmp eq i16 %y.i, %height, !dbg !122 ; [#uses=1 type=i1] [debug line = 132:12]
  br i1 %exitcond.i, label %18, label %16, !dbg !122 ; [debug line = 132:12]

; <label>:16                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str6) nounwind, !dbg !123 ; [debug line = 132:33]
  %tmp.14.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str6), !dbg !123 ; [#uses=1 type=i32] [debug line = 132:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !124 ; [debug line = 133:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str) nounwind, !dbg !124 ; [debug line = 133:1]
  %Y = load volatile i8* %in.channels.ch1, align 1, !dbg !125 ; [#uses=1 type=i8] [debug line = 134:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !126), !dbg !125 ; [debug line = 134:2] [debug variable = Y]
  %U = load volatile i8* %in.channels.ch2, align 1, !dbg !127 ; [#uses=1 type=i8] [debug line = 135:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !128), !dbg !127 ; [debug line = 135:10] [debug variable = U]
  %V = load volatile i8* %in.channels.ch3, align 1, !dbg !129 ; [#uses=1 type=i8] [debug line = 136:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !130), !dbg !129 ; [debug line = 136:10] [debug variable = V]
  %tmp.6.cast.i = zext i8 %Y to i15, !dbg !131    ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp.7.i = mul i15 %tmp.cast.i, %tmp.6.cast.i, !dbg !131 ; [#uses=1 type=i15] [debug line = 137:10]
  %Yn = lshr i15 %tmp.7.i, 7, !dbg !131           ; [#uses=1 type=i15] [debug line = 137:10]
  call void @llvm.dbg.value(metadata !{i15 %Yn}, i64 0, metadata !132), !dbg !131 ; [debug line = 137:10] [debug variable = Yn]
  %tmp.9.cast.i = zext i8 %U to i15, !dbg !113    ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp..i = mul i15 %tmp.1.cast.i, %tmp.9.cast.i, !dbg !113 ; [#uses=1 type=i15] [debug line = 138:10]
  %Un = lshr i15 %tmp..i, 7, !dbg !113            ; [#uses=1 type=i15] [debug line = 138:10]
  call void @llvm.dbg.value(metadata !{i15 %Un}, i64 0, metadata !134), !dbg !113 ; [debug line = 138:10] [debug variable = Un]
  %tmp.4.cast.i = zext i8 %V to i15, !dbg !118    ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp.8.i = mul i15 %tmp.2.cast.i, %tmp.4.cast.i, !dbg !118 ; [#uses=1 type=i15] [debug line = 139:10]
  %Vn = lshr i15 %tmp.8.i, 7, !dbg !118           ; [#uses=1 type=i15] [debug line = 139:10]
  call void @llvm.dbg.value(metadata !{i15 %Vn}, i64 0, metadata !135), !dbg !118 ; [debug line = 139:10] [debug variable = Vn]
  %tmp.10.i = trunc i15 %Yn to i8, !dbg !136      ; [#uses=1 type=i8] [debug line = 140:10]
  store volatile i8 %tmp.10.i, i8* %out.channels.ch1, align 1, !dbg !136 ; [debug line = 140:10]
  %tmp.11.i = trunc i15 %Un to i8, !dbg !137      ; [#uses=1 type=i8] [debug line = 141:10]
  store volatile i8 %tmp.11.i, i8* %out.channels.ch2, align 1, !dbg !137 ; [debug line = 141:10]
  %tmp.12.i = trunc i15 %Vn to i8, !dbg !138      ; [#uses=1 type=i8] [debug line = 142:10]
  store volatile i8 %tmp.12.i, i8* %out.channels.ch3, align 1, !dbg !138 ; [debug line = 142:10]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str6, i32 %tmp.14.i), !dbg !139 ; [#uses=0 type=i32] [debug line = 143:7]
  %y = add i16 %y.i, 1, !dbg !140                 ; [#uses=1 type=i16] [debug line = 132:27]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !141), !dbg !140 ; [debug line = 132:27] [debug variable = y]
  br label %15, !dbg !140                         ; [debug line = 132:27]

; <label>:18                                      ; preds = %15
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str5, i32 %tmp.13.i), !dbg !142 ; [#uses=0 type=i32] [debug line = 144:4]
  %x = add i16 %x.i, 1, !dbg !143                 ; [#uses=1 type=i16] [debug line = 129:23]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !144), !dbg !143 ; [debug line = 129:23] [debug variable = x]
  br label %13, !dbg !143                         ; [debug line = 129:23]

.exit:                                            ; preds = %13
  ret void
}

; [#uses=0]
define void @yuv_filter([1920 x [1280 x i8]]* %in.channels.ch1, [1920 x [1280 x i8]]* %in.channels.ch2, [1920 x [1280 x i8]]* %in.channels.ch3, i16* %in.width, i16* %in.height, [1920 x [1280 x i8]]* %out.channels.ch1, [1920 x [1280 x i8]]* %out.channels.ch2, [1920 x [1280 x i8]]* %out.channels.ch3, i16* %out.width, i16* %out.height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  %_scale.height = alloca i16, align 2            ; [#uses=5 type=i16*]
  %_scale.width = alloca i16, align 2             ; [#uses=5 type=i16*]
  %_yuv.height = alloca i16, align 2              ; [#uses=5 type=i16*]
  %_yuv.width = alloca i16, align 2               ; [#uses=5 type=i16*]
  %V_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  %U_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  %Y_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str) nounwind, !dbg !145 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch1), !map !147
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch2), !map !154
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch3), !map !158
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in.width), !map !162
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in.height), !map !168
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch1), !map !172
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch2), !map !176
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch3), !map !180
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out.width), !map !184
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out.height), !map !188
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !192
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !198
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !202
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter.str) nounwind
  %_yuv.channels.ch1 = alloca i8, align 1         ; [#uses=8 type=i8*]
  %1 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @_yuv_OC_channels_OC_ch1_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch1, i8* %_yuv.channels.ch1) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_yuv.channels.ch2 = alloca i8, align 1         ; [#uses=8 type=i8*]
  %3 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @_yuv_OC_channels_OC_ch2_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch2, i8* %_yuv.channels.ch2) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_yuv.channels.ch3 = alloca i8, align 1         ; [#uses=8 type=i8*]
  %5 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @_yuv_OC_channels_OC_ch3_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch3, i8* %_yuv.channels.ch3) ; [#uses=0 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_scale.channels.ch1 = alloca i8, align 1       ; [#uses=8 type=i8*]
  %7 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @_scale_OC_channels_OC_ch1_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch1, i8* %_scale.channels.ch1) ; [#uses=0 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_scale.channels.ch2 = alloca i8, align 1       ; [#uses=8 type=i8*]
  %9 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @_scale_OC_channels_OC_ch2_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch2, i8* %_scale.channels.ch2) ; [#uses=0 type=i32]
  %10 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_scale.channels.ch3 = alloca i8, align 1       ; [#uses=8 type=i8*]
  %11 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @_scale_OC_channels_OC_ch3_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch3, i8* %_scale.channels.ch3) ; [#uses=0 type=i32]
  %12 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !206), !dbg !208 ; [debug line = 5:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !209), !dbg !208 ; [debug line = 5:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !210), !dbg !208 ; [debug line = 5:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !211), !dbg !208 ; [debug line = 5:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !212), !dbg !208 ; [debug line = 5:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !213), !dbg !215 ; [debug line = 6:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !216), !dbg !215 ; [debug line = 6:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !217), !dbg !215 ; [debug line = 6:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !218), !dbg !215 ; [debug line = 6:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !219), !dbg !215 ; [debug line = 6:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !220), !dbg !221 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !222), !dbg !223 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !224), !dbg !225 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.declare(metadata !{i8* %_yuv.channels.ch1}, metadata !226), !dbg !228 ; [debug line = 17:12] [debug variable = _yuv.channels.ch1]
  call void @llvm.dbg.declare(metadata !{i8* %_yuv.channels.ch2}, metadata !229), !dbg !228 ; [debug line = 17:12] [debug variable = _yuv.channels.ch2]
  call void @llvm.dbg.declare(metadata !{i8* %_yuv.channels.ch3}, metadata !230), !dbg !228 ; [debug line = 17:12] [debug variable = _yuv.channels.ch3]
  call void @llvm.dbg.declare(metadata !{i16* %_yuv.width}, metadata !231), !dbg !228 ; [debug line = 17:12] [debug variable = _yuv.width]
  call void @llvm.dbg.declare(metadata !{i16* %_yuv.height}, metadata !232), !dbg !228 ; [debug line = 17:12] [debug variable = _yuv.height]
  call void @llvm.dbg.declare(metadata !{i8* %_scale.channels.ch1}, metadata !233), !dbg !235 ; [debug line = 18:12] [debug variable = _scale.channels.ch1]
  call void @llvm.dbg.declare(metadata !{i8* %_scale.channels.ch2}, metadata !236), !dbg !235 ; [debug line = 18:12] [debug variable = _scale.channels.ch2]
  call void @llvm.dbg.declare(metadata !{i8* %_scale.channels.ch3}, metadata !237), !dbg !235 ; [debug line = 18:12] [debug variable = _scale.channels.ch3]
  call void @llvm.dbg.declare(metadata !{i16* %_scale.width}, metadata !238), !dbg !235 ; [debug line = 18:12] [debug variable = _scale.width]
  call void @llvm.dbg.declare(metadata !{i16* %_scale.height}, metadata !239), !dbg !235 ; [debug line = 18:12] [debug variable = _scale.height]
  call void @llvm.dbg.value(metadata !{i8* %_yuv.channels.ch1}, i64 0, metadata !240), !dbg !242 ; [debug line = 19:24] [debug variable = yuv.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %_yuv.channels.ch2}, i64 0, metadata !243), !dbg !242 ; [debug line = 19:24] [debug variable = yuv.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %_yuv.channels.ch3}, i64 0, metadata !244), !dbg !242 ; [debug line = 19:24] [debug variable = yuv.channels.ch3]
  call void @llvm.dbg.value(metadata !{i8* %_scale.channels.ch1}, i64 0, metadata !245), !dbg !247 ; [debug line = 20:28] [debug variable = scale.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %_scale.channels.ch2}, i64 0, metadata !248), !dbg !247 ; [debug line = 20:28] [debug variable = scale.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %_scale.channels.ch3}, i64 0, metadata !249), !dbg !247 ; [debug line = 20:28] [debug variable = scale.channels.ch3]
  %13 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @Y_scale_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i8* %Y_scale_channel, i8* %Y_scale_channel) ; [#uses=0 type=i32]
  %14 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %15 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @U_scale_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i8* %U_scale_channel, i8* %U_scale_channel) ; [#uses=0 type=i32]
  %16 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %17 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @V_scale_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i8* %V_scale_channel, i8* %V_scale_channel) ; [#uses=0 type=i32]
  %18 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call fastcc void @rgb2yuv11([1920 x [1280 x i8]]* %in.channels.ch1, [1920 x [1280 x i8]]* %in.channels.ch2, [1920 x [1280 x i8]]* %in.channels.ch3, i16* %in.width, i16* %in.height, i8* %_yuv.channels.ch1, i8* %_yuv.channels.ch2, i8* %_yuv.channels.ch3, i16* %_yuv.width, i16* %_yuv.height, i8 %Y_scale, i8 %U_scale, i8 %V_scale, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel)
  %19 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @_yuv_OC_channels_OC_ch1.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch1, i8* %_yuv.channels.ch1) ; [#uses=0 type=i32]
  %20 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %21 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @_yuv_OC_channels_OC_ch2.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch2, i8* %_yuv.channels.ch2) ; [#uses=0 type=i32]
  %22 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %23 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @_yuv_OC_channels_OC_ch3.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch3, i8* %_yuv.channels.ch3) ; [#uses=0 type=i32]
  %24 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %25 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @_yuv_OC_width_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i16* %_yuv.width, i16* %_yuv.width) ; [#uses=0 type=i32]
  %26 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %_yuv.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %27 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @_yuv_OC_height_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i16* %_yuv.height, i16* %_yuv.height) ; [#uses=0 type=i32]
  %28 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %_yuv.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call fastcc void @yuv_scale(i8* %_yuv.channels.ch1, i8* %_yuv.channels.ch2, i8* %_yuv.channels.ch3, i16* %_yuv.width, i16* %_yuv.height, i8* %_scale.channels.ch1, i8* %_scale.channels.ch2, i8* %_scale.channels.ch3, i16* %_scale.width, i16* %_scale.height, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel), !dbg !250 ; [debug line = 24:4]
  %29 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @_scale_OC_channels_OC_ch1.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch1, i8* %_scale.channels.ch1) ; [#uses=0 type=i32]
  %30 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %31 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @_scale_OC_channels_OC_ch2.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch2, i8* %_scale.channels.ch2) ; [#uses=0 type=i32]
  %32 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %33 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @_scale_OC_channels_OC_ch3.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch3, i8* %_scale.channels.ch3) ; [#uses=0 type=i32]
  %34 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %35 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @_scale_OC_width_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i16* %_scale.width, i16* %_scale.width) ; [#uses=0 type=i32]
  %36 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %_scale.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %37 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @_scale_OC_height_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i16* %_scale.height, i16* %_scale.height) ; [#uses=0 type=i32]
  %38 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %_scale.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call fastcc void @yuv2rgb(i8* %_scale.channels.ch1, i8* %_scale.channels.ch2, i8* %_scale.channels.ch3, i16* %_scale.width, i16* %_scale.height, [1920 x [1280 x i8]]* %out.channels.ch1, [1920 x [1280 x i8]]* %out.channels.ch2, [1920 x [1280 x i8]]* %out.channels.ch3, i16* %out.width, i16* %out.height), !dbg !251 ; [debug line = 25:4]
  ret void, !dbg !252                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc void @yuv2rgb(i8* %in.channels.ch1, i8* %in.channels.ch2, i8* %in.channels.ch3, i16* %in.width, i16* %in.height, [1920 x [1280 x i8]]* nocapture %out.channels.ch1, [1920 x [1280 x i8]]* nocapture %out.channels.ch2, [1920 x [1280 x i8]]* nocapture %out.channels.ch3, i16* nocapture %out.width, i16* nocapture %out.height) {
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch1}, i64 0, metadata !253), !dbg !255 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch2}, i64 0, metadata !256), !dbg !255 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch3}, i64 0, metadata !257), !dbg !255 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !258), !dbg !255 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !259), !dbg !255 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !260), !dbg !262 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !263), !dbg !262 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !264), !dbg !262 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !265), !dbg !262 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !266), !dbg !262 ; [debug line = 69:16] [debug variable = out.height]
  %width = load i16* %in.width, align 2, !dbg !267 ; [#uses=2 type=i16] [debug line = 83:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !269), !dbg !267 ; [debug line = 83:4] [debug variable = width]
  %height = load i16* %in.height, align 2, !dbg !270 ; [#uses=2 type=i16] [debug line = 84:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !271), !dbg !270 ; [debug line = 84:4] [debug variable = height]
  store i16 %width, i16* %out.width, align 2, !dbg !272 ; [debug line = 85:4]
  store i16 %height, i16* %out.height, align 2, !dbg !273 ; [debug line = 86:4]
  br label %6, !dbg !274                          ; [debug line = 89:9]

; <label>:6                                       ; preds = %10, %0
  %x = phi i16 [ 0, %0 ], [ %x.1, %10 ]           ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %width, !dbg !274  ; [#uses=1 type=i1] [debug line = 89:9]
  br i1 %exitcond1, label %12, label %7, !dbg !274 ; [debug line = 89:9]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str3) nounwind, !dbg !276 ; [debug line = 89:29]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str3), !dbg !276 ; [#uses=1 type=i32] [debug line = 89:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str) nounwind, !dbg !278 ; [debug line = 90:1]
  %tmp = zext i16 %x to i64, !dbg !279            ; [#uses=3 type=i64] [debug line = 94:2]
  br label %8, !dbg !282                          ; [debug line = 92:12]

; <label>:8                                       ; preds = %_ifconv, %7
  %y = phi i16 [ 0, %7 ], [ %y.1, %_ifconv ]      ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %height, !dbg !282  ; [#uses=1 type=i1] [debug line = 92:12]
  br i1 %exitcond, label %10, label %_ifconv, !dbg !282 ; [debug line = 92:12]

_ifconv:                                          ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str4) nounwind, !dbg !283 ; [debug line = 92:33]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str4), !dbg !283 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !284 ; [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str) nounwind, !dbg !284 ; [debug line = 93:1]
  %tmp. = zext i16 %y to i64, !dbg !279           ; [#uses=3 type=i64] [debug line = 94:2]
  %Y = load volatile i8* %in.channels.ch1, align 1, !dbg !279 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !285), !dbg !279 ; [debug line = 94:2] [debug variable = Y]
  %U = load volatile i8* %in.channels.ch2, align 1, !dbg !286 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !287), !dbg !286 ; [debug line = 95:10] [debug variable = U]
  %V = load volatile i8* %in.channels.ch3, align 1, !dbg !288 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !289), !dbg !288 ; [debug line = 96:10] [debug variable = V]
  %tmp.13.cast = zext i8 %Y to i9, !dbg !290      ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 %tmp.13.cast, -16, !dbg !290        ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !291), !dbg !290 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !292                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !293), !dbg !292 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !294                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !295), !dbg !294 ; [debug line = 99:10] [debug variable = E]
  %tmp.16.cast = sext i9 %C to i18, !dbg !296     ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.3 = mul i18 %tmp.16.cast, 298, !dbg !296   ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.18.cast4 = sext i8 %E to i18, !dbg !297    ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp.18.cast4.cast = sext i8 %E to i17, !dbg !296 ; [#uses=1 type=i17] [debug line = 100:10]
  %tmp.4 = mul i18 %tmp.18.cast4, 409, !dbg !296  ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.5 = add i18 %tmp.3, 128, !dbg !296         ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp.20.cast = sext i18 %tmp.5 to i19, !dbg !296 ; [#uses=1 type=i19] [debug line = 100:10]
  %tmp.6 = add i18 %tmp.5, %tmp.4, !dbg !296      ; [#uses=2 type=i18] [debug line = 100:10]
  %tmp.7 = lshr i18 %tmp.6, 8, !dbg !296          ; [#uses=2 type=i18] [debug line = 100:10]
  %tmp.8 = trunc i18 %tmp.7 to i10, !dbg !296     ; [#uses=1 type=i10] [debug line = 100:10]
  %tmp.9 = icmp sgt i10 %tmp.8, 255, !dbg !296    ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp.10 = icmp slt i18 %tmp.6, 0, !dbg !296     ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = trunc i18 %tmp.7 to i8, !dbg !296     ; [#uses=1 type=i8] [debug line = 100:10]
  %.phitmp = sext i1 %tmp.9 to i8, !dbg !296      ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp.13 = or i1 %tmp.9, %tmp.10, !dbg !296      ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp.13, i8 %.phitmp, i8 %phitmp, !dbg !296 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !298), !dbg !296 ; [debug line = 100:10] [debug variable = R]
  %tmp.26.cast3.cast = sext i8 %D to i16, !dbg !297 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp.26.cast = zext i8 %D to i10, !dbg !297     ; [#uses=1 type=i10] [debug line = 101:10]
  %tmp.26.cast5 = zext i8 %D to i17, !dbg !297    ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.11 = mul i16 %tmp.26.cast3.cast, -100, !dbg !297 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp.11.cast = sext i16 %tmp.11 to i17, !dbg !297 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.12 = mul i17 %tmp.18.cast4.cast, -208, !dbg !297 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp.11.cast, %tmp.12, !dbg !297 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1.cast = sext i17 %tmp1 to i18, !dbg !297   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp.14 = add i18 %tmp1.cast, %tmp.5, !dbg !297 ; [#uses=2 type=i18] [debug line = 101:10]
  %tmp.15 = lshr i18 %tmp.14, 8, !dbg !297        ; [#uses=2 type=i18] [debug line = 101:10]
  %tmp.16 = trunc i18 %tmp.15 to i10, !dbg !297   ; [#uses=1 type=i10] [debug line = 101:10]
  %tmp.17 = icmp sgt i10 %tmp.16, 255, !dbg !297  ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp.18 = icmp slt i18 %tmp.14, 0, !dbg !297    ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = trunc i18 %tmp.15 to i8, !dbg !297   ; [#uses=1 type=i8] [debug line = 101:10]
  %.phitmp2 = sext i1 %tmp.17 to i8, !dbg !297    ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp.21 = or i1 %tmp.17, %tmp.18, !dbg !297     ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp.21, i8 %.phitmp2, i8 %phitmp2, !dbg !297 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !299), !dbg !297 ; [debug line = 101:10] [debug variable = G]
  %_shl = shl nuw i17 %tmp.26.cast5, 9, !dbg !300 ; [#uses=1 type=i17] [debug line = 102:10]
  %_shl.cast = sext i17 %_shl to i18, !dbg !300   ; [#uses=1 type=i18] [debug line = 102:10]
  %_shl1 = shl nuw i10 %tmp.26.cast, 2, !dbg !300 ; [#uses=1 type=i10] [debug line = 102:10]
  %_shl1.cast = sext i10 %_shl1 to i18, !dbg !300 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp.19 = add i18 %_shl.cast, %_shl1.cast, !dbg !300 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp.35.cast = sext i18 %tmp.19 to i19, !dbg !300 ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp.20 = add i19 %tmp.20.cast, %tmp.35.cast, !dbg !300 ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp.22 = lshr i19 %tmp.20, 8, !dbg !300        ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp.25 = trunc i19 %tmp.22 to i11, !dbg !300   ; [#uses=1 type=i11] [debug line = 102:10]
  %tmp.23 = icmp sgt i11 %tmp.25, 255, !dbg !300  ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp.24 = icmp slt i19 %tmp.20, 0, !dbg !300    ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = trunc i19 %tmp.22 to i8, !dbg !300   ; [#uses=1 type=i8] [debug line = 102:10]
  %.phitmp3 = sext i1 %tmp.23 to i8, !dbg !300    ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp.26 = or i1 %tmp.23, %tmp.24, !dbg !300     ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp.26, i8 %.phitmp3, i8 %phitmp3, !dbg !300 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !301), !dbg !300 ; [debug line = 102:10] [debug variable = B]
  %out.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !302 ; [#uses=1 type=i8*] [debug line = 103:10]
  store i8 %R, i8* %out.channels.ch1.addr, align 1, !dbg !302 ; [debug line = 103:10]
  %out.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !303 ; [#uses=1 type=i8*] [debug line = 104:10]
  store i8 %G, i8* %out.channels.ch2.addr, align 1, !dbg !303 ; [debug line = 104:10]
  %out.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !304 ; [#uses=1 type=i8*] [debug line = 105:10]
  store i8 %B, i8* %out.channels.ch3.addr, align 1, !dbg !304 ; [debug line = 105:10]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str4, i32 %tmp.2), !dbg !305 ; [#uses=0 type=i32] [debug line = 106:7]
  %y.1 = add i16 %y, 1, !dbg !306                 ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y.1}, i64 0, metadata !307), !dbg !306 ; [debug line = 92:27] [debug variable = y]
  br label %8, !dbg !306                          ; [debug line = 92:27]

; <label>:10                                      ; preds = %8
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str3, i32 %tmp.1), !dbg !308 ; [#uses=0 type=i32] [debug line = 107:4]
  %x.1 = add i16 %x, 1, !dbg !309                 ; [#uses=1 type=i16] [debug line = 89:23]
  call void @llvm.dbg.value(metadata !{i16 %x.1}, i64 0, metadata !310), !dbg !309 ; [debug line = 89:23] [debug variable = x]
  br label %6, !dbg !309                          ; [debug line = 89:23]

; <label>:12                                      ; preds = %6
  ret void, !dbg !311                             ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc void @rgb2yuv11([1920 x [1280 x i8]]* nocapture %in.channels.ch1, [1920 x [1280 x i8]]* nocapture %in.channels.ch2, [1920 x [1280 x i8]]* nocapture %in.channels.ch3, i16* nocapture %in.width, i16* nocapture %in.height, i8* %out.channels.ch1, i8* %out.channels.ch2, i8* %out.channels.ch3, i16* %out.width, i16* %out.height, i8 %Y_scale, i8 %U_scale, i8 %V_scale, i8* %Y_scale_out, i8* %U_scale_out, i8* %V_scale_out) {
entry:
  %0 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  store i8 %Y_scale, i8* %Y_scale_out, align 1
  %6 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  store i8 %U_scale, i8* %U_scale_out, align 1
  %7 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  store i8 %V_scale, i8* %V_scale_out, align 1
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !312), !dbg !314 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !315), !dbg !314 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !316), !dbg !314 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !317), !dbg !314 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !318), !dbg !314 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch1}, i64 0, metadata !319), !dbg !321 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch2}, i64 0, metadata !322), !dbg !321 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch3}, i64 0, metadata !323), !dbg !321 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !324), !dbg !321 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !325), !dbg !321 ; [debug line = 31:16] [debug variable = out.height]
  %width = load i16* %in.width, align 2, !dbg !326 ; [#uses=2 type=i16] [debug line = 43:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !328), !dbg !326 ; [debug line = 43:4] [debug variable = width]
  %height = load i16* %in.height, align 2, !dbg !329 ; [#uses=2 type=i16] [debug line = 44:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !330), !dbg !329 ; [debug line = 44:4] [debug variable = height]
  store i16 %width, i16* %out.width, align 2, !dbg !331 ; [debug line = 45:4]
  store i16 %height, i16* %out.height, align 2, !dbg !332 ; [debug line = 46:4]
  br label %8, !dbg !333                          ; [debug line = 49:9]

; <label>:8                                       ; preds = %13, %entry
  %x.i.i = phi i16 [ 0, %entry ], [ %x, %13 ]     ; [#uses=3 type=i16]
  %exitcond1.i.i = icmp eq i16 %x.i.i, %width, !dbg !333 ; [#uses=1 type=i1] [debug line = 49:9]
  br i1 %exitcond1.i.i, label %.exit, label %9, !dbg !333 ; [debug line = 49:9]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str1) nounwind, !dbg !335 ; [debug line = 49:29]
  %tmp.68.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str1), !dbg !335 ; [#uses=1 type=i32] [debug line = 49:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str) nounwind, !dbg !337 ; [debug line = 50:1]
  %tmp.i.i = zext i16 %x.i.i to i64, !dbg !338    ; [#uses=3 type=i64] [debug line = 54:2]
  br label %10, !dbg !341                         ; [debug line = 52:12]

; <label>:10                                      ; preds = %11, %9
  %y.i.i = phi i16 [ 0, %9 ], [ %y, %11 ]         ; [#uses=3 type=i16]
  %exitcond.i.i = icmp eq i16 %y.i.i, %height, !dbg !341 ; [#uses=1 type=i1] [debug line = 52:12]
  br i1 %exitcond.i.i, label %13, label %11, !dbg !341 ; [debug line = 52:12]

; <label>:11                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !342 ; [debug line = 52:33]
  %tmp.69.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str2), !dbg !342 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !343 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str) nounwind, !dbg !343 ; [debug line = 53:1]
  %tmp..i.i = zext i16 %y.i.i to i64, !dbg !338   ; [#uses=3 type=i64] [debug line = 54:2]
  %in.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch1, i64 0, i64 %tmp.i.i, i64 %tmp..i.i, !dbg !338 ; [#uses=1 type=i8*] [debug line = 54:2]
  %R = load i8* %in.channels.ch1.addr, align 1, !dbg !338 ; [#uses=3 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !344), !dbg !338 ; [debug line = 54:2] [debug variable = R]
  %in.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch2, i64 0, i64 %tmp.i.i, i64 %tmp..i.i, !dbg !345 ; [#uses=1 type=i8*] [debug line = 55:10]
  %G = load i8* %in.channels.ch2.addr, align 1, !dbg !345 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !346), !dbg !345 ; [debug line = 55:10] [debug variable = G]
  %in.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch3, i64 0, i64 %tmp.i.i, i64 %tmp..i.i, !dbg !347 ; [#uses=1 type=i8*] [debug line = 56:10]
  %B = load i8* %in.channels.ch3.addr, align 1, !dbg !347 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !348), !dbg !347 ; [debug line = 56:10] [debug variable = B]
  %tmp.40.cast14.i.i = zext i8 %R to i15, !dbg !349 ; [#uses=2 type=i15] [debug line = 59:10]
  %tmp.40.cast12.i.i = zext i8 %R to i9, !dbg !350 ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.40.cast.i.i = zext i8 %R to i14, !dbg !350 ; [#uses=1 type=i14] [debug line = 57:10]
  %_shl5.i.i = shl nuw i14 %tmp.40.cast.i.i, 6, !dbg !350 ; [#uses=1 type=i14] [debug line = 57:10]
  %_shl5.cast.i.i = zext i14 %_shl5.i.i to i15, !dbg !350 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl6.i.i = shl nuw i9 %tmp.40.cast12.i.i, 1, !dbg !350 ; [#uses=1 type=i9] [debug line = 57:10]
  %_shl6.cast.i.i.cast = zext i9 %_shl6.i.i to i10, !dbg !350 ; [#uses=1 type=i10] [debug line = 57:10]
  %tmp.42.cast11.i.i = zext i8 %G to i16, !dbg !350 ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp.42.cast11.i.i.cast = zext i8 %G to i13, !dbg !350 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp.42.cast.i.i = zext i8 %G to i15, !dbg !350 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl4.i.i = shl nuw i15 %tmp.42.cast.i.i, 7, !dbg !350 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl4.cast.i.i = zext i15 %_shl4.i.i to i16, !dbg !350 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.44.cast10.i.i = zext i8 %B to i13, !dbg !350 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp.44.cast9.i.i = zext i8 %B to i12, !dbg !350 ; [#uses=1 type=i12] [debug line = 57:10]
  %tmp.44.cast8.i.i = zext i8 %B to i15, !dbg !350 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.44.cast.i.i = zext i8 %B to i9, !dbg !350  ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.45.i.i = mul i13 %tmp.44.cast10.i.i, 25, !dbg !350 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp = add i10 %_shl6.cast.i.i.cast, 128, !dbg !350 ; [#uses=1 type=i10] [debug line = 57:10]
  %tmp.cast = zext i10 %tmp to i15, !dbg !350     ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.46.i.i = add i15 %_shl5.cast.i.i, %tmp.cast, !dbg !350 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.46.cast.i.i = zext i15 %tmp.46.i.i to i16, !dbg !350 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %tmp.46.cast.i.i, %_shl4.cast.i.i, !dbg !350 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp2 = add i13 %tmp.42.cast11.i.i.cast, %tmp.45.i.i, !dbg !350 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2.cast = zext i13 %tmp2 to i16, !dbg !350   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.48.i.i = add i16 %tmp1, %tmp2.cast, !dbg !350 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.49.i.i = lshr i16 %tmp.48.i.i, 8, !dbg !350 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.50.i.i = trunc i16 %tmp.49.i.i to i8, !dbg !350 ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 %tmp.50.i.i, 16, !dbg !350          ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !351), !dbg !350 ; [debug line = 57:10] [debug variable = Y]
  %tmp.51.i.i = mul i15 %tmp.40.cast14.i.i, -38, !dbg !352 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp.52.i.i = mul i16 %tmp.42.cast11.i.i, -74, !dbg !352 ; [#uses=1 type=i16] [debug line = 58:10]
  %_shl2.i.i = shl nuw i15 %tmp.44.cast8.i.i, 7, !dbg !352 ; [#uses=1 type=i15] [debug line = 58:10]
  %_shl2.cast.i.i = zext i15 %_shl2.i.i to i16, !dbg !352 ; [#uses=1 type=i16] [debug line = 58:10]
  %_shl3.i.i = shl nuw i12 %tmp.44.cast9.i.i, 4, !dbg !352 ; [#uses=2 type=i12] [debug line = 58:10]
  %_shl3.cast7.i.i = zext i12 %_shl3.i.i to i13, !dbg !352 ; [#uses=1 type=i13] [debug line = 58:10]
  %_shl3.cast.i.i = zext i12 %_shl3.i.i to i16, !dbg !352 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.53.i.i = sub i16 %_shl2.cast.i.i, %_shl3.cast.i.i, !dbg !352 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.54.i.i = add i15 %tmp.51.i.i, 128, !dbg !352 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp.54.cast.i.i = sext i15 %tmp.54.i.i to i16, !dbg !352 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp3 = add i16 %tmp.54.cast.i.i, %tmp.53.i.i, !dbg !352 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.56.i.i = add i16 %tmp.52.i.i, %tmp3, !dbg !352 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.57.i.i = lshr i16 %tmp.56.i.i, 8, !dbg !352 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.58.i.i = trunc i16 %tmp.57.i.i to i8, !dbg !352 ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp.58.i.i, -128, !dbg !352        ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !353), !dbg !352 ; [debug line = 58:10] [debug variable = U]
  %tmp.59.i.i = mul i15 %tmp.40.cast14.i.i, 122, !dbg !349 ; [#uses=1 type=i15] [debug line = 59:10]
  %tmp.60.i.i = mul i16 %tmp.42.cast11.i.i, -94, !dbg !349 ; [#uses=1 type=i16] [debug line = 59:10]
  %_neg.i.i = sub i13 0, %_shl3.cast7.i.i         ; [#uses=1 type=i13]
  %_neg.cast.i.i = sext i13 %_neg.i.i to i14      ; [#uses=1 type=i14]
  %_shl1.i.i = shl nuw i9 %tmp.44.cast.i.i, 1, !dbg !349 ; [#uses=1 type=i9] [debug line = 59:10]
  %_shl1.cast.i.i = zext i9 %_shl1.i.i to i14, !dbg !349 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp.61.i.i = sub i14 %_neg.cast.i.i, %_shl1.cast.i.i, !dbg !349 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp.61.cast.i.i = sext i14 %tmp.61.i.i to i16, !dbg !349 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.62.i.i = add i15 %tmp.59.i.i, 128, !dbg !349 ; [#uses=1 type=i15] [debug line = 59:10]
  %tmp.62.cast.i.i = zext i15 %tmp.62.i.i to i16, !dbg !349 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp4 = add i16 %tmp.61.cast.i.i, %tmp.62.cast.i.i, !dbg !349 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.64.i.i = add i16 %tmp.60.i.i, %tmp4, !dbg !349 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.65.i.i = lshr i16 %tmp.64.i.i, 8, !dbg !349 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.66.i.i = trunc i16 %tmp.65.i.i to i8, !dbg !349 ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp.66.i.i, -128, !dbg !349        ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !354), !dbg !349 ; [debug line = 59:10] [debug variable = V]
  store volatile i8 %Y, i8* %out.channels.ch1, align 1, !dbg !355 ; [debug line = 60:10]
  store volatile i8 %U, i8* %out.channels.ch2, align 1, !dbg !356 ; [debug line = 61:10]
  store volatile i8 %V, i8* %out.channels.ch3, align 1, !dbg !357 ; [debug line = 62:10]
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str2, i32 %tmp.69.i.i), !dbg !358 ; [#uses=0 type=i32] [debug line = 63:7]
  %y = add i16 %y.i.i, 1, !dbg !359               ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !360), !dbg !359 ; [debug line = 52:27] [debug variable = y]
  br label %10, !dbg !359                         ; [debug line = 52:27]

; <label>:13                                      ; preds = %10
  %14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str1, i32 %tmp.68.i.i), !dbg !361 ; [#uses=0 type=i32] [debug line = 64:4]
  %x = add i16 %x.i.i, 1, !dbg !362               ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !363), !dbg !362 ; [debug line = 49:23] [debug variable = x]
  br label %8, !dbg !362                          ; [debug line = 49:23]

.exit:                                            ; preds = %8
  ret void
}

; [#uses=85]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=10]
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

; [#uses=45]
declare i32 @_ssdm_op_SpecInterface(...)

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=19]
declare i32 @_ssdm_op_SpecChannel(...)

; [#uses=13]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!52, !59, !59, !52}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution3/.autopilot/db/yuv_filter.pragma.2.c", metadata !"/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !39} ; [ DW_TAG_compile_unit ]
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
!85 = metadata !{i32 790531, metadata !66, metadata !"in.width", null, i32 111, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!86 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!87 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!88 = metadata !{metadata !27}
!89 = metadata !{i32 790531, metadata !66, metadata !"in.height", null, i32 111, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!90 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ]
!91 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!92 = metadata !{metadata !30}
!93 = metadata !{i32 790531, metadata !94, metadata !"out.channels.ch1", null, i32 112, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!94 = metadata !{i32 786689, metadata !38, metadata !"out", metadata !6, i32 33554544, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 112, i32 16, metadata !38, null}
!96 = metadata !{i32 790531, metadata !94, metadata !"out.channels.ch2", null, i32 112, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!97 = metadata !{i32 790531, metadata !94, metadata !"out.channels.ch3", null, i32 112, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!98 = metadata !{i32 790531, metadata !94, metadata !"out.width", null, i32 112, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!99 = metadata !{i32 790531, metadata !94, metadata !"out.height", null, i32 112, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!100 = metadata !{i32 786689, metadata !38, metadata !"Y_scale", metadata !6, i32 50331761, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 113, i32 19, metadata !38, null}
!102 = metadata !{i32 786689, metadata !38, metadata !"U_scale", metadata !6, i32 67108978, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 114, i32 19, metadata !38, null}
!104 = metadata !{i32 786689, metadata !38, metadata !"V_scale", metadata !6, i32 83886195, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 115, i32 19, metadata !38, null}
!106 = metadata !{i32 123, i32 4, metadata !107, null}
!107 = metadata !{i32 786443, metadata !38, i32 117, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786688, metadata !107, metadata !"width", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 124, i32 4, metadata !107, null}
!110 = metadata !{i32 786688, metadata !107, metadata !"height", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 125, i32 4, metadata !107, null}
!112 = metadata !{i32 126, i32 4, metadata !107, null}
!113 = metadata !{i32 138, i32 10, metadata !114, null}
!114 = metadata !{i32 786443, metadata !115, i32 132, i32 32, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !116, i32 132, i32 7, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !117, i32 129, i32 28, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !107, i32 129, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 139, i32 10, metadata !114, null}
!119 = metadata !{i32 129, i32 9, metadata !117, null}
!120 = metadata !{i32 129, i32 29, metadata !116, null}
!121 = metadata !{i32 130, i32 1, metadata !116, null}
!122 = metadata !{i32 132, i32 12, metadata !115, null}
!123 = metadata !{i32 132, i32 33, metadata !114, null}
!124 = metadata !{i32 133, i32 1, metadata !114, null}
!125 = metadata !{i32 134, i32 2, metadata !114, null}
!126 = metadata !{i32 786688, metadata !107, metadata !"Y", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 135, i32 10, metadata !114, null}
!128 = metadata !{i32 786688, metadata !107, metadata !"U", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 136, i32 10, metadata !114, null}
!130 = metadata !{i32 786688, metadata !107, metadata !"V", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 137, i32 10, metadata !114, null}
!132 = metadata !{i32 786688, metadata !107, metadata !"Yn", metadata !6, i32 121, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!134 = metadata !{i32 786688, metadata !107, metadata !"Un", metadata !6, i32 121, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 786688, metadata !107, metadata !"Vn", metadata !6, i32 121, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 140, i32 10, metadata !114, null}
!137 = metadata !{i32 141, i32 10, metadata !114, null}
!138 = metadata !{i32 142, i32 10, metadata !114, null}
!139 = metadata !{i32 143, i32 7, metadata !114, null}
!140 = metadata !{i32 132, i32 27, metadata !115, null}
!141 = metadata !{i32 786688, metadata !107, metadata !"y", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 144, i32 4, metadata !116, null}
!143 = metadata !{i32 129, i32 23, metadata !117, null}
!144 = metadata !{i32 786688, metadata !107, metadata !"x", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 12, i32 1, metadata !146, null}
!146 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 7, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"in.channels.ch1", metadata !151, metadata !"unsigned char", i32 0, i32 7}
!151 = metadata !{metadata !152, metadata !153}
!152 = metadata !{i32 0, i32 1919, i32 1}
!153 = metadata !{i32 0, i32 1279, i32 1}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 0, i32 7, metadata !156}
!156 = metadata !{metadata !157}
!157 = metadata !{metadata !"in.channels.ch2", metadata !151, metadata !"unsigned char", i32 0, i32 7}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 0, i32 7, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"in.channels.ch3", metadata !151, metadata !"unsigned char", i32 0, i32 7}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 0, i32 15, metadata !164}
!164 = metadata !{metadata !165}
!165 = metadata !{metadata !"in.width", metadata !166, metadata !"unsigned short", i32 0, i32 15}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 0, i32 1}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 0, i32 15, metadata !170}
!170 = metadata !{metadata !171}
!171 = metadata !{metadata !"in.height", metadata !166, metadata !"unsigned short", i32 0, i32 15}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 0, i32 7, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"out.channels.ch1", metadata !151, metadata !"unsigned char", i32 0, i32 7}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 7, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"out.channels.ch2", metadata !151, metadata !"unsigned char", i32 0, i32 7}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 7, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"out.channels.ch3", metadata !151, metadata !"unsigned char", i32 0, i32 7}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 15, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"out.width", metadata !166, metadata !"unsigned short", i32 0, i32 15}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 0, i32 15, metadata !190}
!190 = metadata !{metadata !191}
!191 = metadata !{metadata !"out.height", metadata !166, metadata !"unsigned short", i32 0, i32 15}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 0, i32 7, metadata !194}
!194 = metadata !{metadata !195}
!195 = metadata !{metadata !"Y_scale", metadata !196, metadata !"unsigned char", i32 0, i32 7}
!196 = metadata !{metadata !197}
!197 = metadata !{i32 0, i32 0, i32 0}
!198 = metadata !{metadata !199}
!199 = metadata !{i32 0, i32 7, metadata !200}
!200 = metadata !{metadata !201}
!201 = metadata !{metadata !"U_scale", metadata !196, metadata !"unsigned char", i32 0, i32 7}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 7, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"V_scale", metadata !196, metadata !"unsigned char", i32 0, i32 7}
!206 = metadata !{i32 790531, metadata !207, metadata !"in.channels.ch1", null, i32 5, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!207 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 5, i32 16, metadata !5, null}
!209 = metadata !{i32 790531, metadata !207, metadata !"in.channels.ch2", null, i32 5, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!210 = metadata !{i32 790531, metadata !207, metadata !"in.channels.ch3", null, i32 5, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!211 = metadata !{i32 790531, metadata !207, metadata !"in.width", null, i32 5, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!212 = metadata !{i32 790531, metadata !207, metadata !"in.height", null, i32 5, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!213 = metadata !{i32 790531, metadata !214, metadata !"out.channels.ch1", null, i32 6, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!214 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 6, i32 16, metadata !5, null}
!216 = metadata !{i32 790531, metadata !214, metadata !"out.channels.ch2", null, i32 6, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!217 = metadata !{i32 790531, metadata !214, metadata !"out.channels.ch3", null, i32 6, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!218 = metadata !{i32 790531, metadata !214, metadata !"out.width", null, i32 6, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!219 = metadata !{i32 790531, metadata !214, metadata !"out.height", null, i32 6, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!220 = metadata !{i32 786689, metadata !5, metadata !"Y_scale", metadata !6, i32 50331655, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 7, i32 19, metadata !5, null}
!222 = metadata !{i32 786689, metadata !5, metadata !"U_scale", metadata !6, i32 67108872, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 8, i32 19, metadata !5, null}
!224 = metadata !{i32 786689, metadata !5, metadata !"V_scale", metadata !6, i32 83886089, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 9, i32 19, metadata !5, null}
!226 = metadata !{i32 790529, metadata !227, metadata !"_yuv.channels.ch1", null, i32 17, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!227 = metadata !{i32 786688, metadata !146, metadata !"_yuv", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 17, i32 12, metadata !146, null}
!229 = metadata !{i32 790529, metadata !227, metadata !"_yuv.channels.ch2", null, i32 17, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!230 = metadata !{i32 790529, metadata !227, metadata !"_yuv.channels.ch3", null, i32 17, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!231 = metadata !{i32 790529, metadata !227, metadata !"_yuv.width", null, i32 17, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!232 = metadata !{i32 790529, metadata !227, metadata !"_yuv.height", null, i32 17, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!233 = metadata !{i32 790529, metadata !234, metadata !"_scale.channels.ch1", null, i32 18, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!234 = metadata !{i32 786688, metadata !146, metadata !"_scale", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 18, i32 12, metadata !146, null}
!236 = metadata !{i32 790529, metadata !234, metadata !"_scale.channels.ch2", null, i32 18, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!237 = metadata !{i32 790529, metadata !234, metadata !"_scale.channels.ch3", null, i32 18, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!238 = metadata !{i32 790529, metadata !234, metadata !"_scale.width", null, i32 18, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!239 = metadata !{i32 790529, metadata !234, metadata !"_scale.height", null, i32 18, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!240 = metadata !{i32 790529, metadata !241, metadata !"yuv.channels.ch1", null, i32 19, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!241 = metadata !{i32 786688, metadata !146, metadata !"yuv", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 19, i32 24, metadata !146, null}
!243 = metadata !{i32 790529, metadata !241, metadata !"yuv.channels.ch2", null, i32 19, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!244 = metadata !{i32 790529, metadata !241, metadata !"yuv.channels.ch3", null, i32 19, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!245 = metadata !{i32 790529, metadata !246, metadata !"scale.channels.ch1", null, i32 20, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!246 = metadata !{i32 786688, metadata !146, metadata !"scale", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 20, i32 28, metadata !146, null}
!248 = metadata !{i32 790529, metadata !246, metadata !"scale.channels.ch2", null, i32 20, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!249 = metadata !{i32 790529, metadata !246, metadata !"scale.channels.ch3", null, i32 20, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!250 = metadata !{i32 24, i32 4, metadata !146, null}
!251 = metadata !{i32 25, i32 4, metadata !146, null}
!252 = metadata !{i32 26, i32 1, metadata !146, null}
!253 = metadata !{i32 790531, metadata !254, metadata !"in.channels.ch1", null, i32 68, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!254 = metadata !{i32 786689, metadata !37, metadata !"in", metadata !6, i32 16777284, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 68, i32 16, metadata !37, null}
!256 = metadata !{i32 790531, metadata !254, metadata !"in.channels.ch2", null, i32 68, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!257 = metadata !{i32 790531, metadata !254, metadata !"in.channels.ch3", null, i32 68, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!258 = metadata !{i32 790531, metadata !254, metadata !"in.width", null, i32 68, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!259 = metadata !{i32 790531, metadata !254, metadata !"in.height", null, i32 68, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!260 = metadata !{i32 790531, metadata !261, metadata !"out.channels.ch1", null, i32 69, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!261 = metadata !{i32 786689, metadata !37, metadata !"out", metadata !6, i32 33554501, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!262 = metadata !{i32 69, i32 16, metadata !37, null}
!263 = metadata !{i32 790531, metadata !261, metadata !"out.channels.ch2", null, i32 69, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!264 = metadata !{i32 790531, metadata !261, metadata !"out.channels.ch3", null, i32 69, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!265 = metadata !{i32 790531, metadata !261, metadata !"out.width", null, i32 69, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!266 = metadata !{i32 790531, metadata !261, metadata !"out.height", null, i32 69, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!267 = metadata !{i32 83, i32 4, metadata !268, null}
!268 = metadata !{i32 786443, metadata !37, i32 71, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 786688, metadata !268, metadata !"width", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 84, i32 4, metadata !268, null}
!271 = metadata !{i32 786688, metadata !268, metadata !"height", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 85, i32 4, metadata !268, null}
!273 = metadata !{i32 86, i32 4, metadata !268, null}
!274 = metadata !{i32 89, i32 9, metadata !275, null}
!275 = metadata !{i32 786443, metadata !268, i32 89, i32 4, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 89, i32 29, metadata !277, null}
!277 = metadata !{i32 786443, metadata !275, i32 89, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!278 = metadata !{i32 90, i32 1, metadata !277, null}
!279 = metadata !{i32 94, i32 2, metadata !280, null}
!280 = metadata !{i32 786443, metadata !281, i32 92, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 786443, metadata !277, i32 92, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!282 = metadata !{i32 92, i32 12, metadata !281, null}
!283 = metadata !{i32 92, i32 33, metadata !280, null}
!284 = metadata !{i32 93, i32 1, metadata !280, null}
!285 = metadata !{i32 786688, metadata !268, metadata !"Y", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 95, i32 10, metadata !280, null}
!287 = metadata !{i32 786688, metadata !268, metadata !"U", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 96, i32 10, metadata !280, null}
!289 = metadata !{i32 786688, metadata !268, metadata !"V", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 97, i32 10, metadata !280, null}
!291 = metadata !{i32 786688, metadata !268, metadata !"C", metadata !6, i32 76, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!292 = metadata !{i32 98, i32 10, metadata !280, null}
!293 = metadata !{i32 786688, metadata !268, metadata !"D", metadata !6, i32 76, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 99, i32 10, metadata !280, null}
!295 = metadata !{i32 786688, metadata !268, metadata !"E", metadata !6, i32 76, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!296 = metadata !{i32 100, i32 10, metadata !280, null}
!297 = metadata !{i32 101, i32 10, metadata !280, null}
!298 = metadata !{i32 786688, metadata !268, metadata !"R", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 786688, metadata !268, metadata !"G", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!300 = metadata !{i32 102, i32 10, metadata !280, null}
!301 = metadata !{i32 786688, metadata !268, metadata !"B", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 103, i32 10, metadata !280, null}
!303 = metadata !{i32 104, i32 10, metadata !280, null}
!304 = metadata !{i32 105, i32 10, metadata !280, null}
!305 = metadata !{i32 106, i32 7, metadata !280, null}
!306 = metadata !{i32 92, i32 27, metadata !281, null}
!307 = metadata !{i32 786688, metadata !268, metadata !"y", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!308 = metadata !{i32 107, i32 4, metadata !277, null}
!309 = metadata !{i32 89, i32 23, metadata !275, null}
!310 = metadata !{i32 786688, metadata !268, metadata !"x", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!311 = metadata !{i32 108, i32 1, metadata !268, null}
!312 = metadata !{i32 790531, metadata !313, metadata !"in.channels.ch1", null, i32 30, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!313 = metadata !{i32 786689, metadata !34, metadata !"in", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!314 = metadata !{i32 30, i32 16, metadata !34, null}
!315 = metadata !{i32 790531, metadata !313, metadata !"in.channels.ch2", null, i32 30, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!316 = metadata !{i32 790531, metadata !313, metadata !"in.channels.ch3", null, i32 30, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!317 = metadata !{i32 790531, metadata !313, metadata !"in.width", null, i32 30, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!318 = metadata !{i32 790531, metadata !313, metadata !"in.height", null, i32 30, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!319 = metadata !{i32 790531, metadata !320, metadata !"out.channels.ch1", null, i32 31, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!320 = metadata !{i32 786689, metadata !34, metadata !"out", metadata !6, i32 33554463, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!321 = metadata !{i32 31, i32 16, metadata !34, null}
!322 = metadata !{i32 790531, metadata !320, metadata !"out.channels.ch2", null, i32 31, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!323 = metadata !{i32 790531, metadata !320, metadata !"out.channels.ch3", null, i32 31, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!324 = metadata !{i32 790531, metadata !320, metadata !"out.width", null, i32 31, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!325 = metadata !{i32 790531, metadata !320, metadata !"out.height", null, i32 31, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!326 = metadata !{i32 43, i32 4, metadata !327, null}
!327 = metadata !{i32 786443, metadata !34, i32 33, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!328 = metadata !{i32 786688, metadata !327, metadata !"width", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!329 = metadata !{i32 44, i32 4, metadata !327, null}
!330 = metadata !{i32 786688, metadata !327, metadata !"height", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!331 = metadata !{i32 45, i32 4, metadata !327, null}
!332 = metadata !{i32 46, i32 4, metadata !327, null}
!333 = metadata !{i32 49, i32 9, metadata !334, null}
!334 = metadata !{i32 786443, metadata !327, i32 49, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!335 = metadata !{i32 49, i32 29, metadata !336, null}
!336 = metadata !{i32 786443, metadata !334, i32 49, i32 28, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!337 = metadata !{i32 50, i32 1, metadata !336, null}
!338 = metadata !{i32 54, i32 2, metadata !339, null}
!339 = metadata !{i32 786443, metadata !340, i32 52, i32 32, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!340 = metadata !{i32 786443, metadata !336, i32 52, i32 7, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!341 = metadata !{i32 52, i32 12, metadata !340, null}
!342 = metadata !{i32 52, i32 33, metadata !339, null}
!343 = metadata !{i32 53, i32 1, metadata !339, null}
!344 = metadata !{i32 786688, metadata !327, metadata !"R", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!345 = metadata !{i32 55, i32 10, metadata !339, null}
!346 = metadata !{i32 786688, metadata !327, metadata !"G", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!347 = metadata !{i32 56, i32 10, metadata !339, null}
!348 = metadata !{i32 786688, metadata !327, metadata !"B", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!349 = metadata !{i32 59, i32 10, metadata !339, null}
!350 = metadata !{i32 57, i32 10, metadata !339, null}
!351 = metadata !{i32 786688, metadata !327, metadata !"Y", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!352 = metadata !{i32 58, i32 10, metadata !339, null}
!353 = metadata !{i32 786688, metadata !327, metadata !"U", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!354 = metadata !{i32 786688, metadata !327, metadata !"V", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!355 = metadata !{i32 60, i32 10, metadata !339, null}
!356 = metadata !{i32 61, i32 10, metadata !339, null}
!357 = metadata !{i32 62, i32 10, metadata !339, null}
!358 = metadata !{i32 63, i32 7, metadata !339, null}
!359 = metadata !{i32 52, i32 27, metadata !340, null}
!360 = metadata !{i32 786688, metadata !327, metadata !"y", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!361 = metadata !{i32 64, i32 4, metadata !336, null}
!362 = metadata !{i32 49, i32 23, metadata !334, null}
!363 = metadata !{i32 786688, metadata !327, metadata !"x", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
