; ModuleID = '/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab2/yuv_filter.prj/solution3/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_t.1 = type { %struct.channel_t.0, i16, i16 }
%struct.channel_t.0 = type { [1920 x [1280 x i8]], [1920 x [1280 x i8]], [1920 x [1280 x i8]] }

@yuv_filter.str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@.str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_X\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_X\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_X\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @yuv_scale(%struct.image_t.1* %in, %struct.image_t.1* %out, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %in}, i64 0, metadata !67), !dbg !68 ; [debug line = 111:16] [debug variable = in]
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %out}, i64 0, metadata !69), !dbg !70 ; [debug line = 112:16] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !71), !dbg !72 ; [debug line = 113:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !73), !dbg !74 ; [debug line = 114:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !75), !dbg !76 ; [debug line = 115:19] [debug variable = V_scale]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !77 ; [debug line = 118:1]
  %in.addr = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 1, !dbg !79 ; [#uses=1 type=i16*] [debug line = 123:4]
  %width = load i16* %in.addr, align 2, !dbg !79  ; [#uses=3 type=i16] [debug line = 123:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %width) nounwind
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !80), !dbg !79 ; [debug line = 123:4] [debug variable = width]
  %in.addr.1 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 2, !dbg !81 ; [#uses=1 type=i16*] [debug line = 124:4]
  %height = load i16* %in.addr.1, align 2, !dbg !81 ; [#uses=3 type=i16] [debug line = 124:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %height) nounwind
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !82), !dbg !81 ; [debug line = 124:4] [debug variable = height]
  %out.addr = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 1, !dbg !83 ; [#uses=1 type=i16*] [debug line = 125:4]
  store i16 %width, i16* %out.addr, align 2, !dbg !83 ; [debug line = 125:4]
  %out.addr.1 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 2, !dbg !84 ; [#uses=1 type=i16*] [debug line = 126:4]
  store i16 %height, i16* %out.addr.1, align 2, !dbg !84 ; [debug line = 126:4]
  %tmp = zext i8 %Y_scale to i16, !dbg !85        ; [#uses=1 type=i16] [debug line = 137:10]
  %tmp.1 = zext i8 %U_scale to i16, !dbg !90      ; [#uses=1 type=i16] [debug line = 138:10]
  %tmp.2 = zext i8 %V_scale to i16, !dbg !91      ; [#uses=1 type=i16] [debug line = 139:10]
  br label %1, !dbg !92                           ; [debug line = 129:9]

; <label>:1                                       ; preds = %5, %0
  %x = phi i16 [ 0, %0 ], [ %x.1, %5 ]            ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %width, !dbg !92   ; [#uses=1 type=i1] [debug line = 129:9]
  br i1 %exitcond1, label %6, label %2, !dbg !92  ; [debug line = 129:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !93 ; [debug line = 129:29]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !93 ; [#uses=1 type=i32] [debug line = 129:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !94 ; [debug line = 130:1]
  %tmp.3 = zext i16 %x to i64, !dbg !95           ; [#uses=6 type=i64] [debug line = 134:2]
  br label %3, !dbg !96                           ; [debug line = 132:12]

; <label>:3                                       ; preds = %4, %2
  %y = phi i16 [ 0, %2 ], [ %y.1, %4 ]            ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %height, !dbg !96   ; [#uses=1 type=i1] [debug line = 132:12]
  br i1 %exitcond, label %5, label %4, !dbg !96   ; [debug line = 132:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !97 ; [debug line = 132:33]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !97 ; [#uses=1 type=i32] [debug line = 132:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !98 ; [debug line = 133:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !98 ; [debug line = 133:1]
  %tmp.5 = zext i16 %y to i64, !dbg !95           ; [#uses=6 type=i64] [debug line = 134:2]
  %in.addr.2 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 0, i64 %tmp.3, i64 %tmp.5, !dbg !95 ; [#uses=1 type=i8*] [debug line = 134:2]
  %Y = load i8* %in.addr.2, align 1, !dbg !95     ; [#uses=2 type=i8] [debug line = 134:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Y) nounwind
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !99), !dbg !95 ; [debug line = 134:2] [debug variable = Y]
  %in.addr.3 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 1, i64 %tmp.3, i64 %tmp.5, !dbg !100 ; [#uses=1 type=i8*] [debug line = 135:10]
  %U = load i8* %in.addr.3, align 1, !dbg !100    ; [#uses=2 type=i8] [debug line = 135:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %U) nounwind
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !101), !dbg !100 ; [debug line = 135:10] [debug variable = U]
  %in.addr.4 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 2, i64 %tmp.3, i64 %tmp.5, !dbg !102 ; [#uses=1 type=i8*] [debug line = 136:10]
  %V = load i8* %in.addr.4, align 1, !dbg !102    ; [#uses=2 type=i8] [debug line = 136:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %V) nounwind
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !103), !dbg !102 ; [debug line = 136:10] [debug variable = V]
  %tmp.6 = zext i8 %Y to i16, !dbg !85            ; [#uses=1 type=i16] [debug line = 137:10]
  %tmp.7 = mul i16 %tmp.6, %tmp, !dbg !85         ; [#uses=1 type=i16] [debug line = 137:10]
  %Yn = lshr i16 %tmp.7, 7, !dbg !85              ; [#uses=1 type=i16] [debug line = 137:10]
  call void @llvm.dbg.value(metadata !{i16 %Yn}, i64 0, metadata !104), !dbg !85 ; [debug line = 137:10] [debug variable = Yn]
  %tmp.9 = zext i8 %U to i16, !dbg !90            ; [#uses=1 type=i16] [debug line = 138:10]
  %tmp.10 = mul i16 %tmp.9, %tmp.1, !dbg !90      ; [#uses=1 type=i16] [debug line = 138:10]
  %Un = lshr i16 %tmp.10, 7, !dbg !90             ; [#uses=1 type=i16] [debug line = 138:10]
  call void @llvm.dbg.value(metadata !{i16 %Un}, i64 0, metadata !106), !dbg !90 ; [debug line = 138:10] [debug variable = Un]
  %tmp.12 = zext i8 %V to i16, !dbg !91           ; [#uses=1 type=i16] [debug line = 139:10]
  %tmp.13 = mul i16 %tmp.12, %tmp.2, !dbg !91     ; [#uses=1 type=i16] [debug line = 139:10]
  %Vn = lshr i16 %tmp.13, 7, !dbg !91             ; [#uses=1 type=i16] [debug line = 139:10]
  call void @llvm.dbg.value(metadata !{i16 %Vn}, i64 0, metadata !107), !dbg !91 ; [debug line = 139:10] [debug variable = Vn]
  %tmp.15 = trunc i16 %Yn to i8, !dbg !108        ; [#uses=1 type=i8] [debug line = 140:10]
  %out.addr.2 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 0, i64 %tmp.3, i64 %tmp.5, !dbg !108 ; [#uses=1 type=i8*] [debug line = 140:10]
  store i8 %tmp.15, i8* %out.addr.2, align 1, !dbg !108 ; [debug line = 140:10]
  %tmp.16 = trunc i16 %Un to i8, !dbg !109        ; [#uses=1 type=i8] [debug line = 141:10]
  %out.addr.3 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 1, i64 %tmp.3, i64 %tmp.5, !dbg !109 ; [#uses=1 type=i8*] [debug line = 141:10]
  store i8 %tmp.16, i8* %out.addr.3, align 1, !dbg !109 ; [debug line = 141:10]
  %tmp.17 = trunc i16 %Vn to i8, !dbg !110        ; [#uses=1 type=i8] [debug line = 142:10]
  %out.addr.4 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 2, i64 %tmp.3, i64 %tmp.5, !dbg !110 ; [#uses=1 type=i8*] [debug line = 142:10]
  store i8 %tmp.17, i8* %out.addr.4, align 1, !dbg !110 ; [debug line = 142:10]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !111 ; [#uses=0 type=i32] [debug line = 143:7]
  %y.1 = add i16 %y, 1, !dbg !112                 ; [#uses=1 type=i16] [debug line = 132:27]
  call void @llvm.dbg.value(metadata !{i16 %y.1}, i64 0, metadata !113), !dbg !112 ; [debug line = 132:27] [debug variable = y]
  br label %3, !dbg !112                          ; [debug line = 132:27]

; <label>:5                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !114 ; [#uses=0 type=i32] [debug line = 144:4]
  %x.1 = add i16 %x, 1, !dbg !115                 ; [#uses=1 type=i16] [debug line = 129:23]
  call void @llvm.dbg.value(metadata !{i16 %x.1}, i64 0, metadata !116), !dbg !115 ; [debug line = 129:23] [debug variable = x]
  br label %1, !dbg !115                          ; [debug line = 129:23]

; <label>:6                                       ; preds = %1
  ret void, !dbg !117                             ; [debug line = 145:1]
}

; [#uses=0]
define void @yuv_filter(%struct.image_t.1* %in, %struct.image_t.1* %out, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter.str) nounwind
  %_yuv = alloca %struct.image_t.1, align 2       ; [#uses=2 type=%struct.image_t.1*]
  %_scale = alloca %struct.image_t.1, align 2     ; [#uses=2 type=%struct.image_t.1*]
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %in}, i64 0, metadata !118), !dbg !119 ; [debug line = 5:16] [debug variable = in]
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %out}, i64 0, metadata !120), !dbg !121 ; [debug line = 6:16] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !122), !dbg !123 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !124), !dbg !125 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !126), !dbg !127 ; [debug line = 9:19] [debug variable = V_scale]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !128 ; [debug line = 12:1]
  call void @llvm.dbg.declare(metadata !{%struct.image_t.1* %_yuv}, metadata !130), !dbg !131 ; [debug line = 17:12] [debug variable = _yuv]
  call void @llvm.dbg.declare(metadata !{%struct.image_t.1* %_scale}, metadata !132), !dbg !133 ; [debug line = 18:12] [debug variable = _scale]
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %_yuv}, i64 0, metadata !134), !dbg !135 ; [debug line = 19:24] [debug variable = yuv]
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %_scale}, i64 0, metadata !136), !dbg !137 ; [debug line = 20:28] [debug variable = scale]
  call fastcc void @rgb2yuv(%struct.image_t.1* %in, %struct.image_t.1* %_yuv), !dbg !138 ; [debug line = 23:4]
  call fastcc void @yuv_scale(%struct.image_t.1* %_yuv, %struct.image_t.1* %_scale, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale), !dbg !139 ; [debug line = 24:4]
  call fastcc void @yuv2rgb(%struct.image_t.1* %_scale, %struct.image_t.1* %out), !dbg !140 ; [debug line = 25:4]
  ret void, !dbg !141                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc void @yuv2rgb(%struct.image_t.1* %in, %struct.image_t.1* %out) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %in}, i64 0, metadata !142), !dbg !143 ; [debug line = 68:16] [debug variable = in]
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %out}, i64 0, metadata !144), !dbg !145 ; [debug line = 69:16] [debug variable = out]
  %in.addr = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 1, !dbg !146 ; [#uses=1 type=i16*] [debug line = 83:4]
  %width = load i16* %in.addr, align 2, !dbg !146 ; [#uses=3 type=i16] [debug line = 83:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %width) nounwind
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !148), !dbg !146 ; [debug line = 83:4] [debug variable = width]
  %in.addr.5 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 2, !dbg !149 ; [#uses=1 type=i16*] [debug line = 84:4]
  %height = load i16* %in.addr.5, align 2, !dbg !149 ; [#uses=3 type=i16] [debug line = 84:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %height) nounwind
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !150), !dbg !149 ; [debug line = 84:4] [debug variable = height]
  %out.addr = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 1, !dbg !151 ; [#uses=1 type=i16*] [debug line = 85:4]
  store i16 %width, i16* %out.addr, align 2, !dbg !151 ; [debug line = 85:4]
  %out.addr.5 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 2, !dbg !152 ; [#uses=1 type=i16*] [debug line = 86:4]
  store i16 %height, i16* %out.addr.5, align 2, !dbg !152 ; [debug line = 86:4]
  br label %1, !dbg !153                          ; [debug line = 89:9]

; <label>:1                                       ; preds = %11, %0
  %x = phi i16 [ 0, %0 ], [ %x.2, %11 ]           ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %width, !dbg !153  ; [#uses=1 type=i1] [debug line = 89:9]
  br i1 %exitcond1, label %12, label %2, !dbg !153 ; [debug line = 89:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !155 ; [debug line = 89:29]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !155 ; [#uses=1 type=i32] [debug line = 89:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !157 ; [debug line = 90:1]
  %tmp = zext i16 %x to i64, !dbg !158            ; [#uses=6 type=i64] [debug line = 94:2]
  br label %3, !dbg !161                          ; [debug line = 92:12]

; <label>:3                                       ; preds = %._crit_edge7, %2
  %y = phi i16 [ 0, %2 ], [ %y.2, %._crit_edge7 ] ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %height, !dbg !161  ; [#uses=1 type=i1] [debug line = 92:12]
  br i1 %exitcond, label %11, label %4, !dbg !161 ; [debug line = 92:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !162 ; [debug line = 92:33]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !162 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !163 ; [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !163 ; [debug line = 93:1]
  %tmp.20 = zext i16 %y to i64, !dbg !158         ; [#uses=6 type=i64] [debug line = 94:2]
  %in.addr.6 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 0, i64 %tmp, i64 %tmp.20, !dbg !158 ; [#uses=1 type=i8*] [debug line = 94:2]
  %Y = load i8* %in.addr.6, align 1, !dbg !158    ; [#uses=2 type=i8] [debug line = 94:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Y) nounwind
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !164), !dbg !158 ; [debug line = 94:2] [debug variable = Y]
  %in.addr.7 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 1, i64 %tmp, i64 %tmp.20, !dbg !165 ; [#uses=1 type=i8*] [debug line = 95:10]
  %U = load i8* %in.addr.7, align 1, !dbg !165    ; [#uses=2 type=i8] [debug line = 95:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %U) nounwind
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !166), !dbg !165 ; [debug line = 95:10] [debug variable = U]
  %in.addr.8 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 2, i64 %tmp, i64 %tmp.20, !dbg !167 ; [#uses=1 type=i8*] [debug line = 96:10]
  %V = load i8* %in.addr.8, align 1, !dbg !167    ; [#uses=2 type=i8] [debug line = 96:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %V) nounwind
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !168), !dbg !167 ; [debug line = 96:10] [debug variable = V]
  %tmp.21 = zext i8 %Y to i16, !dbg !169          ; [#uses=1 type=i16] [debug line = 97:10]
  %C = add i16 %tmp.21, -16, !dbg !169            ; [#uses=1 type=i16] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i16 %C}, i64 0, metadata !170), !dbg !169 ; [debug line = 97:10] [debug variable = C]
  %tmp.23 = zext i8 %U to i16, !dbg !171          ; [#uses=1 type=i16] [debug line = 98:10]
  %D = add i16 %tmp.23, -128, !dbg !171           ; [#uses=1 type=i16] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i16 %D}, i64 0, metadata !172), !dbg !171 ; [debug line = 98:10] [debug variable = D]
  %tmp.25 = zext i8 %V to i16, !dbg !173          ; [#uses=1 type=i16] [debug line = 99:10]
  %E = add i16 %tmp.25, -128, !dbg !173           ; [#uses=1 type=i16] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i16 %E}, i64 0, metadata !174), !dbg !173 ; [debug line = 99:10] [debug variable = E]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  %tmp.27 = sext i16 %C to i32, !dbg !175         ; [#uses=1 type=i32] [debug line = 100:10]
  %tmp.28 = mul nsw i32 %tmp.27, 298, !dbg !175   ; [#uses=1 type=i32] [debug line = 100:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 409) nounwind
  %tmp.29 = sext i16 %E to i32, !dbg !175         ; [#uses=2 type=i32] [debug line = 100:10]
  %tmp.30 = mul nsw i32 %tmp.29, 409, !dbg !175   ; [#uses=1 type=i32] [debug line = 100:10]
  %tmp.31 = add i32 %tmp.28, 128, !dbg !175       ; [#uses=3 type=i32] [debug line = 100:10]
  %tmp.32 = add i32 %tmp.30, %tmp.31, !dbg !175   ; [#uses=3 type=i32] [debug line = 100:10]
  %tmp.33 = ashr i32 %tmp.32, 8, !dbg !175        ; [#uses=1 type=i32] [debug line = 100:10]
  %tmp.34 = icmp sgt i32 %tmp.33, 255, !dbg !175  ; [#uses=1 type=i1] [debug line = 100:10]
  br i1 %tmp.34, label %._crit_edge, label %5, !dbg !175 ; [debug line = 100:10]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 409) nounwind
  %tmp.35 = icmp slt i32 %tmp.32, 0, !dbg !175    ; [#uses=1 type=i1] [debug line = 100:10]
  br i1 %tmp.35, label %._crit_edge, label %6, !dbg !175 ; [debug line = 100:10]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 409) nounwind
  %tmp.36 = lshr i32 %tmp.32, 8, !dbg !175        ; [#uses=1 type=i32] [debug line = 100:10]
  %phitmp = trunc i32 %tmp.36 to i8, !dbg !175    ; [#uses=1 type=i8] [debug line = 100:10]
  br label %._crit_edge, !dbg !175                ; [debug line = 100:10]

._crit_edge:                                      ; preds = %6, %5, %4
  %R = phi i8 [ %phitmp, %6 ], [ -1, %4 ], [ 0, %5 ], !dbg !175 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !176), !dbg !175 ; [debug line = 100:10] [debug variable = R]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -100) nounwind
  %tmp.38 = sext i16 %D to i32, !dbg !177         ; [#uses=2 type=i32] [debug line = 101:10]
  %tmp.39 = mul nsw i32 %tmp.38, -100, !dbg !177  ; [#uses=1 type=i32] [debug line = 101:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -208) nounwind
  %tmp.40 = mul nsw i32 %tmp.29, -208, !dbg !177  ; [#uses=1 type=i32] [debug line = 101:10]
  %tmp.41 = add i32 %tmp.39, %tmp.31, !dbg !177   ; [#uses=1 type=i32] [debug line = 101:10]
  %tmp.42 = add i32 %tmp.41, %tmp.40, !dbg !177   ; [#uses=3 type=i32] [debug line = 101:10]
  %tmp.43 = ashr i32 %tmp.42, 8, !dbg !177        ; [#uses=1 type=i32] [debug line = 101:10]
  %tmp.44 = icmp sgt i32 %tmp.43, 255, !dbg !177  ; [#uses=1 type=i1] [debug line = 101:10]
  br i1 %tmp.44, label %._crit_edge5, label %7, !dbg !177 ; [debug line = 101:10]

; <label>:7                                       ; preds = %._crit_edge
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -100) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -208) nounwind
  %tmp.45 = icmp slt i32 %tmp.42, 0, !dbg !177    ; [#uses=1 type=i1] [debug line = 101:10]
  br i1 %tmp.45, label %._crit_edge5, label %8, !dbg !177 ; [debug line = 101:10]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -100) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -208) nounwind
  %tmp.46 = lshr i32 %tmp.42, 8, !dbg !177        ; [#uses=1 type=i32] [debug line = 101:10]
  %phitmp2 = trunc i32 %tmp.46 to i8, !dbg !177   ; [#uses=1 type=i8] [debug line = 101:10]
  br label %._crit_edge5, !dbg !177               ; [debug line = 101:10]

._crit_edge5:                                     ; preds = %8, %7, %._crit_edge
  %G = phi i8 [ %phitmp2, %8 ], [ -1, %._crit_edge ], [ 0, %7 ], !dbg !177 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !178), !dbg !177 ; [debug line = 101:10] [debug variable = G]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 516) nounwind
  %tmp.48 = mul nsw i32 %tmp.38, 516, !dbg !179   ; [#uses=1 type=i32] [debug line = 102:10]
  %tmp.49 = add i32 %tmp.48, %tmp.31, !dbg !179   ; [#uses=3 type=i32] [debug line = 102:10]
  %tmp.50 = ashr i32 %tmp.49, 8, !dbg !179        ; [#uses=1 type=i32] [debug line = 102:10]
  %tmp.51 = icmp sgt i32 %tmp.50, 255, !dbg !179  ; [#uses=1 type=i1] [debug line = 102:10]
  br i1 %tmp.51, label %._crit_edge7, label %9, !dbg !179 ; [debug line = 102:10]

; <label>:9                                       ; preds = %._crit_edge5
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 516) nounwind
  %tmp.52 = icmp slt i32 %tmp.49, 0, !dbg !179    ; [#uses=1 type=i1] [debug line = 102:10]
  br i1 %tmp.52, label %._crit_edge7, label %10, !dbg !179 ; [debug line = 102:10]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 298) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 516) nounwind
  %tmp.53 = lshr i32 %tmp.49, 8, !dbg !179        ; [#uses=1 type=i32] [debug line = 102:10]
  %phitmp3 = trunc i32 %tmp.53 to i8, !dbg !179   ; [#uses=1 type=i8] [debug line = 102:10]
  br label %._crit_edge7, !dbg !179               ; [debug line = 102:10]

._crit_edge7:                                     ; preds = %10, %9, %._crit_edge5
  %B = phi i8 [ %phitmp3, %10 ], [ -1, %._crit_edge5 ], [ 0, %9 ], !dbg !179 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !180), !dbg !179 ; [debug line = 102:10] [debug variable = B]
  %out.addr.6 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 0, i64 %tmp, i64 %tmp.20, !dbg !181 ; [#uses=1 type=i8*] [debug line = 103:10]
  store i8 %R, i8* %out.addr.6, align 1, !dbg !181 ; [debug line = 103:10]
  %out.addr.7 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 1, i64 %tmp, i64 %tmp.20, !dbg !182 ; [#uses=1 type=i8*] [debug line = 104:10]
  store i8 %G, i8* %out.addr.7, align 1, !dbg !182 ; [debug line = 104:10]
  %out.addr.8 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 2, i64 %tmp, i64 %tmp.20, !dbg !183 ; [#uses=1 type=i8*] [debug line = 105:10]
  store i8 %B, i8* %out.addr.8, align 1, !dbg !183 ; [debug line = 105:10]
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !184 ; [#uses=0 type=i32] [debug line = 106:7]
  %y.2 = add i16 %y, 1, !dbg !185                 ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y.2}, i64 0, metadata !186), !dbg !185 ; [debug line = 92:27] [debug variable = y]
  br label %3, !dbg !185                          ; [debug line = 92:27]

; <label>:11                                      ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !187 ; [#uses=0 type=i32] [debug line = 107:4]
  %x.2 = add i16 %x, 1, !dbg !188                 ; [#uses=1 type=i16] [debug line = 89:23]
  call void @llvm.dbg.value(metadata !{i16 %x.2}, i64 0, metadata !189), !dbg !188 ; [debug line = 89:23] [debug variable = x]
  br label %1, !dbg !188                          ; [debug line = 89:23]

; <label>:12                                      ; preds = %1
  ret void, !dbg !190                             ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc void @rgb2yuv(%struct.image_t.1* %in, %struct.image_t.1* %out) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %in}, i64 0, metadata !191), !dbg !192 ; [debug line = 30:16] [debug variable = in]
  call void @llvm.dbg.value(metadata !{%struct.image_t.1* %out}, i64 0, metadata !193), !dbg !194 ; [debug line = 31:16] [debug variable = out]
  %in.addr = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 1, !dbg !195 ; [#uses=1 type=i16*] [debug line = 43:4]
  %width = load i16* %in.addr, align 2, !dbg !195 ; [#uses=3 type=i16] [debug line = 43:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %width) nounwind
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !197), !dbg !195 ; [debug line = 43:4] [debug variable = width]
  %in.addr.9 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 2, !dbg !198 ; [#uses=1 type=i16*] [debug line = 44:4]
  %height = load i16* %in.addr.9, align 2, !dbg !198 ; [#uses=3 type=i16] [debug line = 44:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %height) nounwind
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !199), !dbg !198 ; [debug line = 44:4] [debug variable = height]
  %out.addr = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 1, !dbg !200 ; [#uses=1 type=i16*] [debug line = 45:4]
  store i16 %width, i16* %out.addr, align 2, !dbg !200 ; [debug line = 45:4]
  %out.addr.9 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 2, !dbg !201 ; [#uses=1 type=i16*] [debug line = 46:4]
  store i16 %height, i16* %out.addr.9, align 2, !dbg !201 ; [debug line = 46:4]
  br label %1, !dbg !202                          ; [debug line = 49:9]

; <label>:1                                       ; preds = %5, %0
  %x = phi i16 [ 0, %0 ], [ %x.3, %5 ]            ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %width, !dbg !202  ; [#uses=1 type=i1] [debug line = 49:9]
  br i1 %exitcond1, label %6, label %2, !dbg !202 ; [debug line = 49:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !204 ; [debug line = 49:29]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !204 ; [#uses=1 type=i32] [debug line = 49:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !206 ; [debug line = 50:1]
  %tmp = zext i16 %x to i64, !dbg !207            ; [#uses=6 type=i64] [debug line = 54:2]
  br label %3, !dbg !210                          ; [debug line = 52:12]

; <label>:3                                       ; preds = %4, %2
  %y = phi i16 [ 0, %2 ], [ %y.3, %4 ]            ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %height, !dbg !210  ; [#uses=1 type=i1] [debug line = 52:12]
  br i1 %exitcond, label %5, label %4, !dbg !210  ; [debug line = 52:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !211 ; [debug line = 52:33]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !211 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !212 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !212 ; [debug line = 53:1]
  %tmp.57 = zext i16 %y to i64, !dbg !207         ; [#uses=6 type=i64] [debug line = 54:2]
  %in.addr.10 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 0, i64 %tmp, i64 %tmp.57, !dbg !207 ; [#uses=1 type=i8*] [debug line = 54:2]
  %R = load i8* %in.addr.10, align 1, !dbg !207   ; [#uses=2 type=i8] [debug line = 54:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %R) nounwind
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !213), !dbg !207 ; [debug line = 54:2] [debug variable = R]
  %in.addr.11 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 1, i64 %tmp, i64 %tmp.57, !dbg !214 ; [#uses=1 type=i8*] [debug line = 55:10]
  %G = load i8* %in.addr.11, align 1, !dbg !214   ; [#uses=2 type=i8] [debug line = 55:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %G) nounwind
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !215), !dbg !214 ; [debug line = 55:10] [debug variable = G]
  %in.addr.12 = getelementptr inbounds %struct.image_t.1* %in, i64 0, i32 0, i32 2, i64 %tmp, i64 %tmp.57, !dbg !216 ; [#uses=1 type=i8*] [debug line = 56:10]
  %B = load i8* %in.addr.12, align 1, !dbg !216   ; [#uses=2 type=i8] [debug line = 56:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %B) nounwind
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !217), !dbg !216 ; [debug line = 56:10] [debug variable = B]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 66) nounwind
  %tmp.58 = zext i8 %R to i32, !dbg !218          ; [#uses=3 type=i32] [debug line = 57:10]
  %tmp.59 = mul nsw i32 %tmp.58, 66, !dbg !218    ; [#uses=1 type=i32] [debug line = 57:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 129) nounwind
  %tmp.60 = zext i8 %G to i32, !dbg !218          ; [#uses=3 type=i32] [debug line = 57:10]
  %tmp.61 = mul nsw i32 %tmp.60, 129, !dbg !218   ; [#uses=1 type=i32] [debug line = 57:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 25) nounwind
  %tmp.62 = zext i8 %B to i32, !dbg !218          ; [#uses=3 type=i32] [debug line = 57:10]
  %tmp.63 = mul nsw i32 %tmp.62, 25, !dbg !218    ; [#uses=1 type=i32] [debug line = 57:10]
  %tmp.64 = add i32 %tmp.59, 128, !dbg !218       ; [#uses=1 type=i32] [debug line = 57:10]
  %tmp.65 = add i32 %tmp.64, %tmp.61, !dbg !218   ; [#uses=1 type=i32] [debug line = 57:10]
  %tmp.66 = add i32 %tmp.65, %tmp.63, !dbg !218   ; [#uses=1 type=i32] [debug line = 57:10]
  %tmp.67 = lshr i32 %tmp.66, 8, !dbg !218        ; [#uses=1 type=i32] [debug line = 57:10]
  %tmp.68 = trunc i32 %tmp.67 to i8, !dbg !218    ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 %tmp.68, 16, !dbg !218              ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !219), !dbg !218 ; [debug line = 57:10] [debug variable = Y]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -38) nounwind
  %tmp.69 = mul nsw i32 %tmp.58, -38, !dbg !220   ; [#uses=1 type=i32] [debug line = 58:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -74) nounwind
  %tmp.70 = mul nsw i32 %tmp.60, -74, !dbg !220   ; [#uses=1 type=i32] [debug line = 58:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 112) nounwind
  %tmp.71 = mul nsw i32 %tmp.62, 112, !dbg !220   ; [#uses=1 type=i32] [debug line = 58:10]
  %tmp.72 = add i32 %tmp.69, 128, !dbg !220       ; [#uses=1 type=i32] [debug line = 58:10]
  %tmp.73 = add i32 %tmp.72, %tmp.70, !dbg !220   ; [#uses=1 type=i32] [debug line = 58:10]
  %tmp.74 = add i32 %tmp.73, %tmp.71, !dbg !220   ; [#uses=1 type=i32] [debug line = 58:10]
  %tmp.75 = lshr i32 %tmp.74, 8, !dbg !220        ; [#uses=1 type=i32] [debug line = 58:10]
  %tmp.76 = trunc i32 %tmp.75 to i8, !dbg !220    ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp.76, -128, !dbg !220            ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !221), !dbg !220 ; [debug line = 58:10] [debug variable = U]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 122) nounwind
  %tmp.77 = mul nsw i32 %tmp.58, 122, !dbg !222   ; [#uses=1 type=i32] [debug line = 59:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -94) nounwind
  %tmp.78 = mul nsw i32 %tmp.60, -94, !dbg !222   ; [#uses=1 type=i32] [debug line = 59:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 -18) nounwind
  %tmp.79 = mul nsw i32 %tmp.62, -18, !dbg !222   ; [#uses=1 type=i32] [debug line = 59:10]
  %tmp.80 = add i32 %tmp.77, 128, !dbg !222       ; [#uses=1 type=i32] [debug line = 59:10]
  %tmp.81 = add i32 %tmp.80, %tmp.78, !dbg !222   ; [#uses=1 type=i32] [debug line = 59:10]
  %tmp.82 = add i32 %tmp.81, %tmp.79, !dbg !222   ; [#uses=1 type=i32] [debug line = 59:10]
  %tmp.83 = lshr i32 %tmp.82, 8, !dbg !222        ; [#uses=1 type=i32] [debug line = 59:10]
  %tmp.84 = trunc i32 %tmp.83 to i8, !dbg !222    ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp.84, -128, !dbg !222            ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !223), !dbg !222 ; [debug line = 59:10] [debug variable = V]
  %out.addr.10 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 0, i64 %tmp, i64 %tmp.57, !dbg !224 ; [#uses=1 type=i8*] [debug line = 60:10]
  store i8 %Y, i8* %out.addr.10, align 1, !dbg !224 ; [debug line = 60:10]
  %out.addr.11 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 1, i64 %tmp, i64 %tmp.57, !dbg !225 ; [#uses=1 type=i8*] [debug line = 61:10]
  store i8 %U, i8* %out.addr.11, align 1, !dbg !225 ; [debug line = 61:10]
  %out.addr.12 = getelementptr inbounds %struct.image_t.1* %out, i64 0, i32 0, i32 2, i64 %tmp, i64 %tmp.57, !dbg !226 ; [#uses=1 type=i8*] [debug line = 62:10]
  store i8 %V, i8* %out.addr.12, align 1, !dbg !226 ; [debug line = 62:10]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !227 ; [#uses=0 type=i32] [debug line = 63:7]
  %y.3 = add i16 %y, 1, !dbg !228                 ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y.3}, i64 0, metadata !229), !dbg !228 ; [debug line = 52:27] [debug variable = y]
  br label %3, !dbg !228                          ; [debug line = 52:27]

; <label>:5                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !230 ; [#uses=0 type=i32] [debug line = 64:4]
  %x.3 = add i16 %x, 1, !dbg !231                 ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x.3}, i64 0, metadata !232), !dbg !231 ; [debug line = 49:23] [debug variable = x]
  br label %1, !dbg !231                          ; [debug line = 49:23]

; <label>:6                                       ; preds = %1
  ret void, !dbg !233                             ; [debug line = 65:1]
}

; [#uses=49]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
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

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=45]
declare void @_ssdm_SpecKeepArrayLoad(...)

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
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv_filter", metadata !"yuv_filter", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.image_t.1*, %struct.image_t.1*, i8, i8, i8)* @yuv_filter, null, null, metadata !32, i32 11} ; [ DW_TAG_subprogram ]
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
!34 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !6, i32 29, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.image_t.1*, %struct.image_t.1*)* @rgb2yuv, null, null, metadata !32, i32 33} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{null, metadata !9, metadata !9}
!37 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !6, i32 67, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.image_t.1*, %struct.image_t.1*)* @yuv2rgb, null, null, metadata !32, i32 71} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv_scale", metadata !"yuv_scale", metadata !"", metadata !6, i32 110, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.image_t.1*, %struct.image_t.1*, i8, i8, i8)* @yuv_scale, null, null, metadata !32, i32 117} ; [ DW_TAG_subprogram ]
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
!52 = metadata !{void (%struct.image_t.1*, %struct.image_t.1*, i8, i8, i8)* @yuv_filter, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 0}
!54 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"image_t*", metadata !"image_t*", metadata !"yuv_scale_t", metadata !"yuv_scale_t", metadata !"yuv_scale_t"}
!56 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"Y_scale", metadata !"U_scale", metadata !"V_scale"}
!58 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!59 = metadata !{void (%struct.image_t.1*, %struct.image_t.1*)* @rgb2yuv, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !58}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"image_t*", metadata !"image_t*"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!65 = metadata !{void (%struct.image_t.1*, %struct.image_t.1*)* @yuv2rgb, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !58}
!66 = metadata !{void (%struct.image_t.1*, %struct.image_t.1*, i8, i8, i8)* @yuv_scale, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!67 = metadata !{i32 786689, metadata !38, metadata !"in", metadata !6, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 111, i32 16, metadata !38, null}
!69 = metadata !{i32 786689, metadata !38, metadata !"out", metadata !6, i32 33554544, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 112, i32 16, metadata !38, null}
!71 = metadata !{i32 786689, metadata !38, metadata !"Y_scale", metadata !6, i32 50331761, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 113, i32 19, metadata !38, null}
!73 = metadata !{i32 786689, metadata !38, metadata !"U_scale", metadata !6, i32 67108978, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 114, i32 19, metadata !38, null}
!75 = metadata !{i32 786689, metadata !38, metadata !"V_scale", metadata !6, i32 83886195, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 115, i32 19, metadata !38, null}
!77 = metadata !{i32 118, i32 1, metadata !78, null}
!78 = metadata !{i32 786443, metadata !38, i32 117, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 123, i32 4, metadata !78, null}
!80 = metadata !{i32 786688, metadata !78, metadata !"width", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 124, i32 4, metadata !78, null}
!82 = metadata !{i32 786688, metadata !78, metadata !"height", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 125, i32 4, metadata !78, null}
!84 = metadata !{i32 126, i32 4, metadata !78, null}
!85 = metadata !{i32 137, i32 10, metadata !86, null}
!86 = metadata !{i32 786443, metadata !87, i32 132, i32 32, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !88, i32 132, i32 7, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !89, i32 129, i32 28, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !78, i32 129, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 138, i32 10, metadata !86, null}
!91 = metadata !{i32 139, i32 10, metadata !86, null}
!92 = metadata !{i32 129, i32 9, metadata !89, null}
!93 = metadata !{i32 129, i32 29, metadata !88, null}
!94 = metadata !{i32 130, i32 1, metadata !88, null}
!95 = metadata !{i32 134, i32 2, metadata !86, null}
!96 = metadata !{i32 132, i32 12, metadata !87, null}
!97 = metadata !{i32 132, i32 33, metadata !86, null}
!98 = metadata !{i32 133, i32 1, metadata !86, null}
!99 = metadata !{i32 786688, metadata !78, metadata !"Y", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 135, i32 10, metadata !86, null}
!101 = metadata !{i32 786688, metadata !78, metadata !"U", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 136, i32 10, metadata !86, null}
!103 = metadata !{i32 786688, metadata !78, metadata !"V", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 786688, metadata !78, metadata !"Yn", metadata !6, i32 121, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!106 = metadata !{i32 786688, metadata !78, metadata !"Un", metadata !6, i32 121, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786688, metadata !78, metadata !"Vn", metadata !6, i32 121, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 140, i32 10, metadata !86, null}
!109 = metadata !{i32 141, i32 10, metadata !86, null}
!110 = metadata !{i32 142, i32 10, metadata !86, null}
!111 = metadata !{i32 143, i32 7, metadata !86, null}
!112 = metadata !{i32 132, i32 27, metadata !87, null}
!113 = metadata !{i32 786688, metadata !78, metadata !"y", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 144, i32 4, metadata !88, null}
!115 = metadata !{i32 129, i32 23, metadata !89, null}
!116 = metadata !{i32 786688, metadata !78, metadata !"x", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 145, i32 1, metadata !78, null}
!118 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 5, i32 16, metadata !5, null}
!120 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 6, i32 16, metadata !5, null}
!122 = metadata !{i32 786689, metadata !5, metadata !"Y_scale", metadata !6, i32 50331655, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 7, i32 19, metadata !5, null}
!124 = metadata !{i32 786689, metadata !5, metadata !"U_scale", metadata !6, i32 67108872, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 8, i32 19, metadata !5, null}
!126 = metadata !{i32 786689, metadata !5, metadata !"V_scale", metadata !6, i32 83886089, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 9, i32 19, metadata !5, null}
!128 = metadata !{i32 12, i32 1, metadata !129, null}
!129 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786688, metadata !129, metadata !"_yuv", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 17, i32 12, metadata !129, null}
!132 = metadata !{i32 786688, metadata !129, metadata !"_scale", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 18, i32 12, metadata !129, null}
!134 = metadata !{i32 786688, metadata !129, metadata !"yuv", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 19, i32 24, metadata !129, null}
!136 = metadata !{i32 786688, metadata !129, metadata !"scale", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 20, i32 28, metadata !129, null}
!138 = metadata !{i32 23, i32 4, metadata !129, null}
!139 = metadata !{i32 24, i32 4, metadata !129, null}
!140 = metadata !{i32 25, i32 4, metadata !129, null}
!141 = metadata !{i32 26, i32 1, metadata !129, null}
!142 = metadata !{i32 786689, metadata !37, metadata !"in", metadata !6, i32 16777284, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 68, i32 16, metadata !37, null}
!144 = metadata !{i32 786689, metadata !37, metadata !"out", metadata !6, i32 33554501, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 69, i32 16, metadata !37, null}
!146 = metadata !{i32 83, i32 4, metadata !147, null}
!147 = metadata !{i32 786443, metadata !37, i32 71, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786688, metadata !147, metadata !"width", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 84, i32 4, metadata !147, null}
!150 = metadata !{i32 786688, metadata !147, metadata !"height", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 85, i32 4, metadata !147, null}
!152 = metadata !{i32 86, i32 4, metadata !147, null}
!153 = metadata !{i32 89, i32 9, metadata !154, null}
!154 = metadata !{i32 786443, metadata !147, i32 89, i32 4, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 89, i32 29, metadata !156, null}
!156 = metadata !{i32 786443, metadata !154, i32 89, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 90, i32 1, metadata !156, null}
!158 = metadata !{i32 94, i32 2, metadata !159, null}
!159 = metadata !{i32 786443, metadata !160, i32 92, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 786443, metadata !156, i32 92, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 92, i32 12, metadata !160, null}
!162 = metadata !{i32 92, i32 33, metadata !159, null}
!163 = metadata !{i32 93, i32 1, metadata !159, null}
!164 = metadata !{i32 786688, metadata !147, metadata !"Y", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 95, i32 10, metadata !159, null}
!166 = metadata !{i32 786688, metadata !147, metadata !"U", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 96, i32 10, metadata !159, null}
!168 = metadata !{i32 786688, metadata !147, metadata !"V", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 97, i32 10, metadata !159, null}
!170 = metadata !{i32 786688, metadata !147, metadata !"C", metadata !6, i32 76, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 98, i32 10, metadata !159, null}
!172 = metadata !{i32 786688, metadata !147, metadata !"D", metadata !6, i32 76, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 99, i32 10, metadata !159, null}
!174 = metadata !{i32 786688, metadata !147, metadata !"E", metadata !6, i32 76, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 100, i32 10, metadata !159, null}
!176 = metadata !{i32 786688, metadata !147, metadata !"R", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 101, i32 10, metadata !159, null}
!178 = metadata !{i32 786688, metadata !147, metadata !"G", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 102, i32 10, metadata !159, null}
!180 = metadata !{i32 786688, metadata !147, metadata !"B", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 103, i32 10, metadata !159, null}
!182 = metadata !{i32 104, i32 10, metadata !159, null}
!183 = metadata !{i32 105, i32 10, metadata !159, null}
!184 = metadata !{i32 106, i32 7, metadata !159, null}
!185 = metadata !{i32 92, i32 27, metadata !160, null}
!186 = metadata !{i32 786688, metadata !147, metadata !"y", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 107, i32 4, metadata !156, null}
!188 = metadata !{i32 89, i32 23, metadata !154, null}
!189 = metadata !{i32 786688, metadata !147, metadata !"x", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 108, i32 1, metadata !147, null}
!191 = metadata !{i32 786689, metadata !34, metadata !"in", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 30, i32 16, metadata !34, null}
!193 = metadata !{i32 786689, metadata !34, metadata !"out", metadata !6, i32 33554463, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 31, i32 16, metadata !34, null}
!195 = metadata !{i32 43, i32 4, metadata !196, null}
!196 = metadata !{i32 786443, metadata !34, i32 33, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 786688, metadata !196, metadata !"width", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 44, i32 4, metadata !196, null}
!199 = metadata !{i32 786688, metadata !196, metadata !"height", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 45, i32 4, metadata !196, null}
!201 = metadata !{i32 46, i32 4, metadata !196, null}
!202 = metadata !{i32 49, i32 9, metadata !203, null}
!203 = metadata !{i32 786443, metadata !196, i32 49, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 49, i32 29, metadata !205, null}
!205 = metadata !{i32 786443, metadata !203, i32 49, i32 28, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 50, i32 1, metadata !205, null}
!207 = metadata !{i32 54, i32 2, metadata !208, null}
!208 = metadata !{i32 786443, metadata !209, i32 52, i32 32, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 786443, metadata !205, i32 52, i32 7, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 52, i32 12, metadata !209, null}
!211 = metadata !{i32 52, i32 33, metadata !208, null}
!212 = metadata !{i32 53, i32 1, metadata !208, null}
!213 = metadata !{i32 786688, metadata !196, metadata !"R", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 55, i32 10, metadata !208, null}
!215 = metadata !{i32 786688, metadata !196, metadata !"G", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 56, i32 10, metadata !208, null}
!217 = metadata !{i32 786688, metadata !196, metadata !"B", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 57, i32 10, metadata !208, null}
!219 = metadata !{i32 786688, metadata !196, metadata !"Y", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 58, i32 10, metadata !208, null}
!221 = metadata !{i32 786688, metadata !196, metadata !"U", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 59, i32 10, metadata !208, null}
!223 = metadata !{i32 786688, metadata !196, metadata !"V", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 60, i32 10, metadata !208, null}
!225 = metadata !{i32 61, i32 10, metadata !208, null}
!226 = metadata !{i32 62, i32 10, metadata !208, null}
!227 = metadata !{i32 63, i32 7, metadata !208, null}
!228 = metadata !{i32 52, i32 27, metadata !209, null}
!229 = metadata !{i32 786688, metadata !196, metadata !"y", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 64, i32 4, metadata !205, null}
!231 = metadata !{i32 49, i32 23, metadata !203, null}
!232 = metadata !{i32 786688, metadata !196, metadata !"x", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 65, i32 1, metadata !196, null}
