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

module vsisp_conv_dpsbe 
( clk,
  reset_n,
  soft_rst,
  dpsbe_data_i,
  dpsbe_val_i,
  dpsbe_ack_o,
  dpsbe_data_o,
  dpsbe_val_o,
  dpsbe_ack_i
);
  parameter c_dpsbe_data_width = 8; 
  input  clk;      
  input  reset_n;  
  input  soft_rst; 
  input  [c_dpsbe_data_width-1:0] dpsbe_data_i; 
  input  dpsbe_val_i; 
  output dpsbe_ack_o; 
  output [c_dpsbe_data_width-1:0] dpsbe_data_o; 
  output dpsbe_val_o; 
  input  dpsbe_ack_i; 
  reg [c_dpsbe_data_width-1:0] viv_s0; 
  reg viv_s1; 
  reg viv_s2; 
  wire viv_s3; 
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin    
      viv_s0 <= {c_dpsbe_data_width{1'b0}};
      viv_s1 <= 1'b0;
      viv_s2 <= 1'b0;
    end 
    else if (soft_rst) begin    
      viv_s0 <= {c_dpsbe_data_width{1'b0}};
      viv_s1 <= 1'b0;
      viv_s2 <= 1'b0;
    end 
    else begin
      viv_s2 <= dpsbe_ack_i | (!viv_s3);
      if (viv_s2) begin
        viv_s1 <= dpsbe_val_i;
      end 
      if (viv_s2) begin
        viv_s0 <= dpsbe_data_i; 
      end 
    end 
  end 
  assign dpsbe_data_o = viv_s2 ? dpsbe_data_i : viv_s0;
  assign viv_s3 = viv_s2 ?  dpsbe_val_i : viv_s1;
  assign dpsbe_val_o = viv_s3;
  assign dpsbe_ack_o = viv_s2;
endmodule
