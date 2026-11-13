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

module vsisp_isp_awb_meas (
        clk,
        reset_n,
        soft_rst,
        meas_data,
        meas_h_end,
        meas_v_end,
        meas_val,
        meas_ack,
        mean_y__g,
        mean_cb__b,
        mean_cr__r,
        white_cnt,
        awb_done,
        regs_awb_enable,
        regs_awb_meas_mode,
        regs_awb_max_en,
        regs_awb_mode,
        regs_awb_h_offs,
        regs_awb_v_offs,
        regs_awb_h_size,
        regs_awb_v_size,
        regs_awb_frames,
        regs_awb_ref_cb__max_b,
        regs_awb_ref_cr__max_r,
        regs_awb_max_y,
        regs_awb_min_y__max_g,
        regs_awb_min_c,
        regs_awb_max_csum);
`include "vsisp_isp.vh"
input                    clk;               
input                    reset_n;           
input                    soft_rst;          
input  [23:0]            meas_data;         
input                    meas_h_end;        
input                    meas_v_end;        
input                    meas_val;          
input                    meas_ack;          
output [7:0]             mean_y__g;         
output [7:0]             mean_cb__b;        
output [7:0]             mean_cr__r;        
output [c_white_cnt-1:0] white_cnt;   
output                   awb_done;          
input                    regs_awb_enable;   
input                    regs_awb_meas_mode; 
input                    regs_awb_max_en;   
input  [1:0]             regs_awb_mode;     
input  [12:0]            regs_awb_h_offs;   
input  [12:0]            regs_awb_v_offs;   
input  [13:0]            regs_awb_h_size;   
input  [13:0]            regs_awb_v_size;   
input  [ 2:0]            regs_awb_frames;   
input  [ 7:0]            regs_awb_ref_cb__max_b; 
input  [ 7:0]            regs_awb_ref_cr__max_r; 
input  [ 7:0]            regs_awb_max_y;    
input  [ 7:0]            regs_awb_min_y__max_g;  
input  [ 7:0]            regs_awb_min_c;    
input  [ 7:0]            regs_awb_max_csum; 
reg [7:0]                mean_y__g;
reg [7:0]                mean_cb__b;
reg [7:0]                mean_cr__r;
reg [c_white_cnt-1:0]    white_cnt;
reg                      viv_s0;
reg                      viv_s1;
reg                      viv_s2;
reg                      awb_done;
wire            viv_s3;
wire            viv_s4;
wire            viv_s5;
wire  [c_awb_acc_width-1:0] viv_s6;
wire  [c_awb_acc_width-1:0] viv_s7;
wire  [c_awb_acc_width-1:0] viv_s8;
wire  [c_white_cnt-1:0]    viv_s9;
wire                       viv_s10;
wire  [c_awb_acc_width-1:0] viv_s11;
wire  [c_awb_acc_width-1:0] viv_s12;
wire  [c_awb_acc_width-1:0] viv_s13;
wire                       viv_s14;
wire                       viv_s15;
wire  [c_white_cnt-1:0]    viv_s16;
wire                       viv_s17; 
wire                       viv_s18; 
wire  [c_white_cnt-1:0]    viv_s19; 
wire                       viv_s20; 
wire                       viv_s21; 
wire  [c_white_cnt-1:0]    viv_s22; 
always @(posedge clk or negedge reset_n) begin
  if (reset_n == 1'b0) begin
    mean_y__g  <= 8'd0;
    mean_cb__b <= 8'd0;
    mean_cr__r <= 8'd0;
    white_cnt <= {c_white_cnt{1'b0}};
    viv_s0  <= 1'b0;
    viv_s2 <= 1'b0;
    viv_s1  <= 1'b0;
    awb_done  <= 1'b0;
  end else begin
    if (soft_rst == 1'b1) begin
      viv_s0  <= 1'b0;
      viv_s1  <= 1'b0;
      awb_done  <= 1'b0;
    end else begin
      viv_s1 <= viv_s0;
      awb_done <= viv_s0;
      if (viv_s14) begin
        mean_y__g  <= viv_s11[7:0];
        mean_cb__b <= viv_s12[7:0];
        mean_cr__r <= viv_s13[7:0];
        white_cnt <= viv_s16;
        viv_s2 <= viv_s15;
      end
      if (viv_s0 && viv_s1) begin
        viv_s0 <= 1'b0;
      end else begin
        if (viv_s14) begin
          viv_s0 <= 1'b1;
        end
      end
    end
  end
end
vsisp_isp_awb_wnd u_isp_awb_wnd (
        .clk(clk),
        .reset_n(reset_n),
        .soft_rst(soft_rst),
        .in_val(meas_val),
        .in_ack(meas_ack),
        .in_h_end(meas_h_end),
        .in_v_end(meas_v_end),
        .wnd_val(viv_s4),
        .meas_end(viv_s3),
        .regs_awb_frames(regs_awb_frames),
        .regs_awb_enable(regs_awb_enable),
        .regs_awb_h_offs(regs_awb_h_offs),
        .regs_awb_v_offs(regs_awb_v_offs),
        .regs_awb_h_size(regs_awb_h_size),
        .regs_awb_v_size(regs_awb_v_size));
vsisp_isp_awb_th u_isp_awb_th (
        .meas_data(meas_data),
        .wnd_val(viv_s4),
        .th_val(viv_s5),
        .regs_awb_meas_mode(regs_awb_meas_mode),
        .regs_awb_max_en(regs_awb_max_en),
        .regs_awb_mode(regs_awb_mode),
        .regs_awb_ref_cb__max_b(regs_awb_ref_cb__max_b),
        .regs_awb_ref_cr__max_r(regs_awb_ref_cr__max_r),
        .regs_awb_max_y(regs_awb_max_y),
        .regs_awb_min_y__max_g(regs_awb_min_y__max_g),
        .regs_awb_min_c(regs_awb_min_c),
        .regs_awb_max_csum(regs_awb_max_csum));
vsisp_isp_awb_acc u_isp_awb_acc (                                                             
        .clk(clk),
        .reset_n(reset_n),
        .soft_rst(soft_rst),
        .in_data(meas_data),
        .in_val(viv_s5),
        .meas_end(viv_s3),
        .acc_data_y(viv_s6),
        .acc_data_cb(viv_s7),
        .acc_data_cr(viv_s8),
        .acc_cnt(viv_s9),
        .acc_val(viv_s10));
vsisp_isp_awb_div #(c_awb_acc_width, c_white_cnt,6) u_isp_awb_div_y (
        .clk(clk),
        .reset_n(reset_n),
        .soft_rst(soft_rst),
        .in_data(viv_s6),
        .in_div(viv_s9),
        .in_val(viv_s10),
        .out_data(viv_s11),
        .out_val(viv_s14),
        .out_div_zero(viv_s15),
        .out_div(viv_s16),
        .out_ack(viv_s1));
vsisp_isp_awb_div #(c_awb_acc_width, c_white_cnt,6) u_isp_awb_div_cb (
        .clk(clk),
        .reset_n(reset_n),
        .soft_rst(soft_rst),
        .in_data(viv_s7),
        .in_div(viv_s9),
        .in_val(viv_s10),
        .out_data(viv_s12),
        .out_val(viv_s17),
        .out_div_zero(viv_s18),
        .out_div(viv_s19),
        .out_ack(viv_s1));
vsisp_isp_awb_div #(c_awb_acc_width, c_white_cnt,6) u_isp_awb_div_cr (
        .clk(clk),
        .reset_n(reset_n),
        .soft_rst(soft_rst),
        .in_data(viv_s8),
        .in_div(viv_s9),
        .in_val(viv_s10),
        .out_data(viv_s13),
        .out_val(viv_s20),
        .out_div_zero(viv_s21),
        .out_div(viv_s22),
        .out_ack(viv_s1));
endmodule
