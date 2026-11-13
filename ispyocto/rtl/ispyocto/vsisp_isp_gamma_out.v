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

module  vsisp_isp_gamma_out (
                   clk,
                   reset_n,
                   soft_rst,
                   enable,
                   equ_segm,
                   y0,
                   y1,
                   y2,
                   y3,
                   y4,
                   y5,
                   y6,
                   y7,
                   y8,
                   y9,
                   y10,
                   y11,
                   y12,
                   y13,
                   y14,
                   y15,
                   y16,
                   in_data,
                   in_h_end,
                   in_v_end,
                   in_val,
                   in_ack,
                   out_data,
                   out_h_end,
                   out_v_end,
                   out_val,
                   out_ack
                   );
   `include "vsisp_isp.vh"
   input     clk;            
   input     reset_n;        
   input     soft_rst;       
   input     enable;         
   input     equ_segm;       
   input [c_dw_do-1:0] y0;     
   input [c_dw_do-1:0] y1;     
   input [c_dw_do-1:0] y2;     
   input [c_dw_do-1:0] y3;     
   input [c_dw_do-1:0] y4;     
   input [c_dw_do-1:0] y5;     
   input [c_dw_do-1:0] y6;     
   input [c_dw_do-1:0] y7;     
   input [c_dw_do-1:0] y8;     
   input [c_dw_do-1:0] y9;     
   input [c_dw_do-1:0] y10;    
   input [c_dw_do-1:0] y11;    
   input [c_dw_do-1:0] y12;    
   input [c_dw_do-1:0] y13;    
   input [c_dw_do-1:0] y14;    
   input [c_dw_do-1:0] y15;    
   input [c_dw_do-1:0] y16;    
   input [(3*c_dw_si)-1:0] in_data;  
   input                in_h_end; 
   input                in_v_end; 
   input                in_val;   
   output               in_ack;   
   output [(3*c_dw_do)-1:0] out_data; 
   output                out_h_end;
   output                out_v_end;
   output                out_val;  
   input                 out_ack;  
   wire [c_dw_do-1:0]    viv_s0; 
   wire                  viv_s1; 
   wire                  viv_s2; 
   wire                  viv_s3;
   wire [c_dw_do-1:0]    viv_s4;
   wire [c_dw_do-1:0]    viv_s5; 
   wire                  viv_s6; 
   wire                  viv_s7; 
   wire                  viv_s8; 
   wire                  viv_s9; 
   wire                  viv_s10; 
   wire                  viv_s11; 
   wire                  viv_s12; 
   wire                  viv_s13; 
   wire                  viv_s14; 
   vsisp_isp_gamma_channel_fix u_isp_gamma_r_channel_fix (
                        .clk(clk),
                        .reset_n(reset_n),
                        .soft_rst(soft_rst),
                        .enable(enable),
                        .equ_segm(equ_segm),
                        .y0(y0),
                        .y1(y1),
                        .y2(y2),
                        .y3(y3),
                        .y4(y4),
                        .y5(y5),
                        .y6(y6),
                        .y7(y7),
                        .y8(y8),
                        .y9(y9),
                        .y10(y10),
                        .y11(y11),
                        .y12(y12),
                        .y13(y13),
                        .y14(y14),
                        .y15(y15),
                        .y16(y16),
                        .in_data(in_data[3*c_dw_si-1:2*c_dw_si]),
                        .in_h_end(in_h_end),
                        .in_v_end(in_v_end),
                        .in_val(in_val),
                        .in_ack(viv_s6),
                        .out_data(viv_s0),
                        .out_h_end(viv_s1),
                        .out_v_end(viv_s2),
                        .out_val(viv_s3),
                        .out_ack(out_ack)
                        );
   vsisp_isp_gamma_channel_fix u_isp_gamma_g_channel_fix (
                        .clk(clk),
                        .reset_n(reset_n),
                        .soft_rst(soft_rst),
                        .enable(enable),
                        .equ_segm(equ_segm),
                        .y0(y0),
                        .y1(y1),
                        .y2(y2),
                        .y3(y3),
                        .y4(y4),
                        .y5(y5),
                        .y6(y6),
                        .y7(y7),
                        .y8(y8),
                        .y9(y9),
                        .y10(y10),
                        .y11(y11),
                        .y12(y12),
                        .y13(y13),
                        .y14(y14),
                        .y15(y15),
                        .y16(y16),
                        .in_data(in_data[2*c_dw_si-1:c_dw_si]),
                        .in_h_end(in_h_end),
                        .in_v_end(in_v_end),
                        .in_val(in_val),
                        .in_ack(viv_s7),
                        .out_data(viv_s4),
                        .out_h_end(viv_s8),
                        .out_v_end(viv_s9),
                        .out_val(viv_s10),
                        .out_ack(out_ack)   
                        );
   vsisp_isp_gamma_channel_fix u_isp_gamma_b_channel_fix (
                        .clk(clk),
                        .reset_n(reset_n),
                        .soft_rst(soft_rst),
                        .enable(enable),
                        .equ_segm(equ_segm),
                        .y0(y0),
                        .y1(y1),
                        .y2(y2),
                        .y3(y3),
                        .y4(y4),
                        .y5(y5),
                        .y6(y6),
                        .y7(y7),
                        .y8(y8),
                        .y9(y9),
                        .y10(y10),
                        .y11(y11),
                        .y12(y12),
                        .y13(y13),
                        .y14(y14),
                        .y15(y15),
                        .y16(y16),
                        .in_data(in_data[c_dw_si-1:0]),
                        .in_h_end(in_h_end),
                        .in_v_end(in_v_end),
                        .in_val(in_val),
                        .in_ack(viv_s11),
                        .out_data(viv_s5),
                        .out_h_end(viv_s12),
                        .out_v_end(viv_s13),
                        .out_val(viv_s14),
                        .out_ack(out_ack)
                        );
   assign out_data  = {viv_s0,viv_s4,viv_s5}; 
   assign out_h_end = viv_s1;
   assign out_v_end = viv_s2; 
   assign out_val   = viv_s3;
   assign in_ack    = viv_s6; 
endmodule
