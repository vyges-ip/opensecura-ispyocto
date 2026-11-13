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

module vsisp_isp_demosaic_dpsbe 
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
   input     clk;        
   input     reset_n;    
   input     soft_rst;   
   input [c_dw_in-1:0] in_data;   
   input               in_val;    
   output              in_ack;    
   output [c_dw_in-1:0] out_data;  
   output               out_val;   
   input                out_ack;   
   reg                  viv_s0;    
   reg                  viv_s1;
   reg [c_dw_in-1:0]    viv_s2;
   wire                 out_val;
   wire [c_dw_in-1:0]   out_data;
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s2  <= {c_dw_in{1'b0}};
         viv_s0   <= 1'b0;
         viv_s1   <= 1'b0;
      end else begin
         if (viv_s0) viv_s2  <= in_data;
         if (soft_rst) begin
            viv_s0 <= 1'b0;
            viv_s1 <= 1'b0;
         end else begin
            viv_s0 <= ~out_val | out_ack;
            if (viv_s0) viv_s1 <= in_val;
         end
      end
   end
   assign out_data = viv_s0 ? in_data : viv_s2;
   assign out_val  = viv_s0 ? in_val  : viv_s1;
   assign in_ack   = viv_s0;
endmodule
