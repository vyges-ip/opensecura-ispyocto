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

module vsisp_isp_filt
  (
   clk,
   reset_n,
   clk_cfg,
   reset_cfg_n,
   soft_rst,
   cfg_val,
   cfg_addr,
   cfg_rd,
   cfg_wdata,
   cfg_rdata,
   in_data,
   in_h_end,
   in_v_end,
   in_val,
   in_ack,
   regs_demosaic_th,
   regs_dem_bypass,
   regs_bayer_pat,
   regs_cfg_upd,
   regs_gen_cfg_upd,
   filt_data,
   filt_h_end,
   filt_v_end,
   filt_val,
   filt_ack,
   meas_val,
   meas_h_end,
   meas_v_end,
   meas_data_t,
   meas_data_m,
   meas_data_b,
   adr,
   we_n,
   cs_n,
   wr_data,
   rd_data);
`include "vsisp_isp.vh"
`include "vsisp_ram_sizes.vh"
   parameter c_dw_rgb = 3*c_dw_si;
   input     clk;              
   input     reset_n;          
   input     clk_cfg;          
   input     reset_cfg_n;      
   input     soft_rst;         
   input                  cfg_val;    
   input [c_cfg_filt-1:2] cfg_addr;   
   input                  cfg_rd;     
   input [31:0]           cfg_wdata;  
   output [31:0]          cfg_rdata;  
   input [c_dw_si-1:0] in_data;      
   input               in_h_end;     
   input               in_v_end;     
   input               in_val;       
   output              in_ack;       
   input [7:0]     regs_demosaic_th; 
   input           regs_dem_bypass;  
   input [1:0]     regs_bayer_pat;   
   input           regs_cfg_upd;     
   input           regs_gen_cfg_upd; 
   output [c_dw_rgb-1:0] filt_data;    
   output                filt_h_end;   
   output                filt_v_end;   
   output                filt_val;     
   input                 filt_ack;     
   output                meas_val;     
   output                meas_h_end;   
   output                meas_v_end;   
   output [c_dw_si-1:0]  meas_data_t;  
   output [c_dw_si-1:0]  meas_data_m;  
   output [c_dw_si-1:0]  meas_data_b;  
   output [c_aw_dem_mem-1:0] adr;      
   output                    we_n;     
   output                    cs_n;     
   output [c_dw_dem_mem-1:0] wr_data;  
   input [c_dw_dem_mem-1:0]  rd_data;  
   wire        viv_s0;
   wire [1:0]  viv_s1;
   wire [1:0]  viv_s2;
   wire        viv_s3;
   wire [3:0]  viv_s4;
   wire [3:0]  viv_s5;
   wire [5:0]  viv_s6;
   wire [5:0]  viv_s7;
   wire [5:0]  viv_s8;
   wire [5:0]  viv_s9;
   wire [5:0]  viv_s10;
   wire [5:0]  viv_s11;
   wire [9:0]  viv_s12;
   wire [9:0]  viv_s13;
   wire [9:0]  viv_s14;
   wire [9:0]  viv_s15;
   wire [2:0]  viv_s16;
   wire [7:0]  viv_s17;
   wire [7:0]  viv_s18;
   reg         viv_s19;
   reg         viv_s20;       
   wire        viv_s21;
   wire        viv_s22;
   wire [1:0]  viv_s23;
   wire [12:0] viv_s24;
   wire [12:0] viv_s25;
   wire [4:0]  viv_s26;
   wire [4:0]  viv_s27;
   wire [3:0]  viv_s28;
   wire [3:0]  viv_s29;
   wire [8:0]  viv_s30;
   wire [8:0]  viv_s31;
   wire [8:0]  viv_s32;
   wire [8:0]  viv_s33;
   wire [8:0]  viv_s34;
   wire [8:0]  viv_s35;
   wire [c_dw_si+1:0] viv_s36;
   wire [c_dw_si+1:0] viv_s37;
   wire               viv_s38;
   wire               viv_s39;
   wire               viv_s40;
   wire               viv_s41;
   wire               viv_s42;
   wire [c_dw_si-1:0] viv_s43;
   wire [c_dw_si+1:0] viv_s44;
   wire               viv_s45;
   wire        viv_s46;
   wire        viv_s47;
   wire        viv_s48;
   wire        viv_s49;
   wire        viv_s50;
   wire        viv_s51;
   wire        viv_s52;
   wire        viv_s53;
   wire        viv_s54;
   wire        viv_s55;
   wire [c_dw_si-1:0] viv_s56;
   wire [c_dw_si-1:0] viv_s57;
   wire [c_dw_si-1:0] viv_s58;
   wire [c_dw_si-1:0] viv_s59;
   wire [c_dw_si-1:0] viv_s60;
   wire [c_dw_si-1:0] viv_s61;
   wire [c_dw_si-1:0] viv_s62;
   wire [3:0]         viv_s63;
   wire [3:0]         viv_s64;
   wire [3:0]         viv_s65;
   wire               viv_s66;
   wire [4:0]         viv_s67;
   wire [7:0]         viv_s68;
   wire [7:0]         viv_s69;
   wire               viv_s70;
   wire               viv_s71;
   wire               viv_s72;
   wire               viv_s73;
   wire               viv_s74;
   wire               viv_s75;
   wire [c_dw_si-1:0] viv_s76;
   wire [c_dw_si-1:0] viv_s77;
   wire [c_dw_si-1:0] viv_s78;
   wire [c_dw_si-1:0] viv_s79;
   wire [c_dw_si-1:0] viv_s80;
   wire [c_dw_si-1:0] viv_s81;
   wire [c_dw_si-1:0] viv_s82; 
   wire [c_dw_si-1:0] viv_s83; 
   wire [c_dw_si-1:0] viv_s84; 
   wire [7:0]         viv_s85; 
   wire [7:0]         viv_s86; 
   wire [c_dw_si-1:0] viv_s87; 
   wire [c_dw_si-1:0] viv_s88; 
   wire [c_dw_si-1:0] viv_s89; 
   wire [7:0]         viv_s90; 
   wire [7:0]         viv_s91; 
   wire [c_dw_si-1:0] viv_s92; 
   wire [c_dw_si-1:0] viv_s93; 
   wire [c_dw_si-1:0] viv_s94; 
   wire [7:0]         viv_s95; 
   wire [7:0]         viv_s96; 
   wire [c_dw_si-1:0] viv_s97; 
   wire [c_dw_si-1:0] viv_s98; 
   wire [c_dw_si-1:0] viv_s99; 
   wire [7:0]         viv_s100; 
   wire [7:0]         viv_s101; 
   wire [c_dw_si-1:0] viv_s102; 
   wire [c_dw_si-1:0] viv_s103; 
   wire [c_dw_si-1:0] viv_s104; 
   wire [7:0]         viv_s105; 
   wire [7:0]         viv_s106; 
   wire  viv_s107;    
   wire  viv_s108;    
   wire  viv_s109;    
   wire  viv_s110;    
   wire  viv_s111;    
   wire  viv_s112;    
   wire  viv_s113;    
   wire  viv_s114;    
   wire  viv_s115;
   wire  viv_s116;
   wire  viv_s117;
   wire  viv_s118;
   wire  viv_s119;
   wire  viv_s120;
   wire  viv_s121;
   wire [c_dw_si:0] viv_s122;
   wire [c_dw_si:0] viv_s123;
   wire [c_dw_si-1:0] viv_s124;
   wire [c_dw_si:0]   viv_s125;
   wire [c_dw_si:0]   viv_s126;
   wire [2*c_dw_si+1:0] viv_s127;      
   wire [2*c_dw_si+1:0] viv_s128;      
   wire [c_dw_si:0]     viv_s129;        
   wire [c_dw_si:0]     viv_s130;        
   wire [2:0] viv_s131;
   wire       viv_s132;
   wire [2:0] viv_s133;
   wire       viv_s134;
   wire       viv_s135;
   wire [1:0] viv_s136;
   wire [1:0] viv_s137;
   wire       viv_s138;
   wire       viv_s139;
   wire       viv_s140;
   wire       viv_s141;
   wire       viv_s142;
   wire       viv_s143;
   wire [1:0] viv_s144;
   wire [1:0] viv_s145;
   wire       viv_s146;
   wire       viv_s147;
   wire       viv_s148;
   wire       viv_s149;
   wire       viv_s150;
   wire       viv_s151;
   wire       viv_s152;
   wire       viv_s153;
   wire       viv_s154;
   wire       viv_s155;
   wire       viv_s156;
   wire       viv_s157;
   wire       viv_s158;
   wire       viv_s159;
   wire       viv_s160;
   wire       viv_s161;
   wire       viv_s162;
   wire [c_dw_si+2:0] viv_s163;
   wire [c_dw_si+1:0] viv_s164;
   wire [c_dw_si+2:0] viv_s165;
   wire [c_dw_si+1:0] viv_s166;
   wire               viv_s167;
   wire               viv_s168;
   wire               viv_s169;
   wire               viv_s170;
   wire [c_dw_si+1:0] viv_s171;
   wire [2*c_dw_si+1:0] viv_s172;
   wire [4*c_dw_si+12:0] viv_s173;
   wire [4*c_dw_si+12:0] viv_s174;
   wire                 viv_s175;
   assign viv_s36 = {in_data,
                           in_h_end,
                           in_v_end};
   assign {viv_s43,
           viv_s40,
           viv_s41} = viv_s44;
   assign viv_s127 = {viv_s129, viv_s130};
   assign viv_s5 = viv_s0 ? viv_s4 : 4'h8;
   assign viv_s71 = viv_s55 ;
   assign meas_val     = viv_s54 & viv_s55;
   assign meas_h_end   = viv_s50;
   assign meas_v_end   = viv_s51;
   assign meas_data_t  = viv_s58;
   assign meas_data_m  = viv_s59;
   assign meas_data_b  = viv_s60;
   always @ (posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s19  <= 1'b0;
         viv_s20             <= 1'b0;
      end
      else if (soft_rst) begin
         viv_s19 <= 1'b0;
         viv_s20            <= 1'b0;
      end
      else begin
         if (regs_gen_cfg_upd) 
            viv_s19 <= 1'b1;
         else if (viv_s148 && viv_s149 && viv_s146 && viv_s147) 
            viv_s19 <= 1'b0;
         viv_s20 <= regs_cfg_upd || (viv_s19 && viv_s148 && viv_s149 && viv_s146 && viv_s147);
      end
   end
   vsisp_isp_filt_regs u_isp_filt_regs
     (
       .clk_cfg(clk_cfg),
       .reset_cfg_n(reset_cfg_n),
       .cfg_val(cfg_val),
       .cfg_addr(cfg_addr),
       .cfg_rd(cfg_rd),
       .cfg_wdata(cfg_wdata),
       .cfg_rdata(cfg_rdata),
       .filt_enable(viv_s0),
       .filt_lp_select(viv_s4),
       .filt_chr_h_mode(viv_s1),
       .filt_chr_v_mode(viv_s2),
       .filt_mode(viv_s3),
       .filt_fac_sh1(viv_s6),
       .filt_fac_sh0(viv_s7),
       .filt_fac_mid(viv_s8),
       .filt_fac_bl0(viv_s9),
       .filt_fac_bl1(viv_s10),
       .filt_thres_bl0(viv_s12),
       .filt_thres_bl1(viv_s13),
       .filt_thres_sh0(viv_s14),
       .filt_thres_sh1(viv_s15),
       .lum_weight_gain(viv_s16),
       .lum_weight_kink(viv_s17),
       .lum_weight_min(viv_s18),
       .cac_enable(viv_s21),
       .cac_h_clip_mode(viv_s22),
       .cac_v_clip_mode(viv_s23),
       .cac_h_count_start(viv_s24),
       .cac_v_count_start(viv_s25),
       .cac_x_norm_factor(viv_s26),
       .cac_y_norm_factor(viv_s27),
       .cac_x_norm_shift(viv_s28),
       .cac_y_norm_shift(viv_s29),
       .cac_a_red(viv_s30),
       .cac_b_red(viv_s31),
       .cac_c_red(viv_s32),
       .cac_a_blue(viv_s33),
       .cac_b_blue(viv_s34),
       .cac_c_blue(viv_s35));
   vsisp_isp_demosaic_dpsbe #(c_dw_si+2) u1_isp_demosaic_dpsbe
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .in_data(viv_s36),
      .in_val(in_val),
      .in_ack(in_ack),
      .out_data(viv_s37),
      .out_val(viv_s38),
      .out_ack(viv_s39));
   vsisp_isp_dpsfe #(c_dw_si+2) u1_isp_dpsfe
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .in_data(viv_s37),
      .in_val(viv_s38),
      .in_ack(viv_s39),
      .out_data(viv_s44),
      .out_val(viv_s45),
      .out_ack(viv_s42));
   vsisp_isp_line_mem_if u_isp_line_mem_if
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .in_val(viv_s45),
      .in_h_end(viv_s40),
      .in_v_end(viv_s41),
      .in_data(viv_s43),
      .in_ack(viv_s42),
      .regs_bayer_pat(regs_bayer_pat),
      .out_val(viv_s52),
      .out_h_end(viv_s50),
      .out_v_end(viv_s51),
      .out_data_1t(viv_s56),
      .out_data_m2(viv_s57),
      .out_data_m3(viv_s58),
      .out_data_m4(viv_s59),
      .out_data_m5(viv_s60),
      .out_data_m6(viv_s61),
      .out_data_7b(viv_s62),
      .out_ack(viv_s53),
      .memif_h_end(viv_s48),
      .memif_v_end(viv_s49),
      .memif_val(viv_s46),
      .memif_ack(viv_s47),
      .adr(adr),
      .we_n(we_n),
      .cs_n(cs_n),
      .wr_data(wr_data),
      .rd_data(rd_data)
      );
   vsisp_isp_cac_ctrl u_isp_cac_ctrl
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .memif_h_end(viv_s48),
      .memif_v_end(viv_s49),
      .memif_val(viv_s46),
      .memif_ack(viv_s47),
      .mem_h_end(viv_s50),
      .mem_v_end(viv_s51),
      .mem_val(viv_s52),
      .mem_ack(viv_s53),
      .cac_in_val(viv_s54),
      .cac_in_ack(viv_s55),
      .alom_stage1_en(viv_s107),
      .alom_stage2_en(viv_s108),
      .alom_stage3_en(viv_s109),
      .alom_stage4_en(viv_s110),
      .alom_stage5_en(viv_s111),
      .alom_stage3_val(viv_s118),
      .alom_stage5_val(viv_s120),
      .regs_bayer_pat(regs_bayer_pat),
      .cfg_upd(viv_s20),
      .cac_enable(viv_s21),
      .cac_h_clip_mode(viv_s22),
      .cac_v_clip_mode(viv_s23),
      .cac_h_count_start(viv_s24),
      .cac_v_count_start(viv_s25),
      .cac_x_norm_factor(viv_s26),
      .cac_y_norm_factor(viv_s27),
      .cac_x_norm_shift(viv_s28),
      .cac_y_norm_shift(viv_s29),
      .cac_a_red(viv_s30),
      .cac_b_red(viv_s31),
      .cac_c_red(viv_s32),
      .cac_a_blue(viv_s33),
      .cac_b_blue(viv_s34),
      .cac_c_blue(viv_s35),
      .cac_v_sel_1(viv_s63),
      .cac_v_sel_2(viv_s64),
      .cac_v_sel_3(viv_s65),
      .cac_v_coef(viv_s67),
      .cac_v_filt_disable(viv_s66),
      .cac_h_red(viv_s68),
      .cac_h_blue(viv_s69),
      .cac_h_red_col(viv_s70));
   vsisp_isp_cac_ver u_isp_cac_ver
     (
      .clk(clk),
      .reset_n(reset_n),
      .in_val(viv_s54),
      .in_ack(viv_s55),
      .in_h_end(viv_s50),
      .in_v_end(viv_s51),
      .mem_data_1t(viv_s56),
      .mem_data_m2(viv_s57),
      .mem_data_m3(viv_s58),
      .mem_data_m4(viv_s59),
      .mem_data_m5(viv_s60),
      .mem_data_m6(viv_s61),
      .mem_data_7b(viv_s62),
      .cv_mask(viv_s136),
      .regs_dem_bypass(regs_dem_bypass),
      .cac_v_sel_1(viv_s63),
      .cac_v_sel_2(viv_s64),
      .cac_v_sel_3(viv_s65),
      .cac_v_coef(viv_s67),
      .cac_v_filt_disable(viv_s66),
      .cac_v_data_out(viv_s81),
      .out_h_end(viv_s74),
      .out_v_end(viv_s75),
      .out_val(viv_s72),
      .out_ack(viv_s73));
   vsisp_isp_cac_delay  u1_isp_cac_delay
     (
      .clk(clk),
      .reset_n(reset_n),
      .cac_v_clk_en(viv_s71),
      .mem_data_m2(viv_s57),
      .mem_data_m3(viv_s58),
      .mem_data_m4(viv_s59),
      .mem_data_m5(viv_s60),
      .mem_data_m6(viv_s61),
      .dem_in_data_m2(viv_s76),
      .dem_in_data_m3(viv_s77),
      .dem_in_data_m4(viv_s78),
      .dem_in_data_m5(viv_s79),
      .dem_in_data_m6(viv_s80));
   vsisp_isp_cac_hor u_isp_cac_hor
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .in_val(viv_s72),
      .in_ack(viv_s73),
      .in_h_end(viv_s74),
      .in_v_end(viv_s75),
      .cac_v_data_out(viv_s81),
      .red_sub(viv_s125),
      .blue_sub(viv_s126),
      .regs_dem_bypass(regs_dem_bypass),
      .regs_bayer_pat(regs_bayer_pat),
      .cac_h_red(viv_s68),
      .cac_h_blue(viv_s69),
      .cac_h_red_col(viv_s70),
      .alom_stage1_en(viv_s107),
      .alom_stage2_en(viv_s108),
      .alom_stage3_en(viv_s109),
      .alom_stage4_en(viv_s110),
      .alom_stage5_en(viv_s111),
      .alom_stage6_en(viv_s112),
      .alom_stage7_en(viv_s113),
      .alom_stage8_en(viv_s114),
      .alom_stage0_val(viv_s115),
      .alom_stage1_val(viv_s116),
      .alom_stage2_val(viv_s117),
      .alom_stage3_val(viv_s118),
      .alom_stage4_val(viv_s119),
      .alom_stage5_val(viv_s120),
      .alom_stage6_val(viv_s121),
      .proc_pattern_stg2(viv_s144),
      .proc_pattern_stg3(viv_s145),
      .out_cb(viv_s130),
      .out_cr(viv_s129),
      .out_h_end(viv_s148),
      .out_v_end(viv_s149),
      .out_val(viv_s146),
      .out_ack(viv_s147));
   vsisp_isp_demosaic_buf_5lines u_isp_demosaic_buf_5lines
     (
      .clk(clk),
      .reset_n(reset_n),
      .alom_stage0_val(viv_s115),
      .alom_stage1_val(viv_s116),
      .alom_stage2_val(viv_s117),
      .alom_stage3_val(viv_s118),
      .alom_stage4_val(viv_s119),
      .in_data_t (viv_s76),
      .in_data_m1(viv_s77),
      .in_data_m2(viv_s78),
      .in_data_m3(viv_s79),
      .in_data_b (viv_s80),
      .alom_stage1_en(viv_s107),
      .alom_stage2_en(viv_s108),
      .alom_stage3_en(viv_s109),
      .alom_stage4_en(viv_s110),
      .proc_pix_01(viv_s82),
      .proc_pix_02(viv_s83),
      .proc_pix_03(viv_s84),
      .proc_pix_04(viv_s85),
      .proc_pix_05(viv_s86),
      .proc_pix_11(viv_s87),
      .proc_pix_12(viv_s88),
      .proc_pix_13(viv_s89),
      .proc_pix_14(viv_s90),
      .proc_pix_15(viv_s91),
      .proc_pix_21(viv_s92),
      .proc_pix_22(viv_s93),
      .proc_pix_23(viv_s94),
      .proc_pix_24(viv_s95),
      .proc_pix_25(viv_s96),
      .proc_pix_31(viv_s97),
      .proc_pix_32(viv_s98),
      .proc_pix_33(viv_s99),
      .proc_pix_34(viv_s100),
      .proc_pix_35(viv_s101),
      .proc_pix_41(viv_s102),
      .proc_pix_42(viv_s103),
      .proc_pix_43(viv_s104),
      .proc_pix_44(viv_s105),
      .proc_pix_45(viv_s106));
   vsisp_isp_filt_txtdet u_isp_filt_txtdet
     (
      .clk(clk),
      .reset_n(reset_n),
      .alom_dem_stage1_en(viv_s107),
      .alom_dem_stage2_en(viv_s108),
      .alom_dem_stage3_en(viv_s109),
      .alom_dem_stage4_en(viv_s110),
      .alom_dem_stage5_en(viv_s111),
      .alom_dem_stage6_en(viv_s112),
      .alom_dem_stage7_en(viv_s113),
      .alom_dem_stage8_en(viv_s114),
      .alom_stage1_val(viv_s116),
      .alom_stage3_val(viv_s118),
      .alom_stage4_val(viv_s119),
      .pix_01(viv_s82[c_dw_si-1:c_dw_si-8]),
      .pix_02(viv_s83[c_dw_si-1:c_dw_si-8]),
      .pix_03(viv_s84[c_dw_si-1:c_dw_si-8]),
      .pix_04(viv_s85),
      .pix_05(viv_s86),
      .pix_11(viv_s87[c_dw_si-1:c_dw_si-8]),
      .pix_12(viv_s88[c_dw_si-1:c_dw_si-8]),
      .pix_13(viv_s89[c_dw_si-1:c_dw_si-8]),
      .pix_14(viv_s90),
      .pix_15(viv_s91),
      .pix_21(viv_s92[c_dw_si-1:c_dw_si-8]),
      .pix_22(viv_s93[c_dw_si-1:c_dw_si-8]),
      .pix_23(viv_s94[c_dw_si-1:c_dw_si-8]),
      .pix_24(viv_s95),
      .pix_25(viv_s96),
      .pix_31(viv_s97[c_dw_si-1:c_dw_si-8]),
      .pix_32(viv_s98[c_dw_si-1:c_dw_si-8]),
      .pix_33(viv_s99[c_dw_si-1:c_dw_si-8]),
      .pix_34(viv_s100),
      .pix_35(viv_s101),
      .pix_41(viv_s102[c_dw_si-1:c_dw_si-8]),
      .pix_42(viv_s103[c_dw_si-1:c_dw_si-8]),
      .pix_43(viv_s104[c_dw_si-1:c_dw_si-8]),
      .pix_44(viv_s105),
      .pix_45(viv_s106),
      .proc_pattern_stg2(viv_s144),
      .regs_demosaic_th(regs_demosaic_th),
      .filt_thres_bl0(viv_s12),
      .filt_thres_bl1(viv_s13),
      .filt_thres_sh0(viv_s14),
      .filt_thres_sh1(viv_s15),
      .lum_weight_gain(viv_s16),
      .lum_weight_kink(viv_s17),
      .lum_weight_min(viv_s18),
      .flag_h_1(viv_s138),
      .flag_v_1(viv_s139),
      .flag_h_2(viv_s140),
      .flag_v_2(viv_s141),
      .flag_h_3(viv_s142),
      .flag_v_3(viv_s143),
      .edge_dir(viv_s132),
      .detail_level(viv_s131));
   vsisp_isp_demosaic5x u_isp_demosaic5x
     (
      .clk(clk),
      .reset_n(reset_n),
      .alom_stage4_en(viv_s110),
      .alom_stage5_en(viv_s111),
      .regs_dem_bypass(regs_dem_bypass),
      .cv_mask(viv_s136),
      .proc_pix_01(viv_s82),
      .proc_pix_02(viv_s83),
      .proc_pix_03(viv_s84),
      .proc_pix_11(viv_s87),
      .proc_pix_12(viv_s88),
      .proc_pix_13(viv_s89),
      .proc_pix_21(viv_s92),
      .proc_pix_22(viv_s93),
      .proc_pix_23(viv_s94),
      .proc_pix_31(viv_s97),
      .proc_pix_32(viv_s98),
      .proc_pix_33(viv_s99),
      .proc_pix_41(viv_s102),
      .proc_pix_42(viv_s103),
      .proc_pix_43(viv_s104),
      .proc_pattern_stg3(viv_s145),
      .flag_h_1(viv_s138),
      .flag_v_1(viv_s139),
      .flag_h_2(viv_s140),
      .flag_v_2(viv_s141),
      .flag_h_3(viv_s142),
      .flag_v_3(viv_s143),
      .grn_line04(viv_s122),
      .grn_line13(viv_s123),
      .grn_line2(viv_s124),
      .red_sub(viv_s125),
      .blue_sub(viv_s126));
   assign viv_s173 = {viv_s131,
                            viv_s132,
                            viv_s163,
                            viv_s164,
                            viv_s127,
                            viv_s148,
                            viv_s149};
   assign {viv_s133,
           viv_s134,
           viv_s165,
           viv_s166,
           viv_s128,
           viv_s152,
           viv_s153} = viv_s174;
   vsisp_isp_demosaic_dpsbe #(4*c_dw_si+13) u2_isp_demosaic_dpsbe
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(1'b0),
      .in_data(viv_s173),
      .in_val(viv_s146),
      .in_ack(viv_s147),
      .out_data(viv_s174),
      .out_val(viv_s150),
      .out_ack(viv_s151));
   vsisp_isp_filt_ctrl u_isp_filt_ctrl
     (
      .clk(clk),
      .reset_n(reset_n),
      .flt_stage1_en(viv_s154),
      .flt_stage2_en(viv_s155),
      .flt_stage3_en(viv_s156),
      .flt_stage1_val(viv_s160),
      .flt_stage3_val(viv_s162),
      .filt_enable(viv_s0),
      .filt_chr_h_mode(viv_s1),
      .filt_chr_v_mode(viv_s2),
      .filt_mode(viv_s3),
      .filt_fac_sh1(viv_s6),
      .filt_fac_sh0(viv_s7),
      .filt_fac_mid(viv_s8),
      .filt_fac_bl0(viv_s9),
      .filt_fac_bl1(viv_s10),
      .detail_level(viv_s133),
      .edge_dir(viv_s134),
      .filt_fac_muxed(viv_s11),
      .chr_h_bypass(viv_s135),
      .cv_mask(viv_s136),
      .ch_mask(viv_s137));
   vsisp_isp_filt_lp_core u_isp_filt_lp_core
     (
      .clk(clk),
      .reset_n(reset_n),
      .alom_stage6_en(viv_s112),
      .alom_stage7_en(viv_s113),
      .alom_stage8_en(viv_s114),
      .alom_stage5_val(viv_s120),
      .alom_stage6_val(viv_s121),
      .grn_line04(viv_s122),
      .grn_line13(viv_s123),
      .grn_line2(viv_s124),
      .filt_lp_select(viv_s5),
      .out_data13(viv_s163),
      .out_data2(viv_s164));
   vsisp_isp_filt_hp_core u_isp_filt_hp_core
     (
      .clk(clk),
      .reset_n(reset_n),
      .flt_stage1_en(viv_s154),
      .flt_stage2_en(viv_s155),
      .flt_stage3_en(viv_s156),
      .flt_stage4_en(viv_s157),
      .flt_stage5_en(viv_s158),
      .flt_stage0_val(viv_s159),
      .flt_stage1_val(viv_s160),
      .flt_stage2_val(viv_s161),
      .filt_fac_muxed(viv_s11),
      .in_data13(viv_s165),
      .in_data2(viv_s166),
      .out_data(viv_s171));
   vsisp_isp_filt_chr_core u_isp_filt_chr_core
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .in_val(viv_s150),
      .in_ack(viv_s175),
      .in_h_end(viv_s152),
      .in_v_end(viv_s153),
      .crcb_v_filt(viv_s128),
      .chr_h_bypass(viv_s135),
      .ch_mask(viv_s137),
      .flt_stage1_en(viv_s154),
      .flt_stage2_en(viv_s155),
      .flt_stage3_en(viv_s156),
      .flt_stage4_en(viv_s157),
      .flt_stage5_en(viv_s158),
      .flt_stage0_val(viv_s159),
      .flt_stage1_val(viv_s160),
      .flt_stage2_val(viv_s161),
      .flt_stage3_val(viv_s162),
      .out_val(viv_s167),
      .out_ack(viv_s168),
      .out_h_end(viv_s169),
      .out_v_end(viv_s170),
      .out_data(viv_s172));
   vsisp_isp_filt_out_mux u_isp_filt_out_mux
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .filt_enable(viv_s0),
      .hpfilt_in_ack(viv_s175),
      .grn_line2(viv_s166[c_dw_si+1:2]),
      .crcb_v_filt(viv_s128),
      .in_h_end_dem(viv_s152),
      .in_v_end_dem(viv_s153),
      .in_val_dem(viv_s150),
      .dem_out_ack(viv_s151),
      .grn_filt(viv_s171),
      .crcb_filt(viv_s172),
      .hpfilt_h_end(viv_s169),
      .hpfilt_v_end(viv_s170),
      .hpfilt_val(viv_s167),
      .hpfilt_ack(viv_s168),
      .out_data(filt_data),
      .out_h_end(filt_h_end),
      .out_v_end(filt_v_end),
      .out_val(filt_val),
      .out_ack(filt_ack));
endmodule
