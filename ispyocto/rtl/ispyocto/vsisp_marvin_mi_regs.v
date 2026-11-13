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

module vsisp_marvin_mi_regs
  (
   clk,
   reset_n,
   jpeg_clk,
   reset_jpeg_clk_n,
   m_hclk,
   reset_m_hclk_n,
   m_hclk_cfg,
   reset_m_hclk_cfg_n,
   cfg_mi_val,
   cfg_mi_addr,
   cfg_mi_rd,
   cfg_mi_wdata,
   cfg_mi_rdata,
   cfg_mi_ack,
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
   soft_upd_in,
   mp_enable_in,
   sp_enable_in,
   jpeg_enable_in,
   dp_enable_in,
   raw_enable_in,
   h_flip_in,
   rot_in,
   mp_write_format_in,
   sp_write_format_in,
   sp_input_format_in,
   cfg_y_full,
   cfg_crcb_full,
   cfg_422noncosited,
   sp_output_format_in,
   sp_y_pic_width_in,
   sp_y_pic_height_in,
   stat_mp_enable_in,
   stat_sp_enable_in,
   stat_jpeg_enable_in,
   stat_dp_enable_in,
   stat_raw_enable_in,
   stat_byte_cnt_raw_val,
   stat_byte_cnt_raw,
   stat_byte_cnt_raw_ack,
   stat_byte_cnt_jpeg_val,
   stat_byte_cnt_jpeg,
   stat_byte_cnt_jpeg_ack,
   stat_byte_cnt_dp_val,
   stat_byte_cnt_dp,
   stat_byte_cnt_dp_ack,
   soft_upd_out,
   skip,
   mp_enable_out,
   sp_enable_out,
   jpeg_enable_out,
   raw_enable_out,
   dp_enable_out,
   h_flip_out,
   v_flip_out,
   rot_out,
   mp_write_format_out,
   sp_write_format_out,
   sp_output_format_out,
   byte_swap,
   init_base_en,
   init_offset_en,
   mp_pingpong_en,
   sp_pingpong_en,
   mp_auto_update,
   sp_auto_update,
   burst_len_lum,
   burst_len_chrom,
   stat_mp_enable_out,
   stat_sp_enable_out,
   stat_jpeg_enable_out,
   stat_raw_enable_out,
   stat_dp_enable_out,
   mp_y_base_ad,
   mp_y_size,
   mp_y_offs_cnt,
   mp_y_base_ad_init,
   mp_y_base_ad_init2,
   mp_y_size_init,
   mp_y_offs_cnt_init,
   mp_y_offs_cnt_start,
   mp_y_irq_offs_init,
   mp_y_irq_offs,
   mp_cb_base_ad,
   mp_cb_size,
   mp_cb_offs_cnt,
   mp_cb_base_ad_init,
   mp_cb_base_ad_init2,
   mp_cb_size_init,
   mp_cb_offs_cnt_init,
   mp_cb_offs_cnt_start,
   mp_cr_base_ad,
   mp_cr_size,
   mp_cr_offs_cnt,
   mp_cr_base_ad_init,
   mp_cr_base_ad_init2,
   mp_cr_size_init,
   mp_cr_offs_cnt_init,
   mp_cr_offs_cnt_start,
   sp_y_base_ad,
   sp_y_size,
   sp_y_offs_cnt,
   sp_y_base_ad_init,
   sp_y_base_ad_init2,
   sp_y_size_init,
   sp_y_offs_cnt_init,
   sp_y_offs_cnt_start,
   sp_y_pic_width,
   sp_y_llength,
   sp_y_pic_size,
   sp_cb_base_ad,
   sp_cb_size,
   sp_cb_offs_cnt,
   sp_cb_base_ad_init,
   sp_cb_base_ad_init2,
   sp_cb_size_init,
   sp_cb_offs_cnt_init,
   sp_cb_offs_cnt_start,
   sp_cr_base_ad,
   sp_cr_size,
   sp_cr_offs_cnt,
   sp_cr_base_ad_init,
   sp_cr_base_ad_init2,
   sp_cr_size_init,
   sp_cr_offs_cnt_init,
   sp_cr_offs_cnt_start,
   dma_read_format_in,
   dma_rgb_format_in,
   dma_start,
   stat_dma_active,
   dma_burst_len_lum,
   dma_burst_len_chrom,
   dma_read_format_out,
   dma_rgb_format_out,
   dma_inout_format,
   dma_byte_swap,
   dma_continuous_en,
   dma_bayer_format,
   dma_frame_end_disable,
   dma_y_pic_start_ad,
   dma_y_pic_width,
   dma_y_llength,
   dma_y_pic_size,
   dma_cb_pic_start_ad,
   dma_cr_pic_start_ad,
   dma_y_pic_width_in,
   dma_y_llength_in,
   dma_y_pic_size_in,
   dma_y_raw_fmt_in,
   dma_y_raw_lval,
   dma_y_raw_lval_in,
   stat_mp_y_full,
   stat_mp_cb_full,
   stat_mp_cr_full,
   stat_sp_y_full,
   stat_sp_cb_full,
   stat_sp_cr_full,
   stat_bp_in_full,
   stat_bp_ecl_full,
   stat_bp_ocl_full,
   stat_mp_frame_end,
   stat_sp_frame_end,
   stat_mblk_line,
   stat_fill_mp_y,
   stat_wrap_mp_y,
   stat_wrap_mp_cb,
   stat_wrap_mp_cr,
   stat_wrap_sp_y,
   stat_wrap_sp_cb,
   stat_wrap_sp_cr,
   stat_dma_ready,
   last_pixel_sig_en,
   nv21_main,
   nv21_self,
   nv21_dma_read,
   mp_y_pic_width_out,
   mp_y_pic_height_out,
   mp_y_pic_size_out,
   mp_output_format_out,
   mp_y_llength_out,
   mp_slice_offset_y_out,
   mp_slice_offset_c_out,
   mp_lsb_alignment_out,
   mp_little_endian_out,
   mp_byte_swap_out,
   sp_byte_swap_out,
   dma_byte_swap_out,
   sw_mi_fifo_depth_ctrl_out,
   bp_wr_path_enable_in,
   bp_wr_path_enable_out,
   bp_auto_update,
   bp_wr_raw_bit_in,
   bp_wr_aligned_in,
   bp_wr_write_format_in,
   bp_wr_write_format_out,
   bp_wr_burst_len,
   bp_wr_byte_swap,
   bp_wr_size,
   bp_wr_size_init,
   bp_wr_llength,
   bp_wr_pic_width,
   bp_wr_pic_height,
   bp_wr_irq_offs,
   bp_wr_irq_offs_init,
   bp_wr_offs_cnt_init,
   bp_r_base_ad,
   bp_r_base_ad_init,
   bp_r_offs_cnt,
   bp_r_offs_cnt_start,
   bp_gr_base_ad,
   bp_gr_base_ad_init,
   bp_gr_offs_cnt,
   bp_gr_offs_cnt_start,
   bp_gb_base_ad,
   bp_gb_base_ad_init,
   bp_gb_offs_cnt,
   bp_gb_offs_cnt_start,
   bp_b_base_ad,
   bp_b_base_ad_init,
   bp_b_offs_cnt,
   bp_b_offs_cnt_start,
   stat_bp_frame_end,
   stat_fill_bp_r,
   stat_wrap_bp_r,
   stat_wrap_bp_gr,
   stat_wrap_bp_gb,
   stat_wrap_bp_b,
   mi_bp_frame_end_int,
   mi_fill_bp_r_int,
   mi_wrap_bp_r_int,
   mi_wrap_bp_gr_int,
   mi_wrap_bp_gb_int,
   mi_wrap_bp_b_int,
   handshake_en,
   starage_format,
   data_format,
   slice_size,
   ack_count,
   slice_buf_size,
   mp_interrupt,
   handshake_mode_0,
   slice_cnt_int   ,
   sw_addr_mp_y    ,
   sw_addr_mp_cb   ,
   sw_addr_mp_cr   ,
   sw_interrupt    );
output  [31:0]          mp_y_pic_width_out;
output  [31:0]          mp_y_pic_height_out;
output  [31:0]          mp_y_pic_size_out;
output  [3:0]           mp_output_format_out;
output  [14:0]          mp_y_llength_out;
output  [28:0]          mp_slice_offset_y_out;
output  [28:0]          mp_slice_offset_c_out;
output                  mp_lsb_alignment_out;
output                  mp_little_endian_out;
output  [2:0]           mp_byte_swap_out;
output  [2:0]           sp_byte_swap_out;
output  [2:0]           dma_byte_swap_out;
output  [1:0]           sw_mi_fifo_depth_ctrl_out;
output  [1:0]           starage_format;
output  [1:0]           data_format;
output  [7:0]           slice_size;
output  [7:0]           slice_buf_size;
output  [7:0]           ack_count;
output                  handshake_en;
input                   mp_interrupt;
output                  handshake_mode_0;
output  [7:0]           slice_cnt_int   ;
input   [31:0]          sw_addr_mp_y    ;
input   [31:0]          sw_addr_mp_cb   ;
input   [31:0]          sw_addr_mp_cr   ;
input                   sw_interrupt    ;
reg                     handshake_mode_0;
reg     [7:0]           slice_cnt_int   ;
reg                     viv_s0;
reg                     viv_s1;
reg  [1:0]              starage_format;
reg  [1:0]              data_format;
reg  [7:0]              slice_size;
reg  [7:0]              slice_buf_size;
reg  [7:0]              ack_count;
reg                     handshake_en;
reg  [1:0]              sw_mi_fifo_depth_ctrl_out;
reg  [3:0]              mp_output_format_out;
reg  [14:0]             mp_y_llength_out;
reg  [28:0]             mp_slice_offset_y_out;
reg  [28:0]             mp_slice_offset_c_out;
reg                     mp_lsb_alignment_out;
reg                     mp_little_endian_out;
reg  [2:0]              mp_byte_swap_out;
reg  [2:0]              sp_byte_swap_out;
reg  [2:0]              dma_byte_swap_out;
reg  [31:0]             mp_y_pic_width_out;
reg  [31:0]             mp_y_pic_height_out;
reg  [31:0]             mp_y_pic_size_out;
   parameter c_mi_ctrl                  = 9'h00;
   parameter c_mi_init                  = 9'h04;
   parameter c_mi_mp_y_base_ad_init     = 9'h08;
   parameter c_mi_mp_y_size_init        = 9'h0C;
   parameter c_mi_mp_y_offs_cnt_init    = 9'h10;
   parameter c_mi_mp_y_offs_cnt_start   = 9'h14;
   parameter c_mi_mp_y_irq_offs_init    = 9'h18;
   parameter c_mi_mp_cb_base_ad_init    = 9'h1C;
   parameter c_mi_mp_cb_size_init       = 9'h20;
   parameter c_mi_mp_cb_offs_cnt_init   = 9'h24;
   parameter c_mi_mp_cb_offs_cnt_start  = 9'h28;
   parameter c_mi_mp_cr_base_ad_init    = 9'h2C;
   parameter c_mi_mp_cr_size_init       = 9'h30;
   parameter c_mi_mp_cr_offs_cnt_init   = 9'h34;
   parameter c_mi_mp_cr_offs_cnt_start  = 9'h38;
   parameter c_mi_sp_y_base_ad_init     = 9'h3C;
   parameter c_mi_sp_y_size_init        = 9'h40;
   parameter c_mi_sp_y_offs_cnt_init    = 9'h44;
   parameter c_mi_sp_y_offs_cnt_start   = 9'h48;
   parameter c_mi_sp_y_pic_width        = 9'h114;
   parameter c_mi_sp_y_llength          = 9'h4C;
   parameter c_mi_sp_y_pic_height       = 9'h118;
   parameter c_mi_sp_y_pic_size         = 9'h11C;
   parameter c_mi_sp_cb_base_ad_init    = 9'h50;
   parameter c_mi_sp_cb_size_init       = 9'h54;
   parameter c_mi_sp_cb_offs_cnt_init   = 9'h58;
   parameter c_mi_sp_cb_offs_cnt_start  = 9'h5C;
   parameter c_mi_sp_cr_base_ad_init    = 9'h60;
   parameter c_mi_sp_cr_size_init       = 9'h64;
   parameter c_mi_sp_cr_offs_cnt_init   = 9'h68;
   parameter c_mi_sp_cr_offs_cnt_start  = 9'h6C;
   parameter c_mi_byte_cnt              = 9'h70;
   parameter c_mi_ctrl_shd              = 9'h74;
   parameter c_mi_mp_y_base_ad_shd      = 9'h78;
   parameter c_mi_mp_y_size_shd         = 9'h7C;
   parameter c_mi_mp_y_offs_cnt_shd     = 9'h80;
   parameter c_mi_mp_y_irq_offs_shd     = 9'h84;
   parameter c_mi_mp_cb_base_ad_shd     = 9'h88;
   parameter c_mi_mp_cb_size_shd        = 9'h8C;
   parameter c_mi_mp_cb_offs_cnt_shd    = 9'h90;
   parameter c_mi_mp_cr_base_ad_shd     = 9'h94;
   parameter c_mi_mp_cr_size_shd        = 9'h98;
   parameter c_mi_mp_cr_offs_cnt_shd    = 9'h9C;
   parameter c_mi_sp_y_base_ad_shd      = 9'hA0;
   parameter c_mi_sp_y_size_shd         = 9'hA4;
   parameter c_mi_sp_y_offs_cnt_shd     = 9'hA8;
   parameter c_mi_sp_cb_base_ad_shd     = 9'hB0;
   parameter c_mi_sp_cb_size_shd        = 9'hB4;
   parameter c_mi_sp_cb_offs_cnt_shd    = 9'hB8;
   parameter c_mi_sp_cr_base_ad_shd     = 9'hBC;
   parameter c_mi_sp_cr_size_shd        = 9'hC0;
   parameter c_mi_sp_cr_offs_cnt_shd    = 9'hC4;
   parameter c_mi_dma_ctrl              = 9'h120;
   parameter c_mi_dma_start             = 9'h124;
   parameter c_mi_dma_status            = 9'h128;
   parameter c_mi_dma_y_pic_start_ad    = 9'hC8;
   parameter c_mi_dma_y_pic_width       = 9'hCC;
   parameter c_mi_dma_y_llength         = 9'hD0;
   parameter c_mi_dma_y_pic_size        = 9'hD4;
   parameter c_mi_dma_cb_pic_start_ad   = 9'hD8;
   parameter c_mi_dma_cr_pic_start_ad   = 9'hE8;
   parameter c_mi_imsc                  = 9'hF8;
   parameter c_mi_ris                   = 9'hFC;
   parameter c_mi_mis                   = 9'h100;
   parameter c_mi_icr                   = 9'h104;
   parameter c_mi_isr                   = 9'h108;
   parameter c_mi_status                = 9'h10C;
   parameter c_mi_status_clr            = 9'h110;
   parameter c_mi_pixel_cnt             = 9'h12C;
   parameter c_mi_mp_y_base_ad_init2    = 9'h130;
   parameter c_mi_mp_cb_base_ad_init2   = 9'h134;
   parameter c_mi_mp_cr_base_ad_init2   = 9'h138;
   parameter c_mi_sp_y_base_ad_init2    = 9'h13C;
   parameter c_mi_sp_cb_base_ad_init2   = 9'h140;
   parameter c_mi_sp_cr_base_ad_init2   = 9'h144;
   parameter c_mi_xtd_format_ctrl       = 9'h148;
   parameter c_mi_mp_handshake          = 9'h14c;
   parameter c_mi_mp_y_llength          = 9'h150;
   parameter c_mi_mp_y_slice_offset     = 9'h154;
   parameter c_mi_mp_c_slice_offset     = 9'h158;
   parameter c_mi_mp_out_align_format   = 9'h15c;
   parameter c_mi_mp_output_fifo_size   = 9'h160;
   parameter c_mi_mp_y_pic_width        = 9'h164;
   parameter c_mi_mp_y_pic_height       = 9'h168;
   parameter c_mi_mp_y_pic_size         = 9'h16c;
   parameter c_mi_mp_sw_handsk          = 9'h170;
   parameter c_mi_mp_sw_add_y           = 9'h174;
   parameter c_mi_mp_sw_add_cb          = 9'h178;
   parameter c_mi_mp_sw_add_cr          = 9'h17c;
   parameter C_MI_BP_BASE = 9'h180;
   parameter c_mi_bp_ctrl = C_MI_BP_BASE +0*4;
   parameter c_mi_bp_r_base_ad_shd = C_MI_BP_BASE +1*4;
   parameter c_mi_bp_gr_base_ad_shd = C_MI_BP_BASE +2*4;
   parameter c_mi_bp_gb_base_ad_shd = C_MI_BP_BASE +3*4;
   parameter c_mi_bp_b_base_ad_shd = C_MI_BP_BASE +4*4;
   parameter c_mi_bp_r_offs_cnt_shd = C_MI_BP_BASE +5*4;
   parameter c_mi_bp_gr_offs_cnt_shd = C_MI_BP_BASE +6*4;
   parameter c_mi_bp_gb_offs_cnt_shd = C_MI_BP_BASE +7*4;
   parameter c_mi_bp_b_offs_cnt_shd = C_MI_BP_BASE +8*4;
   parameter c_mi_bp_wr_offs_cnt_init = C_MI_BP_BASE +9*4;
   parameter c_mi_bp_wr_irq_offs_shd = C_MI_BP_BASE +10*4;
   parameter c_mi_bp_wr_irq_offs_init = C_MI_BP_BASE +11*4;
   parameter c_mi_bp_wr_size_shd = C_MI_BP_BASE +12*4;
   parameter c_mi_bp_wr_size_init = C_MI_BP_BASE +13*4;
   parameter c_mi_bp_wr_llength = C_MI_BP_BASE +14*4;
   parameter c_mi_bp_pic_width = C_MI_BP_BASE +15*4;
   parameter c_mi_bp_pic_height = C_MI_BP_BASE +16*4;
   parameter c_mi_bp_pic_size = C_MI_BP_BASE +17*4;
   parameter c_mi_bp_r_offs_cnt_start = C_MI_BP_BASE +18*4;
   parameter c_mi_bp_gr_offs_cnt_start = C_MI_BP_BASE +19*4;
   parameter c_mi_bp_gb_offs_cnt_start = C_MI_BP_BASE +20*4;
   parameter c_mi_bp_b_offs_cnt_start = C_MI_BP_BASE +21*4;
   parameter c_mi_bp_r_base_ad_init = C_MI_BP_BASE +22*4;
   parameter c_mi_bp_gr_base_ad_init = C_MI_BP_BASE +23*4;
   parameter c_mi_bp_gb_base_ad_init = C_MI_BP_BASE +24*4;
   parameter c_mi_bp_b_base_ad_init = C_MI_BP_BASE +25*4;
   parameter c_mi_mp_dma_y_raw_fmt = C_MI_BP_BASE +26*4;
   parameter c_mi_mp_dma_y_raw_lval = C_MI_BP_BASE +27*4;
   parameter c_bp_int_cnt  = 6;
`include "vsisp_marvin_mi.vh"
   input         clk;
   input         reset_n;
   input         jpeg_clk;
   input         reset_jpeg_clk_n;
   input         m_hclk;
   input         reset_m_hclk_n;
   input         m_hclk_cfg;
   input         reset_m_hclk_cfg_n;
   input         cfg_mi_val;
   input [8:2]   cfg_mi_addr;
   input         cfg_mi_rd;
   input [31:0]  cfg_mi_wdata;
   output [31:0] cfg_mi_rdata;
   output        cfg_mi_ack;
   reg [31:0]    cfg_mi_rdata;
   reg           cfg_mi_ack;
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
   output        soft_upd_in;
   output        mp_enable_in;
   output        sp_enable_in;
   output        jpeg_enable_in;
   output [1:0]  dp_enable_in;
   output        raw_enable_in;
   output        h_flip_in;
   output        rot_in;
   output [1:0]  mp_write_format_in;
   output [1:0]  sp_write_format_in;
   output [1:0]  sp_input_format_in;
   output        cfg_y_full;
   output        cfg_crcb_full;
   output        cfg_422noncosited;
   output [2:0]  sp_output_format_in;
   output [14:0] sp_y_pic_width_in;
   output [14:0] sp_y_pic_height_in;
   input                 stat_mp_enable_in;
   input                 stat_sp_enable_in;
   input                 stat_jpeg_enable_in;
   input [1:0]           stat_dp_enable_in;
   input                 stat_raw_enable_in;
   input                 stat_byte_cnt_raw_val;
   input [c_bufsize-1:0] stat_byte_cnt_raw;
   output                stat_byte_cnt_raw_ack;
   input                 stat_byte_cnt_jpeg_val;
   input [c_bufsize-1:0] stat_byte_cnt_jpeg;
   output                stat_byte_cnt_jpeg_ack;
   input                 stat_byte_cnt_dp_val;
   input [c_bufsize-1:0] stat_byte_cnt_dp;
   output                stat_byte_cnt_dp_ack;
   reg                   soft_upd_in;
   reg [14:0]            sp_y_pic_width_in;
   reg [14:0]            sp_y_pic_height_in;
   output        soft_upd_out;
   output        skip;
   output        mp_enable_out;
   output        sp_enable_out;
   output        jpeg_enable_out;
   output        raw_enable_out;
   output [1:0]  dp_enable_out;
   output        h_flip_out;
   output        v_flip_out;
   output        rot_out;
   output [1:0]  mp_write_format_out;
   output [1:0]  sp_write_format_out;
   output [2:0]  sp_output_format_out;
   output        byte_swap;
   output        init_base_en;
   output        init_offset_en;
   output        mp_pingpong_en;
   output        sp_pingpong_en;
   output        mp_auto_update;
   output        sp_auto_update;
   output [1:0]  burst_len_lum;
   output [1:0]  burst_len_chrom;
   reg           skip;
   reg           byte_swap;
   reg           viv_s2;
   reg           viv_s3;
   reg           viv_s4;
   reg           init_base_en;
   reg           init_offset_en;
   reg           mp_pingpong_en;
   reg           sp_pingpong_en;
   reg           mp_auto_update;
   reg           sp_auto_update;
   reg [1:0]     burst_len_lum;
   reg [1:0]     burst_len_chrom;
   input         stat_mp_enable_out;
   input         stat_sp_enable_out;
   input         stat_jpeg_enable_out;
   input         stat_raw_enable_out;
   input [1:0]   stat_dp_enable_out;
   input [31:3]           mp_y_base_ad;
   input [c_bufsize:3]    mp_y_size;
   input [c_bufsize:3]    mp_y_offs_cnt;
   output [31:3]          mp_y_base_ad_init;
   output [31:3]          mp_y_base_ad_init2;
   output [c_bufsize:3]   mp_y_size_init;
   output [c_bufsize:3]   mp_y_offs_cnt_init;
   input [c_bufsize:3]    mp_y_offs_cnt_start;
   output [c_bufsize:3]   mp_y_irq_offs_init;
   input [c_bufsize:3]    mp_y_irq_offs;
   reg [31:3]             mp_y_base_ad_init;
   reg [31:3]             mp_y_base_ad_init2;
   reg [c_bufsize:3]      mp_y_size_init;
   reg [c_bufsize:3]      mp_y_offs_cnt_init;
   reg [c_bufsize:3]      mp_y_irq_offs_init;
   input [31:3]           mp_cb_base_ad;
   input [c_bufsize-1:3]  mp_cb_size;
   input [c_bufsize-1:3]  mp_cb_offs_cnt;
   output [31:3]          mp_cb_base_ad_init;
   output [31:3]          mp_cb_base_ad_init2;
   output [c_bufsize-1:3] mp_cb_size_init;
   output [c_bufsize-1:3] mp_cb_offs_cnt_init;
   input [c_bufsize-1:3]  mp_cb_offs_cnt_start;
   reg [31:3]             mp_cb_base_ad_init;
   reg [31:3]             mp_cb_base_ad_init2;
   reg [c_bufsize-1:3]    mp_cb_size_init;
   reg [c_bufsize-1:3]    mp_cb_offs_cnt_init;
   input [31:3]           mp_cr_base_ad;
   input [c_bufsize-1:3]  mp_cr_size;
   input [c_bufsize-1:3]  mp_cr_offs_cnt;
   output [31:3]          mp_cr_base_ad_init;
   output [31:3]          mp_cr_base_ad_init2;
   output [c_bufsize-1:3] mp_cr_size_init;
   output [c_bufsize-1:3] mp_cr_offs_cnt_init;
   input [c_bufsize-1:3]  mp_cr_offs_cnt_start;
   reg [31:3]             mp_cr_base_ad_init;
   reg [31:3]             mp_cr_base_ad_init2;
   reg [c_bufsize-1:3]    mp_cr_size_init;
   reg [c_bufsize-1:3]    mp_cr_offs_cnt_init;
   input [31:3]           sp_y_base_ad;
   input [c_bufsize:3]    sp_y_size;
   input [c_bufsize:3]    sp_y_offs_cnt;
   output [31:3]          sp_y_base_ad_init;
   output [31:3]          sp_y_base_ad_init2;
   output [c_bufsize:3]   sp_y_size_init;
   output [c_bufsize:3]   sp_y_offs_cnt_init;
   input [c_bufsize:3]    sp_y_offs_cnt_start;
   output [14:0]          sp_y_pic_width;
   output [14:0]          sp_y_llength;
   output [c_bufsize:0]   sp_y_pic_size;
   reg [31:3]             sp_y_base_ad_init;
   reg [31:3]             sp_y_base_ad_init2;
   reg [c_bufsize:3]      sp_y_size_init;
   reg [c_bufsize:3]      sp_y_offs_cnt_init;
   reg [14:0]             sp_y_pic_width;
   reg [14:0]             sp_y_llength;
   reg [c_bufsize:0]      sp_y_pic_size;
   input [31:3]           sp_cb_base_ad;
   input [c_bufsize-1:3]  sp_cb_size;
   input [c_bufsize-1:3]  sp_cb_offs_cnt;
   output [31:3]          sp_cb_base_ad_init;
   output [31:3]          sp_cb_base_ad_init2;
   output [c_bufsize-1:3] sp_cb_size_init;
   output [c_bufsize-1:3] sp_cb_offs_cnt_init;
   input [c_bufsize-1:3]  sp_cb_offs_cnt_start;
   reg [31:3]             sp_cb_base_ad_init;
   reg [31:3]             sp_cb_base_ad_init2;
   reg [c_bufsize-1:3]    sp_cb_size_init;
   reg [c_bufsize-1:3]    sp_cb_offs_cnt_init;
   input [31:3]           sp_cr_base_ad;
   input [c_bufsize-1:3]  sp_cr_size;
   input [c_bufsize-1:3]  sp_cr_offs_cnt;
   output [31:3]          sp_cr_base_ad_init;
   output [31:3]          sp_cr_base_ad_init2;
   output [c_bufsize-1:3] sp_cr_size_init;
   output [c_bufsize-1:3] sp_cr_offs_cnt_init;
   input [c_bufsize-1:3]  sp_cr_offs_cnt_start;
   reg [31:3]             sp_cr_base_ad_init;
   reg [31:3]             sp_cr_base_ad_init2;
   reg [c_bufsize-1:3]    sp_cr_size_init;
   reg [c_bufsize-1:3]    sp_cr_offs_cnt_init;
   output [1:0]           dma_read_format_in;
   output [1:0]           dma_rgb_format_in;
   output                 dma_start;
   input                  stat_dma_active;
   output [1:0]           dma_burst_len_lum;
   output [1:0]           dma_burst_len_chrom;
   output [1:0]           dma_read_format_out;
   output [1:0]           dma_rgb_format_out;
   output [1:0]           dma_inout_format;
   output                 dma_byte_swap;
   output                 dma_continuous_en;
   output [3:0]           dma_bayer_format;
   output                 dma_frame_end_disable;
   output [31:0]          dma_y_pic_start_ad;
   output [14:0]          dma_y_pic_width;
   output [14:0]          dma_y_llength;
   output [c_bufsize-1:0] dma_y_pic_size;
   output [31:0]          dma_cb_pic_start_ad;
   output [31:0]          dma_cr_pic_start_ad;
   output [14:0]  dma_y_pic_width_in;
   output [14:0]  dma_y_llength_in;
   output [c_bufsize-1:0]  dma_y_pic_size_in;
   output [5:0]   dma_y_raw_fmt_in;
   output [14:0]   dma_y_raw_lval;
   output [14:0]   dma_y_raw_lval_in;
   reg                    dma_start;
   reg [1:0]              dma_burst_len_lum;
   reg [1:0]              dma_burst_len_chrom;
   reg [1:0]              dma_inout_format;
   reg                    dma_byte_swap;
   reg                    dma_continuous_en;
   reg                    dma_frame_end_disable;
   reg [31:0]             dma_y_pic_start_ad;
   reg [14:0]             dma_y_pic_width;
   reg [14:0]             dma_y_llength;
   reg [c_bufsize-1:0]    dma_y_pic_size;
   reg [31:0]             dma_cb_pic_start_ad;
   reg [31:0]             dma_cr_pic_start_ad;
   reg [5:0]              viv_s5;
   reg [14:0]             dma_y_raw_lval;
   wire[14:0]             dma_y_raw_lval_in;
   input         stat_mp_y_full;
   input         stat_mp_cb_full;
   input         stat_mp_cr_full;
   input         stat_sp_y_full;
   input         stat_sp_cb_full;
   input         stat_sp_cr_full;
   input         stat_bp_in_full;
   input         stat_bp_ecl_full;
   input         stat_bp_ocl_full;
   input         stat_mp_frame_end;
   input         stat_sp_frame_end;
   input         stat_mblk_line;
   input         stat_fill_mp_y;
   input         stat_wrap_mp_y;
   input         stat_wrap_mp_cb;
   input         stat_wrap_mp_cr;
   input         stat_wrap_sp_y;
   input         stat_wrap_sp_cb;
   input         stat_wrap_sp_cr;
   input         stat_dma_ready;
   input          stat_bp_frame_end;
   input          stat_fill_bp_r;
   input          stat_wrap_bp_r;
   input          stat_wrap_bp_gr;
   input          stat_wrap_bp_gb;
   input          stat_wrap_bp_b;
   output         mi_bp_frame_end_int;
   output         mi_fill_bp_r_int;
   output         mi_wrap_bp_r_int;
   output         mi_wrap_bp_gr_int;
   output         mi_wrap_bp_gb_int;
   output         mi_wrap_bp_b_int;
   output        last_pixel_sig_en; 
   reg           last_pixel_sig_en;
   output reg    nv21_main;
   output reg    nv21_self;
   output reg    nv21_dma_read;
   reg [3:0]           viv_s6;
   reg                 viv_s7;
   reg                 viv_s8;
   reg                 viv_s9;
   reg [1:0]           viv_s10;
   reg [1:0]           viv_s11;
   reg [1:0]           viv_s12;
   reg [2:0]           viv_s13;
   reg                 viv_s14;
   reg [14:0]          viv_s15;
   reg [c_bufsize-1:0] viv_s16;
   reg [c_bufsize-1:0] viv_s17;
   reg [1:0]           viv_s18;
   reg [1:0]           viv_s19;
   reg [3:0]           dma_bayer_format;
   reg [9:0]  viv_s20;
   reg        viv_s21;
   reg        viv_s22;
   reg        viv_s23;
   reg        viv_s24;
   reg        viv_s25;
   reg        viv_s26;
   reg        viv_s27;
   reg        viv_s28;
   reg        viv_s29;
   reg [13+c_bp_int_cnt:0] viv_s30;
   reg [13+c_bp_int_cnt:0] viv_s31;
   reg [13+c_bp_int_cnt:0] viv_s32;
   reg [ 5+3:0] viv_s33;
   reg [ 5+3:0] viv_s34;
   reg [ 5+3:0] viv_s35;
   reg        viv_s36;
   reg        viv_s37;
   reg        viv_s38;
   reg        viv_s39;
   reg        viv_s40;
   reg        viv_s41;
   reg [1:0]  viv_s42;
   reg [1:0]  viv_s43;
   reg        viv_s44;
   reg        viv_s45;
   reg        viv_s46;
   reg        viv_s47;
   reg        viv_s48;
   reg        viv_s49;
   reg        viv_s50;
   reg        viv_s51;
   reg        viv_s52;
   reg [1:0]  viv_s53;
   reg [1:0]  viv_s54;
   reg [1:0]  viv_s55;
   reg [1:0]  viv_s56;
   reg [1:0]  viv_s57;
   reg [1:0]  viv_s58;
   reg [2:0]  viv_s59;
   reg [2:0]  viv_s60;
   reg        viv_s61;
   reg        viv_s62;
   reg        viv_s63;
   reg        viv_s64;
   reg        viv_s65;
   reg        viv_s66;
   reg        viv_s67;
   reg        viv_s68;
   reg        viv_s69;
   reg        viv_s70;
   reg        viv_s71;
   wire       viv_s72;
   reg        viv_s73;
   reg        viv_s74;
   reg        viv_s75;
   reg        viv_s76;
   reg        viv_s77;
   wire       viv_s78;
   reg        viv_s79;
   reg        viv_s80;
   reg        viv_s81;
   reg        viv_s82;
   reg        viv_s83;
   reg        viv_s84;
   reg        viv_s85;
   reg        viv_s86;
   reg        viv_s87;
   reg        viv_s88;
   reg        viv_s89;
   reg        viv_s90;
   reg        viv_s91;
   reg        viv_s92;
   reg        viv_s93;
   reg        viv_s94;
   reg        viv_s95;
   reg [1:0]  viv_s96;
   reg [1:0]  viv_s97;
   reg        viv_s98;
   reg        viv_s99;
   reg [1:0]  viv_s100;
   reg [1:0]  viv_s101;
   reg [1:0]  viv_s102;
   reg [1:0]  viv_s103;
   reg        viv_s104;
   reg        viv_s105;
   reg        viv_s106;
   reg        viv_s107;
   reg        viv_s108;
   reg        viv_s109;
   reg        viv_s110;
   reg        viv_s111;
   reg        viv_s112;
   reg        viv_s113;
   reg        viv_s114;
   reg        viv_s115;
   reg        viv_s116;
   reg        viv_s117;
   reg        viv_s118;
   reg        viv_s119;
   reg        viv_s120;
   reg        viv_s121;
   reg        viv_s122;
   reg        viv_s123;
   reg        viv_s124;
   reg        viv_s125;
   reg [1:0]  viv_s126;
   reg [3:0]  viv_s127;
   reg [3:0]  viv_s128;
   wire [5:0] viv_s129;
   wire [5:0] viv_s130;
 output       bp_auto_update;
 output [1:0] bp_wr_burst_len;
 output [2:0] bp_wr_byte_swap;
 output       bp_wr_path_enable_in;
 output       bp_wr_path_enable_out;
 output [3:0] bp_wr_raw_bit_in;
 output [1:0] bp_wr_aligned_in;
 output [1:0] bp_wr_write_format_in;
 output [1:0] bp_wr_write_format_out;
 input   [c_mi_data_addr:3]         bp_wr_size;
 output  [c_mi_data_addr:3]         bp_wr_size_init;
 output  [14:0]                     bp_wr_llength;
 output  [14:0]                     bp_wr_pic_width;
 output  [14:0]                     bp_wr_pic_height;
 output  [c_mi_data_addr:3]         bp_wr_offs_cnt_init;
 input   [c_mi_data_addr:3]         bp_wr_irq_offs;
 output  [c_mi_data_addr:3]         bp_wr_irq_offs_init;
 input  [c_mi_data_addr+3:3]        bp_r_base_ad;
 output  [c_mi_data_addr+3:3]       bp_r_base_ad_init;
 input   [c_mi_data_addr:3]         bp_r_offs_cnt;
 input   [c_mi_data_addr:3]         bp_r_offs_cnt_start;
 input   [c_mi_data_addr+3:3]       bp_gr_base_ad;
 output  [c_mi_data_addr+3:3]       bp_gr_base_ad_init;
 input   [c_mi_data_addr:3]         bp_gr_offs_cnt;
 input   [c_mi_data_addr:3]         bp_gr_offs_cnt_start;
 input   [c_mi_data_addr+3:3]       bp_gb_base_ad;
 output  [c_mi_data_addr+3:3]       bp_gb_base_ad_init;
 input   [c_mi_data_addr:3]         bp_gb_offs_cnt;
 input   [c_mi_data_addr:3]         bp_gb_offs_cnt_start;
 input   [c_mi_data_addr+3:3]       bp_b_base_ad;
 output  [c_mi_data_addr+3:3]       bp_b_base_ad_init;
 input   [c_mi_data_addr:3]         bp_b_offs_cnt;
 input   [c_mi_data_addr:3]         bp_b_offs_cnt_start;
 reg viv_s131;
 reg bp_auto_update;
 reg [3:0] viv_s132;  
 reg [1:0] viv_s133;  
 reg [1:0] viv_s134;    
 reg [1:0] bp_wr_burst_len;
 reg [2:0] bp_wr_byte_swap;
 wire [c_mi_data_addr:3]         bp_wr_size;
 reg  [c_mi_data_addr:3]         bp_wr_size_init;
 reg  [14:0]                     bp_wr_llength;
 reg  [14:0]                     bp_wr_pic_width;
 reg  [14:0]                     bp_wr_pic_height;
 reg  [c_mi_data_addr:0]         viv_s135;
 reg  [c_mi_data_addr:3]         bp_wr_offs_cnt_init;
 wire [c_mi_data_addr:3]         bp_wr_irq_offs;
 reg  [c_mi_data_addr:3]         bp_wr_irq_offs_init;
 wire [c_mi_data_addr+3:3]       bp_r_base_ad;
 reg  [c_mi_data_addr+3:3]       bp_r_base_ad_init;
 wire [c_mi_data_addr:3]         bp_r_offs_cnt;
 wire [c_mi_data_addr:3]         bp_r_offs_cnt_start;
 wire [c_mi_data_addr+3:3]       bp_gr_base_ad;
 reg  [c_mi_data_addr+3:3]       bp_gr_base_ad_init;
 wire [c_mi_data_addr:3]         bp_gr_offs_cnt;
 wire [c_mi_data_addr:3]         bp_gr_offs_cnt_start;
 wire [c_mi_data_addr+3:3]       bp_gb_base_ad;
 reg  [c_mi_data_addr+3:3]       bp_gb_base_ad_init;
 wire [c_mi_data_addr:3]         bp_gb_offs_cnt;
 wire [c_mi_data_addr:3]         bp_gb_offs_cnt_start;
 wire [c_mi_data_addr+3:3]       bp_b_base_ad;
 reg  [c_mi_data_addr+3:3]       bp_b_base_ad_init;
 wire [c_mi_data_addr:3]         bp_b_offs_cnt;
 wire [c_mi_data_addr:3]         bp_b_offs_cnt_start;
   always @(posedge m_hclk_cfg or negedge reset_m_hclk_cfg_n) begin
      if (~reset_m_hclk_cfg_n) begin
         cfg_mi_rdata          <= {32{1'b0}};
         cfg_mi_ack            <= 1'b0;
         viv_s6           <= 4'b0;
         viv_s7                <= 1'b0;
         viv_s8                <= 1'b0;
         viv_s9                   <= 1'b0;
         byte_swap             <= 1'b0;
         viv_s2       <= 1'b0;
         viv_s3    <= 1'b0;
         viv_s4    <= 1'b0;
         burst_len_lum         <= 2'b00;
         burst_len_chrom       <= 2'b00;
         init_base_en          <= 1'b0;
         init_offset_en        <= 1'b0;
         mp_pingpong_en        <= 1'b0;
         sp_pingpong_en        <= 1'b0;
         mp_auto_update        <= 1'b0;
         sp_auto_update        <= 1'b0;
         viv_s10       <= 2'b00;
         viv_s11       <= 2'b00;
         viv_s12       <= 2'b00;
         viv_s13      <= 3'b000;
         viv_s14           <= 1'b0;
         skip                  <= 1'b0;
         mp_y_base_ad_init     <= {29{1'b0}};
         mp_y_size_init        <= {c_bufsize-2{1'b0}};
         mp_y_offs_cnt_init    <= {c_bufsize-2{1'b0}};
         mp_y_irq_offs_init    <= {c_bufsize-2{1'b0}};
         mp_cb_base_ad_init    <= {29{1'b0}};
         mp_cb_size_init       <= {c_bufsize-3{1'b0}};
         mp_cb_offs_cnt_init   <= {c_bufsize-3{1'b0}};
         mp_cr_base_ad_init    <= {29{1'b0}};
         mp_cr_size_init       <= {c_bufsize-3{1'b0}};
         mp_cr_offs_cnt_init   <= {c_bufsize-3{1'b0}};
         sp_y_base_ad_init     <= {29{1'b0}};
         sp_y_size_init        <= {c_bufsize-2{1'b0}};
         sp_y_offs_cnt_init    <= {c_bufsize-2{1'b0}};
         viv_s69    <= 1'b0;
         sp_y_pic_width        <= {15{1'b0}};
         sp_y_llength          <= {15{1'b0}};
         viv_s75   <= 1'b0;
         viv_s15       <= {15{1'b0}};
         sp_y_pic_size         <= {c_bufsize+1{1'b0}};
         sp_cb_base_ad_init    <= {29{1'b0}};
         sp_cb_size_init       <= {c_bufsize-3{1'b0}};
         sp_cb_offs_cnt_init   <= {c_bufsize-3{1'b0}};
         sp_cr_base_ad_init    <= {29{1'b0}};
         sp_cr_size_init       <= {c_bufsize-3{1'b0}};
         sp_cr_offs_cnt_init   <= {c_bufsize-3{1'b0}};
         dma_burst_len_lum     <= 2'b00;
         dma_burst_len_chrom   <= 2'b00;
         viv_s18       <= 2'b00;
         viv_s19        <= 2'b00;
         dma_bayer_format        <= 4'b00;
         dma_inout_format      <= 2'b00;
         dma_byte_swap         <= 1'b0;
         dma_continuous_en     <= 1'b0;
         dma_frame_end_disable <= 1'b0;
         dma_start             <= 1'b0;
         dma_y_pic_start_ad    <= {32{1'b0}};
         dma_y_pic_width       <= {15{1'b0}};
         dma_y_llength         <= {15{1'b0}};
         dma_y_pic_size        <= {c_bufsize{1'b0}};
         dma_cb_pic_start_ad   <= {32{1'b0}};
         dma_cr_pic_start_ad   <= {32{1'b0}};
         viv_s5         <= {6{1'b0}};
         dma_y_raw_lval        <= {15{1'b0}};
         viv_s20                <= {10{1'b0}};
         viv_s21             <= {1{1'b0}};
         viv_s22             <= {1{1'b0}};
         viv_s23             <= {1{1'b0}};
         viv_s24             <= {1{1'b0}};
         viv_s25             <= {1{1'b0}};
         viv_s26             <= {1{1'b0}};
         viv_s27             <= {1{1'b0}};
         viv_s28             <= {1{1'b0}};
         viv_s29             <= {1{1'b0}};
         last_pixel_sig_en     <= 1'b0;
         mp_y_base_ad_init2    <= {29{1'b0}};
         mp_cb_base_ad_init2   <= {29{1'b0}};
         mp_cr_base_ad_init2   <= {29{1'b0}};
         sp_y_base_ad_init2    <= {29{1'b0}};
         sp_cb_base_ad_init2   <= {29{1'b0}};
         sp_cr_base_ad_init2   <= {29{1'b0}};
         nv21_main             <= 1'b0;
         nv21_self             <= 1'b0;
         nv21_dma_read         <= 1'b0;
         mp_y_pic_width_out    <= 32'h0;
         mp_y_pic_height_out   <= 32'h0;
         mp_y_pic_size_out     <= 32'h0;
         sw_mi_fifo_depth_ctrl_out <= 2'h0;
         mp_output_format_out  <= 4'h0;
         mp_y_llength_out      <= 15'h0;
         mp_slice_offset_y_out <= 29'h0;
         mp_slice_offset_c_out <= 29'h0;
         mp_lsb_alignment_out  <= 1'h0;
	 mp_little_endian_out  <= 1'b0;
         mp_byte_swap_out      <= 3'h0;
         sp_byte_swap_out      <= 3'h0;
         dma_byte_swap_out     <= 3'h0;
         handshake_en        <= 1'b0; 
         starage_format[1:0] <= 2'b0;
         data_format[1:0]    <= 2'b0;
         slice_size[7:0]     <= 8'b0;
         slice_buf_size[7:0] <= 8'b0;
         ack_count[7:0]      <= 8'd16;
         viv_s1            <= 1'b0;
         viv_s0 <= 1'b0;
         handshake_mode_0    <= 1'b0;
         slice_cnt_int[7:0]  <= 8'h0;
         viv_s131   <= 1'b0;
         bp_auto_update      <= 1'b0;
         viv_s132       <= 4'b0;
         viv_s133       <= 2'b0;
         viv_s134  <= 2'b0;
         bp_wr_burst_len     <= 2'b0;
         bp_wr_byte_swap     <= 3'b0;
         bp_wr_size_init     <={c_mi_data_addr-3+1{1'b0}};
         bp_wr_llength       <={15{1'b0}};
         bp_wr_pic_width     <={15{1'b0}};
         bp_wr_pic_height    <={15{1'b0}};
         viv_s135      <={c_mi_data_addr+1{1'b0}};
         bp_wr_offs_cnt_init <={c_mi_data_addr-3+1{1'b0}};
         bp_wr_irq_offs_init <={c_mi_data_addr-3+1{1'b0}};
         bp_r_base_ad_init   <={c_mi_data_addr+3-3+1{1'b0}};
         bp_gr_base_ad_init  <={c_mi_data_addr+3-3+1{1'b0}};
         bp_gb_base_ad_init  <={c_mi_data_addr+3-3+1{1'b0}};
         bp_b_base_ad_init   <={c_mi_data_addr+3-3+1{1'b0}};
      end
      else begin
         cfg_mi_rdata          <= {32{1'b0}};
         cfg_mi_ack            <= 1'b0;
         viv_s14           <= 1'b0;
         skip                  <= 1'b0;
         dma_start             <= 1'b0;
         if (cfg_mi_val & ~cfg_mi_ack) begin
            cfg_mi_ack         <= 1'b1;
            case ({cfg_mi_addr, 2'b00})
              c_mi_ctrl: begin
                 if (~cfg_mi_rd) begin  
                    viv_s6           <= cfg_mi_wdata[3:0];
                    viv_s7                <= cfg_mi_wdata[4];
                    viv_s8                <= cfg_mi_wdata[5];
                    viv_s9                   <= cfg_mi_wdata[6];
                    byte_swap             <= cfg_mi_wdata[7];
                    viv_s2       <= cfg_mi_wdata[8];
                    viv_s3    <= cfg_mi_wdata[9];
                    viv_s4    <= cfg_mi_wdata[10];
                    mp_pingpong_en        <= cfg_mi_wdata[11];
                    sp_pingpong_en        <= cfg_mi_wdata[12];
                    mp_auto_update        <= cfg_mi_wdata[13];
                    sp_auto_update        <= cfg_mi_wdata[14];
                    last_pixel_sig_en     <= cfg_mi_wdata[15];
                    burst_len_lum         <= cfg_mi_wdata[17:16];
                    burst_len_chrom       <= cfg_mi_wdata[19:18];
                    init_base_en          <= cfg_mi_wdata[20];
                    init_offset_en        <= cfg_mi_wdata[21];
                    viv_s10       <= cfg_mi_wdata[23:22];
                    viv_s11       <= cfg_mi_wdata[25:24];
                    viv_s12       <= cfg_mi_wdata[27:26];
                    viv_s13      <= cfg_mi_wdata[30:28];
                 end
                 else begin  
                    cfg_mi_rdata[3:0]     <= viv_s6;
                    cfg_mi_rdata[4]       <= viv_s7;
                    cfg_mi_rdata[5]       <= viv_s8;
                    cfg_mi_rdata[6]       <= viv_s9;
                    cfg_mi_rdata[7]       <= byte_swap;
                    cfg_mi_rdata[8]       <= viv_s2;
                    cfg_mi_rdata[9]       <= viv_s3;
                    cfg_mi_rdata[10]      <= viv_s4;
                    cfg_mi_rdata[11]      <= mp_pingpong_en;
                    cfg_mi_rdata[12]      <= sp_pingpong_en;
                    cfg_mi_rdata[13]      <= mp_auto_update;
                    cfg_mi_rdata[14]      <= sp_auto_update;
                    cfg_mi_rdata[15]      <= last_pixel_sig_en;
                    cfg_mi_rdata[17:16]   <= burst_len_lum;
                    cfg_mi_rdata[19:18]   <= burst_len_chrom;
                    cfg_mi_rdata[20]      <= init_base_en;
                    cfg_mi_rdata[21]      <= init_offset_en;
                    cfg_mi_rdata[23:22]   <= viv_s10;
                    cfg_mi_rdata[25:24]   <= viv_s11;
                    cfg_mi_rdata[27:26]   <= viv_s12;
                    cfg_mi_rdata[30:28]   <= viv_s13;
                 end
              end
              c_mi_init: begin
                 if (~cfg_mi_rd) begin  
                    skip                  <= cfg_mi_wdata[2];
                    viv_s14           <= cfg_mi_wdata[4];
                    mp_output_format_out[3:0]  <= cfg_mi_wdata[8:5];
                 end
                 else begin
                     cfg_mi_rdata[8:5] <= mp_output_format_out[3:0];
                 end
              end
              c_mi_mp_y_base_ad_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_y_base_ad_init     <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= mp_y_base_ad_init;
                 end
              end
              c_mi_mp_y_size_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_y_size_init        <= cfg_mi_wdata[c_bufsize:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize:3]    <= mp_y_size_init;
                 end
              end
              c_mi_mp_y_offs_cnt_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_y_offs_cnt_init    <= cfg_mi_wdata[c_bufsize:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize:3]    <= mp_y_offs_cnt_init;
                 end
              end
              c_mi_mp_y_offs_cnt_start: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize:3]    <= mp_y_offs_cnt_start;
                 end
              end
              c_mi_mp_y_irq_offs_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_y_irq_offs_init    <= cfg_mi_wdata[c_bufsize:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize:3]    <= mp_y_irq_offs_init;
                 end
              end
              c_mi_mp_cb_base_ad_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_cb_base_ad_init    <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= mp_cb_base_ad_init;
                 end
              end
              c_mi_mp_cb_size_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_cb_size_init       <= cfg_mi_wdata[c_bufsize-1:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cb_size_init;
                 end
              end
              c_mi_mp_cb_offs_cnt_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_cb_offs_cnt_init   <= cfg_mi_wdata[c_bufsize-1:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cb_offs_cnt_init;
                 end
              end
              c_mi_mp_cb_offs_cnt_start: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cb_offs_cnt_start;
                 end
              end
              c_mi_mp_cr_base_ad_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_cr_base_ad_init    <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= mp_cr_base_ad_init;
                 end
              end
              c_mi_mp_cr_size_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_cr_size_init <= cfg_mi_wdata[c_bufsize-1:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cr_size_init;
                 end
              end
              c_mi_mp_cr_offs_cnt_init: begin
                 if (~cfg_mi_rd) begin  
                    mp_cr_offs_cnt_init   <= cfg_mi_wdata[c_bufsize-1:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cr_offs_cnt_init;
                 end
              end
              c_mi_mp_cr_offs_cnt_start: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cr_offs_cnt_start;
                 end
              end
              c_mi_sp_y_base_ad_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_y_base_ad_init     <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= sp_y_base_ad_init;
                 end
              end
              c_mi_sp_y_size_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_y_size_init        <= cfg_mi_wdata[c_bufsize:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize:3]    <= sp_y_size_init;
                 end
              end
              c_mi_sp_y_offs_cnt_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_y_offs_cnt_init    <= cfg_mi_wdata[c_bufsize:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize:3]    <= sp_y_offs_cnt_init;
                 end
              end
              c_mi_sp_y_offs_cnt_start: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize:3]    <= sp_y_offs_cnt_start;
                 end
              end
              c_mi_sp_y_pic_width: begin
                 if (~cfg_mi_rd) begin  
                    if (~viv_s69) begin
                       sp_y_pic_width        <= cfg_mi_wdata[14:0];
                       viv_s69    <= 1'b1;
                    end
                    else begin  
                       cfg_mi_ack <= 1'b0;
                    end
                 end
                 else begin  
                    cfg_mi_rdata[14:0]    <= sp_y_pic_width;
                 end
              end
              c_mi_sp_y_llength: begin
                 if (~cfg_mi_rd) begin  
                    sp_y_llength          <= cfg_mi_wdata[14:0];
                 end
                 else begin  
                    cfg_mi_rdata[14:0]    <= sp_y_llength;
                 end
              end
              c_mi_sp_y_pic_height: begin
                 if (~cfg_mi_rd) begin  
                    if (viv_s75 == 1'b0) begin
                       viv_s15       <= cfg_mi_wdata[14:0];
                       viv_s75   <= 1'b1;
                    end
                    else begin  
                       cfg_mi_ack <= 1'b0;
                    end
                 end
                 else begin  
                    cfg_mi_rdata[14:0]    <= viv_s15;
                 end
              end
              c_mi_sp_y_pic_size: begin
                 sp_y_pic_size[c_bufsize:25] <= {(c_bufsize-24){1'b0}};
                 if (~cfg_mi_rd) begin  
                    sp_y_pic_size[24:0]         <= cfg_mi_wdata[24:0];
                 end
                 else begin  
                    cfg_mi_rdata[24:0]    <= sp_y_pic_size[24:0];
                 end
              end
              c_mi_sp_cb_base_ad_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_cb_base_ad_init    <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= sp_cb_base_ad_init;
                 end
              end
              c_mi_sp_cb_size_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_cb_size_init       <= cfg_mi_wdata[c_bufsize-1:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cb_size_init;
                 end
              end
              c_mi_sp_cb_offs_cnt_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_cb_offs_cnt_init   <= cfg_mi_wdata[c_bufsize-1:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cb_offs_cnt_init;
                 end
              end
              c_mi_sp_cb_offs_cnt_start: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cb_offs_cnt_start;
                 end
              end
              c_mi_sp_cr_base_ad_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_cr_base_ad_init    <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= sp_cr_base_ad_init;
                 end
              end
              c_mi_sp_cr_size_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_cr_size_init       <= cfg_mi_wdata[c_bufsize-1:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cr_size_init;
                 end
              end
              c_mi_sp_cr_offs_cnt_init: begin
                 if (~cfg_mi_rd) begin  
                    sp_cr_offs_cnt_init   <= cfg_mi_wdata[c_bufsize-1:3];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cr_offs_cnt_init;
                 end
              end
              c_mi_sp_cr_offs_cnt_start: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cr_offs_cnt_start;
                 end
              end
              c_mi_byte_cnt: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:0]    <= viv_s16;
                 end
              end
              c_mi_ctrl_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[19:16] <= viv_s127;
                    cfg_mi_rdata[3:0]   <= viv_s128;
                 end
              end
              c_mi_mp_y_base_ad_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[31:3]    <= mp_y_base_ad;
                 end
              end
              c_mi_mp_y_size_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize:3]    <= mp_y_size;
                 end
              end
              c_mi_mp_y_offs_cnt_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize:3]    <= mp_y_offs_cnt;
                 end
              end
              c_mi_mp_y_irq_offs_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize:3]    <= mp_y_irq_offs;
                 end
              end
              c_mi_mp_cb_base_ad_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[31:3]    <= mp_cb_base_ad;
                 end
              end
              c_mi_mp_cb_size_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cb_size;
                 end
              end
              c_mi_mp_cb_offs_cnt_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cb_offs_cnt;
                 end
              end
              c_mi_mp_cr_base_ad_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[31:3]    <= mp_cr_base_ad;
                 end
              end
              c_mi_mp_cr_size_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cr_size;
                 end
              end
              c_mi_mp_cr_offs_cnt_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= mp_cr_offs_cnt;
                 end
              end
              c_mi_sp_y_base_ad_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[31:3]    <= sp_y_base_ad;
                 end
              end
              c_mi_sp_y_size_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize:3]    <= sp_y_size;
                 end
              end
              c_mi_sp_y_offs_cnt_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize:3]    <= sp_y_offs_cnt;
                 end
              end
              c_mi_sp_cb_base_ad_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[31:3]    <= sp_cb_base_ad;
                 end
              end
              c_mi_sp_cb_size_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cb_size;
                 end
              end
              c_mi_sp_cb_offs_cnt_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cb_offs_cnt;
                 end
              end
              c_mi_sp_cr_base_ad_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[31:3]    <= sp_cr_base_ad;
                 end
              end
              c_mi_sp_cr_size_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cr_size;
                 end
              end
              c_mi_sp_cr_offs_cnt_shd: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:3]    <= sp_cr_offs_cnt;
                 end
              end
              c_mi_dma_ctrl: begin
                 if (~cfg_mi_rd) begin  
                    dma_burst_len_lum     <= cfg_mi_wdata[1:0];
                    dma_burst_len_chrom   <= cfg_mi_wdata[3:2];
                    viv_s18       <= cfg_mi_wdata[5:4];
                    dma_inout_format      <= cfg_mi_wdata[7:6];
                    dma_byte_swap         <= cfg_mi_wdata[8];
                    dma_continuous_en     <= cfg_mi_wdata[9];
                    dma_frame_end_disable <= cfg_mi_wdata[10];
                    viv_s19        <= cfg_mi_wdata[13:12];
                    dma_bayer_format        <= cfg_mi_wdata[17:14];
                 end
                 else begin  
                    cfg_mi_rdata[1:0]     <= dma_burst_len_lum;
                    cfg_mi_rdata[3:2]     <= dma_burst_len_chrom;
                    cfg_mi_rdata[5:4]     <= viv_s18;
                    cfg_mi_rdata[7:6]     <= dma_inout_format;
                    cfg_mi_rdata[8]       <= dma_byte_swap;
                    cfg_mi_rdata[9]       <= dma_continuous_en;
                    cfg_mi_rdata[10]      <= dma_frame_end_disable;
                    cfg_mi_rdata[13:12]   <= viv_s19;
                    cfg_mi_rdata[17:14]   <= dma_bayer_format;
                 end
              end
              c_mi_dma_start: begin
                 if (~cfg_mi_rd) begin  
                    dma_start             <= cfg_mi_wdata[0];
                 end
              end
              c_mi_dma_status: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[0]       <= stat_dma_active;
                 end
              end
              c_mi_dma_y_pic_start_ad: begin
                 if (~cfg_mi_rd) begin  
                    dma_y_pic_start_ad    <= cfg_mi_wdata[31:0];
                 end
                 else begin  
                    cfg_mi_rdata[31:0]    <= dma_y_pic_start_ad;
                 end
              end
              c_mi_dma_y_pic_width: begin
                 if (~cfg_mi_rd) begin  
                    dma_y_pic_width       <= cfg_mi_wdata[14:0];
                 end
                 else begin  
                    cfg_mi_rdata[14:0]    <= dma_y_pic_width;
                 end
              end
              c_mi_dma_y_llength: begin
                 if (~cfg_mi_rd) begin  
                    dma_y_llength         <= cfg_mi_wdata[14:0];
                 end
                 else begin  
                    cfg_mi_rdata[14:0]    <= dma_y_llength;
                 end
              end
              c_mi_dma_y_pic_size: begin
                 if (~cfg_mi_rd) begin  
                    dma_y_pic_size        <= cfg_mi_wdata[c_bufsize-1:0];
                 end
                 else begin  
                    cfg_mi_rdata[c_bufsize-1:0]    <= dma_y_pic_size;
                 end
              end
              c_mi_dma_cb_pic_start_ad: begin
                 if (~cfg_mi_rd) begin  
                    dma_cb_pic_start_ad   <= cfg_mi_wdata[31:0];
                 end
                 else begin  
                    cfg_mi_rdata[31:0]    <= dma_cb_pic_start_ad;
                 end
              end
              c_mi_dma_cr_pic_start_ad: begin
                 if (~cfg_mi_rd) begin  
                    dma_cr_pic_start_ad   <= cfg_mi_wdata[31:0];
                 end
                 else begin  
                    cfg_mi_rdata[31:0]    <= dma_cr_pic_start_ad;
                 end
              end
              c_mi_imsc: begin
                 if (~cfg_mi_rd) begin  
                    viv_s29             <= cfg_mi_wdata[19];
                    viv_s28             <= cfg_mi_wdata[18];
                    viv_s27             <= cfg_mi_wdata[17];
                    viv_s26             <= cfg_mi_wdata[16];
                    viv_s25             <= cfg_mi_wdata[15];
                    viv_s24             <= cfg_mi_wdata[14];
                    viv_s23             <= cfg_mi_wdata[13];
                    viv_s22             <= cfg_mi_wdata[12];
                    viv_s21             <= cfg_mi_wdata[11];
                    viv_s20[9:0]           <= cfg_mi_wdata[9:0];
                 end
                 else begin  
                    cfg_mi_rdata[19]      <= viv_s29;
                    cfg_mi_rdata[18]      <= viv_s28;
                    cfg_mi_rdata[17]      <= viv_s27;
                    cfg_mi_rdata[16]      <= viv_s26;
                    cfg_mi_rdata[15]      <= viv_s25;
                    cfg_mi_rdata[14]      <= viv_s24;
                    cfg_mi_rdata[13]      <= viv_s23;
                    cfg_mi_rdata[12]      <= viv_s22;
                    cfg_mi_rdata[11]      <= viv_s21;
                    cfg_mi_rdata[9:0]     <= viv_s20[9:0];
                 end
              end
              c_mi_ris: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[19]      <= viv_s30[19];
                    cfg_mi_rdata[18]      <= viv_s30[18];
                    cfg_mi_rdata[17]      <= viv_s30[17];
                    cfg_mi_rdata[16]      <= viv_s30[16];
                    cfg_mi_rdata[15]      <= viv_s30[15];
                    cfg_mi_rdata[14]      <= viv_s30[14];
                    cfg_mi_rdata[13]      <= viv_s30[13];
                    cfg_mi_rdata[12]      <= viv_s30[12];
                    cfg_mi_rdata[11]      <= viv_s30[11];
                    cfg_mi_rdata[9:0]     <= viv_s30[9:0];
                 end
              end
              c_mi_mis: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[19:0]    <= viv_s30 & {viv_s29,viv_s28,viv_s27,viv_s26,viv_s25,viv_s24,viv_s23,viv_s22,viv_s21,1'b0,viv_s20};
                 end
              end
              c_mi_status: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[2:0]     <= viv_s33[2:0];
                    cfg_mi_rdata[6:4]     <= viv_s33[5:3];
                    cfg_mi_rdata[6+3:7]     <= viv_s33[5+3:6];
                 end
              end
              c_mi_pixel_cnt: begin
                 if (cfg_mi_rd) begin  
                    cfg_mi_rdata[c_bufsize-1:0]    <= viv_s17;
                 end
              end
              c_mi_mp_y_base_ad_init2: begin
                 if (~cfg_mi_rd) begin  
                    mp_y_base_ad_init2     <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= mp_y_base_ad_init2;
                 end
              end
              c_mi_mp_cb_base_ad_init2: begin
                 if (~cfg_mi_rd) begin  
                    mp_cb_base_ad_init2     <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= mp_cb_base_ad_init2;
                 end
              end
              c_mi_mp_cr_base_ad_init2: begin
                 if (~cfg_mi_rd) begin  
                    mp_cr_base_ad_init2     <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= mp_cr_base_ad_init2;
                 end
              end
              c_mi_sp_y_base_ad_init2: begin
                 if (~cfg_mi_rd) begin  
                    sp_y_base_ad_init2     <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= sp_y_base_ad_init2;
                 end
              end
              c_mi_sp_cb_base_ad_init2: begin
                 if (~cfg_mi_rd) begin  
                    sp_cb_base_ad_init2     <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= sp_cb_base_ad_init2;
                 end
              end
              c_mi_sp_cr_base_ad_init2: begin
                 if (~cfg_mi_rd) begin  
                    sp_cr_base_ad_init2     <= cfg_mi_wdata[31:3];
                 end
                 else begin  
                    cfg_mi_rdata[31:3]    <= sp_cr_base_ad_init2;
                 end
              end
              c_mi_xtd_format_ctrl: begin
                 if (~cfg_mi_rd) begin  
                    nv21_main     <= cfg_mi_wdata[0];
                    nv21_self     <= cfg_mi_wdata[1];
                    nv21_dma_read <= cfg_mi_wdata[2];
                 end
                 else begin  
                    cfg_mi_rdata[0]    <= nv21_main;
                    cfg_mi_rdata[1]    <= nv21_self;
                    cfg_mi_rdata[2]    <= nv21_dma_read;
                 end
              end
            c_mi_mp_handshake:      begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                handshake_en        <= cfg_mi_wdata[0];
                                                starage_format[1:0] <= cfg_mi_wdata[2:1];
                                                data_format[1:0]    <= cfg_mi_wdata[4:3];
                                                slice_size[7:0]     <= cfg_mi_wdata[12:5];
                                                slice_buf_size[7:0] <= cfg_mi_wdata[20:13];
                                                ack_count[7:0]      <= cfg_mi_wdata[28:21];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[0]     <= handshake_en;
                                                        cfg_mi_rdata[2:1]   <= starage_format[1:0];
                                                        cfg_mi_rdata[4:3]   <= data_format[1:0]; 
                                                        cfg_mi_rdata[12:5]  <= slice_size[7:0];
                                                        cfg_mi_rdata[20:13] <= slice_buf_size[7:0];
                                                        cfg_mi_rdata[28:21] <= ack_count[7:0];
                                                    end 
                                            end
                                    end
            c_mi_mp_sw_handsk: begin
                                    if (~cfg_mi_rd)
                                        begin
                                            handshake_mode_0   <= cfg_mi_wdata[0];
                                            slice_cnt_int[7:0] <= cfg_mi_wdata[15:8];
                                        end
                                    else
                                        begin
                                            if(cfg_mi_rd)
                                                begin
                                                    cfg_mi_rdata[0]    <= handshake_mode_0;
                                                    cfg_mi_rdata[15:8] <= slice_cnt_int[7:0];
                                                end
                                        end
                                end
            c_mi_mp_sw_add_y:   begin
                                    if(cfg_mi_rd)
                                        cfg_mi_rdata[31:0] <= sw_addr_mp_y[31:0];
                                end
            c_mi_mp_sw_add_cb:  begin
                                    if(cfg_mi_rd)
                                        cfg_mi_rdata[31:0] <= sw_addr_mp_cb[31:0];
                                end
            c_mi_mp_sw_add_cr:  begin
                                    if(cfg_mi_rd)
                                        cfg_mi_rdata[31:0] <= sw_addr_mp_cr[31:0];
                                end
            c_mi_mp_y_llength:      begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                mp_y_llength_out[14:0] <= cfg_mi_wdata[14:0];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[14:0] <= mp_y_llength_out[14:0];
                                                    end
                                            end
                                    end
            c_mi_mp_y_slice_offset: begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                mp_slice_offset_y_out[28:0] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= mp_slice_offset_y_out[28:0];
                                                    end
                                            end
                                    end
            c_mi_mp_c_slice_offset: begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                mp_slice_offset_c_out[28:0] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= mp_slice_offset_c_out[28:0];
                                                    end
                                            end
                                    end
            c_mi_mp_out_align_format:begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                mp_lsb_alignment_out  <= cfg_mi_wdata[0];
                                                mp_byte_swap_out[2:0] <= cfg_mi_wdata[3:1];
                                                sp_byte_swap_out[2:0] <= cfg_mi_wdata[6:4];
                                                dma_byte_swap_out[2:0] <= cfg_mi_wdata[9:7];
						mp_little_endian_out  <= cfg_mi_wdata[10];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[0] <= mp_lsb_alignment_out;
                                                        cfg_mi_rdata[3:1] <= mp_byte_swap_out[2:0];
                                                        cfg_mi_rdata[6:4] <= sp_byte_swap_out[2:0];
                                                        cfg_mi_rdata[9:7] <= dma_byte_swap_out[2:0];
                                                        cfg_mi_rdata[10] <= mp_little_endian_out;
                                                    end
                                            end
                                    end
            c_mi_mp_output_fifo_size:begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                sw_mi_fifo_depth_ctrl_out[1:0] <= cfg_mi_wdata[1:0];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[1:0] <= sw_mi_fifo_depth_ctrl_out[1:0];
                                                    end
                                            end
                                    end
            c_mi_mp_y_pic_width:    begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                mp_y_pic_width_out[31:0] <= cfg_mi_wdata[31:0];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:0] <= mp_y_pic_width_out[31:0];
                                                    end
                                            end
                                    end
            c_mi_mp_y_pic_height:   begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                mp_y_pic_height_out[31:0] <= cfg_mi_wdata[31:0];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:0] <= mp_y_pic_height_out[31:0];
                                                    end
                                            end
                                    end
            c_mi_mp_y_pic_size:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                mp_y_pic_size_out[31:0] <= cfg_mi_wdata[31:0];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:0] <= mp_y_pic_size_out[31:0];
                                                    end
                                            end
                                    end
            c_mi_bp_ctrl:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                viv_s131    <= cfg_mi_wdata[0];
                                                bp_auto_update       <= cfg_mi_wdata[1];
                                                viv_s132        <= cfg_mi_wdata[5:2];
                                                viv_s133        <= cfg_mi_wdata[7:6];
                                                viv_s134   <= cfg_mi_wdata[9:8];
                                                bp_wr_burst_len      <= cfg_mi_wdata[11:10];
                                                bp_wr_byte_swap      <= cfg_mi_wdata[14:12];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                      cfg_mi_rdata[0]    <= viv_s131;
                                                      cfg_mi_rdata[1]    <= bp_auto_update;
                                                      cfg_mi_rdata[5:2]  <= viv_s132;  
                                                      cfg_mi_rdata[7:6]  <= viv_s133;  
                                                      cfg_mi_rdata[9:8]  <= viv_s134;    
                                                      cfg_mi_rdata[11:10]<= bp_wr_burst_len;
                                                      cfg_mi_rdata[14:12]<= bp_wr_byte_swap;
                                                      cfg_mi_rdata[31:15] <= {31-15+1{1'b0}};
                                                    end
                                            end
                                    end
            c_mi_bp_wr_size_shd:     begin
                                       if(cfg_mi_rd)  
                                           begin
                                               cfg_mi_rdata[31:3] <= bp_wr_size[c_mi_data_addr:3];
                                           end
                                    end
            c_mi_bp_wr_size_init:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_wr_size_init[c_mi_data_addr:3] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= bp_wr_size_init[c_mi_data_addr:3];
                                                    end
                                            end
                                    end
            c_mi_bp_wr_llength:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_wr_llength[14:0] <= cfg_mi_wdata[14:0];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:0] <= {{31-14{1'b0}},bp_wr_llength[14:0]};
                                                    end
                                            end
                                    end
            c_mi_bp_wr_offs_cnt_init:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_wr_offs_cnt_init[c_mi_data_addr:3] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= bp_wr_offs_cnt_init[c_mi_data_addr:3];
                                                    end
                                            end
                                    end
            c_mi_bp_wr_irq_offs_shd:begin
                                      if(cfg_mi_rd)begin
                                           cfg_mi_rdata[31:0] <= {bp_wr_irq_offs[c_mi_data_addr:3],3'b0};
                                      end
                                    end
            c_mi_bp_wr_irq_offs_init:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_wr_irq_offs_init[c_mi_data_addr:3] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= bp_wr_irq_offs_init[c_mi_data_addr:3];
                                                    end
                                            end
                                    end
            c_mi_bp_pic_width:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_wr_pic_width[14:0] <= cfg_mi_wdata[14:0];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:0] <= {{31-14{1'b0}},bp_wr_pic_width[14:0]};
                                                    end
                                            end
                                    end
            c_mi_bp_pic_height:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_wr_pic_height[14:0] <= cfg_mi_wdata[14:0];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:0] <= {{31-14{1'b0}},bp_wr_pic_height[14:0]};
                                                    end
                                            end
                                    end
            c_mi_bp_pic_size: begin
                              if (~cfg_mi_rd) begin
                                 viv_s135 <= cfg_mi_wdata[c_mi_data_addr:0];
                              end
                              else begin
                                 cfg_mi_rdata   <= viv_s135;
                              end
            end
            c_mi_bp_r_base_ad_shd:     begin
                                       if(cfg_mi_rd)  
                                           begin
                                               cfg_mi_rdata[31:3] <= bp_r_base_ad[c_mi_data_addr+3:3];
                                           end
                                    end
            c_mi_bp_r_base_ad_init:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_r_base_ad_init[c_mi_data_addr+3:3] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= bp_r_base_ad_init[c_mi_data_addr+3:3];
                                                    end
                                            end
                                    end
            c_mi_bp_r_offs_cnt_start:     begin
                                        if(cfg_mi_rd)  
                                            begin
                                                cfg_mi_rdata[31:3] <= bp_r_offs_cnt_start[c_mi_data_addr:3];
                                            end
                                    end
            c_mi_bp_gr_base_ad_shd:     begin
                                       if(cfg_mi_rd)  
                                           begin
                                               cfg_mi_rdata[31:3] <= bp_gr_base_ad[c_mi_data_addr+3:3];
                                           end
                                    end
            c_mi_bp_gr_base_ad_init:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_gr_base_ad_init[c_mi_data_addr+3:3] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= bp_gr_base_ad_init[c_mi_data_addr+3:3];
                                                    end
                                            end
                                    end
            c_mi_bp_gr_offs_cnt_start:     begin
                                        if(cfg_mi_rd)  
                                            begin
                                                cfg_mi_rdata[31:3] <= bp_gr_offs_cnt_start[c_mi_data_addr:3];
                                            end
                                    end
            c_mi_bp_gb_base_ad_shd:     begin
                                       if(cfg_mi_rd)  
                                           begin
                                               cfg_mi_rdata[31:3] <= bp_gb_base_ad[c_mi_data_addr+3:3];
                                           end
                                    end
            c_mi_bp_gb_base_ad_init:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_gb_base_ad_init[c_mi_data_addr+3:3] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= bp_gb_base_ad_init[c_mi_data_addr+3:3];
                                                    end
                                            end
                                    end
            c_mi_bp_gb_offs_cnt_start:     begin
                                        if(cfg_mi_rd)  
                                            begin
                                                cfg_mi_rdata[31:3] <= bp_gb_offs_cnt_start[c_mi_data_addr:3];
                                            end
                                    end
            c_mi_bp_b_base_ad_shd:     begin
                                       if(cfg_mi_rd)  
                                           begin
                                               cfg_mi_rdata[31:3] <= bp_b_base_ad[c_mi_data_addr+3:3];
                                           end
                                    end
            c_mi_bp_r_offs_cnt_shd: begin
                                     if(cfg_mi_rd)begin
                                        cfg_mi_rdata[31:0] <= {bp_r_offs_cnt,3'b0};
                                     end
            end
            c_mi_bp_gr_offs_cnt_shd: begin
                                     if(cfg_mi_rd)begin
                                        cfg_mi_rdata[31:0] <= {bp_gr_offs_cnt,3'b0};
                                     end
            end
            c_mi_bp_gb_offs_cnt_shd: begin
                                     if(cfg_mi_rd)begin
                                        cfg_mi_rdata[31:0] <= {bp_gb_offs_cnt,3'b0};
                                     end
            end
            c_mi_bp_b_offs_cnt_shd: begin
                                     if(cfg_mi_rd)begin
                                        cfg_mi_rdata[31:0] <= {bp_b_offs_cnt,3'b0};
                                     end
            end
            c_mi_bp_b_base_ad_init:     begin
                                        if (~cfg_mi_rd) 
                                            begin 
                                                bp_b_base_ad_init[c_mi_data_addr+3:3] <= cfg_mi_wdata[31:3];
                                            end
                                        else
                                            begin
                                                if(cfg_mi_rd)  
                                                    begin
                                                        cfg_mi_rdata[31:3] <= bp_b_base_ad_init[c_mi_data_addr+3:3];
                                                    end
                                            end
                                    end
            c_mi_bp_b_offs_cnt_start:     begin
                                        if(cfg_mi_rd)  
                                            begin
                                                cfg_mi_rdata[31:3] <= bp_b_offs_cnt_start[c_mi_data_addr:3];
                                            end
                                    end
            c_mi_mp_dma_y_raw_fmt:begin
                               if(~cfg_mi_rd)begin
                                  viv_s5 <= cfg_mi_wdata[5:0];
                               end
                               else begin
                                  cfg_mi_rdata  <= {26'h0, viv_s5[5:0]};
                               end
            end
            c_mi_mp_dma_y_raw_lval:begin
                               if(~cfg_mi_rd)begin
                                  dma_y_raw_lval <= cfg_mi_wdata[14:0];
                               end
                               else begin
                                  cfg_mi_rdata  <= {17'h0, dma_y_raw_lval[14:0]};
                               end
            end
              default: begin
                 end
            endcase
         end
         if (viv_s72) begin
            viv_s69  <= 1'b0;
         end
         if (viv_s78) begin
            viv_s75 <= 1'b0;
         end
      end
   end
 wire         bp_wr_path_enable_in;
 wire [3:0]   bp_wr_raw_bit_in;
 wire [1:0]   bp_wr_aligned_in;
 wire [1:0]   bp_wr_write_format_in;
 wire [1:0]   bp_wr_write_format_out;
 vsisp_dreg_en_2d #(1,1'b0) u_bp_wr_path_enable_Reg       (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(bp_wr_path_enable_in), .in(viv_s131), .en(1'b1));
 vsisp_dreg_en_2d #(4,4'b0) u_bp_wr_raw_bit_Reg           (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(bp_wr_raw_bit_in), .in(viv_s132), .en(1'b1));
 vsisp_dreg_en_2d #(2,2'b0) u_bp_wr_aligned_Reg           (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(bp_wr_aligned_in), .in(viv_s133), .en(1'b1));
 vsisp_dreg_en_2d #(2,2'b0) u_bp_wr_write_format_Reg      (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(bp_wr_write_format_in), .in(viv_s134), .en(1'b1));
 wire [14:0]  dma_y_pic_width_in;
 wire [14:0]  dma_y_llength_in;
 wire [c_bufsize-1:0]  dma_y_pic_size_in;
 wire [5:0]   dma_y_raw_fmt_in;
 vsisp_dreg_en_2d #(15,15'b0)                    u_dma_y_pic_width_Reg      (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(dma_y_pic_width_in), .in(dma_y_pic_width), .en(1'b1));
 vsisp_dreg_en_2d #(15,15'b0)                    u_dma_y_llength_Reg        (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(dma_y_llength_in), .in(dma_y_llength), .en(1'b1));
 vsisp_dreg_en_2d #(c_bufsize,{c_bufsize{1'b0}}) u_dma_y_pic_size_Reg       (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(dma_y_pic_size_in), .in(dma_y_pic_size), .en(1'b1));
 vsisp_dreg_en_2d #(6,6'b0)                      u_dma_y_raw_fmt_Reg        (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(dma_y_raw_fmt_in), .in(viv_s5), .en(1'b1)); 
 vsisp_dreg_en_2d #(15,15'b0)                    u_dma_y_raw_lval_Reg       (.clk(jpeg_clk), .reset_n(reset_jpeg_clk_n), .soft_reset(1'b0), .out(dma_y_raw_lval_in), .in(dma_y_raw_lval), .en(1'b1)); 
 assign       bp_wr_path_enable_out = viv_s131;
 assign       bp_wr_write_format_out= viv_s134;
   always @(*) begin
      viv_s126   = 2'b0; 
      viv_s122   = 1'b0;
      viv_s123   = 1'b0;
      viv_s124 = 1'b0;
      viv_s125  = 1'b0;
      case (viv_s6)
        4'b0001: begin
           viv_s122   = 1'b1;
        end
        4'b0010: begin
           viv_s123   = 1'b1;
        end
        4'b0011: begin
           viv_s122   = 1'b1;
           viv_s123   = 1'b1;
        end
        4'b0100: begin
           viv_s124 = 1'b1;
        end
        4'b0110: begin
           viv_s123   = 1'b1;
           viv_s124 = 1'b1;
        end
        4'b1000: begin
           viv_s125  = 1'b1;
        end
        4'b1001: begin
           viv_s122   = 1'b1;
           viv_s126   = 2'b10;
        end
        4'b1010: begin
           viv_s123   = 1'b1;
           viv_s126   = 2'b01;
        end
        4'b1100: begin
           viv_s124 = 1'b1;
           viv_s126   = 2'b10;
        end
        4'b1101: begin
           viv_s126   = 2'b01;
        end
        4'b1110: begin
           viv_s126   = 2'b10;
        end
        4'b1111: begin
           viv_s125  = 1'b1;
           viv_s126   = 2'b10;
        end
        default: begin
        end
      endcase
   end
   assign viv_s129  = {stat_dp_enable_out,stat_raw_enable_out,
                        stat_jpeg_enable_out,stat_sp_enable_out,
                        stat_mp_enable_out};
   assign viv_s130  = {viv_s97, viv_s99,
                        viv_s95,viv_s93,
                        viv_s91};
   always @(*) begin
      if (viv_s126 == 2'b00) begin
         viv_s127 = {stat_raw_enable_out, stat_jpeg_enable_out,
                            stat_sp_enable_out, stat_mp_enable_out};
         viv_s128  = {viv_s99, viv_s95,
                            viv_s93, viv_s91};
      end
      else begin
         case (viv_s129)
           6'b100001: begin
              viv_s127 = 4'b1001;
           end
           6'b010010: begin
              viv_s127 = 4'b1010;
           end
           6'b100100: begin
              viv_s127 = 4'b1100;
           end
           6'b010000: begin
              viv_s127 = 4'b1101;
           end
           6'b100000: begin
              viv_s127 = 4'b1110;
           end
           6'b101000: begin
              viv_s127 = 4'b1111;
           end
           default: begin
              viv_s127 = 4'b0000;
           end
         endcase
         case (viv_s130)
           6'b100001: begin
              viv_s128 = 4'b1001;
           end
           6'b010010: begin
              viv_s128 = 4'b1010;
           end
           6'b100100: begin
              viv_s128 = 4'b1100;
           end
           6'b010000: begin
              viv_s128 = 4'b1101;
           end
           6'b100000: begin
              viv_s128 = 4'b1110;
           end
           6'b101000: begin
              viv_s128 = 4'b1111;
           end
           default: begin
             viv_s128      = 4'b0000;
           end
         endcase
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin  
         viv_s30                  <= {14+c_bp_int_cnt{1'b0}};
      end
      else begin
         viv_s30                  <= viv_s31;
      end
   end
   always @(*) begin
      viv_s32                = viv_s30;
      if (cfg_mi_val & ({cfg_mi_addr, 2'b00} == c_mi_icr)) begin
         if (~cfg_mi_rd) begin  
            viv_s32          = viv_s30 & ~(cfg_mi_wdata[13+c_bp_int_cnt:0]);
         end
      end
      else if (cfg_mi_val && ({cfg_mi_addr, 2'b00} == c_mi_isr)) begin
         if (~cfg_mi_rd) begin  
            viv_s32          = viv_s30 | cfg_mi_wdata[13+c_bp_int_cnt:0];
         end
      end 
   end 
   always @(*) begin
      viv_s31[ 0]                = viv_s32[ 0] | stat_mp_frame_end;
      viv_s31[ 1]                = viv_s32[ 1] | stat_sp_frame_end;
      viv_s31[ 2]                = viv_s32[ 2] | stat_mblk_line;
      viv_s31[ 3]                = viv_s32[ 3] | stat_fill_mp_y;
      viv_s31[ 4]                = viv_s32[ 4] | stat_wrap_mp_y;
      viv_s31[ 5]                = viv_s32[ 5] | stat_wrap_mp_cb;
      viv_s31[ 6]                = viv_s32[ 6] | stat_wrap_mp_cr;
      viv_s31[ 7]                = viv_s32[ 7] | stat_wrap_sp_y;
      viv_s31[ 8]                = viv_s32[ 8] | stat_wrap_sp_cb;
      viv_s31[ 9]                = viv_s32[ 9] | stat_wrap_sp_cr;
      viv_s31[10]                = 1'b0;
      viv_s31[11]                = viv_s32[11] | stat_dma_ready;
      viv_s31[12]                = viv_s32[12] | mp_interrupt;
      viv_s31[13]                = viv_s32[13] | sw_interrupt;
      viv_s31[14]                = viv_s32[14] | stat_bp_frame_end;
      viv_s31[15]                = viv_s32[15] | stat_fill_bp_r;
      viv_s31[16]                = viv_s32[16] | stat_wrap_bp_r;
      viv_s31[17]                = viv_s32[17] | stat_wrap_bp_gr;
      viv_s31[18]                = viv_s32[18] | stat_wrap_bp_gb;
      viv_s31[19]                = viv_s32[19] | stat_wrap_bp_b;
   end 
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin  
         viv_s33               <= {6+3{1'b0}};
      end
      else begin
         viv_s33               <= viv_s34;
      end
   end
   always @(*) begin
      viv_s35                 = viv_s33;
      if (cfg_mi_val && ({cfg_mi_addr, 2'b00} == c_mi_status_clr)) begin
         if (~cfg_mi_rd) begin  
            viv_s35           = viv_s33 & ~({cfg_mi_wdata[6+3:4],cfg_mi_wdata[2:0]});
         end
      end
   end
   always @(*) begin
      viv_s34[0]              = viv_s35[0] | viv_s105;
      viv_s34[1]              = viv_s35[1] | viv_s107;
      viv_s34[2]              = viv_s35[2] | viv_s109;
      viv_s34[3]              = viv_s35[3] | viv_s111;
      viv_s34[4]              = viv_s35[4] | viv_s113;
      viv_s34[5]              = viv_s35[5] | viv_s115;
      viv_s34[6]              = viv_s35[6] | viv_s117;
      viv_s34[7]              = viv_s35[7] | viv_s119;
      viv_s34[8]              = viv_s35[8] | viv_s121;
   end
   assign mi_mp_frame_end_int    = viv_s30[ 0] & viv_s20[ 0];
   assign mi_sp_frame_end_int    = viv_s30[ 1] & viv_s20[ 1];
   assign mi_mblk_line_int       = viv_s30[ 2] & viv_s20[ 2];
   assign mi_fill_mp_y_int       = viv_s30[ 3] & viv_s20[ 3];
   assign mi_wrap_mp_y_int       = viv_s30[ 4] & viv_s20[ 4];
   assign mi_wrap_mp_cb_int      = viv_s30[ 5] & viv_s20[ 5];
   assign mi_wrap_mp_cr_int      = viv_s30[ 6] & viv_s20[ 6];
   assign mi_wrap_sp_y_int       = viv_s30[ 7] & viv_s20[ 7];
   assign mi_wrap_sp_cb_int      = viv_s30[ 8] & viv_s20[ 8];
   assign mi_wrap_sp_cr_int      = viv_s30[ 9] & viv_s20[ 9];
   assign mi_dma_ready_int       = viv_s30[11] & viv_s21;
   assign mi_mp_handshk_int      = viv_s30[12] & viv_s22;
   assign mi_mp_handshk_sw_int   = viv_s30[13] & viv_s23;
   assign mi_bp_frame_end_int        = viv_s30[14] & viv_s24;
   assign mi_fill_bp_r_int           = viv_s30[15] & viv_s25;
   assign mi_wrap_bp_r_int           = viv_s30[16] & viv_s26;
   assign mi_wrap_bp_gr_int          = viv_s30[17] & viv_s27;
   assign mi_wrap_bp_gb_int          = viv_s30[18] & viv_s28;
   assign mi_wrap_bp_b_int           = viv_s30[19] & viv_s29;
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         viv_s36        <= 1'b0;
         viv_s37        <= 1'b0;
         viv_s38        <= 1'b0;
         viv_s39        <= 1'b0;
         viv_s40      <= 1'b0;
         viv_s41      <= 1'b0;
         viv_s42        <= 2'b0;
         viv_s43        <= 2'b0;
         viv_s44       <= 1'b0;
         viv_s45       <= 1'b0;
         viv_s46           <= 1'b0;
         viv_s47           <= 1'b0;
         viv_s48              <= 1'b0;
         viv_s49              <= 1'b0;
         viv_s50       <= 1'b0;
         viv_s51    <= 1'b0;
         viv_s52    <= 1'b0;
         viv_s53  <= 2'b00;
         viv_s54  <= 2'b00;
         viv_s55  <= 2'b00;
         viv_s56  <= 2'b00;
         viv_s57  <= 2'b00;
         viv_s58  <= 2'b00;
         viv_s59 <= 3'b000;
         viv_s60 <= 3'b000;
      end
      else begin
         viv_s36        <= viv_s122;
         viv_s37        <= viv_s36;
         viv_s38        <= viv_s123;
         viv_s39        <= viv_s38;
         viv_s40      <= viv_s124;
         viv_s41      <= viv_s40;
         viv_s42        <= viv_s126;
         viv_s43        <= viv_s42;
         viv_s44       <= viv_s125;
         viv_s45       <= viv_s44;
         viv_s46           <= viv_s7;
         viv_s47           <= viv_s46;
         viv_s48              <= viv_s9;
         viv_s49              <= viv_s48;
         viv_s50       <= viv_s2;
         viv_s51    <= viv_s3;
         viv_s52    <= viv_s4;
         viv_s53  <= viv_s10;
         viv_s54  <= viv_s53;
         viv_s55  <= viv_s11;
         viv_s56  <= viv_s55;
         viv_s57  <= viv_s12;
         viv_s58  <= viv_s57;
         viv_s59 <= viv_s13;
         viv_s60 <= viv_s59;
      end
   end
   assign mp_enable_in           = viv_s37;
   assign mp_enable_out          = viv_s122;
   assign sp_enable_in           = viv_s39;
   assign sp_enable_out          = viv_s123;
   assign jpeg_enable_in         = viv_s41;
   assign jpeg_enable_out        = viv_s124;
   assign dp_enable_in           = viv_s43;
   assign dp_enable_out          = viv_s126;
   assign raw_enable_in          = viv_s45;
   assign raw_enable_out         = viv_s125;
   assign h_flip_in              = viv_s47;
   assign h_flip_out             = viv_s7;
   assign v_flip_out             = viv_s8;
   assign rot_in                 = viv_s49;
   assign rot_out                = viv_s9;
   assign mp_write_format_in     = viv_s54;
   assign mp_write_format_out    = viv_s10;
   assign sp_write_format_in     = viv_s56;
   assign cfg_y_full             = viv_s50;
   assign cfg_crcb_full          = viv_s51;
   assign cfg_422noncosited      = viv_s52;
   assign sp_write_format_out    = viv_s11;
   assign sp_input_format_in     = viv_s58;
   assign sp_output_format_in    = viv_s60;
   assign sp_output_format_out   = viv_s13;
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s61      <= 1'b0;
         viv_s64       <= 1'b0;
         viv_s65       <= 1'b0;
         viv_s62  <= 1'b0;
         viv_s63  <= 1'b0;
      end
      else begin
         if (viv_s14)
            viv_s61  <= 1'b1;
         else if (viv_s63)
            viv_s61  <= 1'b0;
         viv_s64      <= viv_s14;
         viv_s65      <= viv_s14 | viv_s64;
         viv_s62 <= viv_s67;
         viv_s63 <= viv_s62;
      end
   end
   assign soft_upd_out = viv_s65; 
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         viv_s66  <= 1'b0;
         viv_s67  <= 1'b0;
         viv_s68  <= 1'b0;
      end
      else begin
         viv_s66  <= viv_s61;
         viv_s67  <= viv_s66;
         viv_s68  <= viv_s67;
      end
   end
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         soft_upd_in  <= 1'b0;
      end
      else begin
         soft_upd_in  <= viv_s67 & ~viv_s68;
      end
   end
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         viv_s70  <= 1'b0;
         viv_s71  <= 1'b0;
      end
      else begin
         viv_s70  <= viv_s69;
         viv_s71  <= viv_s70;
      end
   end
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         sp_y_pic_width_in         <= 15'h0;
      end
      else if (viv_s71) begin
         sp_y_pic_width_in         <= sp_y_pic_width[14:0];
      end
   end
   always @(posedge m_hclk_cfg or negedge reset_m_hclk_cfg_n) begin
      if (~reset_m_hclk_cfg_n) begin
         viv_s73  <= 1'b0;
         viv_s74  <= 1'b0;
      end
      else begin
         viv_s73  <= viv_s71;
         viv_s74  <= viv_s73;
      end
   end
   assign viv_s72        = viv_s74;
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         viv_s76 <= 1'b0;
         viv_s77 <= 1'b0;
      end
      else begin
         viv_s76 <= viv_s75;
         viv_s77 <= viv_s76;
      end
   end
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         sp_y_pic_height_in        <= 15'h0;
      end
      else if (viv_s77) begin
         sp_y_pic_height_in        <= viv_s15;
      end
   end
   always @(posedge m_hclk_cfg or negedge reset_m_hclk_cfg_n) begin
      if (~reset_m_hclk_cfg_n) begin
         viv_s79 <= 1'b0;
         viv_s80 <= 1'b0;
      end
      else begin
         viv_s79 <= viv_s77;
         viv_s80 <= viv_s79;
      end
   end
   assign viv_s78       = viv_s80;
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s81    <= 1'b0;
         viv_s82    <= 1'b0;
         viv_s83    <= 1'b0;
         viv_s84   <= 1'b0;
         viv_s85   <= 1'b0;
         viv_s86   <= 1'b0;
         viv_s87     <= 1'b0;
         viv_s88     <= 1'b0;
         viv_s89     <= 1'b0;
      end
      else begin
         viv_s81    <= stat_byte_cnt_raw_val;
         viv_s82    <= viv_s81;
         viv_s83    <= viv_s82;
         viv_s84   <= stat_byte_cnt_jpeg_val;
         viv_s85   <= viv_s84;
         viv_s86   <= viv_s85;
         viv_s87     <= stat_byte_cnt_dp_val;
         viv_s88     <= viv_s87;
         viv_s89     <= viv_s88;
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s16                  <= {c_bufsize{1'b0}};
      end
      else if (viv_s82 & ~viv_s83) begin
         viv_s16                  <= stat_byte_cnt_raw;
      end
      else if (viv_s85 & ~viv_s86) begin
         viv_s16                  <= stat_byte_cnt_jpeg;
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s17                  <= {c_bufsize{1'b0}};
      end
      else if (viv_s88 & ~viv_s89) begin
         viv_s17                  <= stat_byte_cnt_dp;
      end
   end
   assign stat_byte_cnt_raw_ack     = viv_s83;
   assign stat_byte_cnt_jpeg_ack    = viv_s86;
   assign stat_byte_cnt_dp_ack      = viv_s89;
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         viv_s90   <= 1'b0;
         viv_s91   <= 1'b0;
         viv_s92   <= 1'b0;
         viv_s93   <= 1'b0;
         viv_s94 <= 1'b0;
         viv_s95 <= 1'b0;
         viv_s96   <= 2'b0;
         viv_s97   <= 2'b0;
         viv_s98  <= 1'b0;
         viv_s99  <= 1'b0;
      end
      else begin
         viv_s90   <= stat_mp_enable_in;
         viv_s91   <= viv_s90;
         viv_s92   <= stat_sp_enable_in;
         viv_s93   <= viv_s92;
         viv_s94 <= stat_jpeg_enable_in;
         viv_s95 <= viv_s94;
         viv_s96   <= stat_dp_enable_in;
         viv_s97   <= viv_s96;
         viv_s98  <= stat_raw_enable_in;
         viv_s99  <= viv_s98;
      end
   end
   reg viv_s136;
   reg viv_s137;
   reg viv_s138;
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s100     <= 2'b00;
         viv_s101     <= 2'b00;
         viv_s102      <= 2'b00;
         viv_s103      <= 2'b00;
         viv_s136       <= 1'b0;
         viv_s137      <= 1'b0;
         viv_s138      <= 1'b0;
      end
      else begin
         viv_s100     <= viv_s18;
         viv_s101     <= viv_s100;
         viv_s102      <= viv_s19;
         viv_s103      <= viv_s102;
	 viv_s136       <= stat_mp_y_full;
         viv_s137      <= stat_mp_cb_full;
         viv_s138      <= stat_mp_cr_full;
      end
   end
   assign dma_read_format_in        = 2'b10;
   assign dma_read_format_out       = 2'b10;
   assign dma_rgb_format_in         = 2'b10;
   assign dma_rgb_format_out        = 2'b01;
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if (~reset_jpeg_clk_n) begin
         viv_s104      <= 1'b0;
         viv_s105      <= 1'b0;
         viv_s106     <= 1'b0;
         viv_s107     <= 1'b0;
         viv_s108     <= 1'b0;
         viv_s109     <= 1'b0;
         viv_s110      <= 1'b0;
         viv_s111      <= 1'b0;
         viv_s112     <= 1'b0;
         viv_s113     <= 1'b0;
         viv_s114     <= 1'b0;
         viv_s115     <= 1'b0;
         viv_s116     <= 1'b0;
         viv_s117     <= 1'b0;
         viv_s118     <= 1'b0;
         viv_s119     <= 1'b0;
         viv_s120     <= 1'b0;
         viv_s121     <= 1'b0;
      end
      else begin
         viv_s104      <= viv_s136;
         viv_s105      <= viv_s104;
         viv_s106     <= viv_s137;
         viv_s107     <= viv_s106;
         viv_s108     <= viv_s138;
         viv_s109     <= viv_s108;
         viv_s110      <= stat_sp_y_full;
         viv_s111      <= viv_s110;
         viv_s112     <= stat_sp_cb_full;
         viv_s113     <= viv_s112;
         viv_s114     <= stat_sp_cr_full;
         viv_s115     <= viv_s114;
         viv_s116     <= stat_bp_in_full;
         viv_s117     <= viv_s116;
         viv_s118     <= stat_bp_ecl_full;
         viv_s119     <= viv_s118;
         viv_s120     <= stat_bp_ocl_full;
         viv_s121     <= viv_s120;
      end
   end
endmodule
