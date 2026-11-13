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

module vsisp_sync_fifo_outp 
  (
   rd_clk,
   rd_reset_n,
   rd_val,
   rd_data,
   rd_ack,
   rd_en,
   rdata,
   fifo_empty                      
   );
   parameter c_data_width = 8;
   input     rd_clk;
   input     rd_reset_n;
   output    rd_val;
   wire      rd_val;
   output [c_data_width-1:0] rd_data;
   reg [c_data_width-1:0]    rd_data;
   input                     rd_ack;
   output                    rd_en;
   wire                      rd_en;
   input [c_data_width-1:0]  rdata;
   input                     fifo_empty;
   wire                      viv_s0;
   wire [c_data_width-1:0]   viv_s1;
   wire                      viv_s2;
   reg                       viv_s3;     
   wire                      viv_s4; 
   always @(posedge rd_clk or negedge rd_reset_n) begin
      if (!rd_reset_n) begin
         rd_data       <= {c_data_width{1'b0}};
         viv_s3 <= 1'b0;
      end
      else begin
         if (viv_s4) begin
            viv_s3 <= viv_s0;
            if (viv_s0) begin 
               rd_data <= viv_s1;
            end
         end
      end
   end
   assign viv_s4 = rd_ack | (~viv_s3);
   assign viv_s2          = viv_s4;
   assign rd_val            = viv_s3;
   assign viv_s1 = rdata;
   assign viv_s0  = ~fifo_empty;
   assign rd_en     = viv_s2 & ~fifo_empty;
endmodule
