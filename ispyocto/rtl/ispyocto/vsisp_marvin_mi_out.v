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

module vsisp_marvin_mi_out
  (
   m_hclk,
   reset_m_hclk_n,
   soft_rst_m_hclk,
   mp_fifo_read64,
   mp_fifo_select,
   mp_fifo_data,
   mp_fifo_h_end,
   mp_fifo_v_end,
   sp_fifo_read64,
   sp_fifo_select,
   sp_fifo_data,
   sp_fifo_h_end,
   sp_fifo_v_end,
   mp_y_fifo_fill_level,
   mp_y_fifo_flush,
   mp_cb_fifo_fill_level,
   mp_cb_fifo_flush,
   mp_cr_fifo_fill_level,
   mp_cr_fifo_flush,
   sp_y_fifo_fill_level,
   sp_y_fifo_flush,
   sp_cb_fifo_fill_level,
   sp_cb_fifo_flush,
   sp_cr_fifo_fill_level,
   sp_cr_fifo_flush,
   soft_upd,
   skip,
   mp_enable,
   sp_enable,
   jpeg_enable,
   raw_enable,
   dp_enable,
   h_flip,
   v_flip,
   rot,
   mp_write_format,
   sp_write_format,
   sp_output_format,
   byte_swap,
   init_base_en,
   init_offset_en,
   mp_pingpong_en,
   sp_pingpong_en,
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
   cfg_in_update_mp,
   cfg_in_update_sp,
   cfg_out_update_mp,
   cfg_out_update_sp,
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
   last_pixel_sig_en,
   last_pixel_m1_req,
   last_pixel_m1_ack,
   last_pixel_m2_req,
   last_pixel_m2_ack,
   mp_y_llength,
   mp_output_format,
   mp_slice_offset_y,
   mp_slice_offset_c,
   mp_byte_swap,
   sp_byte_swap,
   handshake_en,
   starage_format,
   data_format,
   slice_size,
   slice_buf_size,
   ack_count,
   mp_interrupt,
   isp_0_ack,
   bresp_in,
   isp_0_ready,
   isp_0_attr,
   stat_skip_active,
   mp_line_sens,
   handshake_mode_0,
   slice_cnt_int   ,
   sw_addr_mp_y    ,
   sw_addr_mp_cb   ,
   sw_addr_mp_cr   ,
   sw_interrupt    );
`include "vsisp_marvin_mi.vh"
input                           mp_line_sens;
output                          stat_skip_active;
input   [3:0]                   mp_output_format;
input   [14:0]                  mp_y_llength;
input   [c_mi_data_addr:0]      mp_slice_offset_y;
input   [c_mi_data_addr:0]      mp_slice_offset_c;
input   [2:0]                   mp_byte_swap;
input   [2:0]                   sp_byte_swap;
input                           handshake_en;
input  [1:0]                    starage_format;
input  [1:0]                    data_format;
input  [7:0]                    slice_size;
input  [7:0]                    slice_buf_size;
input  [7:0]                    ack_count;
output                          mp_interrupt;
input                           isp_0_ack;
input                           bresp_in;
output                          isp_0_ready;     
output [1:0]                    isp_0_attr;
input                           handshake_mode_0;
input   [7:0]                   slice_cnt_int;
output  [c_mi_data_addr:0]      sw_addr_mp_y;
output  [c_mi_data_addr:0]      sw_addr_mp_cb;
output  [c_mi_data_addr:0]      sw_addr_mp_cr;
output                          sw_interrupt;
   input         m_hclk;
   input         reset_m_hclk_n;
   input         soft_rst_m_hclk;
   output        mp_fifo_read64;
   output [1:0]  mp_fifo_select;
   input [63:0]  mp_fifo_data;
   input         mp_fifo_h_end;
   input         mp_fifo_v_end;
   output        sp_fifo_read64;
   output [1:0]  sp_fifo_select;
   input [63:0]  sp_fifo_data;
   input         sp_fifo_h_end;
   input         sp_fifo_v_end;
   input [c_fifo_depth_bw-1:0] mp_y_fifo_fill_level;   
   input                       mp_y_fifo_flush;
   input [c_fifo_depth_bw-1:0] mp_cb_fifo_fill_level;  
   input                       mp_cb_fifo_flush;
   input [c_fifo_depth_bw-1:0] mp_cr_fifo_fill_level;  
   input                       mp_cr_fifo_flush;
   input [c_fifo_depth_bw-1:0] sp_y_fifo_fill_level;   
   input                       sp_y_fifo_flush;
   input [c_fifo_depth_bw-1:0] sp_cb_fifo_fill_level;  
   input                       sp_cb_fifo_flush;
   input [c_fifo_depth_bw-1:0] sp_cr_fifo_fill_level;  
   input                       sp_cr_fifo_flush;
   input            soft_upd;
   input            skip;
   input            mp_enable;
   input            sp_enable;
   input            jpeg_enable;
   input            raw_enable;
   input [1:0]      dp_enable;
   input            h_flip;
   input            v_flip;
   input            rot;
   input [1:0]      mp_write_format;
   input [1:0]      sp_write_format;
   input [2:0]      sp_output_format;
   input            byte_swap;
   input            init_base_en;
   input            init_offset_en;
   input            mp_pingpong_en;          
   input            sp_pingpong_en;          
   input [1:0]      burst_len_lum;
   input [1:0]      burst_len_chrom;
   output           stat_mp_enable_out;
   output           stat_sp_enable_out;
   output           stat_jpeg_enable_out;
   output           stat_raw_enable_out;
   output [1:0]     stat_dp_enable_out;
   input  [c_mi_data_addr+3:3]          mp_y_base_ad_init;
   input  [c_mi_data_addr+3:3]          mp_y_base_ad_init2;
   input  [c_mi_data_addr:3]            mp_y_size_init;
   input  [c_mi_data_addr:3]            mp_y_offs_cnt_init;   
   input  [c_mi_data_addr:3]            mp_y_irq_offs_init;   
   output [c_mi_data_addr+3:3]          mp_y_base_ad;
   output [c_mi_data_addr:3]            mp_y_size;
   output [c_mi_data_addr:3]            mp_y_offs_cnt;
   output [c_mi_data_addr:3]            mp_y_offs_cnt_start;
   output [c_mi_data_addr:3]            mp_y_irq_offs;
   input  [c_mi_data_addr+3:3]          mp_cb_base_ad_init;
   input  [c_mi_data_addr+3:3]          mp_cb_base_ad_init2;
   input  [c_mi_data_addr-1:3]          mp_cb_size_init;
   input  [c_mi_data_addr-1:3]          mp_cb_offs_cnt_init;   
   output [c_mi_data_addr+3:3]          mp_cb_base_ad;
   output [c_mi_data_addr-1:3]          mp_cb_size;
   output [c_mi_data_addr-1:3]          mp_cb_offs_cnt;
   output [c_mi_data_addr-1:3]          mp_cb_offs_cnt_start;
   input  [c_mi_data_addr+3:3]          mp_cr_base_ad_init;
   input  [c_mi_data_addr+3:3]          mp_cr_base_ad_init2;
   input  [c_mi_data_addr-1:3]          mp_cr_size_init;
   input  [c_mi_data_addr-1:3]          mp_cr_offs_cnt_init;   
   output [c_mi_data_addr+3:3]          mp_cr_base_ad;
   output [c_mi_data_addr-1:3]          mp_cr_size;
   output [c_mi_data_addr-1:3]          mp_cr_offs_cnt;
   output [c_mi_data_addr-1:3]          mp_cr_offs_cnt_start;
   input  [c_mi_data_addr+3:3]          sp_y_base_ad_init;
   input  [c_mi_data_addr+3:3]          sp_y_base_ad_init2;
   input  [c_mi_data_addr:3]            sp_y_size_init;
   input  [c_mi_data_addr:3]            sp_y_offs_cnt_init;
   input  [14:0]                        sp_y_pic_width;
   input  [14:0]                        sp_y_llength;
   input  [c_mi_data_addr:0]            sp_y_pic_size;
   output [c_mi_data_addr+3:3]          sp_y_base_ad;
   output [c_mi_data_addr:3]            sp_y_size;
   output [c_mi_data_addr:3]            sp_y_offs_cnt;
   output [c_mi_data_addr:3]            sp_y_offs_cnt_start;
   input  [c_mi_data_addr+3:3]          sp_cb_base_ad_init;
   input  [c_mi_data_addr+3:3]          sp_cb_base_ad_init2;
   input  [c_mi_data_addr-1:3]          sp_cb_size_init;
   input  [c_mi_data_addr-1:3]          sp_cb_offs_cnt_init;
   output [c_mi_data_addr+3:3]          sp_cb_base_ad;
   output [c_mi_data_addr-1:3]          sp_cb_size;
   output [c_mi_data_addr-1:3]          sp_cb_offs_cnt;
   output [c_mi_data_addr-1:3]          sp_cb_offs_cnt_start;
   output [c_mi_data_addr+3:3]          sp_cr_base_ad;
   output [c_mi_data_addr-1:3]          sp_cr_size;
   output [c_mi_data_addr-1:3]          sp_cr_offs_cnt;
   input  [c_mi_data_addr+3:3]          sp_cr_base_ad_init;
   input  [c_mi_data_addr+3:3]          sp_cr_base_ad_init2;
   input  [c_mi_data_addr-1:3]          sp_cr_size_init;
   input  [c_mi_data_addr-1:3]          sp_cr_offs_cnt_init;
   output [c_mi_data_addr-1:3]          sp_cr_offs_cnt_start;
   output           stat_mp_frame_end;
   output           stat_sp_frame_end;
   output           stat_mblk_line;
   output           stat_fill_mp_y;
   output           stat_wrap_mp_y;
   output           stat_wrap_mp_cb;
   output           stat_wrap_mp_cr;
   output           stat_wrap_sp_y;
   output           stat_wrap_sp_cb;
   output           stat_wrap_sp_cr;
   input            cfg_in_update_mp;
   input            cfg_in_update_sp;
   output           cfg_out_update_mp;
   output           cfg_out_update_sp;
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
   output                           vci_out_m2_cmdval;
   output [8:0]                     vci_out_m2_plen;
   output                           vci_out_m2_eop;
   output [c_mi_data_addr+3:3]      vci_out_m2_address;
   output [63:0]                    vci_out_m2_wdata;
   output [7:0]                     vci_out_m2_be;
   output [1:0]                     vci_out_m2_cmd;
   output                           vci_out_m2_const;
   output                           vci_out_m2_contig;
   output                           vci_out_m2_wrap;
   input                            vci_out_m2_cmdack;
   input                            vci_out_m2_rspval;
   input                            vci_out_m2_reop;
   output                           vci_out_m2_rspack;
   output           last_pixel_m1_req;
   input            last_pixel_m1_ack;
   input            last_pixel_sig_en;
   output           last_pixel_m2_req;
   input            last_pixel_m2_ack;
   wire [c_mi_data_addr+3:3] viv_s0;
   wire [c_mi_data_addr:0]   viv_s1;
   wire                      viv_s2;
   wire                      viv_s3;
   wire [1:0]                viv_s4;
   wire                      stat_skip_active;
   wire                      viv_s5;
   wire [c_mi_data_addr:0]   viv_s6;
   wire [c_mi_data_addr:0]   viv_s7;
   wire [c_mi_data_addr:0]   viv_s8;
   wire [c_mi_data_addr:0]   sw_addr_mp_y;
   wire [c_mi_data_addr:0]   sw_addr_mp_cb;
   wire [c_mi_data_addr:0]   sw_addr_mp_cr;
   wire                      sw_interrupt;
   vsisp_marvin_mi_out_mp #(c_bursts_supported, c_burst_len_bw, c_fifo_depth_bw) u_marvin_mi_out_mp
     (
      .mp_line_sens        (mp_line_sens),
      .mp_output_format    (mp_output_format),
      .mp_y_llength        (mp_y_llength),
      .mp_byte_swap        (mp_byte_swap),
      .m_hclk                (m_hclk),
      .reset_m_hclk_n        (reset_m_hclk_n),
      .soft_rst_m_hclk       (soft_rst_m_hclk),
      .mp_fifo_read64        (mp_fifo_read64),
      .mp_fifo_select        (mp_fifo_select),
      .mp_fifo_data          (mp_fifo_data),
      .mp_fifo_h_end         (mp_fifo_h_end),
      .mp_fifo_v_end         (mp_fifo_v_end),
      .mp_y_fifo_fill_level  (mp_y_fifo_fill_level),
      .mp_y_fifo_flush       (mp_y_fifo_flush),
      .mp_cb_fifo_fill_level (mp_cb_fifo_fill_level),
      .mp_cb_fifo_flush      (mp_cb_fifo_flush),
      .mp_cr_fifo_fill_level (mp_cr_fifo_fill_level),
      .mp_cr_fifo_flush      (mp_cr_fifo_flush),
      .soft_upd              (soft_upd),
      .skip                  (skip),
      .mp_enable             (mp_enable),
      .jpeg_enable           (jpeg_enable),
      .raw_enable            (raw_enable),
      .dp_enable             (dp_enable[0]),
      .mp_write_format       (mp_write_format),
      .byte_swap             (byte_swap),
      .init_base_en          (init_base_en),
      .init_offset_en        (init_offset_en),
      .mp_pingpong_en        (mp_pingpong_en),
      .burst_len_lum         (burst_len_lum),
      .burst_len_chrom       (burst_len_chrom),
      .stat_mp_enable_out    (stat_mp_enable_out),
      .stat_jpeg_enable_out  (stat_jpeg_enable_out),
      .stat_raw_enable_out   (stat_raw_enable_out),
      .stat_dp_enable_out    (stat_dp_enable_out[0]),
      .mp_y_base_ad          (mp_y_base_ad),
      .mp_y_size             (mp_y_size),
      .mp_y_offs_cnt         (mp_y_offs_cnt),
      .mp_y_base_ad_init     (mp_y_base_ad_init),
      .mp_y_base_ad_init2    (mp_y_base_ad_init2),
      .mp_y_size_init        (mp_y_size_init),
      .mp_y_offs_cnt_init    (mp_y_offs_cnt_init),
      .mp_y_offs_cnt_start   (mp_y_offs_cnt_start),
      .mp_y_irq_offs_init    (mp_y_irq_offs_init),
      .mp_y_irq_offs         (mp_y_irq_offs),
      .mp_cb_base_ad         (mp_cb_base_ad),
      .mp_cb_size            (mp_cb_size),
      .mp_cb_offs_cnt        (mp_cb_offs_cnt),
      .mp_cb_base_ad_init    (mp_cb_base_ad_init),
      .mp_cb_base_ad_init2   (mp_cb_base_ad_init2),
      .mp_cb_size_init       (mp_cb_size_init),
      .mp_cb_offs_cnt_init   (mp_cb_offs_cnt_init),
      .mp_cb_offs_cnt_start  (mp_cb_offs_cnt_start),
      .mp_cr_base_ad         (mp_cr_base_ad),
      .mp_cr_size            (mp_cr_size),
      .mp_cr_offs_cnt        (mp_cr_offs_cnt),
      .mp_cr_base_ad_init    (mp_cr_base_ad_init),
      .mp_cr_base_ad_init2   (mp_cr_base_ad_init2),
      .mp_cr_size_init       (mp_cr_size_init),
      .mp_cr_offs_cnt_init   (mp_cr_offs_cnt_init),
      .mp_cr_offs_cnt_start  (mp_cr_offs_cnt_start),
      .mp_addr_cur_y         (viv_s6 ),
      .mp_addr_cur_cb        (viv_s7 ),
      .mp_addr_cur_cr        (viv_s8 ),
      .handshake_en          (handshake_en ),
      .stat_mp_frame_end     (stat_mp_frame_end),
      .stat_mblk_line        (stat_mblk_line),
      .stat_fill_mp_y        (stat_fill_mp_y),
      .stat_wrap_mp_y        (stat_wrap_mp_y),
      .stat_wrap_mp_cb       (stat_wrap_mp_cb),
      .stat_wrap_mp_cr       (stat_wrap_mp_cr),
      .cfg_in_update_mp      (cfg_in_update_mp),
      .cfg_out_update_mp     (cfg_out_update_mp),
      .vci_out_m1_cmdval     (vci_out_m1_cmdval),
      .vci_out_m1_plen       (vci_out_m1_plen),
      .vci_out_m1_eop        (vci_out_m1_eop),
      .vci_out_m1_address    (viv_s0),
      .vci_out_m1_wdata      (vci_out_m1_wdata),
      .vci_out_m1_be         (vci_out_m1_be),
      .vci_out_m1_cmd        (vci_out_m1_cmd),
      .vci_out_m1_const      (vci_out_m1_const),
      .vci_out_m1_contig     (vci_out_m1_contig),
      .vci_out_m1_wrap       (vci_out_m1_wrap),
      .vci_out_m1_cmdack     (vci_out_m1_cmdack),
      .vci_out_m1_rspval     (vci_out_m1_rspval),
      .vci_out_m1_reop       (vci_out_m1_reop),
      .vci_out_m1_rspack     (vci_out_m1_rspack),
      .last_pixel_sig_en     (last_pixel_sig_en),
      .last_pixel_m1_req     (last_pixel_m1_req),
      .last_pixel_m1_ack     (last_pixel_m1_ack),
      .cfg_upd_double        (viv_s5),
      .stat_skip_active      (stat_skip_active)
      );
         vsisp_marvin_mi_out_sp #(c_bursts_supported, c_burst_len_bw, c_fifo_depth_bw) u_marvin_mi_out_sp
                          (
                           .sp_byte_swap          (sp_byte_swap),
                           .m_hclk                (m_hclk),
                           .reset_m_hclk_n        (reset_m_hclk_n),
                           .soft_rst_m_hclk       (soft_rst_m_hclk),
                           .sp_fifo_read64        (sp_fifo_read64),
                           .sp_fifo_select        (sp_fifo_select),
                           .sp_fifo_data          (sp_fifo_data),
                           .sp_fifo_h_end         (sp_fifo_h_end),
                           .sp_fifo_v_end         (sp_fifo_v_end),
                           .sp_y_fifo_fill_level  (sp_y_fifo_fill_level),
                           .sp_y_fifo_flush       (sp_y_fifo_flush),
                           .sp_cb_fifo_fill_level (sp_cb_fifo_fill_level),
                           .sp_cb_fifo_flush      (sp_cb_fifo_flush),
                           .sp_cr_fifo_fill_level (sp_cr_fifo_fill_level),
                           .sp_cr_fifo_flush      (sp_cr_fifo_flush),
                           .soft_upd              (soft_upd),
                           .sp_enable             (sp_enable),
                           .dp_enable             (dp_enable[1]),
                           .h_flip                (h_flip),
                           .v_flip                (v_flip),
                           .rot                   (rot),
                           .sp_write_format       (sp_write_format),
                           .sp_output_format      (sp_output_format),
                           .byte_swap             (byte_swap),
                           .init_base_en          (init_base_en),
                           .init_offset_en        (init_offset_en),
                           .sp_pingpong_en        (sp_pingpong_en),
                           .burst_len_lum         (burst_len_lum),
                           .burst_len_chrom       (burst_len_chrom),
                           .stat_sp_enable_out    (stat_sp_enable_out),
                           .stat_dp_enable_out    (stat_dp_enable_out[1]),
                           .sp_y_base_ad          (sp_y_base_ad),
                           .sp_y_size             (sp_y_size),
                           .sp_y_offs_cnt         (sp_y_offs_cnt),
                           .sp_y_base_ad_init     (sp_y_base_ad_init),
                           .sp_y_base_ad_init2    (sp_y_base_ad_init2),
                           .sp_y_size_init        (sp_y_size_init),
                           .sp_y_offs_cnt_init    (sp_y_offs_cnt_init),
                           .sp_y_offs_cnt_start   (sp_y_offs_cnt_start),
                           .sp_y_pic_width        (sp_y_pic_width),
                           .sp_y_llength          (sp_y_llength),
                           .sp_y_pic_size         (sp_y_pic_size),
                           .sp_cb_base_ad         (sp_cb_base_ad),
                           .sp_cb_size            (sp_cb_size),
                           .sp_cb_offs_cnt        (sp_cb_offs_cnt),
                           .sp_cb_base_ad_init    (sp_cb_base_ad_init),
                           .sp_cb_base_ad_init2   (sp_cb_base_ad_init2),
                           .sp_cb_size_init       (sp_cb_size_init),
                           .sp_cb_offs_cnt_init   (sp_cb_offs_cnt_init),
                           .sp_cb_offs_cnt_start  (sp_cb_offs_cnt_start),
                           .sp_cr_base_ad         (sp_cr_base_ad),
                           .sp_cr_size            (sp_cr_size),
                           .sp_cr_offs_cnt        (sp_cr_offs_cnt),
                           .sp_cr_base_ad_init    (sp_cr_base_ad_init),
                           .sp_cr_base_ad_init2   (sp_cr_base_ad_init2),
                           .sp_cr_size_init       (sp_cr_size_init),
                           .sp_cr_offs_cnt_init   (sp_cr_offs_cnt_init),
                           .sp_cr_offs_cnt_start  (sp_cr_offs_cnt_start),
                           .stat_sp_frame_end     (stat_sp_frame_end),
                           .stat_wrap_sp_y        (stat_wrap_sp_y),
                           .stat_wrap_sp_cb       (stat_wrap_sp_cb),
                           .stat_wrap_sp_cr       (stat_wrap_sp_cr),
                           .cfg_in_update_sp      (cfg_in_update_sp),
                           .cfg_out_update_sp     (cfg_out_update_sp),
                           .vci_out_m2_cmdval     (vci_out_m2_cmdval),
                           .vci_out_m2_plen       (vci_out_m2_plen),
                           .vci_out_m2_eop        (vci_out_m2_eop),
                           .vci_out_m2_address    (vci_out_m2_address),
                           .vci_out_m2_wdata      (vci_out_m2_wdata),
                           .vci_out_m2_be         (vci_out_m2_be),
                           .vci_out_m2_cmd        (vci_out_m2_cmd),
                           .vci_out_m2_const      (vci_out_m2_const),
                           .vci_out_m2_contig     (vci_out_m2_contig),
                           .vci_out_m2_wrap       (vci_out_m2_wrap),
                           .vci_out_m2_cmdack     (vci_out_m2_cmdack),
                           .vci_out_m2_rspval     (vci_out_m2_rspval),
                           .vci_out_m2_reop       (vci_out_m2_reop),
                           .vci_out_m2_rspack     (vci_out_m2_rspack),
                           .last_pixel_sig_en     (last_pixel_sig_en),
                           .last_pixel_m2_req     (last_pixel_m2_req),
                           .last_pixel_m2_ack     (last_pixel_m2_ack)
                           );
vsisp_marvin_mi_handshake u_marvin_mi_handshake(
                    .isp_0_clock              (m_hclk),
                    .isp_0_rst_n              (reset_m_hclk_n),
                    .soft_upd                 (soft_upd),
                    .data_format              (data_format),
                    .starage_format           (starage_format),
                    .slice_size               (slice_size),
                    .buf_size                 (slice_buf_size),
                    .mp_fifo_h_end            (mp_fifo_h_end),
                    .mp_fifo_v_end            (mp_fifo_v_end),
                    .mp_fifo_read64           (mp_fifo_read64),
                    .stat_skip_active         (stat_skip_active),
                    .mp_fifo_select           (mp_fifo_select),
                    .isp_0_ack                (isp_0_ack),
                    .bresp_in                 (bresp_in),
                    .mp_y_base_ad             (mp_y_base_ad),
                    .mp_cb_base_ad            (mp_cb_base_ad),
                    .mp_cr_base_ad            (mp_cr_base_ad),
                    .mp_addr_cur_y            (viv_s6 ),
                    .mp_addr_cur_cb           (viv_s7 ),
                    .mp_addr_cur_cr           (viv_s8 ),
                    .ack_count                (ack_count),
                    .mp_slice_offset_y        (mp_slice_offset_y),
                    .mp_slice_offset_c        (mp_slice_offset_c),
                    .mp_y_llength             (mp_y_llength),
                    .mp_line_sens             (mp_line_sens),
                    .isp_0_ready              (viv_s2), 
                    .address                  (viv_s1),   
                    .isp_0_attr               (viv_s4),                              
                    .mp_interrupt             (viv_s3),
                    .handshake_en             (handshake_en),
                    .handshake_mode_0         (handshake_mode_0),
                    .slice_cnt_int            (slice_cnt_int),
                    .sw_addr_mp_y             (sw_addr_mp_y),
                    .sw_addr_mp_cb            (sw_addr_mp_cb),
                    .sw_addr_mp_cr            (sw_addr_mp_cr),
                    .sw_interrupt_out         (sw_interrupt));
assign vci_out_m1_address[c_mi_data_addr+3:3] = handshake_en ? viv_s1 : viv_s0;
assign isp_0_attr[1:0] = handshake_en ? viv_s4 : 2'h0;
assign isp_0_ready     = handshake_en && viv_s2;
assign mp_interrupt    = handshake_en && viv_s3;
endmodule
