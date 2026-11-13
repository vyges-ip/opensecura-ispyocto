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

module vsisp_marvin_dpsfe
( clk,
  reset_n,
  soft_rst,
  dpsfe_data_i,
  dpsfe_val_i,
  dpsfe_ack_o,
  dpsfe_data_o,
  dpsfe_val_o,
  dpsfe_ack_i
);
  parameter c_dpsfe_data_width = 11; 
  input  clk;      
  input  reset_n;  
  input  soft_rst;  
  input  [c_dpsfe_data_width-1:0] dpsfe_data_i; 
  input  dpsfe_val_i; 
  output dpsfe_ack_o; 
  output [c_dpsfe_data_width-1:0] dpsfe_data_o; 
  output dpsfe_val_o; 
  input  dpsfe_ack_i; 
  reg  [c_dpsfe_data_width-1:0] dpsfe_data_o; 
  reg  viv_s0; 
  wire viv_s1;    
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin    
         dpsfe_data_o     <= {c_dpsfe_data_width{1'b0}};
         viv_s0 <= 1'b0;
      end
      else begin
         if (soft_rst) begin
            dpsfe_data_o     <= {c_dpsfe_data_width{1'b0}};
            viv_s0 <= 1'b0;          
         end
         else if (viv_s1) begin
            viv_s0 <= dpsfe_val_i;
            dpsfe_data_o     <= dpsfe_data_i;
         end       
      end
   end
   assign viv_s1 = dpsfe_ack_i | (~viv_s0);
   assign dpsfe_ack_o = viv_s1;
   assign dpsfe_val_o = viv_s0;
endmodule
