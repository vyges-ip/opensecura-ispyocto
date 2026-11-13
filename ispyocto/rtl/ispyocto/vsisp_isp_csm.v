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

module vsisp_isp_csm (
                clk,
                reset_n,
                soft_rst,
                in_data,
                in_h_end,
                in_v_end,
                in_val,
                in_ack,
                out_data,
                out_h_end,
                out_v_end,
                out_val,
                out_ack,
                coeff0,
                coeff1,
                coeff2,
                coeff3,
                coeff4,
                coeff5,
                coeff6,
                coeff7,
                coeff8,
                y_range,
                c_range
                );
`include "vsisp_isp.vh"   
input                      clk;        
input                      reset_n;    
input                      soft_rst;   
input    [(3*c_dw_do)-1:0] in_data; 
input                      in_h_end;   
input                      in_v_end;   
input                      in_val;     
output                     in_ack;     
output   [(3*c_dw_do)-1:0] out_data;   
output                     out_h_end;  
output                     out_v_end;  
output                     out_val;    
input                      out_ack;    
input [c_dw_csm_coeff-1:0] coeff0;     
input [c_dw_csm_coeff-1:0] coeff1;     
input [c_dw_csm_coeff-1:0] coeff2;     
input [c_dw_csm_coeff-1:0] coeff3;     
input [c_dw_csm_coeff-1:0] coeff4;     
input [c_dw_csm_coeff-1:0] coeff5;     
input [c_dw_csm_coeff-1:0] coeff6;     
input [c_dw_csm_coeff-1:0] coeff7;     
input [c_dw_csm_coeff-1:0] coeff8;     
input                      y_range;    
input                      c_range;    
reg [(3*c_dw_do)-1:0] out_data;  
reg                   out_h_end; 
reg                   out_v_end; 
reg                   out_val;   
wire               in_ack;
reg  [c_dw_do-1:0] viv_s0;
reg  [c_dw_do-1:0] viv_s1;
reg  [c_dw_do-1:0] viv_s2;
wire [c_dw_do-1:0] viv_s3;
wire [c_dw_do-1:0] viv_s4;
wire [c_dw_do-1:0] viv_s5;
wire [c_dw_do+3:0] viv_s6;  
wire [c_dw_do+3:0] viv_s7; 
wire [c_dw_do+3:0] viv_s8; 
wire [c_dw_do+3:0] viv_s9;  
wire [c_dw_do+3:0] viv_s10; 
wire [c_dw_do+3:0] viv_s11; 
wire               viv_s12;
wire               viv_s13;
wire               viv_s14;
vsisp_isp_csm_tri_mul_add  #(.c_dw_do(c_dw_do)) u_y_isp_csm_tri_mul_add(
            .coeff_r(coeff0),
            .coeff_g(coeff1),
            .coeff_b(coeff2),
            .data_r(viv_s3),
            .data_g(viv_s4),
            .data_b(viv_s5),
            .data_out(viv_s6));
vsisp_isp_csm_tri_mul_add #(.c_dw_do(c_dw_do)) u_cb_isp_csm_tri_mul_add(
            .coeff_r(coeff3),
            .coeff_g(coeff4),
            .coeff_b(coeff5),
            .data_r(viv_s3),
            .data_g(viv_s4),
            .data_b(viv_s5),
            .data_out(viv_s7));
vsisp_isp_csm_tri_mul_add #(.c_dw_do(c_dw_do)) u_cr_isp_csm_tri_mul_add(
            .coeff_r(coeff6),
            .coeff_g(coeff7),
            .coeff_b(coeff8),
            .data_r(viv_s3),
            .data_g(viv_s4),
            .data_b(viv_s5),
            .data_out(viv_s8));
assign  in_ack = ~out_val | out_ack;
assign  viv_s3 = in_data[(3*c_dw_do)-1 : 2*c_dw_do];
assign  viv_s4 = in_data[(2*c_dw_do)-1 :   c_dw_do];
assign  viv_s5 = in_data[    c_dw_do-1 :         0];
assign viv_s9  = viv_s6  + {~y_range, 4'd0, {c_dw_do-8{1'b0}}}; 
assign viv_s10 = viv_s7 + {   8'd128,      {c_dw_do-8{1'b0}}}; 
assign viv_s11 = viv_s8 + {   8'd128,      {c_dw_do-8{1'b0}}}; 
assign  viv_s12  = (viv_s9[c_dw_do+3]  || (viv_s9[c_dw_do+2  : c_dw_do-4] == 7'd0));
assign  viv_s13 = (viv_s10[c_dw_do+3] || (viv_s10[c_dw_do+2 : c_dw_do-4] == 7'd0));
assign  viv_s14 = (viv_s11[c_dw_do+3] || (viv_s11[c_dw_do+2 : c_dw_do-4] == 7'd0));
always@(*)
   if (y_range) begin 
      if      (viv_s9[c_dw_do+3])                        viv_s0 = {c_dw_do  {1'b0}};
      else if (viv_s9[c_dw_do+2 : c_dw_do  ] != 3'd0)    viv_s0 = {c_dw_do  {1'b1}};
      else                                              viv_s0 = viv_s9[c_dw_do-1 : 0];
   end else begin
      if      (viv_s12)                             viv_s0 = {8'd16 , {c_dw_do-8{1'b0}}};
      else if (viv_s9[c_dw_do+2 : c_dw_do-8] > 11'd235)  viv_s0 = {8'd235, {c_dw_do-8{1'b0}}};
      else                                              viv_s0 = viv_s9[c_dw_do-1 : 0];
   end
always@(*)
   if (c_range) begin 
      if      (viv_s10[c_dw_do+3])                       viv_s1 = {c_dw_do  {1'b0}};
      else if (viv_s10[c_dw_do+2 : c_dw_do]   != 3'd0)   viv_s1 = {c_dw_do  {1'b1}};
      else                                              viv_s1 = viv_s10[c_dw_do-1 : 0];
   end else begin
      if      (viv_s13)                            viv_s1 = {8'd16 , {c_dw_do-8{1'b0}}};
      else if (viv_s10[c_dw_do+2 : c_dw_do-8] > 11'd240) viv_s1 = {8'd240, {c_dw_do-8{1'b0}}};
      else                                              viv_s1 = viv_s10[c_dw_do-1 : 0];
   end
always@(*)
   if (c_range) begin 
      if      (viv_s11[c_dw_do+3])                       viv_s2 = {c_dw_do  {1'b0}};
      else if (viv_s11[c_dw_do+2 : c_dw_do]   != 3'd0)   viv_s2 = {c_dw_do  {1'b1}};
      else                                              viv_s2 = viv_s11[c_dw_do-1 : 0];
   end else begin
      if      (viv_s14)                            viv_s2 = {8'd16 , {c_dw_do-8{1'b0}}};
      else if (viv_s11[c_dw_do+2 : c_dw_do-8] > 11'd240) viv_s2 = {8'd240, {c_dw_do-8{1'b0}}};
      else                                              viv_s2 = viv_s11[c_dw_do-1 : 0];
   end
always @ (posedge clk or negedge reset_n) begin
  if(~reset_n) begin                    
    out_data  <= {3*c_dw_do{1'b0}};
    out_h_end <= 1'b0;
    out_v_end <= 1'b0;
    out_val   <= 1'b0;
  end else begin
    if (soft_rst) begin
      out_h_end <= 1'b0;
      out_v_end <= 1'b0;
      out_val   <= 1'b0;
    end else if (in_ack) begin     
      out_data  <= {viv_s0,viv_s1,viv_s2};
      out_h_end <= in_h_end;
      out_v_end <= in_v_end;
      out_val   <= in_val;
    end 
  end 
end
endmodule
