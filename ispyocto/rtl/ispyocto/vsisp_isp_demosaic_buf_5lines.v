//****************************************************************************
//
// Copyright 2017-2023 Vivante Corporation
//
// Portions Copyright (c) 2003 Silicon Image GmbH, used with permission
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//****************************************************************************
// Auto-generated file on 11/03/2023.
//
//****************************************************************************

module vsisp_isp_demosaic_buf_5lines 
  (
   clk,
   reset_n,
   alom_stage0_val,
   alom_stage1_val,
   alom_stage2_val,
   alom_stage3_val,
   alom_stage4_val,
   in_data_t,
   in_data_m1,
   in_data_m2,
   in_data_m3,
   in_data_b,
   alom_stage1_en,
   alom_stage2_en,
   alom_stage3_en,
   alom_stage4_en,
   proc_pix_01,
   proc_pix_02,
   proc_pix_03,
   proc_pix_04,
   proc_pix_05,
   proc_pix_11,
   proc_pix_12,
   proc_pix_13,
   proc_pix_14,
   proc_pix_15,
   proc_pix_21,
   proc_pix_22,
   proc_pix_23,
   proc_pix_24,
   proc_pix_25,
   proc_pix_31,
   proc_pix_32,
   proc_pix_33,
   proc_pix_34,
   proc_pix_35,
   proc_pix_41,
   proc_pix_42,
   proc_pix_43,
   proc_pix_44,
   proc_pix_45);
`include "vsisp_isp.vh"
   input                 clk;             
   input                 reset_n;         
   input                 alom_stage0_val; 
   input                 alom_stage1_val; 
   input                 alom_stage2_val; 
   input                 alom_stage3_val; 
   input                 alom_stage4_val; 
   input [c_dw_si-1:0]   in_data_t;       
   input [c_dw_si-1:0]   in_data_m1;      
   input [c_dw_si-1:0]   in_data_m2;      
   input [c_dw_si-1:0]   in_data_m3;      
   input [c_dw_si-1:0]   in_data_b;       
   input                 alom_stage1_en;  
   input                 alom_stage2_en;  
   input                 alom_stage3_en;  
   input                 alom_stage4_en;  
   output [c_dw_si-1:0]  proc_pix_01;     
   output [c_dw_si-1:0]  proc_pix_02;     
   output [c_dw_si-1:0]  proc_pix_03;     
   output [7:0]          proc_pix_04;     
   output [7:0]          proc_pix_05;     
   output [c_dw_si-1:0]  proc_pix_11;     
   output [c_dw_si-1:0]  proc_pix_12;     
   output [c_dw_si-1:0]  proc_pix_13;     
   output [7:0]          proc_pix_14;     
   output [7:0]          proc_pix_15;     
   output [c_dw_si-1:0]  proc_pix_21;     
   output [c_dw_si-1:0]  proc_pix_22;     
   output [c_dw_si-1:0]  proc_pix_23;     
   output [7:0]          proc_pix_24;     
   output [7:0]          proc_pix_25;     
   output [c_dw_si-1:0]  proc_pix_31;     
   output [c_dw_si-1:0]  proc_pix_32;     
   output [c_dw_si-1:0]  proc_pix_33;     
   output [7:0]          proc_pix_34;     
   output [7:0]          proc_pix_35;     
   output [c_dw_si-1:0]  proc_pix_41;     
   output [c_dw_si-1:0]  proc_pix_42;     
   output [c_dw_si-1:0]  proc_pix_43;     
   output [7:0]          proc_pix_44;     
   output [7:0]          proc_pix_45;     
   parameter             c_dw_buf    = 5*c_dw_si;  
   reg [c_dw_si-1:0]     proc_pix_01;  
   reg [c_dw_si-1:0]     proc_pix_02;
   reg [c_dw_si-1:0]     proc_pix_03;
   reg [7:0]             proc_pix_04;
   reg [7:0]             proc_pix_05;  
   reg [c_dw_si-1:0]     proc_pix_11;
   reg [c_dw_si-1:0]     proc_pix_12;
   reg [c_dw_si-1:0]     proc_pix_13;
   reg [7:0]             proc_pix_14;
   reg [7:0]             proc_pix_15;
   reg [c_dw_si-1:0]     proc_pix_21;
   reg [c_dw_si-1:0]     proc_pix_22;
   reg [c_dw_si-1:0]     proc_pix_23;
   reg [7:0]             proc_pix_24;
   reg [7:0]             proc_pix_25;
   reg [c_dw_si-1:0]     proc_pix_31;
   reg [c_dw_si-1:0]     proc_pix_32;
   reg [c_dw_si-1:0]     proc_pix_33;
   reg [7:0]             proc_pix_34;
   reg [7:0]             proc_pix_35;
   reg [c_dw_si-1:0]     proc_pix_41;  
   reg [c_dw_si-1:0]     proc_pix_42;
   reg [c_dw_si-1:0]     proc_pix_43;
   reg [7:0]             proc_pix_44;
   reg [7:0]             proc_pix_45;  
   wire [c_dw_buf-1:0]   viv_s0;  
   reg [c_dw_buf-1:0]    viv_s1;  
   reg [c_dw_buf-1:0]    viv_s2;
   reg [c_dw_buf-1:0]    viv_s3;
   reg [c_dw_buf-1:0]    viv_s4;
   assign viv_s0 = {in_data_t,in_data_m1,in_data_m2,in_data_m3,in_data_b};
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s1  <= {c_dw_buf{1'b0}};
         viv_s2  <= {c_dw_buf{1'b0}};
         viv_s3  <= {c_dw_buf{1'b0}};
         viv_s4  <= {c_dw_buf{1'b0}};
      end else begin
         if (alom_stage1_en) viv_s1 <= viv_s0;
         if (alom_stage2_en) viv_s2 <= viv_s1;
         if (alom_stage3_en) viv_s3 <= viv_s2;
         if (alom_stage4_en) viv_s4 <= viv_s3;
      end
   end
   always @(*) begin
      if (alom_stage0_val || !alom_stage2_val) begin
         proc_pix_05 = viv_s0[(5*c_dw_si)-1:(5*c_dw_si)-8];
         proc_pix_15 = viv_s0[(4*c_dw_si)-1:(4*c_dw_si)-8];
         proc_pix_25 = viv_s0[(3*c_dw_si)-1:(3*c_dw_si)-8];
         proc_pix_35 = viv_s0[(2*c_dw_si)-1:(2*c_dw_si)-8];
         proc_pix_45 = viv_s0[   c_dw_si -1:   c_dw_si -8];
      end else begin 
         proc_pix_05 = viv_s2[(5*c_dw_si)-1:(5*c_dw_si)-8];
         proc_pix_15 = viv_s2[(4*c_dw_si)-1:(4*c_dw_si)-8];
         proc_pix_25 = viv_s2[(3*c_dw_si)-1:(3*c_dw_si)-8];
         proc_pix_35 = viv_s2[(2*c_dw_si)-1:(2*c_dw_si)-8];
         proc_pix_45 = viv_s2[   c_dw_si -1:   c_dw_si -8];
      end
   end
   always @(*) begin
      if (alom_stage1_val || !alom_stage3_val) begin
         proc_pix_04 = viv_s1[(5*c_dw_si)-1:(5*c_dw_si)-8];
         proc_pix_14 = viv_s1[(4*c_dw_si)-1:(4*c_dw_si)-8];
         proc_pix_24 = viv_s1[(3*c_dw_si)-1:(3*c_dw_si)-8];
         proc_pix_34 = viv_s1[(2*c_dw_si)-1:(2*c_dw_si)-8];
         proc_pix_44 = viv_s1[   c_dw_si -1:   c_dw_si -8];
      end else begin 
         proc_pix_04 = viv_s3[(5*c_dw_si)-1:(5*c_dw_si)-8];
         proc_pix_14 = viv_s3[(4*c_dw_si)-1:(4*c_dw_si)-8];
         proc_pix_24 = viv_s3[(3*c_dw_si)-1:(3*c_dw_si)-8];
         proc_pix_34 = viv_s3[(2*c_dw_si)-1:(2*c_dw_si)-8];
         proc_pix_44 = viv_s3[   c_dw_si -1:   c_dw_si -8];
      end
   end
   always @(*) begin
      if (alom_stage2_val || !alom_stage4_val) begin
         proc_pix_03 = viv_s2[(5*c_dw_si)-1:4*c_dw_si];
         proc_pix_13 = viv_s2[(4*c_dw_si)-1:3*c_dw_si];
         proc_pix_23 = viv_s2[(3*c_dw_si)-1:2*c_dw_si];
         proc_pix_33 = viv_s2[(2*c_dw_si)-1:c_dw_si];
         proc_pix_43 = viv_s2[c_dw_si-1:0];
      end else begin 
         proc_pix_03 = viv_s4[(5*c_dw_si)-1:4*c_dw_si];
         proc_pix_13 = viv_s4[(4*c_dw_si)-1:3*c_dw_si];
         proc_pix_23 = viv_s4[(3*c_dw_si)-1:2*c_dw_si];
         proc_pix_33 = viv_s4[(2*c_dw_si)-1:c_dw_si];
         proc_pix_43 = viv_s4[c_dw_si-1:0];
      end
   end
   always @(*) begin
      if (alom_stage3_val || !alom_stage1_val) begin
         proc_pix_02 = viv_s3[(5*c_dw_si)-1:4*c_dw_si];
         proc_pix_12 = viv_s3[(4*c_dw_si)-1:3*c_dw_si];
         proc_pix_22 = viv_s3[(3*c_dw_si)-1:2*c_dw_si];
         proc_pix_32 = viv_s3[(2*c_dw_si)-1:c_dw_si];
         proc_pix_42 = viv_s3[c_dw_si-1:0];
      end else begin 
         proc_pix_02 = viv_s1[(5*c_dw_si)-1:4*c_dw_si];
         proc_pix_12 = viv_s1[(4*c_dw_si)-1:3*c_dw_si];
         proc_pix_22 = viv_s1[(3*c_dw_si)-1:2*c_dw_si];
         proc_pix_32 = viv_s1[(2*c_dw_si)-1:c_dw_si];
         proc_pix_42 = viv_s1[c_dw_si-1:0];
      end
   end
   always @(*) begin
      if (alom_stage4_val || !alom_stage2_val) begin
         proc_pix_01 = viv_s4[(5*c_dw_si)-1:4*c_dw_si];
         proc_pix_11 = viv_s4[(4*c_dw_si)-1:3*c_dw_si];
         proc_pix_21 = viv_s4[(3*c_dw_si)-1:2*c_dw_si];
         proc_pix_31 = viv_s4[(2*c_dw_si)-1:c_dw_si];
         proc_pix_41 = viv_s4[c_dw_si-1:0];
      end else begin 
         proc_pix_01 = viv_s2[(5*c_dw_si)-1:4*c_dw_si];
         proc_pix_11 = viv_s2[(4*c_dw_si)-1:3*c_dw_si];
         proc_pix_21 = viv_s2[(3*c_dw_si)-1:2*c_dw_si];
         proc_pix_31 = viv_s2[(2*c_dw_si)-1:c_dw_si];
         proc_pix_41 = viv_s2[c_dw_si-1:0];
      end
   end
endmodule
