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

module vsisp_isp_filt_hp_core 
  (
   clk,
   reset_n,
   flt_stage1_en,
   flt_stage2_en,
   flt_stage3_en,
   flt_stage4_en,
   flt_stage5_en,
   flt_stage0_val,
   flt_stage1_val,
   flt_stage2_val,
   filt_fac_muxed,
   in_data13,
   in_data2,
   out_data
   );
`include "vsisp_isp.vh"    
   input clk;            
   input reset_n;        
   input flt_stage1_en;  
   input flt_stage2_en;  
   input flt_stage3_en;  
   input flt_stage4_en;  
   input flt_stage5_en;  
   input flt_stage0_val; 
   input flt_stage1_val; 
   input flt_stage2_val; 
   input [5:0] filt_fac_muxed; 
   input [c_dw_si+2:0] in_data13;      
   input [c_dw_si+1:0] in_data2;       
   output [c_dw_si+1:0] out_data;       
   parameter            c_dw_buf = 2*(c_dw_si+2)+1;
   wire [c_dw_buf-1:0]  viv_s0; 
   reg [c_dw_buf-1:0]   viv_s1;
   reg [c_dw_buf-1:0]   viv_s2;
   reg [c_dw_buf-1:0]   viv_s3;
   reg [c_dw_buf-1:0]   viv_s4;
   reg [c_dw_buf-1:0]   viv_s5;
   wire [c_dw_si+2:0]   viv_s6;
   wire [c_dw_si+2:0]   viv_s7;
   wire [c_dw_si+2:0]   viv_s8;
   wire [c_dw_si+1:0]  viv_s9;
   wire [c_dw_si+1:0]  viv_s10; 
   wire [c_dw_si+1:0]  viv_s11;
   wire [c_dw_si+3:0]  viv_s12; 
   wire [c_dw_si+7:0]  viv_s13;
   wire [c_dw_si+1:0]  viv_s14;
   reg [c_dw_si+1:0]   viv_s15;
   reg [c_dw_si+1:0]   viv_s16;
   reg signed [c_dw_si+2:0] viv_s17;
   reg [c_dw_si+1:0]   viv_s18;
   reg [c_dw_si+1:0]   out_data;
   wire [c_dw_si+1:0]  viv_s19;
   wire signed [c_dw_si+2:0] viv_s20;
   wire signed [c_dw_si+8:0] viv_s21;
   wire [c_dw_si+6:0] viv_s22;
   assign viv_s0 = {in_data13,in_data2};
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s1  <= {c_dw_buf{1'b0}};
         viv_s2  <= {c_dw_buf{1'b0}};
      end else begin
         if (flt_stage1_en) viv_s1 <= viv_s0;
         if (flt_stage2_en) viv_s2 <= viv_s1;
      end
   end
   always @(*) begin
      if (flt_stage0_val)      viv_s3 = viv_s0;
      else if (flt_stage1_val) viv_s3 = viv_s1;
      else                     viv_s3 = viv_s0;
      viv_s4                          = viv_s1;
      if (flt_stage2_val)      viv_s5 = viv_s2;
      else if (flt_stage1_val) viv_s5 = viv_s1;
      else                     viv_s5 = viv_s2;
   end
   assign viv_s6 = viv_s3[c_dw_buf-1:c_dw_si+2];
   assign viv_s7 = viv_s4[c_dw_buf-1:c_dw_si+2];
   assign viv_s8 = viv_s5[c_dw_buf-1:c_dw_si+2];
   assign viv_s9 = viv_s3[c_dw_si+1:0];
   assign viv_s10 = viv_s4[c_dw_si+1:0]; 
   assign viv_s11 = viv_s5[c_dw_si+1:0];
   assign viv_s12  = {1'b0, viv_s6} + viv_s8;
   assign viv_s13 = {viv_s9 , 3'h7} + {viv_s10 , 3'h7} + 
                  {viv_s11 , 3'h7} + {viv_s7, 3'h7} +  
                  {viv_s12 , 2'h3} + {3'b0, viv_s12 , 1'b1};
   assign viv_s19 = viv_s13[c_dw_si+7:6];
   assign viv_s20 = $signed({1'b0, viv_s11}) - $signed({1'b0, viv_s15});
   assign viv_s21  = viv_s17 * $signed({1'b0, filt_fac_muxed});
   assign viv_s22 = viv_s21[c_dw_si+8:2] + viv_s16 + {1'b1, {c_dw_si{1'b0}} , 2'b10};
   assign viv_s14 = viv_s22[c_dw_si+6] ?  {c_dw_si+2{1'b0}} : 
                        (|viv_s22[c_dw_si+5:c_dw_si+4]) ?  {c_dw_si+2{1'b1}} : 
                        viv_s22[c_dw_si+3:2];
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s15 <= {c_dw_si+2{1'b0}};
         viv_s16 <= {c_dw_si+2{1'b0}};
         viv_s17 <= {c_dw_si+3{1'b0}};
         viv_s18       <= {c_dw_si+2{1'b0}};
         out_data       <= {c_dw_si+2{1'b0}};
      end else begin
         if (flt_stage2_en) viv_s15  <= viv_s19;
         if (flt_stage3_en) viv_s16  <= viv_s15;
         if (flt_stage3_en) viv_s17  <= viv_s20;
         if (flt_stage4_en) viv_s18        <= viv_s14;  
         if (flt_stage5_en) out_data        <= viv_s18;
      end
   end
endmodule
