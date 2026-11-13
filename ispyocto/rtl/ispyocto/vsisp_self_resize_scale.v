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

module vsisp_self_resize_scale 
  (
   clk, 
   reset_n,
   soft_rst, 
   cfg_upd,
   gen_cfg_upd,
   scale_h_en, 
   scale_v_en, 
   scale_h_up, 
   scale_v_up, 
   scale_h, 
   scale_v,
   phase_h, 
   phase_v,                     
   scale_h_lut_ad, 
   scale_v_lut_ad, 
   scale_h_lut, 
   scale_v_lut,
   scale_h_en_sdw, 
   scale_v_en_sdw, 
   scale_h_up_sdw, 
   scale_v_up_sdw, 
   scale_h_sdw, 
   scale_v_sdw,
   phase_h_sdw, 
   phase_v_sdw,
   in_pix_data, 
   in_val, 
   in_h_end, 
   in_v_end,
   in_cfg_upd,
   in_ack, 
   out_pix_data, 
   out_val, 
   out_h_end, 
   out_v_end,
   out_cfg_upd,
   out_ack, 
   ram_wr_n, 
   ram_cs_n, 
   ram_addr, 
   ram_wdata, 
   ram_rdata);
`include "vsisp_self_resize.vh"
   input        clk; 
   input        reset_n;
   input        soft_rst;    
   input        cfg_upd;       
   input        gen_cfg_upd;       
   input        scale_h_en; 
   input        scale_v_en; 
   input        scale_h_up; 
   input        scale_v_up; 
   input [c_scale_h - 1:0] scale_h; 
   input [c_scale_v - 1:0] scale_v; 
   input [c_phase_h - 1:0] phase_h; 
   input [c_phase_v - 1:0] phase_v; 
   output [c_scale_lut_addr - 1:0] scale_h_lut_ad; 
   wire [c_scale_lut_addr - 1:0]   scale_h_lut_ad;
   output [c_scale_lut_addr - 1:0] scale_v_lut_ad; 
   wire [c_scale_lut_addr - 1:0]   scale_v_lut_ad;
   input [c_scale_lut - 1:0]       scale_h_lut; 
   input [c_scale_lut - 1:0]       scale_v_lut; 
   input [7:0]                     in_pix_data; 
   input                           in_val; 
   input                           in_h_end; 
   input                           in_v_end;
   input                           in_cfg_upd;   
   output                          in_ack; 
   output                          scale_h_en_sdw; 
   output                          scale_v_en_sdw;
   output                          scale_h_up_sdw;
   output                          scale_v_up_sdw;   
   output [c_scale_h - 1:0]        scale_h_sdw; 
   output [c_scale_v - 1:0]        scale_v_sdw; 
   output [c_scale_h - 1:0]        phase_h_sdw; 
   output [c_scale_v - 1:0]        phase_v_sdw;    
   output [7:0]    out_pix_data; 
   output          out_val; 
   output          out_h_end; 
   output          out_v_end;
   output          out_cfg_upd; 
   input           out_ack; 
   output          ram_wr_n; 
   output          ram_cs_n; 
   output [c_ram_width-1:0]    ram_addr; 
   output [31:0]   ram_wdata; 
   input [31:0]    ram_rdata; 
   wire [7:0]      viv_s0; 
   wire            viv_s1; 
   wire            viv_s2; 
   wire            viv_s3;
   wire            viv_s4;
   wire            viv_s5; 
   vsisp_self_hor_scale u_self_hor_scale 
     (
      .clk(clk), 
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .cfg_upd(cfg_upd), 
      .gen_cfg_upd(gen_cfg_upd), 
      .scale_h_en(scale_h_en), 
      .scale_h_up(scale_h_up), 
      .scale_h(scale_h),
      .phase_h(phase_h),                          
      .scale_h_lut_ad(scale_h_lut_ad), 
      .scale_h_lut(scale_h_lut),
      .scale_h_en_sdw(scale_h_en_sdw), 
      .scale_h_up_sdw(scale_h_up_sdw), 
      .scale_h_sdw(scale_h_sdw), 
      .phase_h_sdw(phase_h_sdw), 
      .in_pix_data(in_pix_data), 
      .in_val(in_val), 
      .in_h_end(in_h_end), 
      .in_v_end(in_v_end),
      .in_cfg_upd(in_cfg_upd), 
      .in_ack(in_ack), 
      .out_pix_data(viv_s0), 
      .out_val(viv_s1), 
      .out_h_end(viv_s2), 
      .out_v_end(viv_s3),
      .out_cfg_upd(viv_s4),
      .out_ack(viv_s5));
   vsisp_self_vert_scale u_self_vert_scale 
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .cfg_upd(cfg_upd),
      .gen_cfg_upd(gen_cfg_upd),
      .scale_v_en(scale_v_en), 
      .scale_v_up(scale_v_up), 
      .scale_v(scale_v),
      .phase_v(phase_v),    
      .scale_v_lut_ad(scale_v_lut_ad), 
      .scale_v_lut(scale_v_lut),
      .scale_v_en_sdw(scale_v_en_sdw), 
      .scale_v_up_sdw(scale_v_up_sdw), 
      .scale_v_sdw(scale_v_sdw), 
      .phase_v_sdw(phase_v_sdw), 
      .in_pix_data(viv_s0), 
      .in_val(viv_s1), 
      .in_h_end(viv_s2), 
      .in_v_end(viv_s3),
      .in_cfg_upd(viv_s4),  
      .in_ack(viv_s5), 
      .out_pix_data(out_pix_data), 
      .out_val(out_val), 
      .out_h_end(out_h_end), 
      .out_v_end(out_v_end),
      .out_cfg_upd(out_cfg_upd),  
      .out_ack(out_ack), 
      .ram_wr_n(ram_wr_n), 
      .ram_cs_n(ram_cs_n), 
      .ram_addr(ram_addr), 
      .ram_wdata(ram_wdata), 
      .ram_rdata(ram_rdata));
endmodule
