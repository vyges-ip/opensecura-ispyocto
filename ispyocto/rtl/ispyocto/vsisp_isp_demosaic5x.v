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

module vsisp_isp_demosaic5x 
  (
   clk,
   reset_n,
   alom_stage4_en,
   alom_stage5_en,
   regs_dem_bypass,
   cv_mask,
   proc_pix_01,
   proc_pix_02,
   proc_pix_03,
   proc_pix_11,
   proc_pix_12,
   proc_pix_13,
   proc_pix_21,
   proc_pix_22,
   proc_pix_23,
   proc_pix_31,
   proc_pix_32,
   proc_pix_33,
   proc_pix_41,
   proc_pix_42,
   proc_pix_43,
   proc_pattern_stg3,           
   flag_h_1,
   flag_v_1,
   flag_h_2,
   flag_v_2,
   flag_h_3,
   flag_v_3,
   grn_line04,
   grn_line13,
   grn_line2,
   red_sub,
   blue_sub);
`include "vsisp_isp.vh" 
   input               clk;             
   input               reset_n;         
   input               alom_stage4_en;  
   input               alom_stage5_en;  
   input               regs_dem_bypass; 
   input [1:0]         cv_mask;         
   input [c_dw_si-1:0] proc_pix_01;     
   input [c_dw_si-1:0] proc_pix_02;     
   input [c_dw_si-1:0] proc_pix_03;     
   input [c_dw_si-1:0] proc_pix_11;     
   input [c_dw_si-1:0] proc_pix_12;     
   input [c_dw_si-1:0] proc_pix_13;     
   input [c_dw_si-1:0] proc_pix_21;     
   input [c_dw_si-1:0] proc_pix_22;     
   input [c_dw_si-1:0] proc_pix_23;     
   input [c_dw_si-1:0] proc_pix_31;     
   input [c_dw_si-1:0] proc_pix_32;     
   input [c_dw_si-1:0] proc_pix_33;     
   input [c_dw_si-1:0] proc_pix_41;     
   input [c_dw_si-1:0] proc_pix_42;     
   input [c_dw_si-1:0] proc_pix_43;     
   input [1:0]         proc_pattern_stg3;
   input               flag_h_1;        
   input               flag_v_1;        
   input               flag_h_2;        
   input               flag_v_2;        
   input               flag_h_3;        
   input               flag_v_3;        
   output [c_dw_si:0]  grn_line04;      
   output [c_dw_si:0]  grn_line13;      
   output [c_dw_si-1:0] grn_line2;       
   output [c_dw_si:0]   red_sub;    
   output [c_dw_si:0]   blue_sub;   
   reg [1:0]  viv_s0; 
   wire [1:0] viv_s1;   
   wire [1:0] viv_s2;   
   wire [1:0] viv_s3;   
   wire [1:0] viv_s4;   
   wire [1:0] viv_s5;   
   wire [c_dw_si-1:0]   viv_s6;
   wire [c_dw_si-1:0]   viv_s7;
   wire [c_dw_si-1:0]   viv_s8;
   wire [c_dw_si-1:0]   viv_s9;
   wire [c_dw_si-1:0]   viv_s10;
   wire [c_dw_si-1:0]   viv_s11;
   wire [c_dw_si-1:0]   viv_s12;
   wire [c_dw_si-1:0]   viv_s13;
   wire [c_dw_si-1:0]   viv_s14;
   wire [c_dw_si-1:0]   viv_s15;
   wire [c_dw_si-1:0]   viv_s16;
   wire [c_dw_si:0]     viv_s17;
   wire [c_dw_si:0]     viv_s18;
   wire [c_dw_si:0]     viv_s19;
   wire [c_dw_si:0]     viv_s20;
   reg [c_dw_si:0]      viv_s21;
   reg [c_dw_si:0]      viv_s22;
   reg [c_dw_si-1:0]    viv_s23;
   reg [c_dw_si:0]      viv_s24;
   reg [c_dw_si:0]      viv_s25;
   reg [c_dw_si:0]      viv_s26;
   reg [c_dw_si:0]      viv_s27;
   reg [c_dw_si-1:0]    grn_line2;
   reg [c_dw_si:0]      grn_line04;
   reg [c_dw_si:0]      grn_line13;
   wire                 viv_s28;
   wire                 viv_s29;
   wire                 viv_s30;
   wire [c_dw_si+2:0]   viv_s31;
   wire [c_dw_si+1:0]   viv_s32;
   wire [c_dw_si+1:0]   viv_s33;
   wire [c_dw_si+1:0]   viv_s34;
   wire [c_dw_si+3:0]   viv_s35;
   wire [c_dw_si:0]     viv_s36;
   wire [c_dw_si+2:0]   viv_s37;
   wire [c_dw_si+1:0]   viv_s38;
   wire [c_dw_si+1:0]   viv_s39;
   wire [c_dw_si+1:0]   viv_s40;
   wire [c_dw_si+3:0]   viv_s41;
   wire [c_dw_si:0]     viv_s42;
   always @(*) begin
      case (proc_pattern_stg3)
        c_r :    viv_s0 = c_gb; 
        c_gr:    viv_s0 = c_b;  
        c_gb:    viv_s0 = c_r;  
        default: viv_s0 = c_gr; 
      endcase 
   end
   assign viv_s1 = proc_pattern_stg3;
   assign viv_s2 = viv_s0;
   assign viv_s3 = proc_pattern_stg3;
   assign viv_s4 = viv_s0;
   assign viv_s5 = proc_pattern_stg3;
   vsisp_isp_demosaic_3x3_crcb u1_isp_demosaic_3x3_crcb
     ( 
       .regs_dem_bypass(regs_dem_bypass),
       .proc_pix_01(proc_pix_01),
       .proc_pix_02(proc_pix_02),
       .proc_pix_03(proc_pix_03),
       .proc_pix_11(proc_pix_11),
       .proc_pix_12(proc_pix_12),
       .proc_pix_13(proc_pix_13),
       .proc_pix_21(proc_pix_21),
       .proc_pix_22(proc_pix_22),
       .proc_pix_23(proc_pix_23),
       .proc_pattern(viv_s2),
       .flag_h(flag_h_1),
       .flag_v(flag_v_1),
       .g_data(viv_s7),
       .rs_data(viv_s11),
       .bs_data(viv_s14));
   vsisp_isp_demosaic_3x3_crcb u2_isp_demosaic_3x3_crcb 
     (
      .regs_dem_bypass(regs_dem_bypass),
      .proc_pix_01(proc_pix_11),
      .proc_pix_02(proc_pix_12),
      .proc_pix_03(proc_pix_13),
      .proc_pix_11(proc_pix_21),
      .proc_pix_12(proc_pix_22),
      .proc_pix_13(proc_pix_23),
      .proc_pix_21(proc_pix_31),
      .proc_pix_22(proc_pix_32),
      .proc_pix_23(proc_pix_33),
      .proc_pattern(viv_s3),
      .flag_h(flag_h_2),
      .flag_v(flag_v_2),
      .g_data(viv_s8),
      .rs_data(viv_s12),
      .bs_data(viv_s15));
   vsisp_isp_demosaic_3x3_crcb u3_isp_demosaic_3x3_crcb 
     ( 
       .regs_dem_bypass(regs_dem_bypass),
       .proc_pix_01(proc_pix_21),
       .proc_pix_02(proc_pix_22),
       .proc_pix_03(proc_pix_23),
       .proc_pix_11(proc_pix_31),
       .proc_pix_12(proc_pix_32),
       .proc_pix_13(proc_pix_33),
       .proc_pix_21(proc_pix_41),
       .proc_pix_22(proc_pix_42),
       .proc_pix_23(proc_pix_43),
       .proc_pattern(viv_s4),
       .flag_h(flag_h_3),
       .flag_v(flag_v_3),
       .g_data(viv_s9),
       .rs_data(viv_s13),
       .bs_data(viv_s16));
vsisp_isp_demosaic_3x2 u0_isp_demosaic_3x2 
  (
   .regs_dem_bypass(regs_dem_bypass),
   .proc_pix_c1(proc_pix_01),           
   .proc_pix_c2(proc_pix_02),
   .proc_pix_c3(proc_pix_03),
   .proc_pix_n2(proc_pix_12),           
   .proc_pattern(viv_s1),
   .flag_v(flag_v_1),
   .g_data(viv_s6));
   vsisp_isp_demosaic_3x2 u4_isp_demosaic_3x2 
     (
      .regs_dem_bypass(regs_dem_bypass),
      .proc_pix_c1(proc_pix_41),           
      .proc_pix_c2(proc_pix_42),
      .proc_pix_c3(proc_pix_43),
      .proc_pix_n2(proc_pix_32),           
      .proc_pattern(viv_s5),
      .flag_v(flag_v_3),
      .g_data(viv_s10));
   assign viv_s17 = {1'b0, viv_s6} + viv_s10;
   assign viv_s18 = {1'b0, viv_s7} + viv_s9;
   assign viv_s19  = {1'b0, viv_s11} + viv_s13;
   assign viv_s20  = {1'b0, viv_s14} + viv_s16;
   assign viv_s28 = (cv_mask == 2'b00) ? 1'b1 : 1'b0;
   assign viv_s29 = (cv_mask == 2'b01) ? 1'b1 : 1'b0;
   assign viv_s30 = (cv_mask == 2'b10) ? 1'b1 : 1'b0;
   assign viv_s31  = {viv_s20, 2'b00};
   assign viv_s32  = {viv_s15 , 2'b00};
   assign viv_s33  = (viv_s29) ? {c_dw_si+2{1'b0}} :
                   (viv_s30) ? {1'b0, viv_s20} :
                   {viv_s20, 1'b0};
   assign viv_s34  = (viv_s29) ? {viv_s15, 2'b00} :
                   (viv_s30) ? {1'b0, viv_s15, 1'b0} :
                   {c_dw_si+2{1'b0}};
   assign viv_s35  = {1'b0, viv_s31} + viv_s32 + viv_s33 + viv_s34;
   assign viv_s36 = (viv_s28) ? {viv_s15, 1'b0} : 
                                         viv_s35[c_dw_si+3:3];
   assign viv_s37  = {viv_s19, 2'b00};
   assign viv_s38  = {viv_s12 , 2'b00};
   assign viv_s39  = (viv_s29) ? {c_dw_si+2{1'b0}} :
                   (viv_s30) ? {1'b0, viv_s19} :
                   {viv_s19, 1'b0};
   assign viv_s40  = (viv_s29) ? {viv_s12, 2'b00} :
                   (viv_s30) ? {1'b0, viv_s12, 1'b0} :
                   {c_dw_si+2{1'b0}};
   assign viv_s41  = {1'b0, viv_s37} + viv_s38 + viv_s39 + viv_s40;
   assign viv_s42 = (viv_s28) ? {viv_s12, 1'b0} : 
                                         viv_s41[c_dw_si+3:3];
   assign red_sub  = viv_s26;
   assign blue_sub = viv_s27;
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s24 <= 0;
         viv_s25 <= 0;
         viv_s23    <= 0;
         viv_s21  <= 0;
         viv_s22  <= 0;
         viv_s26  <= 0;
         viv_s27  <= 0;
         grn_line04      <= 0;
         grn_line13      <= 0;
         grn_line2       <= 0;
      end else begin
         if (alom_stage4_en) begin
            viv_s24 <= viv_s17;
            viv_s25 <= viv_s18;
            viv_s23    <= viv_s8;
            viv_s21  <= viv_s42;
            viv_s22  <= viv_s36;
         end
         if (alom_stage5_en) begin
            grn_line04     <= viv_s24;
            grn_line13     <= viv_s25;
            grn_line2      <= viv_s23;
            viv_s26 <= viv_s21;
            viv_s27 <= viv_s22;
         end
      end
   end
endmodule
