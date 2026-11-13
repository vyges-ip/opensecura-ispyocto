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

module vsisp_isp_dpsfe 
  (
   clk,
   reset_n,
   soft_rst,
   in_data,
   in_val,
   in_ack,
   out_data,
   out_val,
   out_ack);
   parameter c_dw_in = 10;         
   input                clk;       
   input                reset_n;   
   input                soft_rst;  
   input  [c_dw_in-1:0] in_data;   
   input                in_val;    
   output               in_ack;    
   output [c_dw_in-1:0] out_data;  
   output               out_val;   
   input                out_ack;   
   reg    [c_dw_in-1:0] out_data;
   reg                  out_val;
   reg                  viv_s0;
   assign in_ack = (~out_val || out_ack) && viv_s0;
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         out_data   <= {c_dw_in{1'b0}};
         out_val    <= 1'b0;
         viv_s0    <= 1'b0;
      end else begin
         if (soft_rst) begin
            out_data   <= {c_dw_in{1'b0}};
            out_val    <= 1'b0;
            viv_s0    <= 1'b0;
         end else begin
            viv_s0  <= 1'b1;
            if (~out_val || out_ack) begin
               out_data   <= in_data;
               out_val    <= in_val;
            end
         end
      end
   end
endmodule
