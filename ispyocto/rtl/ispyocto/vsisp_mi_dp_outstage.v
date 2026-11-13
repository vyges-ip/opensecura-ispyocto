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

 module vsisp_mi_dp_outstage(
 clk,
 reset_n,
 soft_reset,
 in_val,
 in_data,
 in_hend,
 in_vend,
 in_ack,
 in_duo,
 out_val,
 out_data,
 out_hend,
 out_vend,
 out_ack
 );
 input clk;
 input reset_n;
 input soft_reset;
 input in_val;
 input [127:0] in_data;
 input in_hend;
 input in_vend;
 output in_ack;
 input in_duo;
 output out_val;
 output [63:0] out_data;
 output out_hend;
 output out_vend;
 input out_ack;
 wire viv_s0 = out_val & out_ack;
 wire viv_s1 = in_val & in_ack;
 wire viv_s2 = viv_s1 & ~in_duo;
 wire viv_s3 = viv_s1 & in_duo;
 reg in_ack;
 reg [1:0] viv_s4;
 always @(posedge clk or negedge reset_n)begin
  if(!reset_n)begin
    in_ack <= 1'b0;
  end
  else if(soft_reset)begin
    in_ack <= 1'b0;
  end
  else begin
    if(viv_s1)begin
      in_ack <=1'b0;
    end
    else if(viv_s4==2'b0 || viv_s4==2'b1 && viv_s0)begin
      in_ack <= 1'b1;
    end
  end
 end
 always @(posedge clk or negedge reset_n)begin
  if(!reset_n)begin
    viv_s4 <=2'b0;
  end
  else if(soft_reset)begin
    viv_s4 <=2'b0;
  end
  else begin
    if(viv_s0)begin
      if(viv_s2) viv_s4 <= viv_s4;
      else if(viv_s3) viv_s4<= viv_s4 + 2'b01;
      else viv_s4 <= viv_s4 - 2'b1;
    end
    else begin
      if(viv_s2) viv_s4 <= viv_s4 + 2'b01;
      else if(viv_s3) viv_s4 <= viv_s4 + 2'b10;
    end
  end
 end
reg viv_s5;
reg [65:0] viv_s6, viv_s7;
always @(posedge clk or negedge reset_n)begin
  if(!reset_n) viv_s5 <=1'b0;
  else if(soft_reset) viv_s5 <=1'b0;
  else begin
    if(viv_s1) viv_s5 <= 1'b0;
    else if(viv_s0) viv_s5 <= viv_s5 + 1'b1;
  end
end
always @(posedge clk or negedge reset_n)begin
  if(!reset_n) begin
    viv_s6 <= 66'h0;
    viv_s7 <= 66'h0;
  end
  else if(soft_reset) begin
    viv_s6 <= 66'h0;
    viv_s7 <= 66'h0;
  end
  else begin
    if(viv_s2) begin
      viv_s6 <= {in_hend, in_vend, in_data[0+:64]};
    end
    else if(viv_s3)begin
      viv_s6 <= {   1'b0,    1'b0, in_data[0+:64]};
      viv_s7 <= {in_hend, in_vend, in_data[64+:64]};
    end
  end
end
assign out_val = viv_s4 !=0;
assign {out_hend, out_vend, out_data} = viv_s5 == 1'b0 ? viv_s6:
                                                       viv_s7;
 endmodule
