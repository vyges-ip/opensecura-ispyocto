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

module vsisp_isp_csm_fix (
                      clk,
                      reset_n,
                      soft_rst,
                      in_data,
                      in_h_end,
                      in_v_end,
                      in_val,
                      regs_awb_meas_mode,
                      exp_alt_mode,
                      out_data,
                      out_y_exp,
                      out_h_end,
                      out_v_end,
                      out_val,
                      out_ack
                    );
`include "vsisp_isp.vh"   
input           clk;               
input           reset_n;           
input           soft_rst;          
input [(3*c_dw_si)-1:0] in_data;   
input           in_h_end;          
input           in_v_end;          
input           in_val;            
input           regs_awb_meas_mode; 
input           exp_alt_mode;      
output [23:0]   out_data;          
output [ 7:0]   out_y_exp;         
output          out_h_end;         
output          out_v_end;         
output          out_val;           
input           out_ack;           
reg [23:0] out_data;               
reg [ 7:0] out_y_exp;              
reg        out_h_end;              
reg        out_v_end;              
reg        out_val;                
wire            viv_s0;
wire [7:0]      viv_s1;
wire [7:0]      viv_s2;
wire [7:0]      viv_s3;
wire [7:0]      viv_s4;
wire [c_dw_si-1:0] viv_s5;
wire [c_dw_si-1:0] viv_s6;
wire [c_dw_si-1:0] viv_s7;
wire [10:0]     viv_s8;
wire [10:0]     viv_s9;
wire [10:0]     viv_s10;
wire [10:0]     viv_s11;
wire [13:0]     viv_s12;
wire [13:0]     viv_s13;
wire [13:0]     viv_s14;
wire [ 9:0]     viv_s15;
wire [12:0]     viv_s16;
wire [15:0]     viv_s17;
assign  viv_s0 = ~out_val | out_ack;
assign  viv_s5 = in_data[(3*c_dw_si)-1:2*c_dw_si];
assign  viv_s6 = in_data[(2*c_dw_si)-1:c_dw_si];
assign  viv_s7 = in_data[c_dw_si-1:0];
assign viv_s8 = viv_s7[c_dw_si-1:c_dw_si-10] - viv_s7[c_dw_si-1:c_dw_si-7];
assign viv_s9 = viv_s6[c_dw_si-1:c_dw_si-8]  + viv_s6[c_dw_si-1:c_dw_si-7];
assign viv_s10 = viv_s5[c_dw_si-1:c_dw_si-10] + viv_s5[c_dw_si-1:c_dw_si-7];
assign viv_s11 = viv_s5[c_dw_si-1:c_dw_si-10] - viv_s5[c_dw_si-1:c_dw_si-7];
assign viv_s12  = 13'd64  + viv_s5[c_dw_si-1:c_dw_si-8] + viv_s6[c_dw_si-1:c_dw_si-9] + viv_s8[10:3];
assign viv_s13 = 13'd512 - viv_s10[10:3] - viv_s6[c_dw_si-1:c_dw_si-8] - viv_s9[10:3] + viv_s8[10:1];
assign viv_s14 = 13'd512 + viv_s11[10:1] - viv_s9                    - viv_s7[c_dw_si-1:c_dw_si-6]; 
assign viv_s2  = viv_s12[9:2];
assign viv_s3 = viv_s13[9:2];
assign viv_s4 = viv_s14[9:2];  
assign viv_s15   = viv_s5[c_dw_si-1:c_dw_si-8] + viv_s6[c_dw_si-1:c_dw_si-8] + viv_s7[c_dw_si-1:c_dw_si-8];
assign viv_s16  = {viv_s15,2'b0}  + viv_s15;
assign viv_s17 = {viv_s16,4'b0} + viv_s16 ;
assign viv_s1     = viv_s17[15:8];
always @ (posedge clk or negedge reset_n) begin
  if(~reset_n) begin                    
    out_data  <= 24'b0;
    out_y_exp <= 8'b0; 
    out_h_end <= 1'b0;
    out_v_end <= 1'b0;
    out_val   <= 1'b0;
  end else begin
    if (soft_rst) begin
      out_h_end <= 1'b0;
      out_v_end <= 1'b0;
      out_val   <= 1'b0;
    end else if (viv_s0) begin 
      if (regs_awb_meas_mode)
         out_data  <= {viv_s6[c_dw_si-1:c_dw_si-8],
                       viv_s7[c_dw_si-1:c_dw_si-8],
                       viv_s5[c_dw_si-1:c_dw_si-8]};
      else 
         out_data  <= {viv_s2,viv_s3,viv_s4};
      if (exp_alt_mode)
         out_y_exp  <= viv_s1;
      else 
         out_y_exp  <= viv_s2;
      out_h_end <= in_h_end;
      out_v_end <= in_v_end;
      out_val   <= in_val;
    end 
  end 
end
endmodule
