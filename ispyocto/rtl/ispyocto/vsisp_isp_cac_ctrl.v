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

module vsisp_isp_cac_ctrl 
  (
   clk,
   reset_n,
   soft_rst,
   memif_h_end,
   memif_v_end,
   memif_val,
   memif_ack,
   mem_h_end,
   mem_v_end,
   mem_val,
   mem_ack,
   cac_in_val,
   cac_in_ack,
   alom_stage1_en,
   alom_stage2_en,
   alom_stage3_en,
   alom_stage4_en,
   alom_stage5_en,
   alom_stage3_val,
   alom_stage5_val,
   regs_bayer_pat,
   cfg_upd,
   cac_enable,
   cac_h_clip_mode,
   cac_v_clip_mode,
   cac_h_count_start,
   cac_v_count_start,
   cac_x_norm_factor,
   cac_y_norm_factor,
   cac_x_norm_shift,
   cac_y_norm_shift,
   cac_a_red,
   cac_b_red,
   cac_c_red,
   cac_a_blue,
   cac_b_blue,
   cac_c_blue,
   cac_v_sel_1,
   cac_v_sel_2,
   cac_v_sel_3,
   cac_v_coef,
   cac_v_filt_disable,
   cac_h_red,
   cac_h_blue,
   cac_h_red_col);
`include "vsisp_isp.vh"    
`include "vsisp_f_sqrt_8bit.vh"    
   input       clk;               
   input       reset_n;           
   input       soft_rst;          
   input       memif_h_end;       
   input       memif_v_end;       
   input       memif_val;         
   input       memif_ack;         
   input       mem_h_end;         
   input       mem_v_end;         
   input       mem_val;           
   output      mem_ack;           
   output      cac_in_val;        
   input       cac_in_ack;        
   input       alom_stage1_en;    
   input       alom_stage2_en;    
   input       alom_stage3_en;    
   input       alom_stage4_en;    
   input       alom_stage5_en;    
   input       alom_stage3_val;   
   input       alom_stage5_val;   
   input [1:0] regs_bayer_pat;    
   input       cfg_upd;           
   input       cac_enable;        
   input       cac_h_clip_mode;   
   input [1:0] cac_v_clip_mode;   
   input [12:0] cac_h_count_start; 
   input [12:0] cac_v_count_start; 
   input [4:0]  cac_x_norm_factor; 
   input [4:0]  cac_y_norm_factor; 
   input [3:0]  cac_x_norm_shift;  
   input [3:0]  cac_y_norm_shift;  
   input [8:0]  cac_a_red;         
   input [8:0]  cac_b_red;         
   input [8:0]  cac_c_red;         
   input [8:0]  cac_a_blue;        
   input [8:0]  cac_b_blue;        
   input [8:0]  cac_c_blue;        
   output [3:0] cac_v_sel_1;       
   output [3:0] cac_v_sel_2;       
   output [3:0] cac_v_sel_3;       
   output [4:0] cac_v_coef;        
   output       cac_v_filt_disable;
   output [7:0] cac_h_red;         
   output [7:0] cac_h_blue;        
   output       cac_h_red_col;     
   wire         mem_ack;
   reg          viv_s0;   
   reg   [1:0]  viv_s1;   
   reg   [12:0] viv_s2; 
   reg   [12:0] viv_s3; 
   reg   [4:0]  viv_s4; 
   reg   [4:0]  viv_s5; 
   reg   [3:0]  viv_s6;  
   reg   [3:0]  viv_s7;  
   reg   [8:0]  viv_s8;         
   reg   [8:0]  viv_s9;         
   reg   [8:0]  viv_s10;         
   reg   [8:0]  viv_s11;        
   reg   [8:0]  viv_s12;        
   reg   [8:0]  viv_s13;        
   reg          viv_s14;
   reg          viv_s15;
   reg          viv_s16;
   reg          viv_s17;
   reg          viv_s18;
   reg          viv_s19;
   reg          viv_s20;
   reg          viv_s21;
   wire         viv_s22;
   wire         viv_s23;
   wire         viv_s24;
   wire         viv_s25;
   wire         viv_s26;
   wire         viv_s27;
   wire         viv_s28;
   wire         viv_s29;
   wire         viv_s30;
   wire         viv_s31;
   wire         viv_s32;
   reg          viv_s33;
   reg [1:0]    viv_s34;
   wire         viv_s35;
   wire         viv_s36;
   reg [12:0]   viv_s37;
   reg [12:0]   viv_s38;
   reg          viv_s39;
   reg          viv_s40;
   reg [8:0]    viv_s41;
   wire         viv_s42;
   wire         viv_s43;
   wire         viv_s44;
   wire [12:0]  viv_s45;
   wire [4:0]   viv_s46;                  
   wire [3:0]   viv_s47;
   wire [13:0]  viv_s48;
   reg [7:0]    viv_s49;
   reg          viv_s50;
   reg          viv_s51;
   reg          viv_s52;
   reg          viv_s53;
   reg          viv_s54;
   reg          viv_s55;
   reg          viv_s56;
   reg          viv_s57;
   reg          viv_s58;
   reg          viv_s59;
   reg          viv_s60;
   reg          viv_s61;
   reg          viv_s62;
   wire         viv_s63;
   reg          viv_s64;
   wire signed [8:0]  viv_s65;
   reg  signed [8:0]  viv_s66;
   reg  signed [8:0]  viv_s67;
   reg  signed [8:0]  viv_s68;
   reg  signed [8:0]  viv_s69;
   wire [15:0] viv_s70;
   reg [11:0]  viv_s71;
   wire [11:0] viv_s72;
   reg [11:0]  viv_s73;
   reg [7:0]   viv_s74;
   wire [7:0]  viv_s75;
   reg [7:0]   viv_s76;
   wire signed [8:0]  viv_s77;
   wire signed [8:0]  viv_s78;
   wire signed [8:0]  viv_s79;
   wire signed [16:0] viv_s80;
   wire signed [16:0] viv_s81;
   wire [10:0] viv_s82;
   reg  signed [10:0] viv_s83;
   wire signed [18:0] viv_s84;
   wire signed [18:0] viv_s85;
   wire [7:0] viv_s86;         
   wire [7:0] viv_s87;         
   wire [4:0] viv_s88;
   reg [7:0]  viv_s89;
   reg [7:0]  viv_s90;
   reg [7:0]  viv_s91;
   reg [7:0]  viv_s92;
   reg [7:0]  viv_s93;
   wire [7:0] viv_s94;
   reg        viv_s95;
   wire [3:0] viv_s96;
   wire [2:0] viv_s97;
   wire [3:0] viv_s98;
   wire [4:0] viv_s99;
   wire [10:0] viv_s100;
   wire [10:0] viv_s101;
   reg         viv_s102;
   reg         viv_s103;
   reg         viv_s104;
   reg         viv_s105;
   reg         viv_s106;
   reg         viv_s107;
   reg [7:0]   viv_s108;
   reg [7:0]   viv_s109;
   reg [7:0]   viv_s110;
   reg [7:0]   viv_s111;
   reg [7:0]   viv_s112;
   reg [7:0]   viv_s113;
   reg [7:0]   viv_s114;
   wire [8:0]  viv_s115;
   reg [7:0]   viv_s116;
   reg [7:0]   viv_s117;
   reg [7:0]   viv_s118;
   reg [7:0]   viv_s119;
   reg [7:0]   viv_s120;
   reg [7:0]   viv_s121;
   reg [7:0]   viv_s122;
   reg [7:0]   viv_s123;
   reg [7:0]   viv_s124; 
   reg [7:0]   viv_s125;
   reg [2:0]   viv_s126;
   reg [2:0]   viv_s127;
   reg [2:0]   viv_s128;
   reg         viv_s129;
   reg         cac_v_filt_disable;
   reg [4:0]   viv_s130;
   always @ (posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s34       <= 2'b00;
         viv_s0   <= 1'b0;
         viv_s1   <= 2'h0;
         viv_s2 <= 13'h0;
         viv_s3 <= 13'h0;
         viv_s4 <= 5'h0;
         viv_s5 <= 5'h0;
         viv_s6  <= 4'h0;
         viv_s7  <= 4'h0;
         viv_s8         <= 9'h0;
         viv_s9         <= 9'h0;
         viv_s10         <= 9'h0;
         viv_s11        <= 9'h0;
         viv_s12        <= 9'h0;
         viv_s13        <= 9'h0;
      end else if (viv_s14) begin
         viv_s34       <= regs_bayer_pat;
         viv_s0   <= cac_h_clip_mode;
         viv_s1   <= cac_v_clip_mode;
         viv_s2 <= cac_h_count_start;
         viv_s3 <= cac_v_count_start;
         viv_s4 <= cac_x_norm_factor;
         viv_s5 <= cac_y_norm_factor;
         viv_s6  <= cac_x_norm_shift;
         viv_s7  <= cac_y_norm_shift;
         viv_s8         <= cac_a_red;
         viv_s9         <= cac_b_red;
         viv_s10         <= cac_c_red;
         viv_s11        <= cac_a_blue;
         viv_s12        <= cac_b_blue;
         viv_s13        <= cac_c_blue;
      end
   end
   assign mem_ack      = cac_in_ack && viv_s21;
   assign viv_s27 = cac_in_ack && mem_val ;
   assign cac_in_val   = mem_val && viv_s21;
   assign viv_s36 = cac_in_ack;
   assign viv_s28 = viv_s22;
   assign viv_s29 = viv_s23;
   assign viv_s30 = viv_s24;
   assign viv_s31 = viv_s25;
   assign viv_s32 = viv_s26;
   assign viv_s26 = !mem_val && !viv_s21 || viv_s27;
   assign viv_s25 =                  viv_s26;
   assign viv_s24 = !viv_s19 || viv_s25;
   assign viv_s23 = !viv_s18 || viv_s24;
   assign viv_s22 = !viv_s17 || viv_s23;
   always @ (posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s33  <= 1'b0;
      end else begin
         if (soft_rst)
           viv_s33  <= 1'b0;
         else begin
            if (mem_v_end && mem_h_end && mem_val && mem_ack) 
              viv_s33  <= 1'b0;
            else if (memif_val)                               
              viv_s33  <= 1'b1;
         end
      end
   end 
   assign viv_s42       = memif_h_end && memif_val && memif_ack;
   assign viv_s43 = viv_s16 && ~viv_s33;
   assign viv_s44    = memif_v_end && viv_s42 || viv_s43;
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s14        <= 0;
         viv_s15        <= 0;
         viv_s16        <= 0;
         viv_s37     <= 0;
         viv_s38     <= 0;
         viv_s39 <= 0;
         viv_s40 <= 0;
         viv_s52     <= 0;
         viv_s58     <= 0;
         viv_s51       <= 0;
         viv_s50  <= 0;
         viv_s71            <= 0;
         viv_s66         <= 0;
      end else begin
         viv_s14        <= cfg_upd;
         viv_s15        <= viv_s14;
         viv_s16        <= viv_s15;
         if (viv_s44) begin
            viv_s37     <= viv_s2;
            viv_s39 <= 0;
            viv_s52     <= ~regs_bayer_pat[0];
            viv_s58     <= ~regs_bayer_pat[1];
            viv_s38     <= viv_s3 -1;
            viv_s40 <= 0;
         end else if (viv_s42) begin
            viv_s37     <= viv_s2;
            viv_s39 <= 0;
            viv_s52     <= ~viv_s34[0];
            viv_s58     <= ~viv_s58 ;
            if (viv_s40)
              viv_s38   <= viv_s38 +1;
            else
              viv_s38   <= viv_s38 -1;
            if (viv_s38 == 13'h1)
              viv_s40 <= 1;
         end else if (viv_s28) begin
            viv_s52     <= ~viv_s52;
            if (viv_s39)
              viv_s37   <= viv_s37 +1;
            else
              viv_s37   <= viv_s37 -1;
            if (viv_s37 == 13'h1)
              viv_s39 <= 1;
         end
         viv_s50 <= viv_s43;
         viv_s51      <= viv_s42 || viv_s43;
         if (viv_s51) begin
            viv_s71     <= viv_s70[15:4];
            viv_s66  <= viv_s65;
         end
      end
   end
   assign viv_s46 = (viv_s42 || viv_s43) ? viv_s5 :
                              viv_s4;
   assign viv_s47 = (viv_s42 || viv_s43) ? viv_s7  :
                              viv_s6;
   assign viv_s45   = (viv_s44) ? viv_s3 :
                             (viv_s42) ? viv_s38 : viv_s37;
   assign viv_s63   = (viv_s44) ? 1'b0 :
                             (viv_s42) ? viv_s40 : viv_s39;
   always @(*)
     begin
        case(viv_s47)
          4'd0   : viv_s41 = {viv_s45[4:0], 4'b0};
          4'd1   : viv_s41 = {viv_s45[5:0], 3'b0};
          4'd2   : viv_s41 = {viv_s45[6:0], 2'b0};
          4'd3   : viv_s41 = {viv_s45[7:0], 1'b0};
          4'd4   : viv_s41 =  viv_s45[8:0];
          4'd5   : viv_s41 =  viv_s45[9:1];
          4'd6   : viv_s41 =  viv_s45[10:2];
          4'd7   : viv_s41 =  viv_s45[11:3];
          default: viv_s41 =  viv_s45[12:4];
        endcase                        
     end
   assign viv_s48 = viv_s41 * viv_s46 + 9'h10; 
   assign viv_s70  = viv_s49 * viv_s49;
   assign viv_s72 = viv_s70[15:4] + viv_s71;
   assign viv_s65 = (viv_s64) ? $signed({1'b0, viv_s49}) : $signed(9'h0 - {1'b0, viv_s49});
   assign viv_s75  = f_sqrt_8bit(viv_s73);
   assign viv_s77 = (~cac_enable) ? $signed(9'h0) : (viv_s55) ? $signed(viv_s8) : $signed(viv_s11);
   assign viv_s78 = (~cac_enable) ? $signed(9'h0) : (viv_s55) ? $signed(viv_s9) : $signed(viv_s12);
   assign viv_s79 = (~cac_enable) ? $signed(9'h0) : (viv_s55) ? $signed(viv_s10) : $signed(viv_s13);
   assign viv_s80 = viv_s78 * $signed({1'b0,viv_s76});
   assign viv_s81 = viv_s79 * $signed({1'b0,viv_s74});
   assign viv_s82 = {viv_s77[8], viv_s77[8], viv_s77}     + 
                             {viv_s80[16],  viv_s80[16], viv_s80[16:8]} + 
                             {viv_s81[16],  viv_s81[16], viv_s81[16:8]};
   assign viv_s85 = viv_s83 * viv_s66;
   assign viv_s84 = viv_s83 * viv_s69;
   assign viv_s100 = {~viv_s85[18],viv_s85[17:8]};
   assign viv_s101 = {~viv_s84[18],viv_s84[17:8]};
   assign viv_s87 = (viv_s100 > 11'h440) ?  8'hC0 : 
          (viv_s100 < 11'h3C0) ?  8'h40 :              
          {~viv_s85[15],viv_s85[14:8]};
   assign viv_s86 = (viv_s101 > 11'h450) ?  8'hD0 : 
          (viv_s101 < 11'h3B0) ?  8'h30 :              
          {~viv_s84[15],viv_s84[14:8]};
   assign viv_s35 = viv_s62 == viv_s56;
   assign viv_s88      = (viv_s35) ? 5'h00 : 5'h10;
   always @(viv_s1 or viv_s35)
     begin
        case(viv_s1)
          2'd0   : begin
             viv_s89 = 8'hA0;  
             viv_s90 = 8'h60;  
             viv_s91 = 8'hA0;
             viv_s92 = 8'h60;
          end
          2'd1   : begin
             viv_s89 = 8'hB0;  
             viv_s90 = 8'h50;  
             viv_s91 = 8'hA0;
             viv_s92 = 8'h60;
          end
          default: begin
             viv_s89 = (viv_s35) ? 8'hC0 : 8'hB0;
             viv_s90 = (viv_s35) ? 8'h40 : 8'h50;
             viv_s91 = (viv_s35) ? 8'hB0 : 8'hA0;
             viv_s92 = (viv_s35) ? 8'h50 : 8'h60;
          end
        endcase                        
     end
   always @(*) begin
      if      (viv_s87 > viv_s89)
        viv_s93 = viv_s89;
      else if (viv_s87 < viv_s90)
        viv_s93 = viv_s90;
      else
        viv_s93 = viv_s87;
   end
   always @(*)
     begin
        if (((viv_s1 == 2'd2) || (viv_s1 == 2'd1) && ~viv_s35)
             && ((viv_s87 > viv_s91) || (viv_s87 < viv_s92)))
          viv_s95 = 1;
        else 
          viv_s95 = 0;
     end
   assign viv_s94 = viv_s93 - viv_s88;
   assign viv_s99  = viv_s94[4:0];
   assign viv_s96 = viv_s94[7:4] - 1;
   assign viv_s97 = viv_s94[7:5];
   assign viv_s98 = viv_s94[7:4] + 1;
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s17       <= 0;
         viv_s18       <= 0;
         viv_s19       <= 0;
         viv_s20       <= 0;
         viv_s21       <= 0;
         viv_s53       <= 0;
         viv_s54       <= 0;
         viv_s55       <= 0;
         viv_s56       <= 0;
         viv_s57       <= 0;
         viv_s59       <= 0;
         viv_s60       <= 0;
         viv_s61       <= 0;
         viv_s62       <= 0;
         viv_s64     <= 0;
         viv_s49          <= 0;
         viv_s67      <= 0;
         viv_s68      <= 0;
         viv_s69      <= 0;
         viv_s73       <= 0;
         viv_s74       <= 0;
         viv_s76        <= 0;
         viv_s83    <= 0;
         viv_s126   <= 0;
         viv_s127   <= 0;
         viv_s128   <= 0;
         viv_s129  <= 0;
         cac_v_filt_disable <= 0;
         viv_s130    <= 0;
         viv_s108   <= 0;
      end else begin
         if (viv_s28 || viv_s44) begin 
            viv_s49       <= viv_s48[12:5]; 
            viv_s64  <= viv_s63;
         end
         if (viv_s28) begin 
            viv_s53    <= viv_s52;
            viv_s59    <= viv_s58;
         end
         if (viv_s29) begin
            viv_s67   <= viv_s65;
            viv_s73    <= viv_s72;
            viv_s54    <= viv_s53;
            viv_s60    <= viv_s59;
         end
         if (viv_s30) begin
            viv_s76     <= viv_s75;
            viv_s74    <= viv_s73[11:4];
            viv_s68   <= viv_s67;
            viv_s55    <= viv_s54;
            viv_s61    <= viv_s60;
         end
         if (viv_s31) begin
            viv_s83 <= viv_s82;
            viv_s69   <= viv_s68;
            viv_s56    <= viv_s55;
            viv_s62    <= viv_s61;
         end
         if (viv_s32) begin
            viv_s126   <= viv_s96[3:1];
            viv_s127   <= viv_s97;
            viv_s128   <= viv_s98[3:1];
            cac_v_filt_disable <= viv_s95;
            viv_s129  <= ~viv_s35;
            viv_s130    <= viv_s99;
            viv_s108   <= viv_s86;
            viv_s57       <= viv_s56;
         end
         if (viv_s42 || viv_s43) begin
            viv_s17 <= 0;
            viv_s18 <= 0;
            viv_s19 <= 0;
            viv_s20 <= 0;
         end else begin
            if (viv_s28)
              viv_s17 <= 1;
            if (viv_s29)
              viv_s18 <= viv_s17;
            if (viv_s30)
              viv_s19 <= viv_s18;
            if (viv_s31)
              viv_s20 <= viv_s19;
         end
         if (mem_h_end && mem_val && mem_ack || viv_s50) begin
            viv_s21 <= 0;
         end else begin
            if (viv_s32)
              viv_s21 <= viv_s20;
         end
      end
   end
   always @(*)
     begin
        if (viv_s0 == 1'b0) begin
           viv_s116  = 8'hC0;  
           viv_s117  = 8'h40;  
           viv_s118 = 8'hC0;
           viv_s119 = 8'h40;
        end else begin
           viv_s116  = (viv_s106) ? 8'hC0 : 8'hD0;
           viv_s117  = (viv_s106) ? 8'h40 : 8'h30;
           viv_s118 = (viv_s106) ? 8'hD0 : 8'hC0;
           viv_s119 = (viv_s106) ? 8'h30 : 8'h40;
        end
     end
   assign viv_s115 ={1'b0,viv_s112}+viv_s114;
   always @(*) begin
      if (viv_s106) begin
         viv_s120    = viv_s113;
         if (alom_stage3_val)
           if (alom_stage5_val)
             viv_s122 = viv_s115[8:1];
           else
             viv_s122 = viv_s112;
         else
           viv_s122 = viv_s114;
      end else begin
         if (alom_stage3_val)
           if (alom_stage5_val)
             viv_s120 = viv_s115[8:1];
           else
             viv_s120 = viv_s112;
         else
           viv_s120 = viv_s114;
         viv_s122  = viv_s113;
      end
   end
   always @(*) begin
      if      (viv_s120 > viv_s116)
        viv_s121 = viv_s116;
      else if (viv_s120 < viv_s117)
        viv_s121 = viv_s117;
      else if (viv_s106)
        viv_s121 = viv_s120;
      else 
        viv_s121 = viv_s120 - 8'h10;
   end
   always @(*) begin
      if      (viv_s122 > viv_s118)
        viv_s123 = viv_s118;
      else if (viv_s122 < viv_s119)
        viv_s123 = viv_s119;
      else if (viv_s106)
        viv_s123 = viv_s122 - 8'h10;
      else 
        viv_s123 = viv_s122;
   end
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s102     <= 0;
         viv_s103     <= 0;
         viv_s104     <= 0;
         viv_s105     <= 0;
         viv_s106     <= 0;
         viv_s107     <= 0;
         viv_s109 <= 0;
         viv_s110 <= 0;
         viv_s111 <= 0;
         viv_s112 <= 0;
         viv_s113 <= 0;
         viv_s114 <= 0;
         viv_s124   <= 0;
         viv_s125  <= 0;
      end else begin
         if (viv_s36) begin
            viv_s102     <= viv_s57;
            viv_s109 <= viv_s108;
         end
         if (alom_stage1_en) begin
            viv_s103     <= viv_s102;
            viv_s110 <= viv_s109;
         end
         if (alom_stage2_en) begin
            viv_s104     <= viv_s103;
            viv_s111 <= viv_s110;
         end
         if (alom_stage3_en) begin
            viv_s105     <= viv_s104;
            viv_s112 <= viv_s111;
         end
         if (alom_stage4_en) begin
            viv_s106     <= viv_s105;
            viv_s113 <= viv_s112;
         end
         if (alom_stage5_en) begin
            viv_s107     <= viv_s106;
            viv_s124   <= viv_s121;
            viv_s125  <= viv_s123;
            viv_s114 <= viv_s113;
         end
      end
   end
   assign cac_v_sel_1 = {viv_s126, viv_s129};
   assign cac_v_sel_2 = {viv_s127, viv_s129};
   assign cac_v_sel_3 = {viv_s128, viv_s129};
   assign cac_v_coef  = viv_s130;
   assign cac_h_red_col = viv_s107;
   assign cac_h_red     = viv_s124;
   assign cac_h_blue    = viv_s125;
endmodule
