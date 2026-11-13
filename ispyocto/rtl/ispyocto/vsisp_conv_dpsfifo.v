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

module vsisp_conv_dpsfifo
( clk,
  reset_n,
  soft_rst,
  fifo_data_i,
  fifo_val_i,
  fifo_ack_o,
  fifo_data_o,
  fifo_val_o,
  fifo_ack_i
);
  parameter c_fifo_data_width = 11; 
  input  clk;      
  input  reset_n;  
  input  soft_rst; 
  input  [c_fifo_data_width-1:0] fifo_data_i; 
  input  fifo_val_i; 
  output fifo_ack_o; 
  output [c_fifo_data_width-1:0] fifo_data_o; 
  output fifo_val_o; 
  input  fifo_ack_i; 
  reg [c_fifo_data_width-1:0] viv_s0; 
  reg                         viv_s1;
  wire                        viv_s2;
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin    
      viv_s0 <= {c_fifo_data_width{1'b0}};
      viv_s1 <= 1'b0;
    end 
    else if (soft_rst) begin    
      viv_s1 <= 1'b0;
    end 
    else begin
      viv_s1 <= (~fifo_ack_i && fifo_val_i) || (~fifo_ack_i && viv_s1) || (viv_s1 && fifo_val_i);
      if (fifo_val_i && viv_s2)
        viv_s0 <= fifo_data_i; 
    end 
  end 
  assign fifo_data_o  = viv_s1 ? viv_s0 : fifo_data_i;
  assign fifo_val_o   = fifo_val_i || viv_s1;
  assign viv_s2 = fifo_ack_i || ~viv_s1;
  assign fifo_ack_o   = viv_s2;
endmodule
