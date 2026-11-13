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

module vsisp_marvin_mi_out_bp
  (
   m_hclk,
   reset_m_hclk_n,
   soft_rst_m_hclk,
   mp_fifo_read64,
   mp_fifo_select,
   mp_fifo_data,
   mp_fifo_h_end,
   mp_fifo_v_end,
   mp_y_fifo_fill_level,
   mp_y_fifo_flush,
   mp_cb_fifo_fill_level,
   mp_cb_fifo_flush,
   mp_cr_fifo_fill_level,
   mp_cr_fifo_flush,
   soft_upd,
   skip,
   mp_enable,
   jpeg_enable,
   raw_enable,
   dp_enable,
   mp_write_format,
   byte_swap,
   init_base_en,
   init_offset_en,
   mp_pingpong_en,
   burst_len_lum,
   burst_len_chrom,
   stat_mp_enable_out,
   stat_jpeg_enable_out,
   stat_raw_enable_out,
   stat_dp_enable_out,
   mp_r_base_ad,
   mp_r_size,
   mp_r_offs_cnt,
   mp_r_base_ad_init,
   mp_r_base_ad_init2,
   mp_r_size_init,
   mp_r_offs_cnt_init,
   mp_r_offs_cnt_start,
   mp_r_irq_offs_init,
   mp_r_irq_offs,
   mp_gr_base_ad,
   mp_gr_size,
   mp_gr_offs_cnt,
   mp_gr_base_ad_init,
   mp_gr_base_ad_init2,
   mp_gr_size_init,
   mp_gr_offs_cnt_init,
   mp_gr_offs_cnt_start,
   mp_gb_base_ad,
   mp_gb_size,
   mp_gb_offs_cnt,
   mp_gb_base_ad_init,
   mp_gb_base_ad_init2,
   mp_gb_size_init,
   mp_gb_offs_cnt_init,
   mp_gb_offs_cnt_start,
   mp_b_base_ad,
   mp_b_size,
   mp_b_offs_cnt,
   mp_b_base_ad_init,
   mp_b_base_ad_init2,
   mp_b_size_init,
   mp_b_offs_cnt_init,
   mp_b_offs_cnt_start,
   mp_addr_cur_y,
   mp_addr_cur_cb,
   mp_addr_cur_cr,
   handshake_en, 
   stat_mp_frame_end,
   stat_mblk_line,
   stat_fill_mp_r,
   stat_wrap_mp_r,
   stat_wrap_mp_gr,
   stat_wrap_mp_gb,
   stat_wrap_mp_b,
   cfg_in_update_mp,
   cfg_out_update_mp,
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
   last_pixel_sig_en,
   last_pixel_m1_req,
   last_pixel_m1_ack,
   mp_byte_swap,
   mp_output_format,
   mp_y_llength,    
   cfg_upd_double,
   stat_skip_active,
   data_mode_en,
   plnr_wrt,
   val_1st_pxl,
   bayer_pat,
   line_tgl_en,
   mp_line_sens
   );
`include "vsisp_marvin_mi.vh"
   input         mp_line_sens;
   output        cfg_upd_double;
   output        stat_skip_active;
   input         data_mode_en;
   input         plnr_wrt;
   input         val_1st_pxl;
   input [1:0]   bayer_pat;
   output        line_tgl_en;
   input [3:0]   mp_output_format;
   input [14:0]  mp_y_llength;
   input [2:0]   mp_byte_swap;
   input         m_hclk;
   input         reset_m_hclk_n;
   input         soft_rst_m_hclk;
   output        mp_fifo_read64;
   output [1:0]  mp_fifo_select;
   input [63:0]  mp_fifo_data;
   input         mp_fifo_h_end;
   input         mp_fifo_v_end;
   input [c_fifo_depth_bw-1:0] mp_y_fifo_fill_level;   
   input                       mp_y_fifo_flush;
   input [c_fifo_depth_bw-1:0] mp_cb_fifo_fill_level;  
   input                       mp_cb_fifo_flush;
   input [c_fifo_depth_bw-1:0] mp_cr_fifo_fill_level;  
   input                       mp_cr_fifo_flush;
   input            soft_upd;
   input            skip;
   input            mp_enable;
   input            jpeg_enable;
   input            raw_enable;
   input            dp_enable;
   input [1:0]      mp_write_format;
   input            byte_swap;
   input            init_base_en;
   input            init_offset_en;
   input            mp_pingpong_en;          
   input [1:0]      burst_len_lum;
   input [1:0]      burst_len_chrom;
   output           stat_mp_enable_out;
   output           stat_jpeg_enable_out;
   output           stat_raw_enable_out;
   output           stat_dp_enable_out;
   input  [c_mi_data_addr:0]        mp_addr_cur_y;
   input  [c_mi_data_addr:0]        mp_addr_cur_cb;
   input  [c_mi_data_addr:0]        mp_addr_cur_cr;
   input                            handshake_en;
   input  [c_mi_data_addr+3:3]      mp_r_base_ad_init;
   input  [c_mi_data_addr+3:3]      mp_r_base_ad_init2;
   input  [c_mi_data_addr:3]        mp_r_size_init;
   input  [c_mi_data_addr:3]        mp_r_offs_cnt_init;
   input  [c_mi_data_addr:3]        mp_r_irq_offs_init;   
   output [c_mi_data_addr+3:3]      mp_r_base_ad;
   output [c_mi_data_addr:3]        mp_r_size;
   output [c_mi_data_addr:3]        mp_r_offs_cnt;
   output [c_mi_data_addr:3]        mp_r_offs_cnt_start;
   output [c_mi_data_addr:3]        mp_r_irq_offs;
   input  [c_mi_data_addr+3:3]      mp_gr_base_ad_init;
   input  [c_mi_data_addr+3:3]      mp_gr_base_ad_init2;
   input  [c_mi_data_addr:3]      mp_gr_size_init;
   input  [c_mi_data_addr:3]      mp_gr_offs_cnt_init;   
   output [c_mi_data_addr+3:3]      mp_gr_base_ad;
   output wire [c_mi_data_addr:3]      mp_gr_size;
   output [c_mi_data_addr:3]      mp_gr_offs_cnt;
   output [c_mi_data_addr:3]      mp_gr_offs_cnt_start;
   input  [c_mi_data_addr+3:3]      mp_gb_base_ad_init;
   input  [c_mi_data_addr+3:3]      mp_gb_base_ad_init2;
   input  [c_mi_data_addr:3]      mp_gb_size_init;
   input  [c_mi_data_addr:3]      mp_gb_offs_cnt_init;   
   output [c_mi_data_addr+3:3]      mp_gb_base_ad;
   output [c_mi_data_addr:3]      mp_gb_size;
   output [c_mi_data_addr:3]      mp_gb_offs_cnt;
   output [c_mi_data_addr:3]      mp_gb_offs_cnt_start;
   input  [c_mi_data_addr+3:3]      mp_b_base_ad_init;
   input  [c_mi_data_addr+3:3]      mp_b_base_ad_init2;
   input  [c_mi_data_addr:3]      mp_b_size_init;
   input  [c_mi_data_addr:3]      mp_b_offs_cnt_init;   
   output [c_mi_data_addr+3:3]      mp_b_base_ad;
   output wire  [c_mi_data_addr:3]      mp_b_size;
   output [c_mi_data_addr:3]      mp_b_offs_cnt;
   output [c_mi_data_addr:3]      mp_b_offs_cnt_start;
   output           stat_mp_frame_end;
   output           stat_mblk_line;
   output           stat_fill_mp_r;
   output           stat_wrap_mp_r;
   output           stat_wrap_mp_gr;
   output           stat_wrap_mp_gb;
   output           stat_wrap_mp_b;
   input            cfg_in_update_mp;
   output           cfg_out_update_mp;
   output                           vci_out_m1_cmdval;
   output [8:0]                     vci_out_m1_plen;
   output                           vci_out_m1_eop;
   output [c_mi_data_addr+3:3]      vci_out_m1_address;
   output [63:0]                    vci_out_m1_wdata;
   output [7:0]                     vci_out_m1_be;
   output [1:0]                     vci_out_m1_cmd;
   output                           vci_out_m1_const;
   output                           vci_out_m1_contig;
   output                           vci_out_m1_wrap;
   input                            vci_out_m1_cmdack;
   input                            vci_out_m1_rspval;
   input                            vci_out_m1_reop;
   output                           vci_out_m1_rspack;
   output                           last_pixel_m1_req;
   input                            last_pixel_m1_ack;
   input                            last_pixel_sig_en;
assign mp_b_size  = {c_mi_data_addr-2{1'b0}};
assign mp_gr_size = {c_mi_data_addr-2{1'b0}};
   wire [c_mi_data_addr+3:3]        viv_s0;
   wire [63:0]                      viv_s1;
   wire [c_mi_data_addr:3]          viv_s2;
   wire [c_mi_data_addr-1:3]        viv_s3;
   wire [c_mi_data_addr:3]          viv_s4;
   wire [c_mi_data_addr-1:3]        viv_s5;
   wire [c_mi_data_addr+3:3]        viv_s6;
   wire [c_mi_data_addr+3:3]        viv_s7;
   wire [c_mi_data_addr+3:3]        viv_s8;
   wire             viv_s9;
   wire             cfg_out_update_mp;
   wire             stat_skip_active;
   wire                      viv_s10;
   wire [c_burst_len_bw-1:0] viv_s11;
   reg [c_burst_len_bw-1:0]  viv_s12;
   reg [c_burst_len_bw-1:0]  viv_s13;
   wire [c_mi_data_addr:3] viv_s14;
   wire [c_mi_data_addr-1:3] viv_s15;
   wire [c_mi_data_addr-1:3] viv_s16;
   wire                      viv_s17;
   wire [3:0]                viv_s18;
   wire [127:0]              viv_s19;
   wire [127:0]              viv_s20;
wire  [c_mi_data_addr+3:3]      viv_s21;
wire  [c_mi_data_addr+3:3]      viv_s22;
wire  [c_mi_data_addr+3:3]      viv_s23;
wire  [c_mi_data_addr+3:3]      viv_s24;
   vsisp_marvin_mi_out_updlogic_mp u_marvin_mi_out_updlogic_mp
     (
      .m_hclk               (m_hclk),
      .reset_m_hclk_n       (reset_m_hclk_n),
      .soft_rst_m_hclk      (soft_rst_m_hclk),
      .soft_upd             (soft_upd),
      .skip                 (skip),
      .mp_enable            (mp_enable),
      .jpeg_enable          (jpeg_enable),
      .raw_enable           (raw_enable),
      .dp_enable            (dp_enable),
      .mp_write_format      (mp_write_format),
      .stat_mp_enable_out   (stat_mp_enable_out),
      .stat_jpeg_enable_out (stat_jpeg_enable_out),
      .stat_raw_enable_out  (stat_raw_enable_out),
      .stat_dp_enable_out   (stat_dp_enable_out),
      .cfg_in_update_mp     (cfg_in_update_mp),
      .mp_fifo_h_end        (mp_fifo_h_end),
      .mp_fifo_v_end        (mp_fifo_v_end),
      .mp_fifo_read64       (mp_fifo_read64),
      .mp_fifo_select       (mp_fifo_select),
      .stat_mp_frame_end    (stat_mp_frame_end),
      .mp_frame_end         (viv_s9),
      .cfg_out_update_mp    (cfg_out_update_mp),   
      .stat_skip_active     (stat_skip_active)
      );
   always @(burst_len_lum)begin
      if  ((burst_len_lum == 2'b10) && (c_bursts_supported >= 5'd16))
         viv_s12 = 5'd16;   
      else if  ((burst_len_lum > 2'b00) && (c_bursts_supported >= 5'd8))
         viv_s12 = 5'd8;    
      else
         viv_s12 = 5'd4;    
   end
   always @(burst_len_chrom)begin
      if  ((burst_len_chrom == 2'b10) && (c_bursts_supported >= 5'd16))
         viv_s13 = 5'd16;   
      else if  ((burst_len_chrom > 2'b00) && (c_bursts_supported >= 5'd8))
         viv_s13 = 5'd8;    
      else
         viv_s13 = 5'd4;    
   end
   vsisp_marvin_mi_out_arbit_mp u_marvin_mi_out_arbit_mp
     (
      .m_hclk               (m_hclk),
      .reset_m_hclk_n       (reset_m_hclk_n),
      .soft_rst_m_hclk      (soft_rst_m_hclk),
      .burst_length_y       (viv_s12),
      .burst_length_c       (viv_s13),
      .mp_y_size            (mp_r_size),
      .mp_cb_size           (mp_r_size[c_mi_data_addr-1:3]),
      .mp_cr_size           (mp_r_size[c_mi_data_addr-1:3]),
      .mp_y_fifo_fill_level (mp_y_fifo_fill_level),
      .mp_y_fifo_flush      (mp_y_fifo_flush),
      .mp_cb_fifo_fill_level(mp_cb_fifo_fill_level),
      .mp_cb_fifo_flush     (mp_cb_fifo_flush),
      .mp_cr_fifo_fill_level(mp_cr_fifo_fill_level),
      .mp_cr_fifo_flush     (mp_cr_fifo_flush),
      .y_addr               (viv_s6[11:3]),
      .cb_addr              (viv_s7[11:3]),
      .cr_addr              (viv_s8[11:3]),               
      .next_sel             (viv_s17),
      .fifo_select_val      (viv_s10),
      .mp_fifo_select       (mp_fifo_select),
      .burst_len            (viv_s11),
      .mp_y_cur_ptr         (viv_s14),
      .mp_cb_cur_ptr        (viv_s15),
      .mp_cr_cur_ptr        (viv_s16)
      );
  wire viv_s25;
  wire viv_s26;
  wire viv_s27;
  wire line_tgl_en;
  wire viv_s28 = viv_s26 | viv_s27;
  wire viv_s29   = mp_fifo_read64 && mp_fifo_h_end && plnr_wrt;
  wire viv_s30 = viv_s29 && mp_fifo_select==2'b00;
  wire viv_s31 = viv_s29 && mp_fifo_select==2'b01;
  wire viv_s32   = viv_s29 & mp_fifo_v_end;
  assign y_hend_r_d = viv_s30 & ~viv_s28 ? 1'b1: line_tgl_en? 1'b0 : viv_s26;
  assign cb_hend_r_d= viv_s31 & ~viv_s28 ? 1'b1: line_tgl_en? 1'b0 : viv_s27;
  vsisp_dreg_en_1d #(1,1'b0) y_hend_r_reg               (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(viv_s26), .in(y_hend_r_d), .en(1'b1));
  vsisp_dreg_en_1d #(1,1'b0) cb_hend_r_reg              (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(viv_s27), .in(cb_hend_r_d), .en(1'b1));
  assign line_tgl_en = viv_s29 && viv_s28; 
  vsisp_dreg_en_1d #(1,1'b0) line_tgl_reg              (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(viv_s25), .in(~viv_s25&~viv_s32), .en(line_tgl_en));
  wire [c_fifo_depth_bw-1:0] viv_s33 ;   
  wire [c_fifo_depth_bw-1:0] viv_s34 ;   
  wire [c_fifo_depth_bw-1:0] viv_s35 ;   
  assign viv_s33 = ~viv_s26 ? mp_y_fifo_fill_level : {c_fifo_depth_bw{1'b0}};
  assign viv_s34 = ~viv_s27 ? mp_cb_fifo_fill_level : {c_fifo_depth_bw{1'b0}};
  assign viv_s35 = {c_fifo_depth_bw{1'b0}};
  wire viv_s36 = viv_s25 & plnr_wrt;
  wire viv_s37 = mp_fifo_read64 && ~viv_s36;
  wire viv_s38 =  mp_fifo_read64 && viv_s36;
  assign  mp_gr_offs_cnt[c_mi_data_addr]=1'b0;
  assign  mp_b_offs_cnt[c_mi_data_addr] =1'b0;
  assign  mp_gr_offs_cnt_start[c_mi_data_addr]=1'b0;
  assign  mp_b_offs_cnt_start[c_mi_data_addr] =1'b0;
   vsisp_marvin_mi_out_addrgen_mp u_marvin_mi_out_addrgen_mp_even_line
     (
      .mp_line_sens        (mp_line_sens),
      .mp_output_format    (mp_output_format),
      .mp_y_llength        (mp_y_llength),
      .m_hclk              (m_hclk),
      .reset_m_hclk_n      (reset_m_hclk_n),
      .soft_rst_m_hclk     (soft_rst_m_hclk),
      .mp_fifo_h_end       (mp_fifo_h_end),
      .mp_fifo_v_end       (mp_fifo_v_end&(~(data_mode_en & ~stat_skip_active))),
      .soft_upd            (soft_upd),
      .mp_write_format     (mp_write_format),
      .init_base_en        (init_base_en),
      .init_offset_en      (init_offset_en),
      .mp_pingpong_en      (mp_pingpong_en),
      .mp_y_base_ad        (mp_r_base_ad),
      .mp_y_size           (mp_r_size),
      .mp_y_offs_cnt       (mp_r_offs_cnt),
      .mp_y_base_ad_init   (mp_r_base_ad_init),
      .mp_y_base_ad_init2  (mp_r_base_ad_init2),
      .mp_y_size_init      (mp_r_size_init),
      .mp_y_offs_cnt_init  (mp_r_offs_cnt_init),
      .mp_y_offs_cnt_start (mp_r_offs_cnt_start),
      .mp_y_irq_offs_init  (mp_r_irq_offs_init),
      .mp_y_irq_offs       (mp_r_irq_offs),
      .mp_cb_base_ad       (mp_gr_base_ad),
      .mp_cb_size          (),
      .mp_cb_offs_cnt      (mp_gr_offs_cnt[c_mi_data_addr-1:3]),
      .mp_cb_base_ad_init  (mp_gr_base_ad_init),
      .mp_cb_base_ad_init2 (mp_gr_base_ad_init2),
      .mp_cb_size_init     (mp_gr_size_init[c_mi_data_addr-1:3]),
      .mp_cb_offs_cnt_init (mp_gr_offs_cnt_init[c_mi_data_addr-1:3]),
      .mp_cb_offs_cnt_start(mp_gr_offs_cnt_start[c_mi_data_addr-1:3]),
      .mp_cr_base_ad       (),
      .mp_cr_size          (),
      .mp_cr_offs_cnt      (),
      .mp_cr_base_ad_init  ({c_mi_data_addr+3-3+1{1'b0}}),
      .mp_cr_base_ad_init2 ({c_mi_data_addr+3-3+1{1'b0}}),
      .mp_cr_size_init     ({c_mi_data_addr-1-3+1{1'b0}}),
      .mp_cr_offs_cnt_init ({c_mi_data_addr-1-3+1{1'b0}}),
      .mp_cr_offs_cnt_start(),
      .vci_out_m1_rspval   (vci_out_m1_rspval),
      .vci_out_m1_reop     (vci_out_m1_reop),
      .stat_mblk_line      (stat_mblk_line),
      .stat_fill_mp_y      (stat_fill_mp_r),
      .stat_wrap_mp_y      (stat_wrap_mp_r),
      .stat_wrap_mp_cb     (stat_wrap_mp_gr),
      .stat_wrap_mp_cr     (),
      .mp_fifo_read64      (viv_s37),
      .mp_fifo_select      (mp_fifo_select),
      .cfg_out_update_mp   (cfg_out_update_mp),
      .stat_skip_active    (stat_skip_active),
      .mp_y_cur_ptr        (viv_s2),
      .mp_cb_cur_ptr       (viv_s3),
      .mp_cr_cur_ptr       (),
      .cfg_upd_double      (cfg_upd_double)
      );
   vsisp_marvin_mi_out_addrgen_mp u_marvin_mi_out_addrgen_mp_odd_line
     (
      .mp_line_sens        (mp_line_sens),
      .mp_output_format    (mp_output_format),
      .mp_y_llength        (mp_y_llength),
      .m_hclk              (m_hclk),
      .reset_m_hclk_n      (reset_m_hclk_n),
      .soft_rst_m_hclk     (soft_rst_m_hclk),
      .mp_fifo_h_end       (mp_fifo_h_end),
      .mp_fifo_v_end       (mp_fifo_v_end),
      .soft_upd            (soft_upd),
      .mp_write_format     (mp_write_format),
      .init_base_en        (init_base_en),
      .init_offset_en      (init_offset_en),
      .mp_pingpong_en      (mp_pingpong_en),
      .mp_y_base_ad        (mp_gb_base_ad),
      .mp_y_size           (mp_gb_size),
      .mp_y_offs_cnt       (mp_gb_offs_cnt),
      .mp_y_base_ad_init   (mp_gb_base_ad_init),
      .mp_y_base_ad_init2  (mp_gb_base_ad_init2),
      .mp_y_size_init      (mp_gb_size_init),
      .mp_y_offs_cnt_init  (mp_gb_offs_cnt_init),
      .mp_y_offs_cnt_start (mp_gb_offs_cnt_start),
      .mp_y_irq_offs_init  (mp_r_irq_offs_init),
      .mp_y_irq_offs       (),
      .mp_cb_base_ad       (mp_b_base_ad),
      .mp_cb_size          (),
      .mp_cb_offs_cnt      (mp_b_offs_cnt[c_mi_data_addr-1:3]),
      .mp_cb_base_ad_init  (mp_b_base_ad_init),
      .mp_cb_base_ad_init2 (mp_b_base_ad_init2),
      .mp_cb_size_init     (mp_b_size_init[c_mi_data_addr-1:3]),
      .mp_cb_offs_cnt_init (mp_b_offs_cnt_init[c_mi_data_addr-1:3]),
      .mp_cb_offs_cnt_start(mp_b_offs_cnt_start[c_mi_data_addr-1:3]),
      .mp_cr_base_ad       (),
      .mp_cr_size          (),
      .mp_cr_offs_cnt      (),
      .mp_cr_base_ad_init  ({c_mi_data_addr+3-3+1{1'b0}}),
      .mp_cr_base_ad_init2 ({c_mi_data_addr+3-3+1{1'b0}}),
      .mp_cr_size_init     ({c_mi_data_addr-1-3+1{1'b0}}),
      .mp_cr_offs_cnt_init ({c_mi_data_addr-1-3+1{1'b0}}),
      .mp_cr_offs_cnt_start(),
      .vci_out_m1_rspval   (vci_out_m1_rspval),
      .vci_out_m1_reop     (vci_out_m1_reop),
      .stat_mblk_line      (stat_mblk_line_odd),
      .stat_fill_mp_y      (stat_fill_mp_gb),
      .stat_wrap_mp_y      (stat_wrap_mp_gb),
      .stat_wrap_mp_cb     (stat_wrap_mp_b),
      .stat_wrap_mp_cr     (),
      .mp_fifo_read64      (viv_s38),
      .mp_fifo_select      (mp_fifo_select),
      .cfg_out_update_mp   (cfg_out_update_mp),
      .stat_skip_active    (stat_skip_active),
      .mp_y_cur_ptr        (viv_s4),
      .mp_cb_cur_ptr       (viv_s5),
      .mp_cr_cur_ptr       (),
      .cfg_upd_double      ()
      );
   vsisp_marvin_mi_out_ctrl_mp u_marvin_mi_out_ctrl_mp
     (
      .m_hclk              (m_hclk),
      .reset_m_hclk_n      (reset_m_hclk_n),
      .soft_rst_m_hclk     (soft_rst_m_hclk),
      .mp_fifo_read64      (mp_fifo_read64),
      .stat_mp_frame_end   (stat_mp_frame_end),
      .vci_out_m1_cmdval   (vci_out_m1_cmdval),
      .vci_out_m1_plen     (vci_out_m1_plen),
      .vci_out_m1_eop      (vci_out_m1_eop),
      .vci_out_m1_address  (vci_out_m1_address),
      .vci_out_m1_wdata    (vci_out_m1_wdata),
      .vci_out_m1_be       (vci_out_m1_be),
      .vci_out_m1_cmd      (vci_out_m1_cmd),
      .vci_out_m1_const    (vci_out_m1_const),
      .vci_out_m1_contig   (vci_out_m1_contig),
      .vci_out_m1_wrap     (vci_out_m1_wrap),
      .vci_out_m1_cmdack   (vci_out_m1_cmdack),
      .vci_out_m1_rspval   (vci_out_m1_rspval),
      .vci_out_m1_reop     (vci_out_m1_reop),
      .vci_out_m1_rspack   (vci_out_m1_rspack),
      .fifo_select_val     (viv_s10),
      .burst_len           (viv_s11),
      .address             (viv_s0),
      .data                (viv_s1),
      .stat_skip_active    (stat_skip_active),
      .mp_frame_end        (viv_s9),
      .next_sel            (viv_s17),
      .stat_mp_enable_in   (stat_mp_enable_out),
      .stat_jpeg_enable_in (stat_jpeg_enable_out),
      .stat_raw_enable_in  (stat_raw_enable_out),
      .last_pixel_sig_en   (last_pixel_sig_en),
      .last_pixel_m1_req   (last_pixel_m1_req),
      .last_pixel_m1_ack   (last_pixel_m1_ack)
      );
   assign  viv_s14=handshake_en ? mp_addr_cur_y[c_mi_data_addr-3:0]:  viv_s36==1'b0 ? viv_s2: viv_s4;
   assign  viv_s15=handshake_en ? mp_addr_cur_cb[c_mi_data_addr-4:0]:viv_s36==1'b0 ? viv_s3: viv_s5;
   assign  viv_s16=handshake_en ? mp_addr_cur_cr[c_mi_data_addr-4:0]: {c_mi_data_addr-4+1{1'b0}}  ;
   assign viv_s6  = (viv_s36==1'b0 ? viv_s21:viv_s23)  + {3'b0, viv_s14};
   assign viv_s7 = (viv_s36==1'b0 ? viv_s22:viv_s24)  + {4'b0, viv_s15};
   assign viv_s8 = {c_mi_data_addr+1{1'b0}};
   assign viv_s0 = ((mp_fifo_select == 2'd0) ? viv_s6  : 29'h0) |
                    ((mp_fifo_select == 2'd1) ? viv_s7 : 29'h0) |
                    ((mp_fifo_select == 2'd2) ? viv_s8 : 29'h0);
   assign viv_s18[3:0]      = {1'b0,mp_byte_swap[2:0]};
   assign viv_s19[127:0] = {64'h0,mp_fifo_data[63:0]};
   assign viv_s1[63:0] = viv_s20[63:0];
   vsisp_marvin_mi_swap u_marvin_mi_swap(.swap_vector     (viv_s18[3:0]),
                                   .data_to_swap    (viv_s19[127:0]),
                                   .swapped_data    (viv_s20[127:0]));
   parameter INIT=0,
             OP_UP=1,
             OP_WAIT_END_VAL=2;
   wire [3:0] viv_s39;
   reg  [3:0] viv_s40;
   reg  [1:0] viv_s41;
   reg  [1:0] viv_s42;
   wire [1:0] viv_s43;
   reg viv_s44;
   reg viv_s45;
   reg [1:0] viv_s46;
   wire  [1:0] viv_s47;
   vsisp_dreg_en_1d #(2,2'b0) u_bayer_pat_stat         (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(viv_s43), .in(viv_s42),  .en(1'b1));
   vsisp_dreg_en_1d #(2,2'b0) u_bayer_pat_lock         (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(viv_s47), .in(viv_s46),  .en(1'b1));
   vsisp_dreg_en_1d #(4,4'd0) u_op_cs                  (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(viv_s39),          .in(viv_s40),             .en(1'b1));                   
   vsisp_dreg_en_1d #(1,1'd0) u_frame_end_lock         (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(frame_end_lock),          .in(viv_s44),             .en(1'b1));                   
   vsisp_dreg_en_1d #(1,1'd0) u_val_1st_pxl_lock       (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(val_1st_pxl_lock),          .in(viv_s45),             .en(1'b1));                   
   vsisp_dreg_en_2d #(1,1'd0) u_val_1st_pxl_sync2      (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(val_1st_pxl_sync2),          .in(val_1st_pxl),             .en(1'b1));                   
   vsisp_dreg_en_1d #(1,1'd0) u_val_1st_pxl_sync3      (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_rst_m_hclk), .out(val_1st_pxl_sync3),          .in(val_1st_pxl_sync2),             .en(1'b1));                   
   wire viv_s48 = val_1st_pxl_sync3 ^ val_1st_pxl_sync2;
   always @(*)begin
    viv_s45 = val_1st_pxl_lock;
    viv_s44   = frame_end_lock;
    viv_s42   = viv_s43;
    viv_s46   = viv_s47;
    if(viv_s48)begin
      viv_s45=1'b1;
      viv_s46 = bayer_pat;
    end
    viv_s40 = viv_s39;
    case(viv_s39)
      INIT:if(val_1st_pxl_lock)begin
        viv_s45 = 1'b0;
        viv_s40 = OP_UP;
      end
      OP_UP:begin
        viv_s42 = viv_s47;
        viv_s40 = OP_WAIT_END_VAL;
      end
      OP_WAIT_END_VAL:begin
        if(stat_mp_frame_end)begin
          viv_s44 = 1'b1;
        end
        else if(frame_end_lock & val_1st_pxl_lock)begin
          viv_s40 = OP_UP;
          viv_s44 = 1'b0;
          viv_s45 = 1'b0;
        end
      end
      default:begin
        viv_s40 = INIT;
      end
    endcase
   end
  assign        viv_s21 =     mp_write_format==2'b10 ? mp_r_base_ad: 
                                        viv_s43==2'b00 ? mp_r_base_ad:
                                        viv_s43==2'b01 ? mp_gr_base_ad:
                                        viv_s43==2'b10 ? mp_gb_base_ad:
                                        viv_s43==2'b11 ? mp_b_base_ad: mp_r_base_ad;
  assign        viv_s22=      viv_s43==2'b00 ? mp_gr_base_ad:
                                        viv_s43==2'b01 ? mp_r_base_ad:
                                        viv_s43==2'b10 ? mp_b_base_ad:
                                        viv_s43==2'b11 ? mp_gb_base_ad: mp_gr_base_ad;
  assign        viv_s23=      viv_s43==2'b00 ? mp_gb_base_ad:
                                        viv_s43==2'b01 ? mp_b_base_ad:
                                        viv_s43==2'b10 ? mp_r_base_ad:
                                        viv_s43==2'b11 ? mp_gr_base_ad: mp_gb_base_ad;
  assign        viv_s24 =      viv_s43==2'b00 ? mp_b_base_ad:
                                        viv_s43==2'b01 ? mp_gb_base_ad:
                                        viv_s43==2'b10 ? mp_gr_base_ad:
                                        viv_s43==2'b11 ? mp_r_base_ad: mp_b_base_ad;
endmodule
