//****************************************************************************
// 
// Copyright 2023 Vivante Corp.
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

module vsisp_mi_bayer_split(
 clk,
 reset_n,
 soft_reset,
 in_data,
 in_hend,
 in_vend,
 in_val,
 in_ack,
 out_data0,
 out_hend0,
 out_vend0,
 out_val0,
 out_ack0,
 out_data1,
 out_hend1,
 out_vend1,
 out_val1,
 out_ack1
);
 parameter data_width=16;
 input clk;
 input reset_n;
 input soft_reset;
 input [data_width-1:0] in_data;
 input in_hend;
 input in_vend;
 input in_val;
 output in_ack;
 output [data_width-1:0] out_data0;
 output out_hend0;
 output out_vend0;
 output out_val0;
 input out_ack0;
 output [data_width-1:0] out_data1;
 output out_hend1;
 output out_vend1;
 output out_val1;
 input out_ack1;
 wire viv_s0;
 wire viv_s1;
 wire [data_width-1:0] viv_s2;
 assign in_ack = viv_s0==1'b0 ? out_ack0:
                                   out_ack1;
 wire viv_s3 = out_val0 & out_ack0;
 wire viv_s4 = in_val && in_ack && viv_s0==1'b0 ? 1'b1:
                       viv_s3 ?               1'b0:
                       viv_s1;
 vsisp_dreg_en_1d #(1,1'b0) pixel_ptr_reg               (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(viv_s0), .in(~viv_s0), .en(in_val & in_ack));
 vsisp_dreg_en_1d #(1,1'b0) out_val0_tmp_reg       (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(viv_s1), .in(viv_s4),  .en(1'b1));
 vsisp_dreg_en_1d #(data_width,{data_width{1'b0}}) out_data0_tmp_reg (.clk(clk), .reset_n(reset_n), .soft_reset(soft_reset), .out(viv_s2), .in(in_data),  .en(in_val & in_ack & (viv_s0==1'b0) ));
 assign out_val0 = out_val1 & viv_s1;
 assign out_data0 = viv_s2;
 assign out_hend0 = in_hend;
 assign out_vend0 = in_vend;
 assign out_val1 = in_val & viv_s0==1'b1;
 assign out_data1 = in_data;
 assign out_hend1 = in_hend;
 assign out_vend1 = in_vend;
endmodule
