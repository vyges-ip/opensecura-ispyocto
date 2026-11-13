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

module vsisp_isp_filt_ctrl 
  (
   clk,
   reset_n,
   flt_stage1_en,
   flt_stage2_en,
   flt_stage3_en,
   flt_stage1_val,
   flt_stage3_val,
   filt_enable,
   filt_chr_h_mode,
   filt_chr_v_mode,
   filt_mode,
   filt_fac_sh1,
   filt_fac_sh0,
   filt_fac_mid,
   filt_fac_bl0,
   filt_fac_bl1,
   detail_level,            
   edge_dir,
   filt_fac_muxed,            
   chr_h_bypass,
   cv_mask,
   ch_mask);
`include "vsisp_isp.vh"
   input clk;                
   input reset_n;            
   input flt_stage1_en;      
   input flt_stage2_en;      
   input flt_stage3_en;      
   input flt_stage1_val;     
   input flt_stage3_val;     
   input filt_enable;        
   input [1:0] filt_chr_h_mode;    
   input [1:0] filt_chr_v_mode;    
   input       filt_mode;          
   input [5:0] filt_fac_sh1;       
   input [5:0] filt_fac_sh0;       
   input [5:0] filt_fac_mid;       
   input [5:0] filt_fac_bl0;       
   input [5:0] filt_fac_bl1;       
   input [2:0] detail_level;       
   input       edge_dir;           
   output [5:0] filt_fac_muxed;      
   output       chr_h_bypass;       
   output [1:0] cv_mask;            
   output [1:0] ch_mask;            
   reg [3:0]    viv_s0;
   reg [3:0]    viv_s1;
   reg [1:0]    viv_s2;
   reg          viv_s3; 
   reg          chr_h_bypass;
   reg [5:0]    viv_s4;
   reg [5:0]    filt_fac_muxed;
   reg [1:0]    cv_mask;
   reg [1:0]    ch_mask;
   wire [2:0]   viv_s5;
   wire         viv_s6;
   wire         viv_s7;
   reg          viv_s8;
   wire         viv_s9;
   wire         viv_s10;
   wire         viv_s11;
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s0     <= 4'b0;
         viv_s1     <= 4'b0;
         viv_s8 <= 1'b0;
      end else begin
         if (flt_stage1_en)      viv_s0     <= {detail_level, edge_dir};
         if (flt_stage2_en)      viv_s1     <= viv_s0;
         if (flt_stage3_en)      viv_s8 <= viv_s1[0];
      end
   end
   assign {viv_s5, viv_s6} = viv_s1;
   assign viv_s7 = flt_stage1_val ? viv_s0[0]  : viv_s6;
   assign viv_s9 = flt_stage3_val ? viv_s8 : viv_s6;
   always @(*) begin
      if (~filt_mode) begin                  
         viv_s4 = filt_fac_mid;
      end else begin
         case(viv_s5)
           3'b000  : viv_s4 = filt_fac_bl1;
           3'b001  : viv_s4 = filt_fac_bl0;
           3'b010  : viv_s4 = filt_fac_mid;
           3'b011  : viv_s4 = filt_fac_sh0;
           default : viv_s4 = filt_fac_sh1;
         endcase
      end
   end
   assign viv_s11 = ~viv_s7 & ~viv_s6 & ~viv_s9;
   assign viv_s10 =  viv_s7 &  viv_s6 &  viv_s9;
   always @(*) begin
      if          (filt_chr_h_mode == 2'b00) begin
         viv_s3 = 1'b1;
         viv_s2      = 2'b00;
      end else if (filt_chr_h_mode == 2'b01) begin
         viv_s2      = 2'b01;
         viv_s3 = 1'b0;
      end else if (filt_chr_h_mode == 2'b10) begin
         viv_s3 = 1'b0;
         case(viv_s5)
           3'b000 : begin
              viv_s2 = 2'b11;  
           end
           3'b001 : begin
              viv_s2 = 2'b10;  
           end
           default : begin
              if      (viv_s11) viv_s2 = 2'b00;
              else if (viv_s10) viv_s2 = 2'b10;
              else               viv_s2 = 2'b01;
           end
         endcase
      end else begin                  
         viv_s3 = 1'b0;
         case(viv_s5)
           3'b000 : begin
              viv_s2 = 2'b11;  
           end
           3'b001 : begin
              viv_s2 = 2'b11;  
           end
           default : begin
              if      (viv_s11) viv_s2 = 2'b00;
              else if (viv_s10) viv_s2 = 2'b11;
              else               viv_s2 = 2'b10;
           end
         endcase
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         filt_fac_muxed <= {6'b0};
         chr_h_bypass   <= {1'b0};
         ch_mask        <= {2'b0};
         cv_mask        <= {2'b0};
      end else begin
         if (flt_stage3_en) filt_fac_muxed <= viv_s4;
         if (flt_stage3_en) chr_h_bypass   <= viv_s3;
         if (flt_stage3_en) ch_mask        <= viv_s2;
         cv_mask <= (filt_enable) ?  filt_chr_v_mode : {2'b0};  
      end
   end
endmodule
