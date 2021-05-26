#pragma line 1 "dct.c"
#pragma line 1 "dct.c" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 149 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2017 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************
#pragma empty_line
 *
 * $Id$
 */
#pragma line 289 "/opt/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Return() __attribute__ ((nothrow));
#pragma empty_line
    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecReset() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */
#pragma empty_line
    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecStream() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecDependence() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#pragma line 427 "/opt/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#pragma line 6 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "dct.c" 2
#pragma empty_line
#pragma line 1 "./dct.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef short dct_data_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void dct(short input[1024/16], short output[1024/16]);
#pragma line 3 "dct.c" 2
#pragma empty_line
void dct_1d(dct_data_t src[8 /* defines the input matrix as 8x8 */], dct_data_t dst[8 /* defines the input matrix as 8x8 */])
{_ssdm_SpecArrayDimSize(dst,8);_ssdm_SpecArrayDimSize(src,8);
   unsigned int k, n;
   int tmp;
   const dct_data_t dct_coeff_table[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */] = {
#pragma empty_line
#pragma line 1 "./dct_coeff_table.txt" 1
 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192,
 11363, 9633, 6436, 2260, -2260, -6436, -9632,-11362,
 10703, 4433, -4433,-10703,-10703, -4433, 4433, 10703,
  9633, -2260,-11362, -6436, 6436, 11363, 2260, -9632,
  8192, -8192, -8192, 8192, 8192, -8191, -8191, 8192,
  6436,-11362, 2260, 9633, -9632, -2260, 11363, -6436,
  4433,-10703, 10703, -4433, -4433, 10703,-10703, 4433,
  2260, -6436, 9633,-11362, 11363, -9632, 6436, -2260
#pragma line 10 "dct.c" 2
 };
_ssdm_SpecConstant(dct_coeff_table);
#pragma line 10 "dct.c"

#pragma HLS ARRAY_RESHAPE variable=dct_coeff_table complete dim=2
#pragma line 10 "dct.c"

#pragma empty_line
DCT_Outer_Loop:
   for (k = 0; k < 8 /* defines the input matrix as 8x8 */; k++) {
#pragma HLS PIPELINE
#pragma line 13 "dct.c"

DCT_Inner_Loop:
      for(n = 0, tmp = 0; n < 8 /* defines the input matrix as 8x8 */; n++) {
         int coeff = (int)dct_coeff_table[k][n];
         tmp += src[n] * coeff;
      }
      dst[k] = (((tmp) + (1 << ((13)-1))) >> 13);
   }
}
#pragma empty_line
void dct_2d(dct_data_t in_block[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */],
      dct_data_t out_block[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */])
{_ssdm_SpecArrayDimSize(out_block,8);_ssdm_SpecArrayDimSize(in_block,8);
#pragma HLS INLINE
#pragma line 25 "dct.c"

   dct_data_t row_outbuf[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */];
   dct_data_t col_outbuf[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */], col_inbuf[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */];
#pragma HLS ARRAY_RESHAPE variable=col_inbuf complete dim=2
#pragma line 27 "dct.c"

   unsigned i, j;
#pragma empty_line
   // DCT rows
Row_DCT_Loop:
   for(i = 0; i < 8 /* defines the input matrix as 8x8 */; i++) {
      dct_1d(in_block[i], row_outbuf[i]);
   }
   // Transpose data in order to re-use 1D DCT code
Xpose_Row_Outer_Loop:
   for (j = 0; j < 8 /* defines the input matrix as 8x8 */; j++)
Xpose_Row_Inner_Loop:
      for(i = 0; i < 8 /* defines the input matrix as 8x8 */; i++)
         
#pragma HLS PIPELINE
#pragma line 40 "dct.c"
col_inbuf[j][i] = row_outbuf[i][j];
   // DCT columns
Col_DCT_Loop:
   for (i = 0; i < 8 /* defines the input matrix as 8x8 */; i++) {
      dct_1d(col_inbuf[i], col_outbuf[i]);
   }
   // Transpose data back into natural order
Xpose_Col_Outer_Loop:
   for (j = 0; j < 8 /* defines the input matrix as 8x8 */; j++)
Xpose_Col_Inner_Loop:
      for(i = 0; i < 8 /* defines the input matrix as 8x8 */; i++)
         
#pragma HLS PIPELINE
#pragma line 51 "dct.c"
out_block[j][i] = col_outbuf[i][j];
}
#pragma empty_line
void read_data(short input[1024/16], short buf[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */])
{_ssdm_SpecArrayDimSize(input,1024/16);_ssdm_SpecArrayDimSize(buf,8);
   int r, c;
#pragma empty_line
RD_Loop_Row:
   for (r = 0; r < 8 /* defines the input matrix as 8x8 */; r++) {
RD_Loop_Col:
      for (c = 0; c < 8 /* defines the input matrix as 8x8 */; c++)
         
#pragma HLS PIPELINE
#pragma line 62 "dct.c"
buf[r][c] = input[r * 8 /* defines the input matrix as 8x8 */ + c];
   }
}
#pragma empty_line
void write_data(short buf[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */], short output[1024/16])
{_ssdm_SpecArrayDimSize(output,1024/16);_ssdm_SpecArrayDimSize(buf,8);
   int r, c;
#pragma empty_line
WR_Loop_Row:
   for (r = 0; r < 8 /* defines the input matrix as 8x8 */; r++) {
WR_Loop_Col:
      for (c = 0; c < 8 /* defines the input matrix as 8x8 */; c++)
         
#pragma HLS PIPELINE
#pragma line 74 "dct.c"
output[r * 8 /* defines the input matrix as 8x8 */ + c] = buf[r][c];
   }
}
#pragma empty_line
void dct(short input[1024/16], short output[1024/16])
{_ssdm_SpecArrayDimSize(output,1024/16);_ssdm_SpecArrayDimSize(input,1024/16);
#pragma HLS DATAFLOW
#pragma line 79 "dct.c"

#pragma empty_line
   short buf_2d_in[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */];
#pragma HLS ARRAY_RESHAPE variable=buf_2d_in complete dim=2
#pragma line 81 "dct.c"

   short buf_2d_out[8 /* defines the input matrix as 8x8 */][8 /* defines the input matrix as 8x8 */];
#pragma empty_line
   // Read input data. Fill the internal buffer.
   read_data(input, buf_2d_in);
#pragma empty_line
   dct_2d(buf_2d_in, buf_2d_out);
#pragma empty_line
   // Write out the results.
   write_data(buf_2d_out, output);
}
