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

module vsisp_isp_filt_chr_buf 
  (
   clk,
   reset_n,
   soft_rst,
   in_val,
   in_ack,
   in_h_end,
   in_v_end,
   in_data,
   out_stage0,
   out_stage1,
   out_stage2,
   out_stage3,
   out_stage4,
   out_stage5,
   out_stage6,
   flt_stage1_en,
   flt_stage2_en,
   flt_stage3_en,
   flt_stage4_en,
   flt_stage5_en,
   flt_stage0_val,
   flt_stage1_val,
   flt_stage2_val,
   flt_stage3_val,
   out_h_end,
   out_v_end,
   out_val,
   out_ack);
   parameter c_dw_in = 10;               
   input     clk;            
   input     reset_n;        
   input     soft_rst;       
   input     in_val;         
   output    in_ack;         
   input     in_h_end;       
   input     in_v_end;       
   input  [c_dw_in-1:0] in_data;     
   output [c_dw_in-1:0] out_stage0;  
   output [c_dw_in-1:0] out_stage1;  
   output [c_dw_in-1:0] out_stage2;  
   output [c_dw_in-1:0] out_stage3;  
   output [c_dw_in-1:0] out_stage4;  
   output [c_dw_in-1:0] out_stage5;  
   output [c_dw_in-1:0] out_stage6;  
   output  flt_stage1_en;  
   output  flt_stage2_en;  
   output  flt_stage3_en;  
   output  flt_stage4_en;  
   output  flt_stage5_en;  
   output  flt_stage0_val; 
   output  flt_stage1_val; 
   output  flt_stage2_val; 
   output  flt_stage3_val; 
   output  out_h_end;      
   output  out_v_end;      
   output  out_val;        
   input   out_ack;        
   parameter c_dw_buf    = c_dw_in+2;  
   reg  out_h_end;
   reg  out_v_end;
   reg  out_val;
   reg [c_dw_in-1:0] out_stage0;  
   reg [c_dw_in-1:0] out_stage1;
   reg [c_dw_in-1:0] out_stage2;
   reg [c_dw_in-1:0] out_stage3;
   reg [c_dw_in-1:0]  out_stage4;
   reg [c_dw_in-1:0]  out_stage5;
   reg [c_dw_in-1:0]  out_stage6;  
   wire [c_dw_buf-1:0] viv_s0; 
   wire viv_s1;  
   reg viv_s2;       
   reg [c_dw_buf-1:0] viv_s3;   
   reg [c_dw_buf-1:0] viv_s4;
   reg [c_dw_buf-1:0] viv_s5;
   reg [c_dw_buf-1:0] viv_s6;
   reg [c_dw_buf-1:0] viv_s7;
   reg [c_dw_buf-1:0] viv_s8;
   reg                viv_s9;
   reg                viv_s10;
   reg                viv_s11;
   reg                viv_s12;
   reg                viv_s13;
   reg                viv_s14;
   wire               viv_s15;
   wire               viv_s16;
   wire               viv_s17;
   wire               viv_s18;
   wire               viv_s19;
   wire               viv_s20;
   wire               viv_s21;
   wire               viv_s22;
   wire               viv_s23;
   wire               viv_s24;
   wire               viv_s25;
   wire               viv_s26;
   wire               viv_s27;
   wire               viv_s28;
   wire               viv_s29;
   wire               viv_s30;
   wire               viv_s31;
   wire               viv_s32;
   wire               viv_s33;
   wire               viv_s34;
   wire               viv_s35;
   wire               viv_s36;
   wire               viv_s37;
   wire               viv_s38;
   wire               viv_s39;
   wire               viv_s40;
   wire               viv_s41;
   wire               viv_s42;
   wire               viv_s43;
   wire               viv_s44;
   assign viv_s20 =                (viv_s1 || viv_s35);
   assign viv_s21 = viv_s20 && (viv_s9 || viv_s36);
   assign viv_s22 = viv_s21 && (viv_s10 || viv_s37);
   assign viv_s23 = viv_s22 && (viv_s11 || viv_s38);
   assign viv_s25  = !viv_s9 || viv_s26 && viv_s20;
   assign viv_s26  = !viv_s10 || viv_s27 && viv_s21;
   assign viv_s27  = !viv_s11 || viv_s28 && viv_s22;
   assign viv_s28  = !viv_s12 || viv_s31   && viv_s23;
   assign viv_s29  = viv_s28;
   assign viv_s30  = viv_s28;
   assign viv_s31     = !out_val    || out_ack;
   assign viv_s32  = !viv_s12 || viv_s31;
   assign viv_s33  = !viv_s11 || viv_s32;
   assign viv_s34  = !viv_s10 || viv_s33;
   assign in_ack      = (!viv_s9 || viv_s34) && viv_s2;
   assign viv_s24  = (!viv_s9 || viv_s34) && viv_s2 && viv_s1 ;
   assign viv_s39   = viv_s6[c_dw_buf-2];
   assign viv_s35   = viv_s3[c_dw_buf-1];
   assign viv_s36   = viv_s4[c_dw_buf-1];
   assign viv_s37   = viv_s5[c_dw_buf-1];
   assign viv_s38   = viv_s6[c_dw_buf-1];
   assign viv_s1      = in_val && viv_s2;
   assign viv_s0     = {in_h_end, in_v_end, in_data};
   assign viv_s40  = in_h_end && in_val && in_ack;
   assign viv_s41 = viv_s38 && viv_s18 && viv_s31;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s3  <= {c_dw_buf{1'b0}};
         viv_s4  <= {c_dw_buf{1'b0}};
         viv_s5  <= {c_dw_buf{1'b0}};
         viv_s6  <= {c_dw_buf{1'b0}};
         viv_s7  <= {c_dw_buf{1'b0}};
         viv_s8  <= {c_dw_buf{1'b0}};
         viv_s9   <= 1'b0;
         viv_s10   <= 1'b0;
         viv_s11   <= 1'b0;
         viv_s12   <= 1'b0;
         viv_s13   <= 1'b0;
         viv_s14   <= 1'b0;
         viv_s2      <= 1'b1;
      end else begin
         if (viv_s24) viv_s3 <= viv_s0;
         if (viv_s26)      viv_s4 <= viv_s3;
         if (viv_s27)      viv_s5 <= viv_s4;
         if (viv_s28)      viv_s6 <= viv_s5;
         if (viv_s29)      viv_s7 <= viv_s6;
         if (viv_s30)      viv_s8 <= viv_s7;
         if (soft_rst) begin
            viv_s9   <= 1'b0;
            viv_s10   <= 1'b0;
            viv_s11   <= 1'b0;
            viv_s12   <= 1'b0;
            viv_s13   <= 1'b0;
            viv_s14   <= 1'b0;
            viv_s2      <= 1'b1;
         end else begin
            if (viv_s25)  viv_s9 <= viv_s1;
            if (viv_s26)  viv_s10 <= viv_s15;
            if (viv_s27)  viv_s11 <= viv_s16;
            if (viv_s28)  viv_s12 <= viv_s17;
            if (viv_s29)  viv_s13 <= viv_s18;
            if (viv_s30)  viv_s14 <= viv_s19;
            if      (viv_s40)  viv_s2 <= 1'b0;
            else if (viv_s41) viv_s2 <= 1'b1;
         end
      end
   end
   assign viv_s15 = viv_s9 && (viv_s1     || viv_s35);
   assign viv_s16 = viv_s10 && (viv_s15 || viv_s36);
   assign viv_s17 = viv_s11 && (viv_s16 || viv_s37);
   assign viv_s18 = viv_s12 && (viv_s17 || viv_s38);
   assign viv_s19 = viv_s13 &&  viv_s18;
   always @(*) begin
      if      (viv_s1) out_stage0 = viv_s0[c_dw_in-1:0];
      else if (viv_s9) out_stage0 = viv_s3[c_dw_in-1:0];
      else if (viv_s10) out_stage0 = viv_s4[c_dw_in-1:0];
      else if (viv_s11) out_stage0 = viv_s5[c_dw_in-1:0];
      else                 out_stage0 = viv_s0[c_dw_in-1:0];
      if      (viv_s9) out_stage1 = viv_s3[c_dw_in-1:0];
      else if (viv_s10) out_stage1 = viv_s4[c_dw_in-1:0];
      else if (viv_s11) out_stage1 = viv_s5[c_dw_in-1:0];
      else                 out_stage1 = viv_s3[c_dw_in-1:0];
      if      (viv_s10) out_stage2 = viv_s4[c_dw_in-1:0];
      else if (viv_s11) out_stage2 = viv_s5[c_dw_in-1:0];
      else                 out_stage2 = viv_s4[c_dw_in-1:0];
      out_stage3                      = viv_s5[c_dw_in-1:0];
      if      (viv_s12) out_stage4 = viv_s6[c_dw_in-1:0];
      else if (viv_s11) out_stage4 = viv_s5[c_dw_in-1:0];
      else                 out_stage4 = viv_s6[c_dw_in-1:0];
      if      (viv_s13) out_stage5 = viv_s7[c_dw_in-1:0];
      else if (viv_s12) out_stage5 = viv_s6[c_dw_in-1:0];
      else if (viv_s11) out_stage5 = viv_s5[c_dw_in-1:0];
      else                 out_stage5 = viv_s7[c_dw_in-1:0];
      if      (viv_s14) out_stage6 = viv_s8[c_dw_in-1:0];
      else if (viv_s13) out_stage6 = viv_s7[c_dw_in-1:0];
      else if (viv_s12) out_stage6 = viv_s6[c_dw_in-1:0];
      else if (viv_s11) out_stage6 = viv_s5[c_dw_in-1:0];
      else                 out_stage6 = viv_s8[c_dw_in-1:0];
   end
   assign viv_s42 = viv_s38 && viv_s18;
   assign viv_s43 = viv_s39 && viv_s18;
   assign viv_s44   = viv_s18;
   assign flt_stage1_en = viv_s24;
   assign flt_stage2_en = viv_s26;
   assign flt_stage3_en = viv_s27;
   assign flt_stage4_en = viv_s28;
   assign flt_stage5_en = viv_s31;
   assign flt_stage0_val = viv_s1;
   assign flt_stage1_val = viv_s9;
   assign flt_stage2_val = viv_s10;
   assign flt_stage3_val = viv_s11;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         out_h_end <= 0;
         out_v_end <= 0;
         out_val   <= 0;
      end else begin
         if (viv_s31) begin
            out_h_end <= viv_s42;
            out_v_end <= viv_s43;
         end
         if (soft_rst)
           out_val   <= 1'b0;
         else if (viv_s31) 
           out_val   <= viv_s44;
      end
   end
endmodule
