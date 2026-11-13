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

module vsisp_marvin_mi
  (
   clk,
   reset_n,
   soft_rst,
   m_hclk,
   reset_m_hclk_n,
   m_hclk_cfg,
   reset_m_hclk_cfg_n,
   soft_rst_m_hclk,
   jpeg_clk,
   reset_jpeg_clk_n,
   test_mode,
   mp_lsb_alignment_out,
   mp_output_format_out,
   mp_little_endian_out,
   cfg_mi_val,
   cfg_mi_addr,
   cfg_mi_rd,
   cfg_mi_wdata,
   cfg_mi_rdata,
   cfg_mi_ack,
   in_mp_y_val,
   in_mp_y_data,
   in_mp_y_h_end,
   in_mp_y_v_end,
   in_mp_y_cfg_upd,
   in_mp_y_ack,
   in_mp_cb_val,
   in_mp_cb_data,
   in_mp_cb_h_end,
   in_mp_cb_v_end,
   in_mp_cb_cfg_upd,
   in_mp_cb_ack,
   in_mp_cr_val,
   in_mp_cr_data,
   in_mp_cr_h_end,
   in_mp_cr_v_end,
   in_mp_cr_cfg_upd,
   in_mp_cr_ack,
   in_sp_y_val,
   in_sp_y_data,
   in_sp_y_h_end,
   in_sp_y_v_end,
   in_sp_y_cfg_upd,
   in_sp_y_ack,
   in_sp_cb_val,
   in_sp_cb_data,
   in_sp_cb_h_end,
   in_sp_cb_v_end,
   in_sp_cb_cfg_upd,
   in_sp_cb_ack,  
   in_sp_cr_val,
   in_sp_cr_data,
   in_sp_cr_h_end,
   in_sp_cr_v_end,
   in_sp_cr_cfg_upd,
   in_sp_cr_ack, 
   in_jpeg_val,
   in_jpeg_data,
   in_jpeg_end,
   in_jpeg_byte_no,
   in_jpeg_ack,
   in_dp_data,
   in_dp_end,
   in_dp_val,
   in_dp_ack,
   in_bp_val,
   in_bp_data,
   in_bp_h_end,
   in_bp_v_end,
   in_bp_cfg_upd,
   in_bp_ack,
   in_bp_frame_end,
   bayer_pat,
   vci_out_m1_cmdval,
   vci_out_m1_plen,
   vci_out_m1_eop,
   vci_out_m1_address,
   vci_out_m1_wdata,
   vci_out_m1_be,
   vci_out_m1_cmd,
   vci_out_m1_const,
   vci_out_m1_contig,
   vci_out_m1_wrap,
   vci_out_m1_cmdack,
   vci_out_m1_rspval,
   vci_out_m1_reop,
   vci_out_m1_rspack,
   vci_out_m2_cmdval,
   vci_out_m2_plen,
   vci_out_m2_eop,
   vci_out_m2_address,
   vci_out_m2_wdata,
   vci_out_m2_be,
   vci_out_m2_cmd,
   vci_out_m2_const,
   vci_out_m2_contig,
   vci_out_m2_wrap,
   vci_out_m2_cmdack,
   vci_out_m2_rspval,
   vci_out_m2_reop,
   vci_out_m2_rspack,
   vci_out_m3_cmdval,
   vci_out_m3_plen,
   vci_out_m3_eop,
   vci_out_m3_address,
   vci_out_m3_wdata,
   vci_out_m3_be,
   vci_out_m3_cmd,
   vci_out_m3_const,
   vci_out_m3_contig,
   vci_out_m3_wrap,
   vci_out_m3_cmdack,
   vci_out_m3_rspval,
   vci_out_m3_reop,
   vci_out_m3_rspack,
   out_y_val,
   out_y_data,
   out_y_h_end,
   out_y_v_end,
   out_y_cfg_update,
   out_y_ack,
   out_c_val,
   out_c_data,
   out_c_h_end,
   out_c_v_end,
   out_c_cfg_update,
   out_c_ack,
   vci_in_cmdval,
   vci_in_plen,
   vci_in_eop,
   vci_in_address,
   vci_in_be,
   vci_in_cmd,
   vci_in_const,
   vci_in_contig,
   vci_in_wrap,
   vci_in_cmdack,
   vci_in_rspval,
   vci_in_reop,
   vci_in_rdata,
   vci_in_rspack,
   mi_mp_frame_end_int,
   mi_sp_frame_end_int,
   mi_mblk_line_int,
   mi_fill_mp_y_int,
   mi_wrap_mp_y_int,
   mi_wrap_mp_cb_int,
   mi_wrap_mp_cr_int,
   mi_wrap_sp_y_int,
   mi_wrap_sp_cb_int,
   mi_wrap_sp_cr_int,
   mi_dma_ready_int,
   mi_mp_handshk_int,
   mi_mp_handshk_sw_int,
   mi_bp_frame_end_int,
   mi_fill_bp_r_int,
   mi_wrap_bp_r_int,
   mi_wrap_bp_gr_int,
   mi_wrap_bp_gb_int,
   mi_wrap_bp_b_int,
   rot_en,
   ram_cs_n,
   ram_we_n,
   ram_addr,
   ram_wdata,
   ram_rdata,
   mp_y_fifo_sram_DIN,
   mp_y_fifo_sram_DOUT,
   mp_y_fifo_sram_ADDR,
   mp_y_fifo_sram_CEN,
   mp_y_fifo_sram_WEN,
   mp_cb_fifo_sram_DIN,
   mp_cb_fifo_sram_DOUT,
   mp_cb_fifo_sram_ADDR,
   mp_cb_fifo_sram_CEN,
   mp_cb_fifo_sram_WEN,
   mp_cr_fifo_sram_DIN,
   mp_cr_fifo_sram_DOUT,
   mp_cr_fifo_sram_ADDR,
   mp_cr_fifo_sram_CEN,
   mp_cr_fifo_sram_WEN,
   bp_ec_fifo_sram_DIN,
   bp_ec_fifo_sram_DOUT,
   bp_ec_fifo_sram_ADDR,
   bp_ec_fifo_sram_CEN,
   bp_ec_fifo_sram_WEN,
   bp_oc_fifo_sram_DIN,
   bp_oc_fifo_sram_DOUT,
   bp_oc_fifo_sram_ADDR,
   bp_oc_fifo_sram_CEN,
   bp_oc_fifo_sram_WEN,
   last_pixel_m1_req,
   last_pixel_m1_ack,
   last_pixel_m2_req,
   last_pixel_m2_ack,
   last_pixel_m3_req,
   last_pixel_m3_ack,
   dma_bayer_format,
   data_mode_en,
   isp_0_ack,
   bresp_in,
   isp_0_ready,
   isp_0_attr
   );
`include "vsisp_marvin_mi.vh"
`include "vsisp_isp.vh"
`include "vsisp_ram_sizes.vh"
input                   isp_0_ack;
input                   data_mode_en;
input                   bresp_in;
output                  isp_0_ready;     
output  [1:0]           isp_0_attr;
   parameter c_rot_line_length       = 1280; 
   parameter c_rot_ram_aw            = 14;   
   parameter c_ram_dw                    = 32;   
   input     clk;
   input     reset_n;
   input     soft_rst;
   input     m_hclk;
   input     reset_m_hclk_n;
   input     m_hclk_cfg;
   input     reset_m_hclk_cfg_n;
   input     soft_rst_m_hclk;
   input     jpeg_clk;
   input     reset_jpeg_clk_n;
   input     test_mode;
   output        mp_lsb_alignment_out;
   output[3:0]   mp_output_format_out;
   output        mp_little_endian_out;
   input         cfg_mi_val;
   input [8:2]   cfg_mi_addr;
   input         cfg_mi_rd;
   input [31:0]  cfg_mi_wdata;
   output [31:0] cfg_mi_rdata;
   output        cfg_mi_ack;
   input         in_mp_y_val;
   input [7:0]   in_mp_y_data;
   input         in_mp_y_h_end;
   input         in_mp_y_v_end;
   input         in_mp_y_cfg_upd;
   output        in_mp_y_ack;
   input         in_mp_cb_val;
   input [7:0]   in_mp_cb_data;
   input         in_mp_cb_h_end;
   input         in_mp_cb_v_end;
   input         in_mp_cb_cfg_upd;
   output        in_mp_cb_ack;
   input         in_mp_cr_val;
   input [7:0]   in_mp_cr_data;
   input         in_mp_cr_h_end;
   input         in_mp_cr_v_end;
   input         in_mp_cr_cfg_upd;
   output        in_mp_cr_ack;
   input         in_sp_y_val;
   input [7:0]   in_sp_y_data;
   input         in_sp_y_h_end;
   input         in_sp_y_v_end;
   input         in_sp_y_cfg_upd;
   output        in_sp_y_ack;
   input         in_sp_cb_val;
   input [7:0]   in_sp_cb_data;
   input         in_sp_cb_h_end;
   input         in_sp_cb_v_end;
   input         in_sp_cb_cfg_upd;
   output        in_sp_cb_ack;
   input         in_sp_cr_val;
   input [7:0]   in_sp_cr_data;
   input         in_sp_cr_h_end;
   input         in_sp_cr_v_end;
   input         in_sp_cr_cfg_upd;
   output        in_sp_cr_ack;
   input         in_jpeg_val;
   input [63:0]  in_jpeg_data;
   input         in_jpeg_end;
   input [2:0]   in_jpeg_byte_no;
   output        in_jpeg_ack;
   input [31:0]  in_dp_data;
   input         in_dp_end;
   input         in_dp_val;
   output        in_dp_ack;
   input        in_bp_val;
   input [15:0] in_bp_data;
   input        in_bp_h_end;
   input        in_bp_v_end;
   input        in_bp_cfg_upd;
   output       in_bp_ack;
   input        in_bp_frame_end;
   input [1:0] bayer_pat;
   output                       vci_out_m1_cmdval;
   output [8:0]                 vci_out_m1_plen;
   output                       vci_out_m1_eop;
   output [c_mi_data_addr+3:3]  vci_out_m1_address;
   output [63:0]                vci_out_m1_wdata;
   output [7:0]                 vci_out_m1_be;
   output [1:0]                 vci_out_m1_cmd;
   output                       vci_out_m1_const;
   output                       vci_out_m1_contig;
   output                       vci_out_m1_wrap;
   input                        vci_out_m1_cmdack;
   input                        vci_out_m1_rspval;
   input                        vci_out_m1_reop;
   output                       vci_out_m1_rspack;
   output                       vci_out_m2_cmdval;
   output [8:0]                 vci_out_m2_plen;
   output                       vci_out_m2_eop;
   output [c_mi_data_addr+3:3]  vci_out_m2_address;
   output [63:0]                vci_out_m2_wdata;
   output [7:0]                 vci_out_m2_be;
   output [1:0]                 vci_out_m2_cmd;
   output                       vci_out_m2_const;
   output                       vci_out_m2_contig;
   output                       vci_out_m2_wrap;
   input                        vci_out_m2_cmdack;
   input                        vci_out_m2_rspval;
   input                        vci_out_m2_reop;
   output                       vci_out_m2_rspack;
   output                       vci_out_m3_cmdval;
   output [8:0]                 vci_out_m3_plen;
   output                       vci_out_m3_eop;
   output [c_mi_data_addr+3:3]  vci_out_m3_address;
   output [63:0]                vci_out_m3_wdata;
   output [7:0]                 vci_out_m3_be;
   output [1:0]                 vci_out_m3_cmd;
   output                       vci_out_m3_const;
   output                       vci_out_m3_contig;
   output                       vci_out_m3_wrap;
   input                        vci_out_m3_cmdack;
   input                        vci_out_m3_rspval;
   input                        vci_out_m3_reop;
   output                       vci_out_m3_rspack;
   output        out_y_val;
   output [7:0]  out_y_data;
   output        out_y_h_end;
   output        out_y_v_end;
   output        out_y_cfg_update;
   input         out_y_ack;
   output        out_c_val;
   output [7:0]  out_c_data;
   output        out_c_h_end;
   output        out_c_v_end;
   output        out_c_cfg_update;
   input         out_c_ack;
   output                       vci_in_cmdval;
   output [8:0]                 vci_in_plen;
   output                       vci_in_eop;
   output [c_mi_data_addr+3:3]  vci_in_address;
   output [7:0]                 vci_in_be;
   output [1:0]                 vci_in_cmd;
   output                       vci_in_const;
   output                       vci_in_contig;
   output                       vci_in_wrap;
   input                        vci_in_cmdack;
   input                        vci_in_rspval;
   input                        vci_in_reop;
   input [63:0]                 vci_in_rdata;
   output                       vci_in_rspack;
   output        mi_mp_frame_end_int;
   output        mi_sp_frame_end_int;
   output        mi_mblk_line_int;
   output        mi_fill_mp_y_int;
   output        mi_wrap_mp_y_int;
   output        mi_wrap_mp_cb_int;
   output        mi_wrap_mp_cr_int;
   output        mi_wrap_sp_y_int;
   output        mi_wrap_sp_cb_int;
   output        mi_wrap_sp_cr_int;
   output        mi_dma_ready_int;
   output        mi_mp_handshk_int;
   output        mi_mp_handshk_sw_int;
   output        mi_bp_frame_end_int;
   output        mi_fill_bp_r_int;
   output        mi_wrap_bp_r_int;
   output        mi_wrap_bp_gr_int;
   output        mi_wrap_bp_gb_int;
   output        mi_wrap_bp_b_int;
   output                    rot_en;
   output                    ram_cs_n;
   output                    ram_we_n;
   output [c_rot_ram_aw-1:0] ram_addr;
   output [c_ram_dw-1:0]         ram_wdata;
   input  [c_ram_dw-1:0]         ram_rdata;
   output        last_pixel_m1_req;
   input         last_pixel_m1_ack;
   output        last_pixel_m2_req;
   input         last_pixel_m2_ack;
   output        last_pixel_m3_req;
   input         last_pixel_m3_ack;
   wire          viv_s0;
   input  [65:0] mp_y_fifo_sram_DIN;
   output [65:0] mp_y_fifo_sram_DOUT;
   output [ c_mi_mp_y_aw -1:0] mp_y_fifo_sram_ADDR;
   output        mp_y_fifo_sram_CEN;
   output        mp_y_fifo_sram_WEN;
   input  [65:0] mp_cb_fifo_sram_DIN;
   output [65:0] mp_cb_fifo_sram_DOUT;
   output [ c_mi_mp_c_aw -1:0] mp_cb_fifo_sram_ADDR;
   output        mp_cb_fifo_sram_CEN;
   output        mp_cb_fifo_sram_WEN;
   input  [65:0] mp_cr_fifo_sram_DIN;
   output [65:0] mp_cr_fifo_sram_DOUT;
   output [ c_mi_mp_c_aw -1:0] mp_cr_fifo_sram_ADDR;
   output        mp_cr_fifo_sram_CEN;
   output        mp_cr_fifo_sram_WEN;
   output [3:0]  dma_bayer_format;
   input  [65:0] bp_ec_fifo_sram_DIN;   
   output [65:0] bp_ec_fifo_sram_DOUT;  
   output [8:0]  bp_ec_fifo_sram_ADDR; 
   output        bp_ec_fifo_sram_CEN;   
   output        bp_ec_fifo_sram_WEN;   
   input  [65:0] bp_oc_fifo_sram_DIN;  
   output [65:0] bp_oc_fifo_sram_DOUT;
   output [8:0]  bp_oc_fifo_sram_ADDR; 
   output        bp_oc_fifo_sram_CEN;  
   output        bp_oc_fifo_sram_WEN;  
   wire [31:0]  viv_s1;
   wire [31:0]  viv_s2;
   wire [31:0]  viv_s3;
   wire         viv_s4;
   wire         viv_s5;
   wire [14:0]              viv_s6;
   wire [c_mi_data_addr:0]  viv_s7;
   wire [c_mi_data_addr:0]  viv_s8;
   wire [2:0]   viv_s9;
   wire [2:0]   viv_s10;
   wire [2:0]   viv_s11;
   wire        viv_s12;
   wire        viv_s13;
   wire        viv_s14;
   wire [1:0]  viv_s15;
   wire        viv_s16;
   wire        viv_s17;
   wire        viv_s18;
   wire [1:0]  viv_s19;
   wire [1:0]  viv_s20;
   wire [1:0]  viv_s21;
   wire [2:0]  viv_s22;
   wire        viv_s23;
   wire        viv_s24;
   wire        viv_s25;
   wire        viv_s26;
   wire [14:0] viv_s27;
   wire [14:0] viv_s28;
   wire        viv_s29;
   wire        viv_s30;
   wire        viv_s31;
   wire        viv_s32;
   wire [1:0]  viv_s33;
   wire        viv_s34;
   wire        viv_s35;
   wire        viv_s36;
   wire        viv_s37;
   wire        viv_s38;
   wire        viv_s39;
   wire        viv_s40;
   wire        viv_s41;
   wire        viv_s42;
   wire        viv_s43;
   wire        viv_s44;
   wire        viv_s45;
   wire        viv_s46;
   wire [1:0]  viv_s47;
   wire [1:0]  viv_s48;
   wire [1:0]  viv_s49;
   wire [1:0]  viv_s50;
   wire [2:0]  viv_s51;
   wire        viv_s52;
   wire        viv_s53;
   wire [c_mi_data_addr+3:3]    viv_s54;
   wire [c_mi_data_addr:3]      viv_s55;
   wire [c_mi_data_addr:3]      viv_s56;
   wire [c_mi_data_addr+3:3]    viv_s57;
   wire [c_mi_data_addr+3:3]    viv_s58;
   wire [c_mi_data_addr:3]      viv_s59;
   wire [c_mi_data_addr:3]      viv_s60;
   wire [c_mi_data_addr:3]      viv_s61;
   wire [c_mi_data_addr:3]      viv_s62;
   wire [c_mi_data_addr:3]      viv_s63;
   wire [c_mi_data_addr+3:3]    viv_s64;
   wire [c_mi_data_addr-1:3]    viv_s65;
   wire [c_mi_data_addr-1:3]    viv_s66;
   wire [c_mi_data_addr+3:3]    viv_s67;
   wire [c_mi_data_addr+3:3]    viv_s68;
   wire [c_mi_data_addr-1:3]    viv_s69;
   wire [c_mi_data_addr-1:3]    viv_s70;
   wire [c_mi_data_addr-1:3]    viv_s71;
   wire [c_mi_data_addr+3:3]    viv_s72;
   wire [c_mi_data_addr-1:3]    viv_s73;
   wire [c_mi_data_addr-1:3]    viv_s74;
   wire [c_mi_data_addr+3:3]    viv_s75;
   wire [c_mi_data_addr+3:3]    viv_s76;
   wire [c_mi_data_addr-1:3]    viv_s77;
   wire [c_mi_data_addr-1:3]    viv_s78;
   wire [c_mi_data_addr-1:3]    viv_s79;
   wire [c_mi_data_addr+3:3]    viv_s80;
   wire [c_mi_data_addr:3]      viv_s81;
   wire [c_mi_data_addr:3]      viv_s82;
   wire [c_mi_data_addr+3:3]    viv_s83;
   wire [c_mi_data_addr+3:3]    viv_s84;
   wire [c_mi_data_addr:3]      viv_s85;
   wire [c_mi_data_addr:3]      viv_s86;
   wire [c_mi_data_addr:3]      viv_s87;
   wire [14:0]                  viv_s88;
   wire [14:0]                  viv_s89;
   wire [c_mi_data_addr:0]      viv_s90;
   wire [c_mi_data_addr+3:3]    viv_s91;
   wire [c_mi_data_addr-1:3]    viv_s92;
   wire [c_mi_data_addr-1:3]    viv_s93;
   wire [c_mi_data_addr+3:3]    viv_s94;
   wire [c_mi_data_addr+3:3]    viv_s95;
   wire [c_mi_data_addr-1:3]    viv_s96;
   wire [c_mi_data_addr-1:3]    viv_s97;
   wire [c_mi_data_addr-1:3]    viv_s98;
   wire [c_mi_data_addr+3:3]    viv_s99;
   wire [c_mi_data_addr-1:3]    viv_s100;
   wire [c_mi_data_addr-1:3]    viv_s101;
   wire [c_mi_data_addr+3:3]    viv_s102;
   wire [c_mi_data_addr+3:3]    viv_s103;
   wire [c_mi_data_addr-1:3]    viv_s104;
   wire [c_mi_data_addr-1:3]    viv_s105;
   wire [c_mi_data_addr-1:3]    viv_s106;
   wire [1:0]           viv_s107;
   wire [1:0]           viv_s108;
   wire                 viv_s109;
   wire [1:0]           viv_s110;
   wire [1:0]           viv_s111;
   wire [1:0]           viv_s112;
   wire [1:0]           viv_s113;
   wire [1:0]           viv_s114;
   wire                 viv_s115;
   wire                 viv_s116;
   wire                 viv_s117;
   wire [31:0]          viv_s118;
   wire [14:0]          viv_s119;
   wire [14:0]          viv_s120;
   wire [c_bufsize-1:0] viv_s121;
   wire [31:0]          viv_s122;
   wire [31:0]          viv_s123;
   wire [14:0]          viv_s124;
   wire [14:0]          viv_s125;
   wire [c_bufsize-1:0] viv_s126;
   wire [5:0]           viv_s127;
   wire [14:0]          viv_s128;
   wire [14:0]          viv_s129;
   wire        viv_s130;
   wire [7:0]  viv_s131;
   wire        viv_s132;
   wire        viv_s133;
   wire        viv_s134;
   wire        viv_s135;
   wire        viv_s136;
   wire [7:0]  viv_s137;
   wire        viv_s138;
   wire        viv_s139;
   wire        viv_s140;
   wire        viv_s141;
   wire        viv_s142;
   wire [7:0]  viv_s143;
   wire        viv_s144;
   wire        viv_s145;
   wire        viv_s146;
   wire        viv_s147;
   wire        viv_s148;
   wire [7:0]  viv_s149;
   wire        viv_s150;
   wire        viv_s151;
   wire        viv_s152;
   wire        viv_s153;
   wire        viv_s154;
   wire [7:0]  viv_s155;
   wire        viv_s156;
   wire        viv_s157;
   wire        viv_s158;
   wire        viv_s159;
   wire        viv_s160;
   wire [7:0]  viv_s161;
   wire        viv_s162;
   wire        viv_s163;
   wire        viv_s164;
   wire        viv_s165;
   wire        viv_s166;
   wire [7:0]  viv_s167;
   wire        viv_s168;
   wire        viv_s169;
   wire        viv_s170;
   wire        viv_s171;
   wire        viv_s172;
   wire [7:0]  viv_s173;
   wire        viv_s174;
   wire        viv_s175;
   wire        viv_s176;
   wire        viv_s177;
   wire        viv_s178;
   wire [7:0]  viv_s179;
   wire        viv_s180;
   wire        viv_s181;
   wire        viv_s182;
   wire        viv_s183;
   wire        viv_s184;
   wire        viv_s185;
   wire        viv_s186;
   wire [1:0]  viv_s187;
   wire        viv_s188;
   wire        viv_s189;
   wire [c_mi_data_addr-1:0]    viv_s190;
   wire                         viv_s191;
   wire                         viv_s192;
   wire [c_mi_data_addr-1:0]    viv_s193;
   wire                         viv_s194;
   wire                         viv_s195;
   wire [c_mi_data_addr-1:0]    viv_s196;
   wire                         viv_s197;
   wire [63:0] viv_s198;
   wire        viv_s199;
   wire        viv_s200;
   wire        viv_s201;
   wire        viv_s202;
   wire        viv_s203;
   wire [63:0] viv_s204;
   wire        viv_s205;
   wire        viv_s206;
   wire        viv_s207;
   wire        viv_s208;
   wire        viv_s209;
   wire [63:0] viv_s210;
   wire        viv_s211;
   wire        viv_s212;
   wire        viv_s213;
   wire        viv_s214;
   wire        viv_s215;
   wire [63:0] viv_s216;
   wire        viv_s217;
   wire        viv_s218;
   wire        viv_s219;
   wire        viv_s220;
   wire [63:0] viv_s221;
   wire        viv_s222;
   wire        viv_s223;
   wire        viv_s224;
   wire        viv_s225;
   wire [63:0] viv_s226;
   wire        viv_s227;
   wire        viv_s228;
   wire        viv_s229;
   wire        viv_s230;
   wire        viv_s231;
   wire [1:0]  viv_s232;
   wire [63:0] viv_s233;
   wire        viv_s234;
   wire        viv_s235;
   wire        viv_s236;
   wire [1:0]  viv_s237;
   wire [63:0] viv_s238;
   wire        viv_s239;
   wire        viv_s240;
   wire        viv_s241;
   wire [c_addr_width:0]     viv_s242;
   reg [c_fifo_depth_bw-1:0] viv_s243;   
   wire                      viv_s244;
   wire [c_addr_width:0]     viv_s245;
   reg [c_fifo_depth_bw-1:0] viv_s246;  
   wire                      viv_s247;
   wire [c_addr_width:0]     viv_s248;
   reg [c_fifo_depth_bw-1:0] viv_s249;  
   wire                      viv_s250;
   wire [c_addr_width:0]     viv_s251;
   reg [c_fifo_depth_bw-1:0] viv_s252;   
   wire                      viv_s253;
   wire [c_addr_width:0]     viv_s254;
   reg [c_fifo_depth_bw-1:0] viv_s255;  
   wire                      viv_s256;
   wire [c_addr_width:0]     viv_s257;
   reg [c_fifo_depth_bw-1:0] viv_s258;  
   wire                      viv_s259;
   wire viv_s260;
   wire viv_s261;
   wire viv_s262;
   wire viv_s263;
   wire [1:0] viv_s264;
   wire viv_s265;
   reg  viv_s266;
   reg  viv_s267;
   wire viv_s268;
   reg  viv_s269;
   reg  viv_s270;
   wire viv_s271;
   reg  viv_s272;
   reg  viv_s273;
   wire viv_s274;
   wire viv_s275;
   wire viv_s276;
   wire viv_s277;
   wire viv_s278;
   wire viv_s279;
   wire viv_s280;
   wire viv_s281;
   wire viv_s282;
   wire viv_s283;
   wire viv_s284;
   wire viv_s285;
   wire viv_s286;
   reg  [31:0] viv_s287;
   reg         viv_s288;
   reg         viv_s289;
   reg         viv_s290;
   wire        viv_s291;
   wire [10:0] viv_s292;
   wire        viv_s293;
   wire        viv_s294;
   wire [10:0] viv_s295;
   wire        viv_s296;
   wire        viv_s297;
   wire        viv_s298;
   reg         viv_s299;
   reg         viv_s300;
   reg         viv_s301;
   wire        viv_s302;
   wire        viv_s303;
   reg         viv_s304;
   reg         viv_s305;
   reg         viv_s306;
   reg         viv_s307;
   reg         viv_s308;
   wire        viv_s309;
   wire [1:0] viv_s310;
wire          viv_s311;
wire          viv_s312;
wire [1:0]    viv_s313; 
wire [7:0]    viv_s314;
wire [7:0]    viv_s315;
wire [7:0]    viv_s316;
wire [1:0]    viv_s317;
wire          viv_s318;
wire          viv_s319;
wire [7:0]    viv_s320;
wire [c_mi_data_addr:0]     viv_s321;
wire [c_mi_data_addr:0]     viv_s322;
wire [c_mi_data_addr:0]     viv_s323;
reg  [31:0]   viv_s324;
reg  [31:0]   viv_s325;
reg  [31:0]   viv_s326;
wire          viv_s327;
   always @ (*) begin
      if (in_dp_val) begin
         viv_s288         = in_dp_end;
         viv_s287        = in_dp_data;
      end
      else begin
         viv_s288         = 1'b0;
         viv_s287        = 32'b0;
      end
   end
wire [c_mi_data_addr:3] viv_s328;
wire [c_mi_data_addr:3]  viv_s329;
wire [14:0]  viv_s330;
wire [14:0]  viv_s331;
wire [14:0]  viv_s332;
wire         viv_s333;
wire         viv_s334;
wire [3:0]   viv_s335;
wire [1:0]   viv_s336;
wire [1:0]   viv_s337;
wire [1:0]   viv_s338;
wire [2:0]   viv_s339;
wire       viv_s340;
wire       viv_s341;
wire [3:0] viv_s342;
wire [1:0] viv_s343;
wire [1:0] viv_s344;
wire [1:0] viv_s345;
wire  [c_mi_data_addr:3]   viv_s346;
wire  [c_mi_data_addr:3]   viv_s347;
wire  [c_mi_data_addr:3]   viv_s348;
wire [c_mi_data_addr+3:3]  viv_s349;
wire  [c_mi_data_addr+3:3] viv_s350;
wire [c_mi_data_addr:3]    viv_s351;
wire [c_mi_data_addr:3]    viv_s352;
wire [c_mi_data_addr+3:3]  viv_s353;
wire  [c_mi_data_addr+3:3] viv_s354;
wire  [c_mi_data_addr:3]   viv_s355;
wire  [c_mi_data_addr:3]   viv_s356;
wire [c_mi_data_addr+3:3]  viv_s357;
wire  [c_mi_data_addr+3:3] viv_s358;
wire  [c_mi_data_addr:3]   viv_s359;
wire  [c_mi_data_addr:3]   viv_s360;
wire [c_mi_data_addr+3:3]  viv_s361;
wire  [c_mi_data_addr+3:3] viv_s362;
wire  [c_mi_data_addr:3]   viv_s363;
wire  [c_mi_data_addr:3]   viv_s364;
wire    viv_s365;
wire    viv_s366;
wire    viv_s367;
wire    viv_s368;
wire    viv_s369;
wire    viv_s370;
wire    viv_s371 = ~in_bp_ack;
   vsisp_marvin_mi_regs u_marvin_mi_regs
     (.mp_lsb_alignment_out     (mp_lsb_alignment_out),
      .mp_little_endian_out     (mp_little_endian_out),
      .mp_y_pic_width_out       (viv_s1),
      .mp_y_pic_height_out      (viv_s2),
      .mp_y_pic_size_out        (viv_s3),
      .sw_mi_fifo_depth_ctrl_out(viv_s310),
      .mp_output_format_out     (mp_output_format_out),
      .mp_y_llength_out         (viv_s6),
      .mp_slice_offset_y_out    (viv_s7),
      .mp_slice_offset_c_out    (viv_s8),
      .mp_byte_swap_out         (viv_s9),
      .sp_byte_swap_out         (viv_s10),
      .dma_byte_swap_out        (viv_s11),
      .bp_wr_path_enable_in     (viv_s340),
      .bp_wr_path_enable_out    (viv_s341),
      .bp_auto_update           (viv_s334),
      .bp_wr_raw_bit_in         (viv_s342),
      .bp_wr_aligned_in         (viv_s343),
      .bp_wr_write_format_in    (viv_s344),
      .bp_wr_write_format_out   (viv_s345),
      .bp_wr_burst_len          (viv_s338),
      .bp_wr_byte_swap          (viv_s339),
      .bp_wr_size               (viv_s328),
      .bp_wr_size_init          (viv_s329),
      .bp_wr_llength            (viv_s330),
      .bp_wr_pic_width          (viv_s331),
      .bp_wr_pic_height         (viv_s332),
      .bp_wr_offs_cnt_init      (viv_s348),
      .bp_wr_irq_offs_init      (viv_s347),
      .bp_wr_irq_offs           (viv_s346),
      .bp_r_base_ad             (viv_s349),
      .bp_r_base_ad_init        (viv_s350),
      .bp_r_offs_cnt            (viv_s351),
      .bp_r_offs_cnt_start      (viv_s352),
      .bp_gr_base_ad            (viv_s353),
      .bp_gr_base_ad_init       (viv_s354),
      .bp_gr_offs_cnt           (viv_s355),
      .bp_gr_offs_cnt_start     (viv_s356),
      .bp_gb_base_ad            (viv_s357),
      .bp_gb_base_ad_init       (viv_s358),
      .bp_gb_offs_cnt           (viv_s359),
      .bp_gb_offs_cnt_start     (viv_s360),
      .bp_b_base_ad             (viv_s361),
      .bp_b_base_ad_init        (viv_s362),
      .bp_b_offs_cnt            (viv_s363),
      .bp_b_offs_cnt_start      (viv_s364),
      .stat_bp_frame_end(viv_s365),
      .stat_fill_bp_r(viv_s366),
      .stat_wrap_bp_r(viv_s367),
      .stat_wrap_bp_gr(viv_s368),
      .stat_wrap_bp_gb(viv_s369),
      .stat_wrap_bp_b(viv_s370),
      .mi_bp_frame_end_int(mi_bp_frame_end_int),
      .mi_fill_bp_r_int(mi_fill_bp_r_int),
      .mi_wrap_bp_r_int(mi_wrap_bp_r_int),
      .mi_wrap_bp_gr_int(mi_wrap_bp_gr_int),
      .mi_wrap_bp_gb_int(mi_wrap_bp_gb_int),
      .mi_wrap_bp_b_int(mi_wrap_bp_b_int),
      .clk                     (clk ),
      .reset_n                 (reset_n),
      .jpeg_clk                (jpeg_clk),
      .reset_jpeg_clk_n        (reset_jpeg_clk_n),
      .m_hclk                  (m_hclk),
      .reset_m_hclk_n          (reset_m_hclk_n),
      .m_hclk_cfg              (m_hclk_cfg),
      .reset_m_hclk_cfg_n      (reset_m_hclk_cfg_n),
      .cfg_mi_val              (cfg_mi_val),
      .cfg_mi_addr             (cfg_mi_addr),
      .cfg_mi_rd               (cfg_mi_rd),
      .cfg_mi_wdata            (cfg_mi_wdata),
      .cfg_mi_rdata            (cfg_mi_rdata),
      .cfg_mi_ack              (cfg_mi_ack),
      .mi_mp_frame_end_int     (mi_mp_frame_end_int),
      .mi_sp_frame_end_int     (mi_sp_frame_end_int),
      .mi_mblk_line_int        (mi_mblk_line_int),
      .mi_fill_mp_y_int        (mi_fill_mp_y_int),
      .mi_wrap_mp_y_int        (mi_wrap_mp_y_int),
      .mi_wrap_mp_cb_int       (mi_wrap_mp_cb_int),
      .mi_wrap_mp_cr_int       (mi_wrap_mp_cr_int),
      .mi_wrap_sp_y_int        (mi_wrap_sp_y_int),
      .mi_wrap_sp_cb_int       (mi_wrap_sp_cb_int),
      .mi_wrap_sp_cr_int       (mi_wrap_sp_cr_int),
      .mi_dma_ready_int        (mi_dma_ready_int),
      .mi_mp_handshk_int       (mi_mp_handshk_int),
      .mi_mp_handshk_sw_int    (mi_mp_handshk_sw_int),
      .soft_upd_in             (viv_s26),
      .mp_enable_in            (viv_s12),
      .sp_enable_in            (viv_s13),
      .jpeg_enable_in          (viv_s14),
      .dp_enable_in            (viv_s15),
      .raw_enable_in           (viv_s16),
      .h_flip_in               (viv_s17),
      .rot_in                  (viv_s18),
      .mp_write_format_in      (viv_s19),
      .sp_write_format_in      (viv_s20),
      .sp_input_format_in      (viv_s21),
      .cfg_y_full              (viv_s23),
      .cfg_crcb_full           (viv_s24),
      .cfg_422noncosited       (viv_s25),
      .sp_output_format_in     (viv_s22),
      .sp_y_pic_width_in       (viv_s27),
      .sp_y_pic_height_in      (viv_s28),
      .stat_mp_enable_in       (viv_s184),
      .stat_sp_enable_in       (viv_s185),
      .stat_jpeg_enable_in     (viv_s186),
      .stat_dp_enable_in       (viv_s187),
      .stat_raw_enable_in      (viv_s188),
      .stat_byte_cnt_raw_val   (viv_s189),
      .stat_byte_cnt_raw       (viv_s190),
      .stat_byte_cnt_raw_ack   (viv_s191),
      .stat_byte_cnt_jpeg_val  (viv_s192),
      .stat_byte_cnt_jpeg      (viv_s193),
      .stat_byte_cnt_jpeg_ack  (viv_s194),
      .stat_byte_cnt_dp_val    (viv_s195),
      .stat_byte_cnt_dp        (viv_s196),
      .stat_byte_cnt_dp_ack    (viv_s197),
      .soft_upd_out            (viv_s52),
      .skip                    (viv_s53),
      .mp_enable_out           (viv_s29),
      .sp_enable_out           (viv_s30),
      .jpeg_enable_out         (viv_s31),
      .raw_enable_out          (viv_s32),
      .dp_enable_out           (viv_s33),
      .h_flip_out              (viv_s34),
      .v_flip_out              (viv_s35),
      .rot_out                 (viv_s36),
      .mp_write_format_out     (viv_s49),
      .sp_write_format_out     (viv_s50),
      .sp_output_format_out    (viv_s51),
      .byte_swap               (viv_s37),
      .init_base_en            (viv_s38),
      .init_offset_en          (viv_s39),
      .mp_pingpong_en          (viv_s40),
      .sp_pingpong_en          (viv_s41),
      .mp_auto_update          (viv_s42),
      .sp_auto_update          (viv_s43),
      .burst_len_lum           (viv_s47),
      .burst_len_chrom         (viv_s48),
      .stat_mp_enable_out      (viv_s260),
      .stat_sp_enable_out      (viv_s261),
      .stat_jpeg_enable_out    (viv_s262),
      .stat_raw_enable_out     (viv_s263),
      .stat_dp_enable_out      (viv_s264),
      .mp_y_base_ad            (viv_s54),
      .mp_y_size               (viv_s55),
      .mp_y_offs_cnt           (viv_s56),
      .mp_y_base_ad_init       (viv_s57),
      .mp_y_base_ad_init2      (viv_s58),
      .mp_y_size_init          (viv_s59),
      .mp_y_offs_cnt_init      (viv_s60),
      .mp_y_offs_cnt_start     (viv_s61),
      .mp_y_irq_offs_init      (viv_s62),
      .mp_y_irq_offs           (viv_s63),
      .mp_cb_base_ad           (viv_s64),
      .mp_cb_size              (viv_s65),
      .mp_cb_offs_cnt          (viv_s66),
      .mp_cb_base_ad_init      (viv_s67),
      .mp_cb_base_ad_init2     (viv_s68),
      .mp_cb_size_init         (viv_s69),
      .mp_cb_offs_cnt_init     (viv_s70),
      .mp_cb_offs_cnt_start    (viv_s71),
      .mp_cr_base_ad           (viv_s72),
      .mp_cr_size              (viv_s73),
      .mp_cr_offs_cnt          (viv_s74),
      .mp_cr_base_ad_init      (viv_s75),
      .mp_cr_base_ad_init2     (viv_s76),
      .mp_cr_size_init         (viv_s77),
      .mp_cr_offs_cnt_init     (viv_s78),
      .mp_cr_offs_cnt_start    (viv_s79),
      .sp_y_base_ad            (viv_s80),
      .sp_y_size               (viv_s81),
      .sp_y_offs_cnt           (viv_s82),
      .sp_y_base_ad_init       (viv_s83),
      .sp_y_base_ad_init2      (viv_s84),
      .sp_y_size_init          (viv_s85),
      .sp_y_offs_cnt_init      (viv_s86),
      .sp_y_offs_cnt_start     (viv_s87),
      .sp_y_pic_width          (viv_s88),
      .sp_y_llength            (viv_s89),
      .sp_y_pic_size           (viv_s90),
      .sp_cb_base_ad           (viv_s91),
      .sp_cb_size              (viv_s92),
      .sp_cb_offs_cnt          (viv_s93),
      .sp_cb_base_ad_init      (viv_s94),
      .sp_cb_base_ad_init2     (viv_s95),
      .sp_cb_size_init         (viv_s96),
      .sp_cb_offs_cnt_init     (viv_s97),
      .sp_cb_offs_cnt_start    (viv_s98),
      .sp_cr_base_ad           (viv_s99),
      .sp_cr_size              (viv_s100),
      .sp_cr_offs_cnt          (viv_s101),
      .sp_cr_base_ad_init      (viv_s102),
      .sp_cr_base_ad_init2     (viv_s103),
      .sp_cr_size_init         (viv_s104),
      .sp_cr_offs_cnt_init     (viv_s105),
      .sp_cr_offs_cnt_start    (viv_s106),
      .dma_read_format_in      (viv_s107),
      .dma_rgb_format_in       (viv_s108),
      .dma_start               (viv_s109),
      .stat_dma_active         (viv_s275),
      .dma_burst_len_lum       (viv_s110),
      .dma_burst_len_chrom     (viv_s111),
      .dma_read_format_out     (viv_s112),
      .dma_rgb_format_out      (viv_s113),
      .dma_inout_format        (viv_s114),
      .dma_byte_swap           (viv_s115),
      .dma_continuous_en       (viv_s116),
      .dma_bayer_format        (dma_bayer_format),
      .dma_frame_end_disable   (viv_s117),
      .dma_y_pic_start_ad      (viv_s118),
      .dma_y_pic_width         (viv_s119),
      .dma_y_llength           (viv_s120),
      .dma_y_pic_size          (viv_s121),
      .dma_cb_pic_start_ad     (viv_s122),
      .dma_cr_pic_start_ad     (viv_s123),
      .dma_y_pic_width_in(viv_s124),
      .dma_y_llength_in(viv_s125),
      .dma_y_pic_size_in(viv_s126),
      .dma_y_raw_fmt_in(viv_s127),
      .dma_y_raw_lval(viv_s128),
      .dma_y_raw_lval_in(viv_s129),
      .stat_mp_y_full          (viv_s203 ),
      .stat_mp_cb_full         (viv_s209),
      .stat_mp_cr_full         (viv_s215),
      .stat_sp_y_full          (viv_s220),
      .stat_sp_cb_full         (viv_s225),
      .stat_sp_cr_full         (viv_s230),
      .stat_bp_ecl_full        (bp_ecl_fifo_sram_buf_full),
      .stat_bp_ocl_full        (bp_ocl_fifo_sram_buf_full),
      .stat_bp_in_full         (viv_s371),
      .stat_mp_frame_end       (viv_s276),
      .stat_sp_frame_end       (viv_s277),
      .stat_mblk_line          (viv_s278),
      .stat_fill_mp_y          (viv_s279),
      .stat_wrap_mp_y          (viv_s280),
      .stat_wrap_mp_cb         (viv_s281),
      .stat_wrap_mp_cr         (viv_s282),
      .stat_wrap_sp_y          (viv_s283),
      .stat_wrap_sp_cb         (viv_s284),
      .stat_wrap_sp_cr         (viv_s285),
      .stat_dma_ready          (viv_s286),
      .last_pixel_sig_en       (viv_s0),
      .nv21_main               (viv_s44),
      .nv21_self               (viv_s45),
      .nv21_dma_read           (viv_s46),
      .handshake_en             (viv_s312),
      .starage_format           (viv_s313),
      .data_format              (viv_s317),
      .slice_size               (viv_s314),
      .slice_buf_size           (viv_s315),
      .ack_count                (viv_s316),
      .mp_interrupt             (viv_s311),
      .handshake_mode_0         (viv_s319),
      .slice_cnt_int            (viv_s320),
      .sw_addr_mp_y             (viv_s324),
      .sw_addr_mp_cb            (viv_s325),
      .sw_addr_mp_cr            (viv_s326),
      .sw_interrupt             (viv_s327));
   assign rot_en = viv_s17 | viv_s18;
assign      viv_s274 = 1'b1;
assign      viv_s265 = 1'b1;
   vsisp_marvin_mi_in  u_marvin_mi_in
     (
      .mp_y_llength            (viv_s6),
      .mp_y_pic_width          (viv_s1),
      .mp_y_pic_height         (viv_s2),
      .mp_y_pic_size           (viv_s3),
      .mp_line_sens            (viv_s318),
      .slice_size              (viv_s314),
      .data_format             (viv_s317),
      .mp_slice_offset_y       (viv_s7),
      .mp_slice_offset_c       (viv_s8),
      .handshake_en            (viv_s312),
      .stat_skip_active        (viv_s241),
      .clk                     (jpeg_clk),
      .reset_n                 (reset_jpeg_clk_n),
      .soft_rst                (viv_s291),
      .in_mp_y_val             (in_mp_y_val),
      .in_mp_y_data            (in_mp_y_data),
      .in_mp_y_h_end           (in_mp_y_h_end),
      .in_mp_y_v_end           (in_mp_y_v_end),
      .in_mp_y_cfg_upd         (in_mp_y_cfg_upd),
      .in_mp_y_ack             (in_mp_y_ack),
      .in_mp_cb_val            (in_mp_cb_val),
      .in_mp_cb_data           (in_mp_cb_data),
      .in_mp_cb_h_end          (in_mp_cb_h_end),
      .in_mp_cb_v_end          (in_mp_cb_v_end),
      .in_mp_cb_cfg_upd        (in_mp_cb_cfg_upd),
      .in_mp_cb_ack            (in_mp_cb_ack),
      .in_mp_cr_val            (in_mp_cr_val),
      .in_mp_cr_data           (in_mp_cr_data),
      .in_mp_cr_h_end          (in_mp_cr_h_end),
      .in_mp_cr_v_end          (in_mp_cr_v_end),
      .in_mp_cr_cfg_upd        (in_mp_cr_cfg_upd),
      .in_mp_cr_ack            (in_mp_cr_ack),
      .in_dp_data              (viv_s287),
      .in_dp_val               (in_dp_val),
      .in_dp_ack               (in_dp_ack),
      .in_dp_end               (viv_s288),
      .in_sp_y_val             (in_sp_y_val     ),
      .in_sp_y_data            (in_sp_y_data    ),
      .in_sp_y_h_end           (in_sp_y_h_end   ),
      .in_sp_y_v_end           (in_sp_y_v_end   ),
      .in_sp_y_cfg_upd         (in_sp_y_cfg_upd ),
      .in_sp_y_ack             (in_sp_y_ack     ),
      .in_sp_cb_val            (in_sp_cb_val    ),
      .in_sp_cb_data           (in_sp_cb_data   ),
      .in_sp_cb_h_end          (in_sp_cb_h_end  ),
      .in_sp_cb_v_end          (in_sp_cb_v_end  ),
      .in_sp_cb_cfg_upd        (in_sp_cb_cfg_upd),
      .in_sp_cb_ack            (in_sp_cb_ack    ),
      .in_sp_cr_val            (in_sp_cr_val    ),
      .in_sp_cr_data           (in_sp_cr_data   ),
      .in_sp_cr_h_end          (in_sp_cr_h_end  ),
      .in_sp_cr_v_end          (in_sp_cr_v_end  ),
      .in_sp_cr_cfg_upd        (in_sp_cr_cfg_upd),
      .in_sp_cr_ack            (in_sp_cr_ack    ),
      .in_jpeg_val             (in_jpeg_val),
      .in_jpeg_data            (in_jpeg_data),
      .in_jpeg_end             (in_jpeg_end),
      .in_jpeg_byte_no         (in_jpeg_byte_no),
      .in_jpeg_ack             (in_jpeg_ack),
      .mp_y_fifo_data          (viv_s198),
      .mp_y_fifo_h_end         (viv_s199),
      .mp_y_fifo_v_end         (viv_s200),
      .mp_y_fifo_write64       (viv_s201),
      .mp_y_fifo_full          (viv_s202),
      .mp_cb_fifo_data         (viv_s204),
      .mp_cb_fifo_h_end        (viv_s205),
      .mp_cb_fifo_v_end        (viv_s206),
      .mp_cb_fifo_write64      (viv_s207),
      .mp_cb_fifo_full         (viv_s208),
      .mp_cr_fifo_data         (viv_s210),
      .mp_cr_fifo_h_end        (viv_s211),
      .mp_cr_fifo_v_end        (viv_s212),
      .mp_cr_fifo_write64      (viv_s213),
      .mp_cr_fifo_full         (viv_s214),
      .sp_y_fifo_data          (viv_s216),
      .sp_y_fifo_h_end         (viv_s217),
      .sp_y_fifo_v_end         (viv_s218),
      .sp_y_fifo_write64       (viv_s219),
      .sp_y_fifo_full          (viv_s220),
      .sp_cb_fifo_data         (viv_s221),
      .sp_cb_fifo_h_end        (viv_s222),
      .sp_cb_fifo_v_end        (viv_s223),
      .sp_cb_fifo_write64      (viv_s224),
      .sp_cb_fifo_full         (viv_s225),
      .sp_cr_fifo_data         (viv_s226),
      .sp_cr_fifo_h_end        (viv_s227),
      .sp_cr_fifo_v_end        (viv_s228),
      .sp_cr_fifo_write64      (viv_s229),
      .sp_cr_fifo_full         (viv_s230),
      .mp_auto_update          (viv_s42),
      .sp_auto_update          (viv_s43),
      .mp_nv21                 (viv_s44),
      .sp_nv21                 (viv_s45),
      .soft_upd                (viv_s26),
      .mp_enable               (viv_s12),
      .sp_enable               (viv_s13),
      .jpeg_enable             (viv_s14),
      .dp_enable               (viv_s15),
      .raw_enable              (viv_s16),
      .mp_write_format         (viv_s19),
      .sp_write_format         (viv_s20),
      .sp_output_format        (viv_s22),
      .sp_line_sens            (viv_s265),
      .sp_col_sens             (viv_s274),
      .stat_mp_enable_in       (viv_s184),
      .stat_sp_enable_in       (viv_s185),
      .stat_jpeg_enable_in     (viv_s186),
      .stat_dp_enable_in       (viv_s187),
      .stat_raw_enable_in      (viv_s188),
      .stat_byte_cnt_raw_val   (viv_s189),
      .stat_byte_cnt_raw       (viv_s190),
      .stat_byte_cnt_raw_ack   (viv_s191),
      .stat_byte_cnt_jpeg_val  (viv_s192),
      .stat_byte_cnt_jpeg      (viv_s193),
      .stat_byte_cnt_jpeg_ack  (viv_s194),
      .stat_byte_cnt_dp_val    (viv_s195),
      .stat_byte_cnt_dp        (viv_s196),
      .stat_byte_cnt_dp_ack    (viv_s197),
      .cfg_in_update_mp        (viv_s268),
      .cfg_in_update_sp        (viv_s271),
      .cfg_out_update_mp       (viv_s302),
      .cfg_out_update_sp       (viv_s309)
      );
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s269 <= 1'b0;
         viv_s270 <= 1'b0;
         viv_s272 <= 1'b0;
         viv_s273 <= 1'b0;
      end
      else begin
         viv_s269 <= viv_s268;
         viv_s270 <= viv_s269;
         viv_s272 <= viv_s271;
         viv_s273 <= viv_s272;
      end
   end
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         viv_s299 <= 1'b0;
         viv_s300 <= 1'b0;
         viv_s301 <= 1'b0;
      end
      else begin
         viv_s299 <= viv_s298;
         viv_s300 <= viv_s299;
         viv_s301 <= viv_s300;
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s306 <= 1'b0;
         viv_s307 <= 1'b0;
         viv_s308 <= 1'b0;
      end
      else begin
         viv_s306 <= viv_s303;
         viv_s307 <= viv_s306;
         viv_s308 <= viv_s307;
      end
   end
   assign viv_s302 = viv_s300 && ~viv_s301;
   assign viv_s309 = viv_s307 && ~viv_s308;
   vsisp_marvin_mi_fifo  #(.c_fifo_depth(c_fifo_depth)) u_marvin_mi_fifo
     (
      .sw_mi_fifo_depth_ctrl   (viv_s310),
      .clk                     (jpeg_clk),
      .reset_n                 (reset_jpeg_clk_n),
      .soft_rst                (viv_s291),
      .m_hclk                  (m_hclk),
      .reset_m_hclk_n          (reset_m_hclk_n),
      .soft_rst_m_hclk         (soft_rst_m_hclk),
      .test_mode               (test_mode),
      .sp_rot_in               (viv_s18),
      .mp_y_fifo_data_in       (viv_s198),
      .mp_y_fifo_h_end_in      (viv_s199),
      .mp_y_fifo_v_end_in      (viv_s200),
      .mp_y_fifo_write64       (viv_s201),
      .mp_y_fifo_full          (viv_s202),
      .mp_y_fifo_sram_buf_full (viv_s203 ),
      .mp_cb_fifo_data_in      (viv_s204),
      .mp_cb_fifo_h_end_in     (viv_s205),
      .mp_cb_fifo_v_end_in     (viv_s206),
      .mp_cb_fifo_write64      (viv_s207),
      .mp_cb_fifo_full         (viv_s208),
      .mp_cb_fifo_sram_buf_full(viv_s209 ),
      .mp_cr_fifo_data_in      (viv_s210),
      .mp_cr_fifo_h_end_in     (viv_s211),
      .mp_cr_fifo_v_end_in     (viv_s212),
      .mp_cr_fifo_write64      (viv_s213),
      .mp_cr_fifo_full         (viv_s214),
      .mp_cr_fifo_sram_buf_full(viv_s215 ),
      .sp_y_fifo_data_in       (viv_s216),
      .sp_y_fifo_h_end_in      (viv_s217),
      .sp_y_fifo_v_end_in      (viv_s218),
      .sp_y_fifo_write64       (viv_s219),
      .sp_y_fifo_full          (viv_s220),
      .sp_cb_fifo_data_in      (viv_s221),
      .sp_cb_fifo_h_end_in     (viv_s222),
      .sp_cb_fifo_v_end_in     (viv_s223),
      .sp_cb_fifo_write64      (viv_s224),
      .sp_cb_fifo_full         (viv_s225),
      .sp_cr_fifo_data_in      (viv_s226),
      .sp_cr_fifo_h_end_in     (viv_s227),
      .sp_cr_fifo_v_end_in     (viv_s228),
      .sp_cr_fifo_write64      (viv_s229),
      .sp_cr_fifo_full         (viv_s230),
      .mp_fifo_read64          (viv_s231),
      .mp_fifo_select          (viv_s232),
      .mp_fifo_data_out        (viv_s233),
      .mp_fifo_h_end_out       (viv_s234),
      .mp_fifo_v_end_out       (viv_s235),
      .sp_fifo_read64          (viv_s236),
      .sp_fifo_select          (viv_s237),
      .sp_fifo_data_out        (viv_s238),
      .sp_fifo_h_end_out       (viv_s239),
      .sp_fifo_v_end_out       (viv_s240),
      .mp_y_fifo_fill_level    (viv_s242),
      .mp_y_fifo_flush         (viv_s244),
      .mp_cb_fifo_fill_level   (viv_s245),
      .mp_cb_fifo_flush        (viv_s247),
      .mp_cr_fifo_fill_level   (viv_s248),
      .mp_cr_fifo_flush        (viv_s250),
      .sp_y_fifo_fill_level    (viv_s251),
      .sp_y_fifo_flush         (viv_s253),
      .sp_cb_fifo_fill_level   (viv_s254),
      .sp_cb_fifo_flush        (viv_s256),
      .sp_cr_fifo_fill_level   (viv_s257),
      .sp_cr_fifo_flush        (viv_s259),
       .mp_y_fifo_sram_DIN     (mp_y_fifo_sram_DIN     ),
       .mp_y_fifo_sram_DOUT    (mp_y_fifo_sram_DOUT    ),
       .mp_y_fifo_sram_ADDR    (mp_y_fifo_sram_ADDR    ),
       .mp_y_fifo_sram_CEN     (mp_y_fifo_sram_CEN     ),
       .mp_y_fifo_sram_WEN     (mp_y_fifo_sram_WEN     ),
       .mp_cb_fifo_sram_DIN    (mp_cb_fifo_sram_DIN    ),
       .mp_cb_fifo_sram_DOUT   (mp_cb_fifo_sram_DOUT   ),
       .mp_cb_fifo_sram_ADDR   (mp_cb_fifo_sram_ADDR   ),
       .mp_cb_fifo_sram_CEN    (mp_cb_fifo_sram_CEN    ),
       .mp_cb_fifo_sram_WEN    (mp_cb_fifo_sram_WEN    ),
       .mp_cr_fifo_sram_DIN    (mp_cr_fifo_sram_DIN    ),
       .mp_cr_fifo_sram_DOUT   (mp_cr_fifo_sram_DOUT   ),
       .mp_cr_fifo_sram_ADDR   (mp_cr_fifo_sram_ADDR   ),
       .mp_cr_fifo_sram_CEN    (mp_cr_fifo_sram_CEN    ),
       .mp_cr_fifo_sram_WEN    (mp_cr_fifo_sram_WEN    ));
   always @ (viv_s245 or viv_s248 or viv_s242 or
             viv_s254 or viv_s257 or viv_s251) begin
      viv_s243  = 6'h0;
      viv_s243[c_addr_width:0]  = viv_s242;
      viv_s246 = 6'h0;
      viv_s246[c_addr_width:0] = viv_s245;
      viv_s249 = 6'h0;
      viv_s249[c_addr_width:0] = viv_s248;
      viv_s252  = 6'h0;
      viv_s252[c_addr_width:0]  = viv_s251;
      viv_s255 = 6'h0;
      viv_s255[c_addr_width:0] = viv_s254;
      viv_s258 = 6'h0;
      viv_s258[c_addr_width:0] = viv_s257;
   end
   vsisp_marvin_mi_out  u_marvin_mi_out
     (
      .mp_line_sens            (viv_s318),
      .mp_output_format        (mp_output_format_out),
      .mp_y_llength            (viv_s6),
      .mp_slice_offset_y       (viv_s7),
      .mp_slice_offset_c       (viv_s8),
      .mp_byte_swap            (viv_s9),
      .sp_byte_swap            (viv_s10),
      .stat_skip_active        (viv_s241),
      .m_hclk                  (m_hclk),
      .reset_m_hclk_n          (reset_m_hclk_n),
      .soft_rst_m_hclk         (soft_rst_m_hclk),
      .mp_fifo_read64          (viv_s231),
      .mp_fifo_select          (viv_s232),
      .mp_fifo_data            (viv_s233),
      .mp_fifo_h_end           (viv_s234),
      .mp_fifo_v_end           (viv_s235),
      .sp_fifo_read64          (viv_s236),
      .sp_fifo_select          (viv_s237),
      .sp_fifo_data            (viv_s238),
      .sp_fifo_h_end           (viv_s239),
      .sp_fifo_v_end           (viv_s240),
      .mp_y_fifo_fill_level    (viv_s243),
      .mp_y_fifo_flush         (viv_s244),
      .mp_cb_fifo_fill_level   (viv_s246),
      .mp_cb_fifo_flush        (viv_s247),
      .mp_cr_fifo_fill_level   (viv_s249),
      .mp_cr_fifo_flush        (viv_s250),
      .sp_y_fifo_fill_level    (viv_s252),
      .sp_y_fifo_flush         (viv_s253),
      .sp_cb_fifo_fill_level   (viv_s255),
      .sp_cb_fifo_flush        (viv_s256),
      .sp_cr_fifo_fill_level   (viv_s258),
      .sp_cr_fifo_flush        (viv_s259),
      .soft_upd                (viv_s52),
      .skip                    (viv_s53),
      .mp_enable               (viv_s29),
      .sp_enable               (viv_s30),
      .jpeg_enable             (viv_s31),
      .raw_enable              (viv_s32),
      .dp_enable               (viv_s33),
      .h_flip                  (viv_s34),
      .v_flip                  (viv_s35),
      .rot                     (viv_s36),
      .mp_write_format         (viv_s49),
      .sp_write_format         (viv_s50),
      .sp_output_format        (viv_s51),
      .byte_swap               (viv_s37),
      .init_base_en            (viv_s38),
      .init_offset_en          (viv_s39),
      .mp_pingpong_en          (viv_s40),
      .sp_pingpong_en          (viv_s41),
      .burst_len_lum           (viv_s47),
      .burst_len_chrom         (viv_s48),
      .stat_mp_enable_out      (viv_s260),
      .stat_sp_enable_out      (viv_s261),
      .stat_jpeg_enable_out    (viv_s262),
      .stat_raw_enable_out     (viv_s263),
      .stat_dp_enable_out      (viv_s264),
      .mp_y_base_ad            (viv_s54),
      .mp_y_size               (viv_s55),
      .mp_y_offs_cnt           (viv_s56),
      .mp_y_base_ad_init       (viv_s57),
      .mp_y_base_ad_init2      (viv_s58),
      .mp_y_size_init          (viv_s59),
      .mp_y_offs_cnt_init      (viv_s60),
      .mp_y_offs_cnt_start     (viv_s61),
      .mp_y_irq_offs_init      (viv_s62),
      .mp_y_irq_offs           (viv_s63),
      .mp_cb_base_ad           (viv_s64),
      .mp_cb_size              (viv_s65),
      .mp_cb_offs_cnt          (viv_s66),
      .mp_cb_base_ad_init      (viv_s67),
      .mp_cb_base_ad_init2     (viv_s68),
      .mp_cb_size_init         (viv_s69),
      .mp_cb_offs_cnt_init     (viv_s70),
      .mp_cb_offs_cnt_start    (viv_s71),
      .mp_cr_base_ad           (viv_s72),
      .mp_cr_size              (viv_s73),
      .mp_cr_offs_cnt          (viv_s74),
      .mp_cr_base_ad_init      (viv_s75),
      .mp_cr_base_ad_init2     (viv_s76),
      .mp_cr_size_init         (viv_s77),
      .mp_cr_offs_cnt_init     (viv_s78),
      .mp_cr_offs_cnt_start    (viv_s79),
      .sp_y_base_ad            (viv_s80),
      .sp_y_size               (viv_s81),
      .sp_y_offs_cnt           (viv_s82),
      .sp_y_base_ad_init       (viv_s83),
      .sp_y_base_ad_init2      (viv_s84),
      .sp_y_size_init          (viv_s85),
      .sp_y_offs_cnt_init      (viv_s86),
      .sp_y_offs_cnt_start     (viv_s87),
      .sp_y_pic_width          (viv_s88),
      .sp_y_llength            (viv_s89),
      .sp_y_pic_size           (viv_s90),
      .sp_cb_base_ad           (viv_s91),
      .sp_cb_size              (viv_s92),
      .sp_cb_offs_cnt          (viv_s93),
      .sp_cb_base_ad_init      (viv_s94),
      .sp_cb_base_ad_init2     (viv_s95),
      .sp_cb_size_init         (viv_s96),
      .sp_cb_offs_cnt_init     (viv_s97),
      .sp_cb_offs_cnt_start    (viv_s98),
      .sp_cr_base_ad           (viv_s99),
      .sp_cr_size              (viv_s100),
      .sp_cr_offs_cnt          (viv_s101),
      .sp_cr_base_ad_init      (viv_s102),
      .sp_cr_base_ad_init2     (viv_s103),
      .sp_cr_size_init         (viv_s104),
      .sp_cr_offs_cnt_init     (viv_s105),
      .sp_cr_offs_cnt_start    (viv_s106),
      .stat_mp_frame_end       (viv_s276),
      .stat_sp_frame_end       (viv_s277),
      .stat_mblk_line          (viv_s278),
      .stat_fill_mp_y          (viv_s279),
      .stat_wrap_mp_y          (viv_s280),
      .stat_wrap_mp_cb         (viv_s281),
      .stat_wrap_mp_cr         (viv_s282),
      .stat_wrap_sp_y          (viv_s283),
      .stat_wrap_sp_cb         (viv_s284),
      .stat_wrap_sp_cr         (viv_s285),
      .cfg_in_update_mp        (viv_s270),
      .cfg_in_update_sp        (viv_s273),
      .cfg_out_update_mp       (viv_s298),
      .cfg_out_update_sp       (viv_s303),
      .vci_out_m1_cmdval       (vci_out_m1_cmdval),
      .vci_out_m1_plen         (vci_out_m1_plen),
      .vci_out_m1_eop          (vci_out_m1_eop),
      .vci_out_m1_address      (vci_out_m1_address),
      .vci_out_m1_wdata        (vci_out_m1_wdata),
      .vci_out_m1_be           (vci_out_m1_be),
      .vci_out_m1_cmd          (vci_out_m1_cmd),
      .vci_out_m1_const        (vci_out_m1_const),
      .vci_out_m1_contig       (vci_out_m1_contig),
      .vci_out_m1_wrap         (vci_out_m1_wrap),
      .vci_out_m1_cmdack       (vci_out_m1_cmdack),
      .vci_out_m1_rspval       (vci_out_m1_rspval),
      .vci_out_m1_reop         (vci_out_m1_reop),
      .vci_out_m1_rspack       (vci_out_m1_rspack),
      .vci_out_m2_cmdval       (vci_out_m2_cmdval),
      .vci_out_m2_plen         (vci_out_m2_plen),
      .vci_out_m2_eop          (vci_out_m2_eop),
      .vci_out_m2_address      (vci_out_m2_address),
      .vci_out_m2_wdata        (vci_out_m2_wdata),
      .vci_out_m2_be           (vci_out_m2_be),
      .vci_out_m2_cmd          (vci_out_m2_cmd),
      .vci_out_m2_const        (vci_out_m2_const),
      .vci_out_m2_contig       (vci_out_m2_contig),
      .vci_out_m2_wrap         (vci_out_m2_wrap),
      .vci_out_m2_cmdack       (vci_out_m2_cmdack),
      .vci_out_m2_rspval       (vci_out_m2_rspval),
      .vci_out_m2_reop         (vci_out_m2_reop),
      .vci_out_m2_rspack       (vci_out_m2_rspack),
      .last_pixel_sig_en       (viv_s0),
      .last_pixel_m1_req       (last_pixel_m1_req),
      .last_pixel_m1_ack       (last_pixel_m1_ack),
      .last_pixel_m2_req       (last_pixel_m2_req),
      .last_pixel_m2_ack       (last_pixel_m2_ack),
      .handshake_en(viv_s312),
      .starage_format(viv_s313),
      .data_format(viv_s317),
      .slice_size(viv_s314),
      .slice_buf_size(viv_s315),
      .ack_count(viv_s316),
      .mp_interrupt(viv_s311),
      .isp_0_ack                (isp_0_ack),
      .bresp_in                 (bresp_in),
      .isp_0_ready              (isp_0_ready),
      .isp_0_attr               (isp_0_attr),
      .handshake_mode_0         (viv_s319),
      .slice_cnt_int            (viv_s320),
      .sw_addr_mp_y             (viv_s321),
      .sw_addr_mp_cb            (viv_s322),
      .sw_addr_mp_cr            (viv_s323),
      .sw_interrupt         (viv_s327));
 always @(posedge m_hclk or negedge reset_m_hclk_n) 
 begin
     if (~reset_m_hclk_n)
         begin 
             viv_s324[31:0]  <= 32'h0;
             viv_s325[31:0] <= 32'h0;
             viv_s326[31:0] <= 32'h0;
         end
     else
         begin
             viv_s324[31:0]  <= {1'b0,viv_s321[c_mi_data_addr:0]};
             viv_s325[31:0] <= {1'b0,viv_s322[c_mi_data_addr:0]};
             viv_s326[31:0] <= {1'b0,viv_s323[c_mi_data_addr:0]};
         end
 end
         assign  viv_s275   = 1'b0;
         assign  viv_s286    = 1'b0;
         assign  vci_in_cmdval     = 1'b0;            
         assign  vci_in_plen       = 9'b0;            
         assign  vci_in_eop        = 1'b0;            
         assign  vci_in_address    = 31'b0;
         assign  vci_in_be         = 8'b0;            
         assign  vci_in_cmd        = 2'b0;            
         assign  vci_in_const      = 1'b0;            
         assign  vci_in_contig     = 1'b0;            
         assign  vci_in_wrap       = 1'b0;
         assign  vci_in_rspack     = 1'b1;
         assign  out_y_val         = 1'b0;            
         assign  out_y_data        = 8'b0;            
         assign  out_y_h_end       = 1'b0;            
         assign  out_y_v_end       = 1'b0;
         assign  out_y_cfg_update  = 1'b0;
         assign  out_c_val         = 1'b0;            
         assign  out_c_data        = 8'b0;            
         assign  out_c_h_end       = 1'b0;            
         assign  out_c_v_end       = 1'b0;
         assign  out_c_cfg_update  = 1'b0;
wire viv_s372;
 vsisp_marvin_mi_bp  u_marvin_mi_bp(
 .clk(jpeg_clk),
 .reset_n(reset_jpeg_clk_n),
 .soft_reset(viv_s291),
 .m_hclk(m_hclk),
 .reset_m_hclk_n(reset_m_hclk_n),
 .soft_reset_m_hclk(soft_rst_m_hclk),
 .test_mode(test_mode),
 .in_bp_val(in_bp_val),
 .in_bp_data(in_bp_data),
 .in_bp_h_end(in_bp_h_end),
 .in_bp_v_end(in_bp_v_end),
 .in_bp_ack(in_bp_ack),
 .in_bp_frame_end(in_bp_frame_end),
 .vci_out_cmdval(vci_out_m3_cmdval),
 .vci_out_plen(vci_out_m3_plen),
 .vci_out_eop(vci_out_m3_eop),
 .vci_out_address(vci_out_m3_address),
 .vci_out_wdata(vci_out_m3_wdata),
 .vci_out_be(vci_out_m3_be),
 .vci_out_cmd(vci_out_m3_cmd),
 .vci_out_const(vci_out_m3_const),
 .vci_out_contig(vci_out_m3_contig),
 .vci_out_wrap(vci_out_m3_wrap),
 .vci_out_cmdack(vci_out_m3_cmdack),
 .vci_out_rspval(vci_out_m3_rspval),
 .vci_out_reop(vci_out_m3_reop),
 .vci_out_rspack(vci_out_m3_rspack),
 .last_pixel_sig_en(viv_s0),
 .last_pixel_req(last_pixel_m3_req),
 .last_pixel_ack(last_pixel_m3_ack),
 .stat_mp_frame_end(viv_s365),
 .stat_mblk_line(viv_s372),
 .stat_fill_mp_r(viv_s366),
 .stat_wrap_mp_r(viv_s367),
 .stat_wrap_mp_gr(viv_s368),
 .stat_wrap_mp_gb(viv_s369),
 .stat_wrap_mp_b(viv_s370),
 .bp_wr_size(viv_s328),
 .bp_wr_size_init(viv_s329),
 .bp_wr_llength(viv_s330),
 .bp_wr_pic_width(viv_s331),
 .bp_wr_pic_height(viv_s332),
 .bp_r_irq_offs(viv_s346),
 .bp_r_irq_offs_init(viv_s347),
 .bp_r_base_ad(viv_s349),
 .bp_r_offs_cnt(viv_s351),
 .bp_r_base_ad_init(viv_s350),
 .bp_r_offs_cnt_init(viv_s348),
 .bp_r_offs_cnt_start(viv_s352),
 .bp_gr_base_ad(viv_s353),
 .bp_gr_offs_cnt(viv_s355),
 .bp_gr_base_ad_init(viv_s354),
 .bp_gr_offs_cnt_init(viv_s348),
 .bp_gr_offs_cnt_start(viv_s356),
 .bp_gb_base_ad(viv_s357),
 .bp_gb_offs_cnt(viv_s359),
 .bp_gb_base_ad_init(viv_s358),
 .bp_gb_offs_cnt_init(viv_s348),
 .bp_gb_offs_cnt_start(viv_s360),
 .bp_b_base_ad(viv_s361),
 .bp_b_offs_cnt(viv_s363),
 .bp_b_base_ad_init(viv_s362),
 .bp_b_offs_cnt_init(viv_s348),
 .bp_b_offs_cnt_start(viv_s364),
 .bp_y_fifo_sram_DIN(bp_ec_fifo_sram_DIN),   
 .bp_y_fifo_sram_DOUT(bp_ec_fifo_sram_DOUT),  
 .bp_y_fifo_sram_ADDR(bp_ec_fifo_sram_ADDR), 
 .bp_y_fifo_sram_CEN(bp_ec_fifo_sram_CEN),   
 .bp_y_fifo_sram_WEN(bp_ec_fifo_sram_WEN),   
 .bp_cb_fifo_sram_DIN(bp_oc_fifo_sram_DIN),  
 .bp_cb_fifo_sram_DOUT(bp_oc_fifo_sram_DOUT),
 .bp_cb_fifo_sram_ADDR(bp_oc_fifo_sram_ADDR), 
 .bp_cb_fifo_sram_CEN(bp_oc_fifo_sram_CEN),  
 .bp_cb_fifo_sram_WEN(bp_oc_fifo_sram_WEN),  
 .bp_ecl_fifo_sram_buf_full(bp_ecl_fifo_sram_buf_full),
 .bp_ocl_fifo_sram_buf_full(bp_ocl_fifo_sram_buf_full),
 .bp_ecl_fifo_full(bp_ecl_fifo_full),
 .bp_ocl_fifo_full(bp_ocl_fifo_full),
 .path_enable_in     (viv_s340),
 .path_enable_out    (viv_s341),
 .auto_update        (viv_s334),
 .rformat            (viv_s342),
 .ralignen           (viv_s343),
 .write_format_in    (viv_s344),
 .write_format_out   (viv_s345),
 .burst_len          (viv_s338),
 .soft_upd_in(viv_s26),
 .soft_upd_out(viv_s52),
 .skip(viv_s53),
 .byte_swap(viv_s37),
 .mp_byte_swap(viv_s339),
 .init_base_en(viv_s38),
 .init_offset_en(viv_s39),
 .bayer_pat(bayer_pat),
 .data_mode_en(data_mode_en)
);
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         viv_s289     <= 1'b0;
         viv_s290     <= 1'b0;
      end
      else begin
         viv_s289     <= soft_rst;
         viv_s290     <= viv_s289;
      end
   end
   assign viv_s291      = viv_s290;
`ifdef FPGAa
`endif
`ifdef FPGA_DEBUG_ISP
(* mark_debug = "true" *) reg viv_s373;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s374;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s375;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s376;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s377;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s378;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s379;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s380;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s381;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s382;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s383;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s384;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s385;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s386;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s387;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s388;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s389;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s390;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s391;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s392;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s393;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s394;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s395;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s396;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s397;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s398;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s399;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s400;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s401;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s402;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s403;/* synthesis syn_noprune=1 syn_preserve = 1 */
(* mark_debug = "true" *) reg viv_s404;/* synthesis syn_noprune=1 syn_preserve = 1 */
always @(posedge m_hclk)begin
  viv_s373 <= cfg_mi_val;
  viv_s374 <= cfg_mi_addr;
  viv_s375 <= cfg_mi_rd;
  viv_s376 <= cfg_mi_wdata;
  viv_s377 <= cfg_mi_rdata;
  viv_s378 <= cfg_mi_ack;
end
always @(posedge clk)begin
  viv_s379 <= in_mp_y_val;
  viv_s380 <= in_mp_y_data;
  viv_s381 <= in_mp_y_h_end;
  viv_s382 <= in_mp_y_v_end;
  viv_s383 <= in_mp_y_cfg_upd;
  viv_s384 <= in_mp_y_ack;
  viv_s385 <= in_mp_cb_val;
  viv_s386 <= in_mp_cb_data;
  viv_s387 <= in_mp_cb_h_end;
  viv_s388 <= in_mp_cb_v_end;
  viv_s389 <= in_mp_cb_cfg_upd;
  viv_s390 <= in_mp_cb_ack;
  viv_s391 <= in_mp_cr_val;
  viv_s392 <= in_mp_cr_data;
  viv_s393 <= in_mp_cr_h_end;
  viv_s394 <= in_mp_cr_v_end;
  viv_s395 <= in_mp_cr_cfg_upd;
  viv_s396 <= in_mp_cr_ack;
  viv_s397 <= in_bp_val;
  viv_s398 <= in_bp_data;
  viv_s399 <= in_bp_h_end;
  viv_s400 <= in_bp_v_end;
  viv_s401 <= in_bp_cfg_upd;
  viv_s402 <= in_bp_ack;
  viv_s403 <= in_bp_frame_end;
  viv_s404 <= bayer_pat;
end
`endif
`ifdef FPGAa
 `undef FPGA_DEBUG_ISP
`endif
endmodule
