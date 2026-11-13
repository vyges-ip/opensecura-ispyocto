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

module vsisp_marvin_mi_out_sp
  (
   m_hclk,
   reset_m_hclk_n,
   soft_rst_m_hclk,
   sp_fifo_read64,
   sp_fifo_select,
   sp_fifo_data,
   sp_fifo_h_end,
   sp_fifo_v_end,
   sp_y_fifo_fill_level,
   sp_y_fifo_flush,
   sp_cb_fifo_fill_level,
   sp_cb_fifo_flush,
   sp_cr_fifo_fill_level,
   sp_cr_fifo_flush,
   soft_upd,
   sp_enable,
   dp_enable,
   h_flip,
   v_flip,
   rot,
   sp_write_format,
   sp_output_format,
   byte_swap,
   init_base_en,
   init_offset_en,
   sp_pingpong_en,
   burst_len_lum,
   burst_len_chrom,
   stat_sp_enable_out,
   stat_dp_enable_out,
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
   stat_sp_frame_end,
   stat_wrap_sp_y,
   stat_wrap_sp_cb,
   stat_wrap_sp_cr,
   cfg_in_update_sp,
   cfg_out_update_sp,
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
   last_pixel_m2_req,
   last_pixel_m2_ack,
   sp_byte_swap
   );
`include "vsisp_marvin_mi.vh"
   input [2:0]   sp_byte_swap;
   input         m_hclk;
   input         reset_m_hclk_n;
   input         soft_rst_m_hclk;
   output        sp_fifo_read64;
   output [1:0]  sp_fifo_select;
   input [63:0]  sp_fifo_data;
   input         sp_fifo_h_end;
   input         sp_fifo_v_end;
   input [c_fifo_depth_bw-1:0] sp_y_fifo_fill_level;   
   input                       sp_y_fifo_flush;
   input [c_fifo_depth_bw-1:0] sp_cb_fifo_fill_level;  
   input                       sp_cb_fifo_flush;
   input [c_fifo_depth_bw-1:0] sp_cr_fifo_fill_level;  
   input                       sp_cr_fifo_flush;
   input            soft_upd;
   input            sp_enable;
   input            dp_enable;
   input            h_flip;
   input            v_flip;
   input            rot;
   input [1:0]      sp_write_format;
   input [2:0]      sp_output_format;
   input            byte_swap;
   input            init_base_en;
   input            init_offset_en;
   input            sp_pingpong_en;
   input [1:0]      burst_len_lum;
   input [1:0]      burst_len_chrom;
   output           stat_sp_enable_out;
   output           stat_dp_enable_out;
   output [31:3]          sp_y_base_ad;
   output [c_bufsize:3]   sp_y_size;
   output [c_bufsize:3]   sp_y_offs_cnt;
   input [31:3]           sp_y_base_ad_init;
   input [31:3]           sp_y_base_ad_init2;
   input [c_bufsize:3]    sp_y_size_init;
   input [c_bufsize:3]    sp_y_offs_cnt_init;
   output [c_bufsize:3]   sp_y_offs_cnt_start;
   input [14:0]           sp_y_pic_width;
   input [14:0]           sp_y_llength;
   input [c_bufsize:0]    sp_y_pic_size;
   output [31:3]          sp_cb_base_ad;
   output [c_bufsize-1:3] sp_cb_size;
   output [c_bufsize-1:3] sp_cb_offs_cnt;
   input [31:3]           sp_cb_base_ad_init;
   input [31:3]           sp_cb_base_ad_init2;
   input [c_bufsize-1:3]  sp_cb_size_init;
   input [c_bufsize-1:3]  sp_cb_offs_cnt_init;
   output [c_bufsize-1:3] sp_cb_offs_cnt_start;
   output [31:3]          sp_cr_base_ad;
   output [c_bufsize-1:3] sp_cr_size;
   output [c_bufsize-1:3] sp_cr_offs_cnt;
   input [31:3]           sp_cr_base_ad_init;
   input [31:3]           sp_cr_base_ad_init2;
   input [c_bufsize-1:3]  sp_cr_size_init;
   input [c_bufsize-1:3]  sp_cr_offs_cnt_init;
   output [c_bufsize-1:3] sp_cr_offs_cnt_start;
   output           stat_sp_frame_end;
   output           stat_wrap_sp_y;
   output           stat_wrap_sp_cb;
   output           stat_wrap_sp_cr;
   input            cfg_in_update_sp;
   output           cfg_out_update_sp;
   output           vci_out_m2_cmdval;
   output [8:0]     vci_out_m2_plen;
   output           vci_out_m2_eop;
   output [31:3]    vci_out_m2_address;
   output [63:0]    vci_out_m2_wdata;
   output [7:0]     vci_out_m2_be;
   output [1:0]     vci_out_m2_cmd;
   output           vci_out_m2_const;
   output           vci_out_m2_contig;
   output           vci_out_m2_wrap;
   input            vci_out_m2_cmdack;
   input            vci_out_m2_rspval;
   input            vci_out_m2_reop;
   output           vci_out_m2_rspack;
   output           last_pixel_m2_req;
   input            last_pixel_m2_ack;
   input            last_pixel_sig_en;
   wire [31:3]      viv_s0;
   wire [63:0]       viv_s1;
   wire             viv_s2;
   wire             cfg_out_update_sp;
   wire                      viv_s3;
   wire [c_burst_len_bw-1:0] viv_s4;
   reg [c_burst_len_bw-1:0]  viv_s5;
   reg [c_burst_len_bw-1:0]  viv_s6;
   wire [c_bufsize:3]                 viv_s7;
   wire [c_bufsize-1:3]               viv_s8;
   wire [c_bufsize-1:3]               viv_s9;
   wire [31:3]               viv_s10;
   wire [31:3]               viv_s11;
   wire [31:3]               viv_s12;
   wire                      viv_s13;
   wire [3:0]                viv_s14;
   wire [127:0]              viv_s15;
   wire [127:0]              viv_s16;
   vsisp_marvin_mi_out_updlogic_sp u_marvin_mi_out_updlogic_sp
     (
      .m_hclk             (m_hclk),
      .reset_m_hclk_n     (reset_m_hclk_n),
      .soft_rst_m_hclk    (soft_rst_m_hclk),
      .soft_upd           (soft_upd),
      .sp_enable          (sp_enable),
      .dp_enable          (dp_enable),
      .sp_write_format    (sp_write_format),
      .sp_output_format   (sp_output_format),
      .stat_sp_enable_out (stat_sp_enable_out),
      .stat_dp_enable_out (stat_dp_enable_out),
      .cfg_in_update_sp   (cfg_in_update_sp),
      .sp_fifo_h_end      (sp_fifo_h_end),
      .sp_fifo_v_end      (sp_fifo_v_end),
      .sp_fifo_read64     (sp_fifo_read64),
      .sp_fifo_select     (sp_fifo_select),
      .stat_sp_frame_end  (stat_sp_frame_end),
      .sp_frame_end       (viv_s2),
      .cfg_out_update_sp  (cfg_out_update_sp)   
      );
   always @(burst_len_lum)begin
      if  ((burst_len_lum == 2'b10) && (c_bursts_supported >= 5'd16))
         viv_s5 = 5'd16;   
      else if  ((burst_len_lum > 2'b00) && (c_bursts_supported >= 5'd8))
         viv_s5 = 5'd8;    
      else
         viv_s5 = 5'd4;    
   end
   always @(burst_len_chrom)begin
      if  ((burst_len_chrom == 2'b10) && (c_bursts_supported >= 5'd16))
         viv_s6 = 5'd16;   
      else if  ((burst_len_chrom > 2'b00) && (c_bursts_supported >= 5'd8))
         viv_s6 = 5'd8;    
      else
         viv_s6 = 5'd4;    
   end
   vsisp_marvin_mi_out_arbit_sp u_marvin_mi_out_arbit_sp
     (
      .m_hclk                (m_hclk),
      .reset_m_hclk_n        (reset_m_hclk_n),
      .soft_rst_m_hclk       (soft_rst_m_hclk),
      .burst_length_y        (viv_s5),
      .burst_length_c        (viv_s6),
      .sp_y_size             (sp_y_size),
      .sp_cb_size            (sp_cb_size),
      .sp_cr_size            (sp_cr_size),
      .sp_y_base_ad          (sp_y_base_ad[11:3]),
      .sp_cb_base_ad         (sp_cb_base_ad[11:3]),
      .sp_cr_base_ad         (sp_cr_base_ad[11:3]),
      .y_addr               (viv_s10[11:3]),
      .cb_addr              (viv_s11[11:3]),
      .cr_addr              (viv_s12[11:3]),   
      .sp_y_fifo_fill_level  (sp_y_fifo_fill_level),
      .sp_y_fifo_flush       (sp_y_fifo_flush ),
      .sp_cb_fifo_fill_level (sp_cb_fifo_fill_level),
      .sp_cb_fifo_flush      (sp_cb_fifo_flush),
      .sp_cr_fifo_fill_level (sp_cr_fifo_fill_level),
      .sp_cr_fifo_flush      (sp_cr_fifo_flush),
      .next_sel              (viv_s13),
      .fifo_select_val       (viv_s3),
      .sp_fifo_select        (sp_fifo_select),
      .burst_len             (viv_s4),
      .sp_y_cur_ptr          (viv_s7),
      .sp_cb_cur_ptr         (viv_s8),
      .sp_cr_cur_ptr         (viv_s9)
      );
   vsisp_marvin_mi_out_addrgen_sp u_marvin_mi_out_addrgen_sp
     (
      .m_hclk               (m_hclk),
      .reset_m_hclk_n       (reset_m_hclk_n),
      .soft_rst_m_hclk      (soft_rst_m_hclk),
      .sp_fifo_h_end        (sp_fifo_h_end),
      .sp_fifo_v_end        (sp_fifo_v_end),
      .soft_upd             (soft_upd),
      .h_flip               (h_flip),
      .v_flip               (v_flip),
      .rot                  (rot),
      .sp_write_format      (sp_write_format),
      .sp_output_format     (sp_output_format),
      .init_base_en         (init_base_en),
      .init_offset_en       (init_offset_en),
      .sp_pingpong_en       (sp_pingpong_en),
      .sp_y_base_ad         (sp_y_base_ad),
      .sp_y_size            (sp_y_size),
      .sp_y_offs_cnt        (sp_y_offs_cnt),
      .sp_y_base_ad_init    (sp_y_base_ad_init),
      .sp_y_base_ad_init2   (sp_y_base_ad_init2),
      .sp_y_size_init       (sp_y_size_init),
      .sp_y_offs_cnt_init   (sp_y_offs_cnt_init ),
      .sp_y_offs_cnt_start  (sp_y_offs_cnt_start),
      .sp_y_pic_width       (sp_y_pic_width),
      .sp_y_llength         (sp_y_llength),
      .sp_y_pic_size        (sp_y_pic_size),
      .sp_cb_base_ad        (sp_cb_base_ad),
      .sp_cb_size           (sp_cb_size),
      .sp_cb_offs_cnt       (sp_cb_offs_cnt),
      .sp_cb_base_ad_init   (sp_cb_base_ad_init ),
      .sp_cb_base_ad_init2  (sp_cb_base_ad_init2 ),
      .sp_cb_size_init      (sp_cb_size_init    ),
      .sp_cb_offs_cnt_init  (sp_cb_offs_cnt_init),
      .sp_cb_offs_cnt_start (sp_cb_offs_cnt_start),
      .sp_cr_base_ad        (sp_cr_base_ad),
      .sp_cr_size           (sp_cr_size),
      .sp_cr_offs_cnt       (sp_cr_offs_cnt),
      .sp_cr_base_ad_init   (sp_cr_base_ad_init),
      .sp_cr_base_ad_init2  (sp_cr_base_ad_init2),
      .sp_cr_size_init      (sp_cr_size_init),
      .sp_cr_offs_cnt_init  (sp_cr_offs_cnt_init),
      .sp_cr_offs_cnt_start (sp_cr_offs_cnt_start),
      .stat_wrap_sp_y       (stat_wrap_sp_y),
      .stat_wrap_sp_cb      (stat_wrap_sp_cb),
      .stat_wrap_sp_cr      (stat_wrap_sp_cr),
      .sp_fifo_read64       (sp_fifo_read64),
      .sp_fifo_select       (sp_fifo_select),
      .cfg_out_update_sp    (cfg_out_update_sp),
      .sp_y_cur_ptr         (viv_s7),
      .sp_cb_cur_ptr        (viv_s8),
      .sp_cr_cur_ptr        (viv_s9)
      );
   vsisp_marvin_mi_out_ctrl_sp u_marvin_mi_out_ctrl_sp
     (
      .m_hclk             (m_hclk),
      .reset_m_hclk_n     (reset_m_hclk_n),
      .soft_rst_m_hclk    (soft_rst_m_hclk),
      .sp_fifo_read64     (sp_fifo_read64),
      .stat_sp_frame_end  (stat_sp_frame_end),
      .vci_out_m2_cmdval  (vci_out_m2_cmdval),
      .vci_out_m2_plen    (vci_out_m2_plen),
      .vci_out_m2_eop     (vci_out_m2_eop),
      .vci_out_m2_address (vci_out_m2_address),
      .vci_out_m2_wdata   (vci_out_m2_wdata),
      .vci_out_m2_be      (vci_out_m2_be),
      .vci_out_m2_cmd     (vci_out_m2_cmd),
      .vci_out_m2_const   (vci_out_m2_const),
      .vci_out_m2_contig  (vci_out_m2_contig),
      .vci_out_m2_wrap    (vci_out_m2_wrap),
      .vci_out_m2_cmdack  (vci_out_m2_cmdack),
      .vci_out_m2_rspval  (vci_out_m2_rspval),
      .vci_out_m2_reop    (vci_out_m2_reop),
      .vci_out_m2_rspack  (vci_out_m2_rspack),
      .fifo_select_val    (viv_s3),
      .burst_len          (viv_s4),
      .address            (viv_s0),
      .data               (viv_s1),
      .sp_frame_end       (viv_s2),
      .next_sel           (viv_s13),
      .stat_sp_enable_in  (stat_sp_enable_out),
      .last_pixel_sig_en  (last_pixel_sig_en),
      .last_pixel_m2_req  (last_pixel_m2_req),
      .last_pixel_m2_ack  (last_pixel_m2_ack)
  );
   assign viv_s10  = sp_y_base_ad  + {3'b0, viv_s7};
   assign viv_s11 = sp_cb_base_ad + {4'b0, viv_s8};
   assign viv_s12 = sp_cr_base_ad + {4'b0, viv_s9};
   assign viv_s0 = ((sp_fifo_select == 2'd0) ? viv_s10  : 29'h0) |
                    ((sp_fifo_select == 2'd1) ? viv_s11 : 29'h0) |
                    ((sp_fifo_select == 2'd2) ? viv_s12 : 29'h0);
   assign viv_s14[3:0]      = {1'b0,sp_byte_swap[2:0]};
   assign viv_s15[127:0] = {64'h0,sp_fifo_data[63:0]};
   assign viv_s1[63:0] = viv_s16[63:0];
   vsisp_marvin_mi_swap u_marvin_mi_swap(.swap_vector     (viv_s14[3:0]),
                                   .data_to_swap    (viv_s15[127:0]),
                                   .swapped_data    (viv_s16[127:0]));
endmodule
