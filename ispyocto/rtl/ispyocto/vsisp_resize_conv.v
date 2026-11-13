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

module vsisp_resize_conv
  (clk,
   reset_n,
   clk_cfg,
   reset_cfg_n,
   soft_rst,
   cfg_val,
   cfg_addr,
   cfg_rd,
   cfg_wdata,
   cfg_rdata,
   cfg_ack,
   in_y_pix_data,
   in_y_val,
   in_y_h_end,
   in_y_v_end,
   in_y_cfg_upd,
   in_y_ack,
   ram_y_wr_n,
   ram_y_cs_n,
   ram_y_addr,
   ram_y_wdata,
   ram_y_rdata,
   in_c_pix_data,
   in_c_val,
   in_c_h_end,
   in_c_v_end,
   in_c_cfg_upd,
   in_c_ack,
   ram_c_wr_n,
   ram_c_cs_n,
   ram_c_addr,
   ram_c_wdata,
   ram_c_rdata,
   out_y_r_val,
   out_y_r_data,
   out_y_r_h_end,
   out_y_r_v_end,
   out_y_r_cfg_upd,
   out_y_r_ack,
   out_cb_g_val,
   out_cb_g_data,
   out_cb_g_h_end,
   out_cb_g_v_end,
   out_cb_g_cfg_upd,
   out_cb_g_ack,
   out_cr_b_val,
   out_cr_b_data,
   out_cr_b_h_end,
   out_cr_b_v_end,
   out_cr_b_cfg_upd,
   out_cr_b_ack,
   out_y_r_frame_start,
   out_y_r_frame_end, 
   out_y_r_line_start,
   out_y_r_line_end,
   out_cb_g_frame_start,
   out_cb_g_frame_end,
   out_cb_g_line_start,
   out_cb_g_line_end,
   out_cr_b_frame_start,
   out_cr_b_frame_end,
   out_cr_b_line_start,
   out_cr_b_line_end,
   out_y_r_ack_stream,
   out_cb_g_ack_stream,
   out_cr_b_ack_stream,
   out_y_r_val_stream,
   out_y_r_data_stream,
   out_cb_g_val_stream,
   out_cb_g_data_stream,
   out_cr_b_val_stream,
   out_cr_b_data_stream
);
`include "vsisp_self_resize.vh"
   input         clk;
   input         reset_n;
   input         clk_cfg;
   input         reset_cfg_n;
   input         soft_rst;
   input         cfg_val;
   input [6:2]   cfg_addr;
   input         cfg_rd;
   input [31:0]  cfg_wdata;
   output [31:0] cfg_rdata;
   output        cfg_ack;
   input [7:0]   in_y_pix_data;
   input         in_y_val;
   input         in_y_h_end;
   input         in_y_v_end;
   input         in_y_cfg_upd;
   output        in_y_ack;
   output        ram_y_wr_n;
   output        ram_y_cs_n;
   output [c_ram_width-1:0]  ram_y_addr;
   output [31:0] ram_y_wdata;
   input [31:0]  ram_y_rdata;
   input [7:0]   in_c_pix_data;
   input         in_c_val;
   input         in_c_h_end;
   input         in_c_v_end;
   input         in_c_cfg_upd;
   output        in_c_ack;
   output        ram_c_wr_n;
   output        ram_c_cs_n;
   output [c_ram_width-1:0]  ram_c_addr;
   output [31:0] ram_c_wdata;
   input [31:0]  ram_c_rdata;
   output         out_y_r_val;      
   output wire [ 7: 0] out_y_r_data;     
   output         out_y_r_h_end;    
   output         out_y_r_v_end;    
   output         out_y_r_cfg_upd;  
   input          out_y_r_ack;      
   output         out_cb_g_val;     
   output wire [ 7: 0] out_cb_g_data;    
   output         out_cb_g_h_end;   
   output         out_cb_g_v_end;   
   output         out_cb_g_cfg_upd; 
   input          out_cb_g_ack;     
   output         out_cr_b_val;     
   output wire [ 7: 0] out_cr_b_data;    
   output         out_cr_b_h_end;   
   output         out_cr_b_v_end;   
   output         out_cr_b_cfg_upd; 
   input          out_cr_b_ack;     
   output  out_y_r_frame_start;
   output  out_y_r_frame_end;
   output  out_y_r_line_start;
   output  out_y_r_line_end;
   output  out_cb_g_frame_start;
   output  out_cb_g_frame_end;
   output  out_cb_g_line_start;
   output  out_cb_g_line_end;
   output  out_cr_b_frame_start;
   output  out_cr_b_frame_end;
   output  out_cr_b_line_start;
   output  out_cr_b_line_end;
   output         out_y_r_val_stream;      
   output wire [ 7: 0] out_y_r_data_stream;     
   output         out_cb_g_val_stream;     
   output wire [ 7: 0] out_cb_g_data_stream;    
   output         out_cr_b_val_stream;     
   output wire [ 7: 0] out_cr_b_data_stream;    
  input out_y_r_ack_stream;
  input out_cb_g_ack_stream;
  input out_cr_b_ack_stream;
   wire         viv_s0; 
   wire         viv_s1; 
   wire         viv_s2; 
   wire         viv_s3; 
   wire         viv_s4; 
   wire         viv_s5; 
   wire         viv_s6; 
   wire         viv_s7; 
   wire         viv_s8; 
   wire         viv_s9; 
   wire [c_scale_h - 1:0] viv_s10;
   wire [c_scale_h - 1:0] viv_s11;
   wire [c_scale_h - 1:0] viv_s12;   
   wire [c_scale_v - 1:0] viv_s13;
   wire [c_scale_v - 1:0] viv_s14;
   wire [c_phase_h - 1:0] viv_s15; 
   wire [c_phase_h - 1:0] viv_s16; 
   wire [c_phase_v - 1:0] viv_s17; 
   wire [c_phase_v - 1:0] viv_s18;
   wire                     viv_s19;
   wire   [size_width- 1:0] viv_s20;
   wire   [size_width- 1:0] viv_s21;
   wire   [size_width- 1:0] viv_s22;
   wire   [size_width- 1:0] viv_s23; 
   wire                    viv_s24; 
   wire                    viv_s25; 
   wire                    viv_s26; 
   wire                    viv_s27;
   wire                    viv_s28; 
   wire                    viv_s29; 
   wire                    viv_s30; 
   wire                    viv_s31;   
   wire [c_scale_h-1:0]    viv_s32; 
   wire [c_scale_h-1:0]    viv_s33;
   wire [c_scale_h-1:0]    viv_s34;   
   wire [c_scale_v-1:0]    viv_s35; 
   wire [c_scale_v-1:0]    viv_s36; 
   wire [c_scale_h-1:0]    viv_s37; 
   wire [c_scale_h-1:0]    viv_s38; 
   wire [c_scale_v-1:0]    viv_s39; 
   wire [c_scale_v-1:0]    viv_s40; 
   wire [c_scale_lut_addr - 1:0] viv_s41; 
   wire [c_scale_lut_addr - 1:0] viv_s42; 
   wire [c_scale_lut - 1:0]      viv_s43; 
   wire [c_scale_lut - 1:0]      viv_s44; 
   wire [c_scale_lut_addr - 1:0] viv_s45; 
   wire [c_scale_lut_addr - 1:0] viv_s46; 
   wire [c_scale_lut - 1:0]      viv_s47; 
   wire [c_scale_lut - 1:0]      viv_s48; 
   wire  [ 1: 0] viv_s49;  
   wire          viv_s50;       
   wire          viv_s51;    
   wire          viv_s52;
   wire  [ 2: 0] viv_s53; 
   wire          viv_s54;     
   wire          viv_s55;            
   wire [7:0]   viv_s56;
   wire         viv_s57;
   wire         viv_s58;
   wire         viv_s59;
   wire         viv_s60;
   wire         viv_s61;
   wire [7:0]   viv_s62;
   wire         viv_s63;
   wire         viv_s64;
   wire         viv_s65;
   wire         viv_s66;
   wire         viv_s67;
   wire         viv_s68;
   wire [7:0]   viv_s69;
   wire         viv_s70;
   wire         viv_s71;
   wire         viv_s72;
   wire         viv_s73;
   wire         viv_s74;
   wire [7:0]   viv_s75;
   wire         viv_s76;
   wire         viv_s77;
   wire         viv_s78;
   wire         viv_s79;
   wire         viv_s80;
   wire [7:0]   viv_s81;
   wire         viv_s82;
   wire         viv_s83;
   wire         viv_s84;
   wire         viv_s85;
   vsisp_resize_conv_ctrl u_resize_conv_ctrl
     (.clk_cfg(clk_cfg),
      .reset_cfg_n(reset_cfg_n),
      .val(cfg_val),
      .addr(cfg_addr),
      .rd(cfg_rd),
      .wdata(cfg_wdata),
      .rdata(cfg_rdata),
      .ack(cfg_ack),
      .cfg_upd(viv_s0),
      .gen_cfg_upd(viv_s1),
      .scale_hy_en(viv_s2),
      .scale_hc_en(viv_s3),
      .scale_vy_en(viv_s4),
      .scale_vc_en(viv_s5),
      .scale_hy_up(viv_s6),
      .scale_hc_up(viv_s7),
      .scale_vy_up(viv_s8),
      .scale_vc_up(viv_s9),
      .scale_hy(viv_s10),
      .scale_hcb(viv_s11),
      .scale_hcr(viv_s12),
      .scale_vy(viv_s13),
      .scale_vc(viv_s14),
      .phase_hy(viv_s15),
      .phase_hc(viv_s16),
      .phase_vy(viv_s17),
      .phase_vc(viv_s18),
      .y_scale_h_lut_ad(viv_s41),
      .y_scale_v_lut_ad(viv_s42),
      .y_scale_h_lut(viv_s43),
      .y_scale_v_lut(viv_s44),
      .chroma_scale_h_lut_ad(viv_s45),
      .chroma_scale_v_lut_ad(viv_s46),
      .chroma_scale_h_lut(viv_s47),
      .chroma_scale_v_lut(viv_s48),
      .scale_hy_en_sdw(viv_s24),
      .scale_hc_en_sdw(viv_s25),
      .scale_vy_en_sdw(viv_s26),
      .scale_vc_en_sdw(viv_s27),
      .scale_hy_up_sdw(viv_s28),
      .scale_hc_up_sdw(viv_s29),
      .scale_vy_up_sdw(viv_s30),
      .scale_vc_up_sdw(viv_s31),
      .scale_hy_sdw(viv_s32),
      .scale_hcb_sdw(viv_s33),
      .scale_hcr_sdw(viv_s34),
      .scale_vy_sdw(viv_s35),
      .scale_vc_sdw(viv_s36),
      .phase_hy_sdw(viv_s37),
      .phase_hc_sdw(viv_s38),
      .phase_vy_sdw(viv_s39),
      .phase_vc_sdw(viv_s40),
      .sp_input_format(viv_s49),
      .cfg_y_full(viv_s50),
      .cfg_crcb_full(viv_s51),
      .cfg_422noncosited(viv_s52),
      .sp_output_format(viv_s53));
   vsisp_self_resize u_self_resize
    (.clk(clk),
     .reset_n        (reset_n),
     .soft_rst       (soft_rst),
     .in_y_pix_data  (in_y_pix_data),
     .in_y_val       (in_y_val),
     .in_y_h_end     (in_y_h_end),
     .in_y_v_end     (in_y_v_end),
     .in_y_cfg_upd   (in_y_cfg_upd),
     .in_y_ack       (in_y_ack),
     .out_y_pix_data (viv_s56),
     .out_y_val      (viv_s57),
     .out_y_h_end    (viv_s58),
     .out_y_v_end    (viv_s59),
     .out_y_cfg_upd  (viv_s60),
     .out_y_ack      (viv_s61),
     .ram_y_wr_n     (ram_y_wr_n),
     .ram_y_cs_n     (ram_y_cs_n),
     .ram_y_addr     (ram_y_addr),
     .ram_y_wdata    (ram_y_wdata),
     .ram_y_rdata    (ram_y_rdata),
     .in_c_pix_data  (in_c_pix_data),
     .in_c_val       (in_c_val),
     .in_c_h_end     (in_c_h_end),
     .in_c_v_end     (in_c_v_end),
     .in_c_cfg_upd   (in_c_cfg_upd),
     .in_c_ack       (in_c_ack),
     .out_c_pix_data (viv_s62),
     .out_c_val      (viv_s63),
     .out_c_h_end    (viv_s64),
     .out_c_v_end    (viv_s65),
     .out_c_cfg_upd  (viv_s66),
     .out_c_ack      (viv_s67),
     .ram_c_wr_n     (ram_c_wr_n),
     .ram_c_cs_n     (ram_c_cs_n),
     .ram_c_addr     (ram_c_addr),
     .ram_c_wdata    (ram_c_wdata),
     .ram_c_rdata    (ram_c_rdata),
     .cfg_upd(viv_s0),
     .gen_cfg_upd(viv_s1),
     .scale_hy_en(viv_s2),
     .scale_hc_en(viv_s3),
     .scale_vy_en(viv_s4),
     .scale_vc_en(viv_s5),
     .scale_hy_up(viv_s6),
     .scale_hc_up(viv_s7),
     .scale_vy_up(viv_s8),
     .scale_vc_up(viv_s9),
     .scale_hy(viv_s10),
     .scale_hcb(viv_s11),
     .scale_hcr(viv_s12),
     .scale_vy(viv_s13),
     .scale_vc(viv_s14),
     .phase_hy(viv_s15),
     .phase_hc(viv_s16),
     .phase_vy(viv_s17),
     .phase_vc(viv_s18),
     .y_scale_h_lut_ad(viv_s41),
     .y_scale_v_lut_ad(viv_s42),
     .y_scale_h_lut(viv_s43),
     .y_scale_v_lut(viv_s44),
     .chroma_scale_h_lut_ad(viv_s45),
     .chroma_scale_v_lut_ad(viv_s46),
     .chroma_scale_h_lut(viv_s47),
     .chroma_scale_v_lut(viv_s48),
     .scale_hy_en_sdw(viv_s24),
     .scale_hc_en_sdw(viv_s25),
     .scale_vy_en_sdw(viv_s26),
     .scale_vc_en_sdw(viv_s27),
     .scale_hy_up_sdw(viv_s28),
     .scale_hc_up_sdw(viv_s29),
     .scale_vy_up_sdw(viv_s30),
     .scale_vc_up_sdw(viv_s31),
     .scale_hy_sdw(viv_s32),
     .scale_hcb_sdw(viv_s33),
     .scale_hcr_sdw(viv_s34),
     .scale_vy_sdw(viv_s35),
     .scale_vc_sdw(viv_s36),
     .phase_hy_sdw(viv_s37),
     .phase_hc_sdw(viv_s38),
     .phase_vy_sdw(viv_s39),
     .phase_vc_sdw(viv_s40));
   vsisp_resize_to_conv_2to3 u1_resize_to_conv_2to3
     (
     .clk                     (clk),
     .reset_n                 (reset_n),
     .soft_rst                (soft_rst),
     .in_y_val                (viv_s57),
     .in_y_data               (viv_s56), 
     .in_y_h_end              (viv_s58),
     .in_y_v_end              (viv_s59),
     .in_y_cfg_upd            (viv_s60),
     .in_y_ack                (viv_s61),     
     .in_c_val                (viv_s63),
     .in_c_data               (viv_s62), 
     .in_c_h_end              (viv_s64),
     .in_c_v_end              (viv_s65),
     .in_c_cfg_upd            (viv_s66),
     .in_c_ack                (viv_s67),     
     .out_y_val               (viv_s68),
     .out_y_data              (viv_s69),
     .out_y_h_end             (viv_s70),
     .out_y_v_end             (viv_s71),
     .out_y_cfg_update        (viv_s72),
     .out_y_ack               (viv_s73),
     .out_cb_val              (viv_s74),
     .out_cb_data             (viv_s75),
     .out_cb_h_end            (viv_s76),
     .out_cb_v_end            (viv_s77),
     .out_cb_cfg_update       (viv_s78),
     .out_cb_ack              (viv_s79),
     .out_cr_val              (viv_s80),
     .out_cr_data             (viv_s81),
     .out_cr_h_end            (viv_s82),
     .out_cr_v_end            (viv_s83),
     .out_cr_cfg_update       (viv_s84),
     .out_cr_ack              (viv_s85)
     );
   wire         viv_s86;
   wire [7:0]   viv_s87;
   wire         viv_s88;
   wire         viv_s89;
   wire         viv_s90;
   wire         viv_s91;
vsisp_conv_dpsfe #(11) u1_conv_dpsfe(
  .clk          ( clk      ),
  .reset_n      ( reset_n  ),
  .soft_rst     ( soft_rst ),
  .dpsfe_data_i ({viv_s69,viv_s70,viv_s71,viv_s72}),
  .dpsfe_val_i  (viv_s68 ),
  .dpsfe_ack_o  (viv_s73 ),
  .dpsfe_data_o ({viv_s87,viv_s88,viv_s89,viv_s90}),
  .dpsfe_val_o  (viv_s86),
  .dpsfe_ack_i  (viv_s91)
);
   wire         viv_s92;
   wire [7:0]   viv_s93;
   wire         viv_s94;
   wire         viv_s95;
   wire         viv_s96;
   wire         viv_s97;
vsisp_conv_dpsfe #(11) u2_conv_dpsfe(
  .clk          ( clk      ),
  .reset_n      ( reset_n  ),
  .soft_rst     ( soft_rst ),
  .dpsfe_data_i ({viv_s87,viv_s88,viv_s89,viv_s90}),
  .dpsfe_val_i  (viv_s86 ),
  .dpsfe_ack_o  (viv_s91 ),
  .dpsfe_data_o ({viv_s93,viv_s94,viv_s95,viv_s96}),
  .dpsfe_val_o  (viv_s92),
  .dpsfe_ack_i  (viv_s97)
);
   wire         viv_s98;
   wire [7:0]   viv_s99;
   wire         viv_s100;
   wire         viv_s101;
   wire         viv_s102;
   wire         viv_s103;
vsisp_conv_dpsfe #(11) u3_conv_dpsfe(
  .clk          ( clk      ),
  .reset_n      ( reset_n  ),
  .soft_rst     ( soft_rst ),
  .dpsfe_data_i ({viv_s93,viv_s94,viv_s95,viv_s96}),
  .dpsfe_val_i  (viv_s92 ),
  .dpsfe_ack_o  (viv_s97 ),
  .dpsfe_data_o ({viv_s99,viv_s100,viv_s101,viv_s102}),
  .dpsfe_val_o  (viv_s98),
  .dpsfe_ack_i  (viv_s103)
);
   vsisp_conv u_conv
    (
     .clk                     (clk),
     .reset_n                 (reset_n),
     .soft_rst                (soft_rst),
     .in_y_val                 (viv_s98),
     .in_y_data                (viv_s99),
     .in_y_h_end               (viv_s100),
     .in_y_v_end               (viv_s101),
     .in_y_cfg_upd             (viv_s102),
     .in_y_ack                 (viv_s103), 
     .in_cb_val                (viv_s74),
     .in_cb_data               (viv_s75),
     .in_cb_h_end              (viv_s76),
     .in_cb_v_end              (viv_s77),
     .in_cb_cfg_upd            (viv_s78),
     .in_cb_ack                (viv_s79),
     .in_cr_val                (viv_s80),
     .in_cr_data               (viv_s81),
     .in_cr_h_end              (viv_s82),
     .in_cr_v_end              (viv_s83),
     .in_cr_cfg_upd            (viv_s84),
     .in_cr_ack                (viv_s85),
     .out_y_r_val             (out_y_r_val),
     .out_y_r_data            (out_y_r_data),
     .out_y_r_h_end           (out_y_r_h_end),
     .out_y_r_v_end           (out_y_r_v_end),
     .out_y_r_cfg_upd         (out_y_r_cfg_upd),
     .out_y_r_ack             (out_y_r_ack && out_y_r_ack_stream),
     .out_cb_g_val            (out_cb_g_val),
     .out_cb_g_data           (out_cb_g_data),
     .out_cb_g_h_end          (out_cb_g_h_end),
     .out_cb_g_v_end          (out_cb_g_v_end),
     .out_cb_g_cfg_upd        (out_cb_g_cfg_upd),
     .out_cb_g_ack            (out_cb_g_ack && out_cb_g_ack_stream),
     .out_cr_b_val            (out_cr_b_val),
     .out_cr_b_data           (out_cr_b_data),
     .out_cr_b_h_end          (out_cr_b_h_end),
     .out_cr_b_v_end          (out_cr_b_v_end),
     .out_cr_b_cfg_upd        (out_cr_b_cfg_upd),
     .out_cr_b_ack            (out_cr_b_ack && out_cr_b_ack_stream ),
     .sp_input_format         (viv_s49),
     .cfg_y_full              (viv_s50),
     .cfg_crcb_full           (viv_s51),
     .cfg_422noncosited       (viv_s52),
     .sp_output_format        (viv_s53),
     .out_y_r_frame_start     (out_y_r_frame_start),
     .out_y_r_frame_end       (out_y_r_frame_end),
     .out_y_r_line_start      (out_y_r_line_start),
     .out_y_r_line_end        (out_y_r_line_end),
     .out_cb_g_frame_start    (out_cb_g_frame_start),
     .out_cb_g_frame_end      (out_cb_g_frame_end),
     .out_cb_g_line_start     (out_cb_g_line_start),
     .out_cb_g_line_end       (out_cb_g_line_end),
     .out_cr_b_frame_start    (out_cr_b_frame_start),
     .out_cr_b_frame_end      (out_cr_b_frame_end),
     .out_cr_b_line_start     (out_cr_b_line_start),
     .out_cr_b_line_end       (out_cr_b_line_end),
     .out_y_r_val_stream      (out_y_r_val_stream),
     .out_cb_g_val_stream     (out_cb_g_val_stream),
     .out_cr_b_val_stream     (out_cr_b_val_stream)
     );
assign out_y_r_data_stream = out_y_r_data;
assign out_cb_g_data_stream = out_cb_g_data;
assign out_cr_b_data_stream = out_cr_b_data;
endmodule
