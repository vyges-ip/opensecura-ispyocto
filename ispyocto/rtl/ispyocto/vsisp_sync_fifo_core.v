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

module vsisp_sync_fifo_core 
  (
   wr_clk,
   wr_reset_n,
   rd_clk,
   rd_reset_n,
   wr_en,
   wdata,
   fifo_full,
   wr_fill_level,
   rd_en,
   rdata,
   fifo_empty,
   rd_fill_level
   );
   parameter c_fifo_depth = 4;
   parameter c_data_width = 8;
   parameter c_addr_width = (c_fifo_depth <=   1) ? 0 : 
                            (c_fifo_depth <=   2) ? 1 : 
                            (c_fifo_depth <=   4) ? 2 : 
                            (c_fifo_depth <=   8) ? 3 : 
                            (c_fifo_depth <=  16) ? 4 : 
                            (c_fifo_depth <=  32) ? 5 : 
                            (c_fifo_depth <=  64) ? 6 : 
                            (c_fifo_depth <= 128) ? 7 : 8;
   input     wr_clk;
   input     wr_reset_n;
   input     rd_clk;
   input     rd_reset_n;
   input     wr_en;
   input [c_data_width-1:0] wdata;
   output                   fifo_full;
   wire                     fifo_full;
   output [c_addr_width:0]  wr_fill_level;
   wire [c_addr_width:0]    wr_fill_level;
   output [c_data_width-1:0] rdata;
   input                     rd_en;
   wire [c_data_width-1:0]   rdata;
   output                    fifo_empty;
   wire                      fifo_empty;
   output [c_addr_width:0]   rd_fill_level;
   wire [c_addr_width:0]     rd_fill_level;
   function [c_addr_width:0] f_bin2gray;
      input [c_addr_width:0] viv_s0;
      begin
         f_bin2gray = viv_s0 ^ {1'b0, viv_s0[c_addr_width:1]};
      end
   endfunction 
   function [c_addr_width:0] f_gray2bin;
      input [c_addr_width:0] gray_value;
      reg   [c_addr_width:0] viv_s0;
      integer v_bitpos;
      begin
         viv_s0 = {gray_value[c_addr_width], {c_addr_width{1'b0}}};
         for (v_bitpos = c_addr_width - 1;v_bitpos >= 0;v_bitpos = v_bitpos - 1)
           viv_s0[v_bitpos] = gray_value[v_bitpos] ^ viv_s0[v_bitpos + 1];
         f_gray2bin = viv_s0;
      end
   endfunction 
   reg  [c_data_width-1:0] vsisp_fifo[c_fifo_depth-1:0];
   reg [c_addr_width:0]    viv_s1;
   wire [c_addr_width:0]   viv_s2;
   reg [c_addr_width:0]    viv_s3;
   reg [c_addr_width:0]    viv_s4;
   reg [c_addr_width:0]    viv_s5;
   reg [c_addr_width:0]    viv_s6;
   wire [c_addr_width:0]   viv_s7;
   reg [c_addr_width:0]    viv_s8;
   reg [c_addr_width:0]    viv_s9;
   reg [c_addr_width:0]    viv_s10;
   integer                 v_index;
   always @(posedge wr_clk or negedge wr_reset_n)
     begin
        if (~wr_reset_n) begin
           viv_s1  <= {c_addr_width+1{1'b0}}; 
           viv_s3 <= {c_addr_width+1{1'b0}}; 
           for(v_index = 0; v_index < c_fifo_depth; v_index = v_index + 1)
             vsisp_fifo[v_index] <= {c_data_width{1'b0}} ; 
        end
        else begin
           if (wr_en) begin
              vsisp_fifo[viv_s1[c_addr_width-1:0]] <= wdata;
              viv_s1  <= viv_s1 + 1'b1;
              viv_s3 <= f_bin2gray(viv_s1 + 1'b1);
           end 
        end 
     end 
   always @(posedge rd_clk or negedge rd_reset_n)
     begin
        if (~rd_reset_n) begin
           viv_s4 <= {c_addr_width+1{1'b0}}; 
           viv_s5 <= {c_addr_width+1{1'b0}}; 
        end
        else begin
           viv_s4 <= viv_s3;
           viv_s5 <= viv_s4;
        end 
     end 
   assign viv_s7 = f_gray2bin(viv_s10);
   assign fifo_full = (viv_s1[c_addr_width] != viv_s7[c_addr_width])
          & (viv_s1[c_addr_width-1:0] == viv_s7[c_addr_width-1:0]);
   assign wr_fill_level   = viv_s1 - viv_s7;
   always @(posedge rd_clk or negedge rd_reset_n)
     begin
        if (~rd_reset_n) begin 
           viv_s6  <= {c_addr_width+1{1'b0}}; 
           viv_s8 <= {c_addr_width+1{1'b0}}; 
        end
        else begin
           if (rd_en) begin
              viv_s6  <= viv_s6 + 1'b1;
              viv_s8 <= f_bin2gray(viv_s6 + 1'b1);
           end 
        end 
     end 
   assign rdata = vsisp_fifo[viv_s6[c_addr_width-1:0]];
   always @(posedge wr_clk or negedge wr_reset_n)
     begin
        if (~wr_reset_n) begin
           viv_s9 <= {c_addr_width+1{1'b0}}; 
           viv_s10 <= {c_addr_width+1{1'b0}}; 
        end
        else begin
           viv_s9 <= viv_s8;
           viv_s10 <= viv_s9;
        end 
     end 
   assign viv_s2 = f_gray2bin(viv_s5);
   assign fifo_empty      = (viv_s2 == viv_s6);
   assign rd_fill_level   = viv_s2 - viv_s6;
endmodule
