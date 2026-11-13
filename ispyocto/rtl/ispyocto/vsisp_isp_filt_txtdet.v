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

module vsisp_isp_filt_txtdet
  (
   clk,
   reset_n,
   alom_dem_stage1_en,
   alom_dem_stage2_en,
   alom_dem_stage3_en,
   alom_dem_stage4_en,
   alom_dem_stage5_en,
   alom_dem_stage6_en,
   alom_dem_stage7_en,
   alom_dem_stage8_en,
   alom_stage1_val,
   alom_stage3_val,
   alom_stage4_val,
   pix_01,
   pix_02,
   pix_03,
   pix_04,
   pix_05,
   pix_11,
   pix_12,
   pix_13,
   pix_14,
   pix_15,
   pix_21,
   pix_22,
   pix_23,
   pix_24,
   pix_25,
   pix_31,
   pix_32,
   pix_33,
   pix_34,
   pix_35,
   pix_41,
   pix_42,
   pix_43,
   pix_44,
   pix_45,
   proc_pattern_stg2,
   regs_demosaic_th,
   filt_thres_bl0,
   filt_thres_bl1,
   filt_thres_sh0,
   filt_thres_sh1,
   lum_weight_gain,
   lum_weight_kink,
   lum_weight_min,
   flag_h_1,
   flag_v_1,
   flag_h_2,
   flag_v_2,
   flag_h_3,
   flag_v_3,
   edge_dir,
   detail_level);
`include "vsisp_isp.vh"
   input clk;                
   input reset_n;            
   input alom_dem_stage1_en; 
   input alom_dem_stage2_en; 
   input alom_dem_stage3_en; 
   input alom_dem_stage4_en; 
   input alom_dem_stage5_en; 
   input alom_dem_stage6_en; 
   input alom_dem_stage7_en; 
   input alom_dem_stage8_en; 
   input alom_stage1_val;    
   input alom_stage3_val;    
   input alom_stage4_val;    
   input [7:0] pix_01;             
   input [7:0] pix_02;             
   input [7:0] pix_03;             
   input [7:0] pix_04;             
   input [7:0] pix_05;             
   input [7:0] pix_11;             
   input [7:0] pix_12;             
   input [7:0] pix_13;             
   input [7:0] pix_14;             
   input [7:0] pix_15;             
   input [7:0] pix_21;             
   input [7:0] pix_22;             
   input [7:0] pix_23;             
   input [7:0] pix_24;             
   input [7:0] pix_25;             
   input [7:0] pix_31;             
   input [7:0] pix_32;             
   input [7:0] pix_33;             
   input [7:0] pix_34;             
   input [7:0] pix_35;             
   input [7:0] pix_41;             
   input [7:0] pix_42;             
   input [7:0] pix_43;             
   input [7:0] pix_44;             
   input [7:0] pix_45;             
   input [1:0] proc_pattern_stg2;  
   input [7:0] regs_demosaic_th;   
   input [9:0] filt_thres_bl0;     
   input [9:0] filt_thres_bl1;     
   input [9:0] filt_thres_sh0;     
   input [9:0] filt_thres_sh1;     
   input [2:0] lum_weight_gain;    
   input [7:0] lum_weight_kink;    
   input [7:0] lum_weight_min;     
   output      flag_h_1;           
   output      flag_v_1;           
   output      flag_h_2;           
   output      flag_v_2;           
   output      flag_h_3;           
   output      flag_v_3;           
   output      edge_dir;           
   output [2:0] detail_level;       
   reg [7:0]  viv_s0;
   reg [7:0]  viv_s1;
   reg [7:0]  viv_s2;
   reg [7:0]  viv_s3;
   reg [7:0]  viv_s4;
   reg [7:0]  viv_s5;
   reg [7:0]  viv_s6;
   reg [7:0]  viv_s7;
   reg [7:0]  viv_s8;
   reg [7:0]  viv_s9;
   wire [10:0] viv_s10;
   wire [10:0] viv_s11;
   wire        viv_s12;
   wire        viv_s13;
   reg         flag_h_1;
   reg         flag_v_1;
   reg [7:0]   viv_s14;
   reg [7:0]   viv_s15;
   reg [7:0]   viv_s16;
   reg [7:0]   viv_s17;
   reg [7:0]   viv_s18;
   reg [7:0]   viv_s19;
   reg [7:0]   viv_s20;
   reg [7:0]   viv_s21;
   reg [7:0]   viv_s22;
   reg [7:0]   viv_s23;
   reg [7:0]   viv_s24;
   reg [7:0]   viv_s25;
   reg [7:0]   viv_s26;
   reg [7:0]   viv_s27;
   reg [7:0]   viv_s28;
   reg [7:0]   viv_s29;
   reg [7:0]   viv_s30;
   reg [7:0]   viv_s31;
   reg [7:0]   viv_s32;
   reg [7:0]   viv_s33;
   wire [7:0]  viv_s34;
   wire [7:0]  viv_s35;
   wire [7:0]  viv_s36;
   wire [7:0]  viv_s37;
   wire [7:0]  viv_s38;
   wire [7:0]  viv_s39;
   wire [7:0]  viv_s40;
   wire [7:0]  viv_s41;
   wire [7:0]  viv_s42;
   wire [7:0]  viv_s43;
   reg [7:0]   viv_s44;
   reg [7:0]   viv_s45;
   reg [7:0]   viv_s46;
   reg [7:0]   viv_s47;
   reg [7:0]   viv_s48;
   reg [7:0]   viv_s49;
   reg [7:0]   viv_s50;
   reg [7:0]   viv_s51;
   reg [7:0]   viv_s52;
   reg [7:0]   viv_s53;
   wire [10:0] viv_s54;
   wire [10:0] viv_s55;
   wire        viv_s56;
   wire        viv_s57;
   reg         flag_h_2;
   reg         flag_v_2;
   reg [7:0]   viv_s58;
   reg [7:0]   viv_s59;
   reg [7:0]   viv_s60;
   reg [7:0]   viv_s61;
   reg [7:0]   viv_s62;
   reg [7:0]   viv_s63;
   reg [7:0]   viv_s64;
   reg [7:0]   viv_s65;
   reg [7:0]   viv_s66;
   reg [7:0]   viv_s67;
   wire [10:0] viv_s68;
   wire [10:0] viv_s69;
   wire        viv_s70;
   wire        viv_s71;
   reg         flag_h_3;
   reg         flag_v_3;
   wire [9:0]  viv_s72;
   reg [9:0]   viv_s73;
   reg [9:0]   viv_s74;
   reg [9:0]   viv_s75;
   wire [9:0]  viv_s76;
   wire [9:0]  viv_s77;
   reg  [9:0]  viv_s78;
   wire [9:0]  viv_s79;
   wire [9:0]  viv_s80;
   wire [9:0]  viv_s81;
   wire [9:0]  viv_s82;
   wire [9:0]  viv_s83;
   wire [9:0]  viv_s84;
   wire [9:0]  viv_s85;
   reg  [7:0]  viv_s86;
   reg  [7:0]  viv_s87;
   reg  [7:0]  viv_s88;
   reg  [7:0]  viv_s89;
   wire [8:0]  viv_s90;
   wire [7:0]  viv_s91;
   reg  [9:0]  viv_s92;
   wire [9:0]  viv_s93;
   reg  [10:0] viv_s94;
   wire [8:0]  viv_s95;
   reg  [7:0]  viv_s96;
   wire [11:0] viv_s97;
   reg  [11:0] viv_s98;
   reg  [11:0] viv_s99;
   reg  [11:0] viv_s100;
   wire [18:0] viv_s101;
   reg  [10:0] viv_s102;
   wire [11:0] viv_s103;    
   wire [11:0] viv_s104;    
   wire [11:0] viv_s105;    
   wire [11:0] viv_s106;    
   reg [11:0]  viv_s107;
   reg [11:0]  viv_s108;
   reg [11:0]  viv_s109;
   reg [11:0]  viv_s110;
   reg [11:0]  viv_s111;
   reg [11:0]  viv_s112;
   reg         viv_s113;
   reg         viv_s114;
   reg         viv_s115;
   reg         edge_dir;
   reg [2:0]   detail_level;
   always @(*) begin
      if ((proc_pattern_stg2 == c_r) || (proc_pattern_stg2 == c_b)) begin
         viv_s14 = pix_11;
         viv_s15 = pix_13;
         viv_s16 = pix_22;
         viv_s17 = pix_31;
         viv_s18 = pix_33;
         viv_s19 = pix_13;
         viv_s20 = pix_15;
         viv_s21 = pix_24;
         viv_s22 = pix_33;
         viv_s23 = pix_35;
         viv_s24 = pix_02;
         viv_s25 = pix_22;
         viv_s26 = pix_13;
         viv_s27 = pix_04;
         viv_s28 = pix_24;
         viv_s29 = pix_22;
         viv_s30 = pix_42;
         viv_s31 = pix_33;
         viv_s32 = pix_24;
         viv_s33 = pix_44;
      end else begin
         viv_s14 = pix_23;
         viv_s15 = pix_21;
         viv_s16 = pix_12;
         viv_s17 = pix_32;
         viv_s18 = 0;
         viv_s19 = pix_25;
         viv_s20 = pix_23;
         viv_s21 = pix_14;
         viv_s22 = pix_34;
         viv_s23 = 0;
         viv_s24 = pix_12;
         viv_s25 = pix_03;
         viv_s26 = pix_23;
         viv_s27 = pix_14;
         viv_s28 = 0;
         viv_s29 = pix_32;
         viv_s30 = pix_23;
         viv_s31 = pix_43;
         viv_s32 = pix_34;
         viv_s33 = 0;
      end
   end
   assign viv_s34 = f_abs_dif(viv_s14, viv_s19);
   assign viv_s35 = f_abs_dif(viv_s15, viv_s20);
   assign viv_s36 = f_abs_dif(viv_s16, viv_s21);
   assign viv_s37 = f_abs_dif(viv_s17, viv_s22);
   assign viv_s38 = f_abs_dif(viv_s18, viv_s23);
   assign viv_s39 = f_abs_dif(viv_s24, viv_s29);
   assign viv_s40 = f_abs_dif(viv_s25, viv_s30);
   assign viv_s41 = f_abs_dif(viv_s26, viv_s31);
   assign viv_s42 = f_abs_dif(viv_s27, viv_s32);
   assign viv_s43 = f_abs_dif(viv_s28, viv_s33);
   always @(*) begin
      if ((proc_pattern_stg2 == c_r) || (proc_pattern_stg2 == c_b)) begin
         viv_s0 = viv_s34 >> 1;   
         viv_s1 = viv_s35 >> 1;   
         viv_s2 = viv_s36;        
         viv_s3 = f_abs_dif(pix_02, pix_04);
         viv_s4 = 0;
         viv_s5 = 0;
         viv_s6 = viv_s39;        
         viv_s7 = viv_s41;        
         viv_s8 = viv_s42;        
         viv_s9 = 0;
         viv_s44 = viv_s34 >> 1;   
         viv_s45 = viv_s35 >> 1;   
         viv_s46 = viv_s36;        
         viv_s47 = viv_s37 >> 1;   
         viv_s48 = viv_s38 >> 1;   
         viv_s49 = viv_s39 >> 1;   
         viv_s50 = viv_s40 >> 1;   
         viv_s51 = viv_s41;        
         viv_s52 = viv_s42 >> 1;   
         viv_s53 = viv_s43 >> 1;   
         viv_s58 = viv_s36;        
         viv_s59 = viv_s37 >> 1;   
         viv_s60 = viv_s38 >> 1;   
         viv_s61 = f_abs_dif(pix_42, pix_44);
         viv_s62 = 0;
         viv_s63 = 0;
         viv_s64 = viv_s40;        
         viv_s65 = viv_s41;        
         viv_s66 = viv_s43;        
         viv_s67 = 0;
      end else begin
         viv_s0 = viv_s34 >> 1;    
         viv_s1 = viv_s35 >> 1;    
         viv_s2 = viv_s36;         
         viv_s3 = f_abs_dif(pix_01, pix_03) >> 1;
         viv_s4 = f_abs_dif(pix_03, pix_05) >> 1;
         viv_s5 = 0;
         viv_s6 = viv_s39;         
         viv_s7 = viv_s40;         
         viv_s8 = viv_s42;         
         viv_s9 = 0;
         viv_s44 = viv_s34 >> 1;    
         viv_s45 = viv_s35 >> 1;    
         viv_s46 = viv_s36;         
         viv_s47 = viv_s37;         
         viv_s48 = viv_s38;         
         viv_s49 = viv_s39;         
         viv_s50 = viv_s40 >> 1;    
         viv_s51 = viv_s41 >> 1;    
         viv_s52 = viv_s42;         
         viv_s53 = 0;
         viv_s58 = viv_s35 >> 1;     
         viv_s59 = viv_s34 >> 1;     
         viv_s60 = viv_s37;          
         viv_s61 = f_abs_dif(pix_41, pix_43) >> 1;
         viv_s62 = f_abs_dif(pix_43, pix_45) >> 1;
         viv_s63 = 0;
         viv_s64 = viv_s39;         
         viv_s65 = viv_s41;         
         viv_s66 = viv_s42;         
         viv_s67 = 0;
      end
   end
   assign viv_s11 = {3'b0, viv_s5} + viv_s6 + viv_s7 + viv_s8 + viv_s9;
   assign viv_s55 = {3'b0, viv_s49} + viv_s50 + viv_s51 + viv_s52 + viv_s53;
   assign viv_s69 = {3'b0, viv_s63} + viv_s64 + viv_s65 + viv_s66 + viv_s67;
   assign viv_s10 = {3'b0, viv_s0} + viv_s1 + viv_s2 + viv_s3 + viv_s4;
   assign viv_s54 = {3'b0, viv_s44} + viv_s45 + viv_s46 + viv_s47 + viv_s48;
   assign viv_s68 = {3'b0, viv_s58} + viv_s59 + viv_s60 + viv_s61 + viv_s62;
   assign {viv_s13, viv_s12} = f_compare(viv_s11, regs_demosaic_th, viv_s10);
   assign {viv_s57, viv_s56} = f_compare(viv_s55, regs_demosaic_th, viv_s54);
   assign {viv_s71, viv_s70} = f_compare(viv_s69, regs_demosaic_th, viv_s68);
   function [7:0] f_abs_dif;
      input [7:0] a, 
                  b; 
      reg   [8:0] viv_s116;
      begin
         viv_s116 = a - b;
         f_abs_dif = viv_s116[8]   ?
                    ~viv_s116[7:0] :  
                     viv_s116[7:0];
      end
   endfunction
   function [1:0] f_compare;
      input [10:0] a; 
      input [7:0]  b; 
      input [10:0] c; 
      reg   [11:0] viv_s117; 
      reg   [11:0] viv_s118; 
      reg   [11:0] viv_s119; 
      reg   [11:0] viv_s120;
      reg   [12:0] viv_s121;
      reg   [12:0] viv_s122;
      reg   [12:0] viv_s123;
      reg   [12:0] viv_s124;
      reg          viv_s125;
      begin
         viv_s125 = ~(&b);           
         viv_s117    = {2'b0, a[9:0]};
         viv_s118    = {3'b0, b,1'b1};
         viv_s119    = {2'b0, c[9:0]};
         viv_s120 = ~(viv_s117 ^ viv_s118 ^ viv_s119);
         viv_s121 = {( viv_s117 & viv_s118)|( viv_s117 & ~viv_s119)|(viv_s118 & ~viv_s119), 1'b0};
         viv_s122 = {(~viv_s117 & viv_s118)|(~viv_s117 &  viv_s119)|(viv_s118 &  viv_s119), 1'b0};
         viv_s123 = viv_s120 + viv_s121;
         viv_s124 = viv_s120 + viv_s122;
         f_compare = {(viv_s123[11] & viv_s125), (viv_s124[11] & viv_s125)};
      end
   endfunction
   function [10:0] f_abs_hv;
      input [11:0] a;     
      reg   [11:0] viv_s116;
      begin
         viv_s116 = a;
         f_abs_hv = viv_s116[11] ?
                    ~viv_s116[10:0] :
                    viv_s116[10:0];
      end
   endfunction
   assign viv_s80 ={3'b0, pix_05[7:1]} + pix_15 + pix_25 + pix_35 + pix_45[7:1];
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s75  <= 10'b0;
         viv_s78      <= 10'b0;
         viv_s74  <= 10'b0;
         viv_s73  <= 10'b0;
      end else begin
         if (alom_dem_stage1_en) viv_s75 <= viv_s80;
         if (alom_dem_stage2_en) viv_s78     <= viv_s75;
         if (alom_dem_stage3_en) viv_s74 <= viv_s78;
         if (alom_dem_stage4_en) viv_s73 <= viv_s74;
      end
   end
   assign viv_s79 = alom_stage1_val ? viv_s75 : viv_s74;
   assign viv_s77 = alom_stage3_val ? viv_s74 : viv_s75;
   assign viv_s76 = alom_stage4_val ? viv_s73 : viv_s78;
   assign viv_s81 = {3'b0, pix_01[7:1]} + pix_02 + pix_03 + pix_04 + pix_05[7:1];
   assign viv_s82 = {3'b0, pix_11[7:1]} + pix_12 + pix_13 + pix_14 + pix_15[7:1];
   assign viv_s83 = {3'b0, pix_21[7:1]} + pix_22 + pix_23 + pix_24 + pix_25[7:1];
   assign viv_s84 = {3'b0, pix_31[7:1]} + pix_32 + pix_33 + pix_34 + pix_35[7:1];
   assign viv_s85 = {3'b0, pix_41[7:1]} + pix_42 + pix_43 + pix_44 + pix_45[7:1];
   assign viv_s104 = (({2'b0, viv_s76} + viv_s77) - viv_s78) - viv_s79;
   assign viv_s106 = (({2'b0, viv_s77} + viv_s78) - viv_s79) - viv_s80;
   assign viv_s103 = (({2'b0, viv_s81}   + viv_s82)   - viv_s83)   - viv_s84;
   assign viv_s105 = (({2'b0, viv_s82}   + viv_s83)   - viv_s84)   - viv_s85;
   assign viv_s72 = {3'b0, viv_s76[9:3]} + viv_s77[9:2] + viv_s78[9:2] + viv_s79[9:2] + viv_s80[9:3];
   assign viv_s90 = {1'b0, viv_s89} - lum_weight_kink;
   always @(*) begin
      case(lum_weight_gain)
        3'h0   : viv_s92 = {10'b0};                          
        3'h1   : viv_s92 = {10'b0};                          
        3'h2   : viv_s92 = {1'b0,viv_s90[7:0],1'b0}; 
        3'h3   : viv_s92 = {10'b0};                          
        3'h4   : viv_s92 = {1'b0,viv_s90[7:0],1'b0}; 
        3'h5   : viv_s92 = {10'b0};                          
        default: viv_s92 = {1'b0,viv_s90[7:0],1'b0}; 
      endcase
   end
   assign viv_s93 = viv_s92 + viv_s90[7:0];
   always @(*) begin
      case(lum_weight_gain)
        3'h0   : viv_s94 = {3'b0,viv_s93[ 8:1]};      
        3'h1   : viv_s94 = {3'b0,viv_s93[ 7:0]};      
        3'h2   : viv_s94 = {2'b0,viv_s93[ 9:1]};      
        3'h3   : viv_s94 = {2'b0,viv_s93[ 7:0],1'b0}; 
        3'h4   : viv_s94 = {1'b0,viv_s93[ 9:0]};      
        3'h5   : viv_s94 = {1'b0,viv_s93[ 7:0],2'b0}; 
        default: viv_s94 = {     viv_s93[ 9:0],1'b0}; 
      endcase
  end
   assign viv_s91 = (viv_s90[8])     ?  8'h00 :
                     (|viv_s94[10:7]) ?  8'hFF :
                     {viv_s94[6:0],1'b0};
   assign viv_s95 = {1'b0, lum_weight_min} + viv_s91;
   assign viv_s97 = viv_s112 + viv_s111;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s86           <= 8'b0;
         viv_s87           <= 8'b0;
         viv_s88           <= 8'b0;
         viv_s89                <= 8'b0;
         viv_s113          <= 1'b0;
         viv_s114          <= 1'b0;
         viv_s115          <= 1'b0;
         edge_dir               <= 1'b0;
         viv_s98     <= 12'b0;
         viv_s99     <= 12'b0;
         viv_s100          <= 12'b0;
         viv_s96             <= 8'b0;
         viv_s107           <= 12'b0;
         viv_s108           <= 12'b0;
         viv_s109           <= 12'b0;
         viv_s110           <= 12'b0;
         viv_s111               <= 12'b0;
         viv_s112                 <= 12'b0;
         viv_s102 <= 11'b0;
      end else begin
         if (alom_dem_stage3_en) begin
            viv_s86       <= viv_s72[9:2];
            viv_s107       <= viv_s103;
            viv_s108       <= viv_s104;
            viv_s109       <= viv_s105;
            viv_s110       <= viv_s106;
         end
         if (alom_dem_stage4_en) begin
            viv_s111           <= {1'b0, f_abs_hv(viv_s107)} + {1'b0, f_abs_hv(viv_s109)};
            viv_s112             <= {1'b0, f_abs_hv(viv_s108)} + {1'b0, f_abs_hv(viv_s110)};
            viv_s87       <= viv_s86;
         end
         if (alom_dem_stage5_en) begin
           viv_s88        <= viv_s87;
            viv_s98 <= viv_s97;
            if( (viv_s112 < viv_s111)) 
               viv_s113   <= 1;
            else                     
               viv_s113   <= 0;
         end
         if (alom_dem_stage6_en) begin
           viv_s89             <= viv_s88;
            viv_s99 <= viv_s98;
            viv_s114      <= viv_s113;
         end
         if (alom_dem_stage7_en) begin
            viv_s100      <= viv_s99;
            viv_s96         <= (viv_s95[8]) ?  8'hFF : viv_s95[7:0];
            viv_s115      <= viv_s114;
         end
         if (alom_dem_stage8_en) begin
            edge_dir               <= viv_s115;
            viv_s102 <= {viv_s101[18] || viv_s101[17], viv_s101[16:7]};
         end
      end
   end
   assign viv_s101     = viv_s100 * viv_s96[7:1];
   always@(*) begin
      if     (viv_s102 > {1'b0, filt_thres_sh1})  detail_level = 3'h4;
      else if(viv_s102 > {1'b0, filt_thres_sh0})  detail_level = 3'h3;
      else if(viv_s102 < {1'b0, filt_thres_bl1})  detail_level = 3'h0;
      else if(viv_s102 < {1'b0, filt_thres_bl0})  detail_level = 3'h1;
      else                                                      detail_level = 3'h2;
   end
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         flag_h_1  <= 1'b0;
         flag_h_2  <= 1'b0;
         flag_h_3  <= 1'b0;
         flag_v_1  <= 1'b0;
         flag_v_2  <= 1'b0;
         flag_v_3  <= 1'b0;
      end else begin
         if (alom_dem_stage3_en) begin
            flag_v_1  <= viv_s13;
            flag_v_2  <= viv_s57;
            flag_v_3  <= viv_s71;
            flag_h_1  <= viv_s12;
            flag_h_2  <= viv_s56;
            flag_h_3  <= viv_s70;
         end
      end
   end
endmodule
