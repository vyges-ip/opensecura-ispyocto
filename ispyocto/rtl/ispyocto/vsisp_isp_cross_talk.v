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

module vsisp_isp_cross_talk (
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
                      offset_r,
                      offset_g,
                      offset_b
                    );
`include "vsisp_isp.vh"   
input                      clk;       
input                      reset_n;   
input                      soft_rst;  
input    [(3*c_dw_si)-1:0] in_data;   
input                      in_h_end;  
input                      in_v_end;  
input                      in_val;    
output                     in_ack;    
output   [(3*c_dw_si)-1:0] out_data;  
output                     out_h_end; 
output                     out_v_end; 
output                     out_val;   
input                      out_ack;   
input [c_dw_crt_coeff-1:0] coeff0;    
input [c_dw_crt_coeff-1:0] coeff1;    
input [c_dw_crt_coeff-1:0] coeff2;    
input [c_dw_crt_coeff-1:0] coeff3;    
input [c_dw_crt_coeff-1:0] coeff4;    
input [c_dw_crt_coeff-1:0] coeff5;    
input [c_dw_crt_coeff-1:0] coeff6;    
input [c_dw_crt_coeff-1:0] coeff7;    
input [c_dw_crt_coeff-1:0] coeff8;    
input        [c_dw_si-1:0] offset_r;  
input        [c_dw_si-1:0] offset_g;  
input        [c_dw_si-1:0] offset_b;  
reg [(3*c_dw_si)-1:0] out_data;  
reg                   out_h_end; 
reg                   out_v_end; 
reg                   out_val;   
wire               in_ack;
wire [c_dw_si-1:0] viv_s0;
wire [c_dw_si-1:0] viv_s1;
wire [c_dw_si-1:0] viv_s2;
wire [c_dw_si-1:0] viv_s3;
wire [c_dw_si-1:0] viv_s4;
wire [c_dw_si-1:0] viv_s5;
wire [c_dw_si+5:0] viv_s6;
wire [c_dw_si+5:0] viv_s7;
wire [c_dw_si+5:0] viv_s8;
vsisp_isp_crt_tri_mul_add  u_r_isp_crt_tri_mul_add(
            .coeff_r(coeff0),
            .coeff_g(coeff1),
            .coeff_b(coeff2),
            .offset(offset_r),
            .data_r(viv_s3),
            .data_g(viv_s4),
            .data_b(viv_s5),
            .data_out(viv_s6));
vsisp_isp_crt_tri_mul_add u_g_isp_crt_tri_mul_add(
            .coeff_r(coeff3),
            .coeff_g(coeff4),
            .coeff_b(coeff5),
            .offset(offset_g),
            .data_r(viv_s3),
            .data_g(viv_s4),
            .data_b(viv_s5),
            .data_out(viv_s7));
vsisp_isp_crt_tri_mul_add u_b_isp_crt_tri_mul_add(
            .coeff_r(coeff6),
            .coeff_g(coeff7),
            .coeff_b(coeff8),
            .offset(offset_b),
            .data_r(viv_s3),
            .data_g(viv_s4),
            .data_b(viv_s5),
            .data_out(viv_s8));
assign  in_ack = ~out_val | out_ack;
assign  viv_s3 = in_data[(3*c_dw_si)-1:2*c_dw_si];
assign  viv_s4 = in_data[(2*c_dw_si)-1:c_dw_si];
assign  viv_s5 = in_data[c_dw_si-1:0];
assign viv_s0 =  (viv_s6[c_dw_si+5] )               ? {c_dw_si{1'b0}} :
               ((viv_s6[c_dw_si+4:c_dw_si] > 5'b0) ? {c_dw_si{1'b1}} :
                                                         viv_s6[c_dw_si-1:0]);
assign viv_s1 =  (viv_s7[c_dw_si+5] )               ? {c_dw_si{1'b0}} :
               ((viv_s7[c_dw_si+4:c_dw_si] > 5'b0) ? {c_dw_si{1'b1}} :
                                                         viv_s7[c_dw_si-1:0]);
assign viv_s2 =  (viv_s8[c_dw_si+5] )               ? {c_dw_si{1'b0}} :
               ((viv_s8[c_dw_si+4:c_dw_si] > 5'b0) ? {c_dw_si{1'b1}} :
                                                         viv_s8[c_dw_si-1:0]);
always @ (posedge clk or negedge reset_n) begin
  if(~reset_n) begin                    
    out_data  <= {3*c_dw_si{1'b0}};
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
