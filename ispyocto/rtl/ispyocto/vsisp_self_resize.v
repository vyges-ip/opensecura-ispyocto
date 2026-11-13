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

module vsisp_self_resize
  (clk,
   reset_n,
   soft_rst,
   in_y_pix_data,
   in_y_val,
   in_y_h_end,
   in_y_v_end,
   in_y_cfg_upd,
   in_y_ack,
   out_y_pix_data,
   out_y_val,
   out_y_h_end,
   out_y_v_end,
   out_y_cfg_upd,
   out_y_ack,
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
   out_c_pix_data,
   out_c_val,
   out_c_h_end,
   out_c_v_end,
   out_c_cfg_upd,
   out_c_ack,
   ram_c_wr_n,
   ram_c_cs_n,
   ram_c_addr,
   ram_c_wdata,
   ram_c_rdata,
   cfg_upd, 
   gen_cfg_upd, 
   scale_hy_en, 
   scale_hc_en,
   scale_vy_en, 
   scale_vc_en,                    
   scale_hy_up, 
   scale_hc_up,
   scale_vy_up, 
   scale_vc_up,
   scale_hy, 
   scale_hcb,
   scale_hcr,                    
   scale_vy, 
   scale_vc,                     
   phase_hy, 
   phase_hc,
   phase_vy, 
   phase_vc,
   y_scale_h_lut_ad,
   y_scale_v_lut_ad, 
   y_scale_h_lut, 
   y_scale_v_lut,
   chroma_scale_h_lut_ad,
   chroma_scale_v_lut_ad, 
   chroma_scale_h_lut, 
   chroma_scale_v_lut,
   scale_hy_en_sdw, 
   scale_hc_en_sdw, 
   scale_vy_en_sdw, 
   scale_vc_en_sdw,
   scale_hy_up_sdw, 
   scale_hc_up_sdw, 
   scale_vy_up_sdw, 
   scale_vc_up_sdw,                        
   scale_hy_sdw,
   scale_hcb_sdw,
   scale_hcr_sdw,                    
   scale_vy_sdw, 
   scale_vc_sdw, 
   phase_hy_sdw, 
   phase_hc_sdw, 
   phase_vy_sdw, 
   phase_vc_sdw
);
`include "vsisp_self_resize.vh"
   input         clk;
   input         reset_n;
   input         soft_rst;
   input [7:0]   in_y_pix_data;
   input         in_y_val;
   input         in_y_h_end;
   input         in_y_v_end;
   input         in_y_cfg_upd;
   output        in_y_ack;
   output [7:0]  out_y_pix_data;
   output        out_y_val;
   output        out_y_h_end;
   output        out_y_v_end;
   output        out_y_cfg_upd;
   input         out_y_ack;
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
   output [7:0]  out_c_pix_data;
   output        out_c_val;
   output        out_c_h_end;
   output        out_c_v_end;
   output        out_c_cfg_upd;
   input         out_c_ack;
   output        ram_c_wr_n;
   output        ram_c_cs_n;
   output [c_ram_width-1:0]  ram_c_addr;
   output [31:0] ram_c_wdata;
   input [31:0]  ram_c_rdata;
   input         cfg_upd;
   input         gen_cfg_upd;
   input         scale_hy_en;
   input         scale_hc_en;
   input         scale_vy_en;
   input         scale_vc_en;
   input         scale_hy_up;
   input         scale_hc_up;
   input         scale_vy_up;
   input         scale_vc_up;
   input [c_scale_h - 1:0] scale_hy;
   input [c_scale_h - 1:0] scale_hcb;
   input [c_scale_h - 1:0] scale_hcr;
   input [c_scale_v - 1:0] scale_vy;
   input [c_scale_v - 1:0] scale_vc;
   input [c_phase_h - 1:0] phase_hy;
   input [c_scale_v - 1:0] phase_hc;
   input [c_phase_h - 1:0] phase_vy;
   input [c_scale_v - 1:0] phase_vc;
   output [c_scale_lut_addr - 1:0] y_scale_h_lut_ad;
   output [c_scale_lut_addr - 1:0] y_scale_v_lut_ad;
   input [c_scale_lut - 1:0]      y_scale_h_lut;
   input [c_scale_lut - 1:0]      y_scale_v_lut;
   output [c_scale_lut_addr - 1:0] chroma_scale_h_lut_ad;
   output [c_scale_lut_addr - 1:0] chroma_scale_v_lut_ad;
   input [c_scale_lut - 1:0]      chroma_scale_h_lut;
   input [c_scale_lut - 1:0]      chroma_scale_v_lut;
   output                          scale_hy_en_sdw;
   output                          scale_hc_en_sdw;
   output                          scale_vy_en_sdw;
   output                          scale_vc_en_sdw;
   output                          scale_hy_up_sdw;
   output                          scale_hc_up_sdw;
   output                          scale_vy_up_sdw;
   output                          scale_vc_up_sdw;
   output [c_scale_h - 1:0]        scale_hy_sdw;
   output [c_scale_h - 1:0]        scale_hcb_sdw;
   output [c_scale_h - 1:0]        scale_hcr_sdw;
   output [c_scale_v - 1:0]        scale_vy_sdw;
   output [c_scale_v - 1:0]        scale_vc_sdw;
   output [c_scale_h - 1:0]        phase_hy_sdw;
   output [c_scale_h - 1:0]        phase_hc_sdw;
   output [c_scale_v - 1:0]        phase_vy_sdw;
   output [c_scale_v - 1:0]        phase_vc_sdw;
   wire[7:0]    viv_s0;
   wire         viv_s1;
   wire         viv_s2;
   wire         viv_s3;
   wire         viv_s4;
   wire         viv_s5;
   wire [7:0]   viv_s6;
   wire         viv_s7;
   wire         viv_s8;
   wire         viv_s9;
   wire         viv_s10;
   wire         viv_s11;
   wire[7:0]    viv_s12;
   wire         viv_s13;
   wire         viv_s14;
   wire         viv_s15;
   wire         viv_s16;
   wire         viv_s17;
   wire [7:0]   viv_s18;
   wire         viv_s19;
   wire         viv_s20;
   wire         viv_s21;
   wire         viv_s22;
   wire         viv_s23;
   vsisp_self_rsz_dpsbe u2_self_y_rsz_dpsbe
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .in_pix_data  (viv_s6),
      .in_val       (viv_s7),
      .in_h_end     (viv_s8),
      .in_v_end     (viv_s9),
      .in_cfg_upd   (viv_s10),
      .in_ack       (viv_s11),
      .out_pix_data (out_y_pix_data),
      .out_val      (out_y_val),
      .out_h_end    (out_y_h_end),
      .out_v_end    (out_y_v_end),
      .out_cfg_upd  (out_y_cfg_upd),
      .out_ack      (out_y_ack));
   vsisp_self_rsz_dpsbe u2_self_c_rsz_dpsbe
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .in_pix_data  (viv_s18),
      .in_val       (viv_s19),
      .in_h_end     (viv_s20),
      .in_v_end     (viv_s21),
      .in_cfg_upd   (viv_s22),
      .in_ack       (viv_s23),
      .out_pix_data (out_c_pix_data),
      .out_val      (out_c_val),
      .out_h_end    (out_c_h_end),
      .out_v_end    (out_c_v_end),
      .out_cfg_upd  (out_c_cfg_upd),
      .out_ack      (out_c_ack));
   vsisp_self_resize_scale u_self_y_resize_scale
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .cfg_upd(cfg_upd),
      .gen_cfg_upd(gen_cfg_upd),
      .scale_h_en(scale_hy_en),
      .scale_v_en(scale_vy_en),
      .scale_h_up(scale_hy_up),
      .scale_v_up(scale_vy_up),
      .scale_h(scale_hy),
      .scale_v(scale_vy),
      .phase_h(phase_hy),
      .phase_v(phase_vy),
      .scale_h_lut_ad(y_scale_h_lut_ad),
      .scale_v_lut_ad(y_scale_v_lut_ad),
      .scale_h_lut(y_scale_h_lut),
      .scale_v_lut(y_scale_v_lut),
      .scale_h_en_sdw(scale_hy_en_sdw),
      .scale_v_en_sdw(scale_vy_en_sdw),
      .scale_h_up_sdw(scale_hy_up_sdw),
      .scale_v_up_sdw(scale_vy_up_sdw),
      .scale_h_sdw(scale_hy_sdw),
      .scale_v_sdw(scale_vy_sdw),
      .phase_h_sdw(phase_hy_sdw),
      .phase_v_sdw(phase_vy_sdw),
      .in_pix_data(in_y_pix_data),
      .in_val(in_y_val),
      .in_h_end(in_y_h_end),
      .in_v_end(in_y_v_end),
      .in_cfg_upd(in_y_cfg_upd),
      .in_ack(in_y_ack),
      .out_pix_data(viv_s6),
      .out_val(viv_s7),
      .out_h_end(viv_s8),
      .out_v_end(viv_s9),
      .out_cfg_upd(viv_s10),
      .out_ack(viv_s11),
      .ram_wr_n(ram_y_wr_n),
      .ram_cs_n(ram_y_cs_n),
      .ram_addr(ram_y_addr),
      .ram_wdata(ram_y_wdata),
      .ram_rdata(ram_y_rdata));
    vsisp_self_resize_c_scale u_self_resize_c_scale
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .cfg_upd(cfg_upd),
      .gen_cfg_upd(gen_cfg_upd),
      .scale_h_en(scale_hc_en),
      .scale_v_en(scale_vc_en),
      .scale_h_up(scale_hc_up),
      .scale_v_up(scale_vc_up),
      .scale_hcb(scale_hcb),
      .scale_hcr(scale_hcr),
      .scale_v(scale_vc),
      .phase_h(phase_hc),
      .phase_v(phase_vc),
      .scale_h_lut_ad(chroma_scale_h_lut_ad),
      .scale_v_lut_ad(chroma_scale_v_lut_ad),
      .scale_h_lut(chroma_scale_h_lut),
      .scale_v_lut(chroma_scale_v_lut),
      .scale_h_en_sdw(scale_hc_en_sdw),
      .scale_v_en_sdw(scale_vc_en_sdw),
      .scale_h_up_sdw(scale_hc_up_sdw),
      .scale_v_up_sdw(scale_vc_up_sdw),
      .scale_hcb_sdw(scale_hcb_sdw),
      .scale_hcr_sdw(scale_hcr_sdw),
      .scale_v_sdw(scale_vc_sdw),
      .phase_h_sdw(phase_hc_sdw),
      .phase_v_sdw(phase_vc_sdw),
      .in_pix_data(in_c_pix_data),
      .in_val(in_c_val),
      .in_h_end(in_c_h_end),
      .in_v_end(in_c_v_end),
      .in_cfg_upd(in_c_cfg_upd),
      .in_ack(in_c_ack),
      .out_pix_data(viv_s18),
      .out_val(viv_s19),
      .out_h_end(viv_s20),
      .out_v_end(viv_s21),
      .out_cfg_upd(viv_s22),
      .out_ack(viv_s23),
      .ram_wr_n(ram_c_wr_n),
      .ram_cs_n(ram_c_cs_n),
      .ram_addr(ram_c_addr),
      .ram_wdata(ram_c_wdata),
      .ram_rdata(ram_c_rdata));
endmodule
