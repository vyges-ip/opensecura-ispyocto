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

module vsisp_marvin_mi_bp(
clk,
reset_n,
soft_reset,
m_hclk,
reset_m_hclk_n,
soft_reset_m_hclk,
test_mode,
in_bp_val,
in_bp_data,
in_bp_h_end,
in_bp_v_end,
in_bp_ack,
in_bp_frame_end,
vci_out_cmdval,
vci_out_plen,
vci_out_eop,
vci_out_address,
vci_out_wdata,
vci_out_be,
vci_out_cmd,
vci_out_const,
vci_out_contig,
vci_out_wrap,
vci_out_cmdack,
vci_out_rspval,
vci_out_reop,
vci_out_rspack,
last_pixel_sig_en,
last_pixel_req,
last_pixel_ack,
stat_mp_frame_end,
stat_mblk_line,
stat_fill_mp_r,
stat_wrap_mp_r,
stat_wrap_mp_gr,
stat_wrap_mp_gb,
stat_wrap_mp_b,
bp_wr_size,
bp_wr_size_init,
bp_wr_llength,
bp_wr_pic_width,
bp_wr_pic_height,
bp_r_irq_offs,
bp_r_irq_offs_init,
bp_r_base_ad,
bp_r_offs_cnt,
bp_r_base_ad_init,
bp_r_offs_cnt_init,
bp_r_offs_cnt_start,
bp_gr_base_ad,
bp_gr_offs_cnt,
bp_gr_base_ad_init,
bp_gr_offs_cnt_init,
bp_gr_offs_cnt_start,
bp_gb_base_ad,
bp_gb_offs_cnt,
bp_gb_base_ad_init,
bp_gb_offs_cnt_init,
bp_gb_offs_cnt_start,
bp_b_base_ad,
bp_b_offs_cnt,
bp_b_base_ad_init,
bp_b_offs_cnt_init,
bp_b_offs_cnt_start,
bp_y_fifo_sram_DIN,   
bp_y_fifo_sram_DOUT,  
bp_y_fifo_sram_ADDR, 
bp_y_fifo_sram_CEN,   
bp_y_fifo_sram_WEN,   
bp_cb_fifo_sram_DIN,  
bp_cb_fifo_sram_DOUT,
bp_cb_fifo_sram_ADDR, 
bp_cb_fifo_sram_CEN,  
bp_cb_fifo_sram_WEN,  
bp_ecl_fifo_sram_buf_full,
bp_ocl_fifo_sram_buf_full,
bp_ecl_fifo_full,
bp_ocl_fifo_full,
soft_upd_in,
soft_upd_out,
skip,
path_enable_in,
path_enable_out,
auto_update,
byte_swap,
mp_byte_swap,
init_base_en,
init_offset_en,
burst_len,
write_format_in,
write_format_out,
rformat,
ralignen,
bayer_pat,
data_mode_en
);
`include "vsisp_marvin_mi.vh"
input clk;
input reset_n;
input soft_reset;
input m_hclk;
input reset_m_hclk_n;
input soft_reset_m_hclk;
input test_mode;
input in_bp_val;
input [15:0] in_bp_data;
input in_bp_h_end;
input in_bp_v_end;
output in_bp_ack;
input in_bp_frame_end;
output        vci_out_cmdval;
output [8:0]  vci_out_plen;
output        vci_out_eop;
output [c_mi_data_addr+3:3] vci_out_address;
output [63:0] vci_out_wdata;
output [7:0]  vci_out_be;
output [1:0]  vci_out_cmd;
output        vci_out_const;
output        vci_out_contig;
output        vci_out_wrap;
input         vci_out_cmdack;
input         vci_out_rspval;
input         vci_out_reop;
output        vci_out_rspack;
output        last_pixel_req;
input         last_pixel_ack;
input         last_pixel_sig_en;
output stat_mp_frame_end;
output stat_mblk_line;
output stat_fill_mp_r;
output stat_wrap_mp_r;
output stat_wrap_mp_gr;
output stat_wrap_mp_gb;
output stat_wrap_mp_b;
output [c_mi_data_addr:3] bp_wr_size;
input [c_mi_data_addr:3]  bp_wr_size_init;
input [14:0]  bp_wr_llength;
input [14:0]  bp_wr_pic_width;
input [14:0]  bp_wr_pic_height;
output [c_mi_data_addr:3]   bp_r_irq_offs;
input  [c_mi_data_addr:3]   bp_r_irq_offs_init;
output  [c_mi_data_addr:3]  bp_r_offs_cnt;
output [c_mi_data_addr+3:3] bp_r_base_ad;
input  [c_mi_data_addr+3:3] bp_r_base_ad_init;
input  [c_mi_data_addr:3]   bp_r_offs_cnt_init;
output [c_mi_data_addr:3]   bp_r_offs_cnt_start;
output [c_mi_data_addr+3:3]   bp_gr_base_ad;
output [c_mi_data_addr:3]     bp_gr_offs_cnt;
input  [c_mi_data_addr+3:3]   bp_gr_base_ad_init;
input  [c_mi_data_addr:3]     bp_gr_offs_cnt_init;
output  [c_mi_data_addr:3]     bp_gr_offs_cnt_start;
output [c_mi_data_addr+3:3]   bp_gb_base_ad;
output [c_mi_data_addr:3]     bp_gb_offs_cnt;
input  [c_mi_data_addr+3:3]   bp_gb_base_ad_init;
input  [c_mi_data_addr:3]     bp_gb_offs_cnt_init;
output  [c_mi_data_addr:3]     bp_gb_offs_cnt_start;
output [c_mi_data_addr+3:3]   bp_b_base_ad;
output [c_mi_data_addr:3]     bp_b_offs_cnt;
input  [c_mi_data_addr+3:3]   bp_b_base_ad_init;
input  [c_mi_data_addr:3]     bp_b_offs_cnt_init;
output  [c_mi_data_addr:3]     bp_b_offs_cnt_start;
input [65:0] bp_y_fifo_sram_DIN;   
output [65:0] bp_y_fifo_sram_DOUT;  
output [8:0] bp_y_fifo_sram_ADDR; 
output bp_y_fifo_sram_CEN;   
output bp_y_fifo_sram_WEN;   
input [65:0] bp_cb_fifo_sram_DIN;  
output [65:0] bp_cb_fifo_sram_DOUT;
output [8:0] bp_cb_fifo_sram_ADDR; 
output bp_cb_fifo_sram_CEN;  
output bp_cb_fifo_sram_WEN;  
output bp_ecl_fifo_sram_buf_full;
output bp_ocl_fifo_sram_buf_full;
output bp_ecl_fifo_full;
output bp_ocl_fifo_full;
input path_enable_in;
input path_enable_out;
input auto_update;
input soft_upd_in;
input soft_upd_out;
input skip;
input byte_swap;
input [2:0] mp_byte_swap;
input init_base_en;
input init_offset_en;
input [1:0] burst_len;
input [1:0] write_format_in;
input [1:0] write_format_out;
input [3:0] rformat;
input [1:0] ralignen;
input [1:0] bayer_pat;
input       data_mode_en;
assign bp_ecl_fifo_full=1'b0;
assign bp_ocl_fifo_full=1'b0;
wire viv_s0;
wire viv_s1=1'b0;
wire viv_s2 = (write_format_in == 2'b00 || write_format_in == 2'b01) & viv_s0;
wire [1:0] viv_s3 = write_format_out==2'b00 ? 2'b01: write_format_out; 
wire [3:0] viv_s4 = viv_s3==2'b01 ? 4'b0010: 4'b0000;
wire [15:0]  viv_s5, viv_s6;
wire [127:0] viv_s7, viv_s8;
wire         viv_s9;
wire         viv_s10;
wire         viv_s11;
vsisp_dreg_en_1d #(1,1'd0) stat_path_enable_in_Reg (.clk(clk), .reset_n(reset_n), .soft_reset(1'b0), .out(viv_s0), .in(path_enable_in),  .en(soft_upd_in|cfg_in_update_mp));
vsisp_mi_bayer_split u_mi_bayer_split(
 .clk(clk),
 .reset_n(reset_n),
 .soft_reset(soft_reset),
 .in_data(in_bp_data&{16{viv_s2}}),
 .in_hend(in_bp_h_end&viv_s2),
 .in_vend(in_bp_v_end&viv_s2),
 .in_val(in_bp_val&viv_s2),
 .in_ack(in_bp_ack_plnr),
 .out_data0(viv_s5),
 .out_hend0(out_hend_ecl),
 .out_vend0(out_vend_ecl),
 .out_val0(out_val_ecl),
 .out_ack0(viv_s2&viv_s9),
 .out_data1(viv_s6),
 .out_hend1(out_hend_ocl),
 .out_vend1(out_vend_ocl),
 .out_val1(out_val_ocl),
 .out_ack1(out_ack_ocl)
);
wire [15:0] viv_s12 = viv_s2? viv_s5: in_bp_data;
wire viv_s13 = viv_s2? out_val_ecl: in_bp_val;
wire viv_s14 = viv_s2? out_hend_ecl: in_bp_h_end;
wire viv_s15 = viv_s2? out_vend_ecl: in_bp_v_end;
wire in_bp_ack = viv_s2? in_bp_ack_plnr: viv_s9;
 vsisp_mi_dp_raw  u_mi_dp_raw_ecl (
 .clk(clk),
 .reset_n(reset_n),
 .soft_rst(soft_reset),
 .rformat(rformat),
 .ralignen(ralignen),
 .rpadpseud(viv_s1),
 .in_raw(viv_s12),
 .in_h_end(viv_s14),
 .in_v_end(viv_s15),
 .in_ack(viv_s9),
 .in_val(viv_s13),
 .out_duo(out_duo_dp_ecl),
 .out_h_end(out_hend_dp_ecl),
 .out_v_end(out_vend_dp_ecl),
 .out_fifo_full(~out_ack_dp_ecl),
 .out_val(out_val_dp_ecl),
 .out_raw(viv_s7),
 .out_cfg_upd(out_cfg_upd_ecl),
 .cfg_in_update(cfg_in_update_mp),
 .cfg_out_update(cfg_out_update_mp),
 .auto_update(auto_update),
 .path_enable(viv_s0)
);
wire [63:0] viv_s16, viv_s17;
 vsisp_mi_dp_outstage u_mi_dp_outstage_ecl(
 .clk(clk),
 .reset_n(reset_n),
 .soft_reset(soft_reset),
 .in_val(out_val_dp_ecl),
 .in_data(viv_s7),
 .in_hend(out_hend_dp_ecl),
 .in_vend(out_vend_dp_ecl),
 .in_ack(out_ack_dp_ecl),
 .in_duo(out_duo_dp_ecl),
 .out_val(mp_ecl_fifo_write64),
 .out_data(viv_s16),
 .out_hend(mp_ecl_fifo_h_end),
 .out_vend(mp_ecl_fifo_v_end),
 .out_ack(~mp_ecl_fifo_full)
 );
 vsisp_mi_dp_raw  u_mi_dp_raw_ocl (
 .clk(clk),
 .reset_n(reset_n),
 .soft_rst(soft_reset),
 .rformat(rformat),
 .ralignen(ralignen),
 .rpadpseud(viv_s1),
 .in_raw(viv_s6),
 .in_h_end(out_hend_ocl),
 .in_v_end(out_vend_ocl),
 .in_ack(out_ack_ocl),
 .in_val(out_val_ocl),
 .out_duo(out_duo_dp_ocl),
 .out_h_end(out_hend_dp_ocl),
 .out_v_end(out_vend_dp_ocl),
 .out_fifo_full(~out_ack_dp_ocl),
 .out_val(out_val_dp_ocl),
 .out_raw(viv_s8),
 .out_cfg_upd(out_cfg_upd_ocl),
 .cfg_in_update(),
 .cfg_out_update(1'b0),
 .auto_update(1'b0),
 .path_enable(viv_s0)
);
 vsisp_mi_dp_outstage u_mi_dp_outstage_ocl(
 .clk(clk),
 .reset_n(reset_n),
 .soft_reset(soft_reset),
 .in_val(out_val_dp_ocl),
 .in_data(viv_s8),
 .in_hend(out_hend_dp_ocl),
 .in_vend(out_vend_dp_ocl),
 .in_ack(out_ack_dp_ocl),
 .in_duo(out_duo_dp_ocl),
 .out_val(mp_ocl_fifo_write64),
 .out_data(viv_s17),
 .out_hend(mp_ocl_fifo_h_end),
 .out_vend(mp_ocl_fifo_v_end),
 .out_ack(~mp_ocl_fifo_full)
 );
wire viv_s18=1'b0;
wire [1:0] viv_s19=2'b00;
wire [1:0] viv_s20;
wire [63:0] viv_s21;
wire [c_fifo_depth_bw-1:0] viv_s22, viv_s23;
   vsisp_marvin_mi_fifo_bp  #(.c_fifo_depth(c_fifo_depth)) u_marvin_mi_fifo
     (
      .sw_mi_fifo_depth_ctrl   (viv_s19),
      .clk                     (clk),
      .reset_n                 (reset_n),
      .soft_rst                (soft_reset),
      .m_hclk                  (m_hclk),
      .reset_m_hclk_n          (reset_m_hclk_n),
      .soft_rst_m_hclk         (soft_reset_m_hclk),
      .test_mode               (test_mode),
      .sp_rot_in               (viv_s18),
      .wr_resume               (viv_s10),
      .plnr_wrt                (viv_s2),
      .mp_y_fifo_data_in       (viv_s16),
      .mp_y_fifo_h_end_in      (mp_ecl_fifo_h_end),
      .mp_y_fifo_v_end_in      (mp_ecl_fifo_v_end),
      .mp_y_fifo_write64       (mp_ecl_fifo_write64),
      .mp_y_fifo_full          (mp_ecl_fifo_full),
      .mp_y_fifo_sram_buf_full (bp_ecl_fifo_sram_buf_full ),
      .mp_cb_fifo_data_in      (viv_s17),
      .mp_cb_fifo_h_end_in     (mp_ocl_fifo_h_end),
      .mp_cb_fifo_v_end_in     (mp_ocl_fifo_v_end),
      .mp_cb_fifo_write64      (mp_ocl_fifo_write64),
      .mp_cb_fifo_full         (mp_ocl_fifo_full),
      .mp_cb_fifo_sram_buf_full(bp_ocl_fifo_sram_buf_full ),
      .mp_cr_fifo_data_in      (64'h0),
      .mp_cr_fifo_h_end_in     (1'h0),
      .mp_cr_fifo_v_end_in     (1'h0),
      .mp_cr_fifo_write64      (1'h0),
      .mp_cr_fifo_full         (),
      .mp_cr_fifo_sram_buf_full(),
      .sp_y_fifo_data_in       (64'h0),
      .sp_y_fifo_h_end_in      (1'h0),
      .sp_y_fifo_v_end_in      (1'h0),
      .sp_y_fifo_write64       (1'h0),
      .sp_y_fifo_full          (),
      .sp_cb_fifo_data_in      (64'h0),
      .sp_cb_fifo_h_end_in     (1'h0),
      .sp_cb_fifo_v_end_in     (1'h0),
      .sp_cb_fifo_write64      (1'h0),
      .sp_cb_fifo_full         (),
      .sp_cr_fifo_data_in      (64'h0),
      .sp_cr_fifo_h_end_in     (1'h0),
      .sp_cr_fifo_v_end_in     (1'h0),
      .sp_cr_fifo_write64      (1'h0),
      .sp_cr_fifo_full         (),
      .mp_fifo_read64          (mp_fifo_read64),
      .mp_fifo_select          (viv_s20),
      .mp_fifo_data_out        (viv_s21),
      .mp_fifo_h_end_out       (mp_fifo_h_end_out),
      .mp_fifo_v_end_out       (mp_fifo_v_end_out),
      .sp_fifo_read64          (1'h0),
      .sp_fifo_select          (2'h0),
      .sp_fifo_data_out        (),
      .sp_fifo_h_end_out       (),
      .sp_fifo_v_end_out       (),
      .mp_y_fifo_fill_level    (viv_s22),
      .mp_y_fifo_flush         (mp_y_fifo_flush),
      .mp_cb_fifo_fill_level   (viv_s23),
      .mp_cb_fifo_flush        (mp_cb_fifo_flush),
      .mp_cr_fifo_fill_level   (),
      .mp_cr_fifo_flush        (),
      .sp_y_fifo_fill_level    (),
      .sp_y_fifo_flush         (),
      .sp_cb_fifo_fill_level   (),
      .sp_cb_fifo_flush        (),
      .sp_cr_fifo_fill_level   (),
      .sp_cr_fifo_flush        (),
       .mp_y_fifo_sram_DIN     (bp_y_fifo_sram_DIN     ),
       .mp_y_fifo_sram_DOUT    (bp_y_fifo_sram_DOUT    ),
       .mp_y_fifo_sram_ADDR    (bp_y_fifo_sram_ADDR    ),
       .mp_y_fifo_sram_CEN     (bp_y_fifo_sram_CEN     ),
       .mp_y_fifo_sram_WEN     (bp_y_fifo_sram_WEN     ),
       .mp_cb_fifo_sram_DIN    (bp_cb_fifo_sram_DIN    ),
       .mp_cb_fifo_sram_DOUT   (bp_cb_fifo_sram_DOUT   ),
       .mp_cb_fifo_sram_ADDR   (bp_cb_fifo_sram_ADDR   ),
       .mp_cb_fifo_sram_CEN    (bp_cb_fifo_sram_CEN    ),
       .mp_cb_fifo_sram_WEN    (bp_cb_fifo_sram_WEN    ),
       .mp_cr_fifo_sram_DIN    (66'h0),
       .mp_cr_fifo_sram_DOUT   (),
       .mp_cr_fifo_sram_ADDR   (),
       .mp_cr_fifo_sram_CEN    (),
       .mp_cr_fifo_sram_WEN    ());
wire viv_s24;
vsisp_dreg_en_2d #(1,1'd0) data_mode_en_Reg (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_reset_m_hclk), .out(viv_s24), .in(data_mode_en),  .en(1'b1));
wire viv_s25= ~viv_s24 & (viv_s3==2'b10 ? bp_wr_llength != bp_wr_pic_width :  bp_wr_llength != (bp_wr_pic_width>>1'b1));
wire viv_s26;
wire viv_s27;
wire viv_s28;
wire [1:0] viv_s29;
vsisp_marvin_mi_out_bp u_marvin_mi_out_bp
  (
   .m_hclk(m_hclk),
   .reset_m_hclk_n(reset_m_hclk_n),
   .soft_rst_m_hclk(soft_reset_m_hclk),
   .mp_fifo_read64(mp_fifo_read64),
   .mp_fifo_select(viv_s20),
   .mp_fifo_data(viv_s21),
   .mp_fifo_h_end(mp_fifo_h_end_out),
   .mp_fifo_v_end(mp_fifo_v_end_out),
   .mp_y_fifo_fill_level(viv_s22),
   .mp_y_fifo_flush(mp_y_fifo_flush),
   .mp_cb_fifo_fill_level(viv_s23),
   .mp_cb_fifo_flush(mp_cb_fifo_flush),
   .mp_cr_fifo_fill_level({c_fifo_depth_bw{1'b0}}),
   .mp_cr_fifo_flush(1'b0),
   .soft_upd(soft_upd_out),
   .skip(skip),
   .mp_enable(path_enable_out),
   .jpeg_enable(1'b0),
   .raw_enable(1'b0),
   .dp_enable(1'b0),
   .mp_write_format(viv_s3),
   .byte_swap(1'b0),
   .init_base_en(init_base_en),
   .init_offset_en(init_offset_en),
   .mp_pingpong_en(1'b0),
   .burst_len_lum(burst_len),
   .burst_len_chrom(burst_len),
   .stat_mp_enable_out(),
   .stat_jpeg_enable_out(),
   .stat_raw_enable_out(),
   .stat_dp_enable_out(),
   .plnr_wrt(viv_s2),
   .val_1st_pxl(viv_s28),
   .bayer_pat(viv_s29),
   .line_tgl_en(viv_s11),
   .mp_r_base_ad(bp_r_base_ad),
   .mp_r_size(bp_wr_size),
   .mp_r_offs_cnt(bp_r_offs_cnt),
   .mp_r_base_ad_init(bp_r_base_ad_init),
   .mp_r_base_ad_init2({c_mi_data_addr+1{1'b0}}),
   .mp_r_size_init(bp_wr_size_init),
   .mp_r_offs_cnt_init(bp_r_offs_cnt_init),
   .mp_r_offs_cnt_start(bp_r_offs_cnt_start),
   .mp_r_irq_offs_init(bp_r_irq_offs_init),
   .mp_r_irq_offs(bp_r_irq_offs),
   .mp_gr_base_ad(bp_gr_base_ad),
   .mp_gr_size(),
   .mp_gr_offs_cnt(bp_gr_offs_cnt),
   .mp_gr_base_ad_init(bp_gr_base_ad_init),
   .mp_gr_base_ad_init2({c_mi_data_addr+1{1'b0}}),
   .mp_gr_size_init(bp_wr_size_init),
   .mp_gr_offs_cnt_init(bp_gr_offs_cnt_init),
   .mp_gr_offs_cnt_start(bp_gr_offs_cnt_start),
   .mp_gb_base_ad(bp_gb_base_ad),
   .mp_gb_size(),
   .mp_gb_offs_cnt(bp_gb_offs_cnt),
   .mp_gb_base_ad_init(bp_gb_base_ad_init),
   .mp_gb_base_ad_init2({c_mi_data_addr+1{1'b0}}),
   .mp_gb_size_init(bp_wr_size_init),
   .mp_gb_offs_cnt_init(bp_gb_offs_cnt_init),
   .mp_gb_offs_cnt_start(bp_gb_offs_cnt_start),
   .mp_b_base_ad(bp_b_base_ad),
   .mp_b_size(),
   .mp_b_offs_cnt(bp_b_offs_cnt),
   .mp_b_base_ad_init(bp_b_base_ad_init),
   .mp_b_base_ad_init2({c_mi_data_addr+1{1'b0}}),
   .mp_b_size_init(bp_wr_size_init),
   .mp_b_offs_cnt_init(bp_b_offs_cnt_init),
   .mp_b_offs_cnt_start(bp_b_offs_cnt_start),
   .mp_addr_cur_y( {c_mi_data_addr+1{1'b0}}),
   .mp_addr_cur_cb({c_mi_data_addr+1{1'b0}}),
   .mp_addr_cur_cr({c_mi_data_addr+1{1'b0}}),
   .handshake_en(1'b0), 
   .stat_mp_frame_end(frame_end_int_out),
   .stat_mblk_line(stat_mblk_line),
   .stat_fill_mp_r(stat_fill_mp_r),
   .stat_wrap_mp_r(stat_wrap_mp_r),
   .stat_wrap_mp_gr(stat_wrap_mp_gr),
   .stat_wrap_mp_gb(stat_wrap_mp_gb),
   .stat_wrap_mp_b(stat_wrap_mp_b),
   .cfg_in_update_mp(cfg_in_update_mp),
   .cfg_out_update_mp(cfg_out_update_mp),
   .vci_out_m1_cmdval(vci_out_cmdval),
   .vci_out_m1_plen(vci_out_plen),
   .vci_out_m1_eop(vci_out_eop),
   .vci_out_m1_address(vci_out_address),
   .vci_out_m1_wdata(vci_out_wdata),
   .vci_out_m1_be(vci_out_be),
   .vci_out_m1_cmd(vci_out_cmd),
   .vci_out_m1_const(vci_out_const),
   .vci_out_m1_contig(vci_out_contig),
   .vci_out_m1_wrap(vci_out_wrap),
   .vci_out_m1_cmdack(vci_out_cmdack),
   .vci_out_m1_rspval(vci_out_rspval),
   .vci_out_m1_reop(vci_out_reop),
   .vci_out_m1_rspack(vci_out_rspack),
   .last_pixel_sig_en(last_pixel_sig_en),
   .last_pixel_m1_req(last_pixel_req),
   .last_pixel_m1_ack(last_pixel_ack),
   .mp_byte_swap(mp_byte_swap),
   .mp_output_format(viv_s4),
   .mp_y_llength(bp_wr_llength),    
   .cfg_upd_double(viv_s26),
   .stat_skip_active(viv_s27),
   .data_mode_en(viv_s24),
   .mp_line_sens(viv_s25)
   );
wire viv_s30;
wire viv_s31;
vsisp_dreg_en_1d #(1,1'b0) frame_end_ptr_reg               (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(viv_s31), .in(in_bp_frame_end), .en(1'b1));
vsisp_dreg_en_1d #(1,1'b0) frame_end_tgl_reg               (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(viv_s30), .in(~viv_s30), .en(in_bp_frame_end & ~viv_s31));
vsisp_dreg_en_1d #(1,1'b0) frame_end_tgl_reg0               (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_reset_m_hclk), .out(frame_end_tgl_d0), .in(viv_s30), .en(1'b1));
vsisp_dreg_en_1d #(1,1'b0) frame_end_tgl_reg1               (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_reset_m_hclk), .out(frame_end_tgl_d1), .in(frame_end_tgl_d0), .en(1'b1));
vsisp_dreg_en_1d #(1,1'b0) frame_end_tgl_reg2               (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_reset_m_hclk), .out(frame_end_tgl_d2), .in(frame_end_tgl_d1), .en(1'b1));
wire viv_s32 = frame_end_tgl_d2 ^ frame_end_tgl_d1;
wire viv_s33;
wire viv_s34 = ~stat_mp_frame_end & (viv_s32 | viv_s33);
vsisp_dreg_en_1d #(1,1'b0) frame_end_active_locked_reg            (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_reset_m_hclk), .out(viv_s33), .in(viv_s34), .en(1'b1));
wire viv_s35;
wire viv_s36 = ~stat_mp_frame_end & (frame_end_int_out | viv_s35) ;
vsisp_dreg_en_1d #(1,1'b0) frame_end_int_out_locked_reg            (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_reset_m_hclk), .out(viv_s35), .in(viv_s36), .en(1'b1));
assign stat_mp_frame_end = viv_s33 & viv_s35;
wire viv_s37, viv_s38;
wire viv_s39 = in_bp_val & path_enable_in;
wire viv_s40 = (viv_s39 & in_bp_ack) & viv_s37 ? ~viv_s28: viv_s28;
assign viv_s38 = (viv_s39 & in_bp_ack) & viv_s37 ? 1'b0:
                (viv_s39 & in_bp_ack) & in_bp_v_end & in_bp_h_end ? 1'b1: viv_s37;
wire [1:0] viv_s41 = (viv_s39 & in_bp_ack) & viv_s37 ?  bayer_pat: viv_s29;
vsisp_dreg_en_1d #(1,1'b0) u_val_1st_pxl                (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(viv_s28),  .in(viv_s40), .en(1'b1));
vsisp_dreg_en_1d #(1,1'b1) u_tgl_en                     (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(viv_s37),       .in(viv_s38), .en(1'b1));
vsisp_dreg_en_1d #(2,2'b0) u_bayer_pat                  (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(viv_s29), .in(bayer_pat), .en(1'b1));
wire viv_s42;
vsisp_dreg_en_1d #(1,1'b0) wr_resume_tgl_reg                (.clk(m_hclk), .reset_n(reset_m_hclk_n), .soft_reset(soft_reset_m_hclk), .out(viv_s42), .in(~viv_s42), .en(viv_s11));
vsisp_dreg_en_1d #(1,1'b0) wr_resume_tgl_reg0               (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(wr_resume_tgl_d0), .in(viv_s42), .en(1'b1));
vsisp_dreg_en_1d #(1,1'b0) wr_resume_tgl_reg1               (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(wr_resume_tgl_d1), .in(wr_resume_tgl_d0), .en(1'b1));
vsisp_dreg_en_1d #(1,1'b0) wr_resume_tgl_reg2               (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(wr_resume_tgl_d2), .in(wr_resume_tgl_d1), .en(1'b1));
assign viv_s10 =  wr_resume_tgl_d2 ^ wr_resume_tgl_d1;
endmodule
