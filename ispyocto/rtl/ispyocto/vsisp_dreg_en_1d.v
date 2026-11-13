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

module vsisp_dreg_en_1d(
clk,
reset_n,
soft_reset,
in,
out,
en
);
parameter WIDTH = 32;
parameter RESET_STATE = 0;  
input clk;
input reset_n, soft_reset;
input [WIDTH-1 : 0 ] in ;
input en;
output [WIDTH-1 : 0 ] out;
reg [WIDTH-1:0]		out;
reg [WIDTH-1:0]		viv_s0;
always @(posedge clk or negedge reset_n)begin
  if(!reset_n) begin
    out <= RESET_STATE;
  end
  else if(soft_reset) begin
    out <= RESET_STATE;
  end
  else if(en) begin
    out <= in;
  end
end
endmodule
