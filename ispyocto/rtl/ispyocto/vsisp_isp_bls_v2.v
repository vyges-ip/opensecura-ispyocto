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

module vsisp_isp_bls_v2 
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
       bayer_pat_diff,
       in_act_data, 
       in_act_h_end,
       in_act_v_end,
       in_act_val,
       in_act_ack,
       out_data, 
       out_h_end, 
       out_v_end, 
       out_val,
       out_ack
   );
`include "vsisp_isp.vh"   
  input                  clk;              
  input                  reset_n;          
  input                  clk_cfg;          
  input                  reset_cfg_n;      
  input                  soft_rst;         
  input                  cfg_val;          
  input  [c_cfg_bls-1:2] cfg_addr;         
  input                  cfg_rd;           
  input  [31:0]          cfg_wdata;        
  output [31:0]          cfg_rdata;        
  input [1:0]            bayer_pat_diff;   
  input [c_dw_si-1:0]    in_act_data;      
  input                  in_act_h_end;     
  input                  in_act_v_end;     
  input                  in_act_val;       
  output                 in_act_ack;       
  output [c_dw_si-1:0]   out_data;        
  output                 out_h_end;       
  output                 out_v_end;       
  output                 out_val;         
  input                  out_ack;         
  wire               viv_s0;           
  wire [c_dw_si:0]   viv_s1;
  wire [c_dw_si:0]   viv_s2;
  wire [c_dw_si:0]   viv_s3;
  wire [c_dw_si:0]   viv_s4;
vsisp_isp_bls_regs u_isp_bls_regs ( 
       .clk_cfg(clk_cfg), 
       .reset_cfg_n(reset_cfg_n), 
       .cfg_val(cfg_val), 
       .cfg_addr(cfg_addr), 
       .cfg_rd(cfg_rd), 
       .cfg_wdata(cfg_wdata), 
       .cfg_rdata(cfg_rdata), 
       .bls_en(viv_s0),
       .bls_a_fixed(viv_s1),
       .bls_b_fixed(viv_s2),
       .bls_c_fixed(viv_s3),
       .bls_d_fixed(viv_s4)
       );
   vsisp_isp_bls_subtr u_isp_bls_subtr     
     (
      .clk(clk), 
      .reset_n(reset_n), 
      .soft_rst(soft_rst),
      .bayer_pat_diff(bayer_pat_diff),
      .in_data(in_act_data), 
      .in_h_end(in_act_h_end), 
      .in_v_end(in_act_v_end),
      .in_val(in_act_val),
      .in_ack(in_act_ack),
      .out_data(out_data), 
      .out_h_end(out_h_end), 
      .out_v_end(out_v_end),
      .out_val(out_val),
      .out_ack(out_ack),
      .bls_en(viv_s0),
      .bls_mode(1'b0), 
      .bls_a_fixed(viv_s1),
      .bls_b_fixed(viv_s2),
      .bls_c_fixed(viv_s3),
      .bls_d_fixed(viv_s4),
      .bls_a_measured({c_dw_si{1'b0}}), 
      .bls_b_measured({c_dw_si{1'b0}}), 
      .bls_c_measured({c_dw_si{1'b0}}), 
      .bls_d_measured({c_dw_si{1'b0}})
      );
endmodule
