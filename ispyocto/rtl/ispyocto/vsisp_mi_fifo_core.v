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

module vsisp_mi_fifo_core
  (
   wr_clk,
   wr_reset_n,
   rd_clk,
   rd_reset_n,
   rotation,
   wr_en,
   wdata,
   wr_h_end,
   wr_v_end,
   fifo_full,
   rd_en,
   rdata,
   rd_h_end,
   rd_v_end,
   fifo_empty,
   fifo_fill_level,
   fifo_flush
   );
   parameter c_fifo_depth = 8;
   parameter c_data_width = 64;
   parameter c_depth_burst_ratio = 2;
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
   input     rotation;      
   input [c_data_width-1:0] wdata;
   input                    wr_en;
   input                    wr_h_end;
   input                    wr_v_end;
   output                   fifo_full;
   wire                     fifo_full;
   input                     rd_en;
   output [c_data_width-1:0] rdata;
   wire [c_data_width-1:0]   rdata;
   output                    rd_h_end;
   wire                      rd_h_end;
   output                    rd_v_end;
   wire                      rd_v_end;
   output                    fifo_empty;
   wire                      fifo_empty;
   output [c_addr_width:0]   fifo_fill_level;
   reg [c_addr_width:0]      fifo_fill_level;
   output                    fifo_flush;
   reg                       fifo_flush;
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
         for (v_bitpos =c_addr_width - 1; v_bitpos >= 0;v_bitpos = v_bitpos - 1)
           viv_s0[v_bitpos] = gray_value[v_bitpos] ^ viv_s0[v_bitpos + 1];
         f_gray2bin = viv_s0;
      end
   endfunction 
   reg  [c_data_width-1:0] fifo_data[c_fifo_depth-1:0];
   reg [c_fifo_depth-1:0]  viv_s1;
   reg [c_fifo_depth-1:0]  viv_s2;
   wire [c_addr_width:0]   viv_s3;
   wire [c_addr_width:0]   viv_s4;
   reg [c_addr_width:0]    viv_s5;
   reg [c_addr_width:0]    viv_s6;
   reg [c_addr_width:0]    viv_s7;
   wire [c_addr_width:0]   viv_s8;
   wire [c_addr_width:0]   viv_s9;
   reg [c_addr_width:0]    viv_s10;
   reg [c_addr_width:0]    viv_s11;
   reg [c_addr_width:0]    viv_s12;
   wire [c_addr_width:0]   viv_s13;
   integer                 v_loop1;
   integer                 v_loop2;
   always @(posedge wr_clk or negedge wr_reset_n)
     begin
        if (~wr_reset_n) begin
           for(v_loop1 = 0; v_loop1 < c_fifo_depth; v_loop1 = v_loop1 + 1) begin
              fifo_data [v_loop1] <= {c_data_width{1'b0}} ;
              viv_s1[v_loop1] <= 1'b0;
              viv_s2[v_loop1] <= 1'b0;
           end
        end
        else begin
           if (wr_en) begin
              fifo_data [viv_s3[c_addr_width-1:0]] <= wdata;
              viv_s1[viv_s3[c_addr_width-1:0]] <= wr_h_end;
              viv_s2[viv_s3[c_addr_width-1:0]] <= wr_v_end;
           end
        end
     end
   always @(posedge wr_clk or negedge wr_reset_n)
     begin
        if (~wr_reset_n) begin
           viv_s5 <= {c_addr_width+1{1'b0}};
        end
        else begin
           if (wr_en) begin
              viv_s5 <= f_bin2gray(viv_s3 + 1'b1);
           end
        end
     end
   assign viv_s3 = f_gray2bin(viv_s5);
   always @(posedge rd_clk or negedge rd_reset_n)
     begin
        if (~rd_reset_n) begin
           viv_s6 <= {c_addr_width+1{1'b0}};
           viv_s7 <= {c_addr_width+1{1'b0}};
        end
        else begin
           viv_s6 <= viv_s5;
           viv_s7 <= viv_s6;
        end
     end
   assign viv_s4 = f_gray2bin(viv_s7);
   assign fifo_full = (viv_s3[c_addr_width] != viv_s9[c_addr_width])
          & (viv_s3[c_addr_width-1:0] == viv_s9[c_addr_width-1:0]);
   assign rdata    = fifo_data [viv_s8[c_addr_width-1:0]];
   assign rd_h_end = viv_s1[viv_s8[c_addr_width-1:0]] && !fifo_empty;
   assign rd_v_end = viv_s2[viv_s8[c_addr_width-1:0]] && !fifo_empty;
   always @(posedge rd_clk or negedge rd_reset_n)
     begin
        if (~rd_reset_n) begin
           viv_s10 <= {c_addr_width+1{1'b0}};
        end
        else begin
           if (rd_en) begin
              viv_s10 <= f_bin2gray(viv_s8 + 1'b1);
           end
        end
     end
   assign viv_s8 = f_gray2bin(viv_s10);
   always @(posedge wr_clk or negedge wr_reset_n)
     begin
        if (~wr_reset_n) begin
           viv_s11 <= {c_addr_width+1{1'b0}};
           viv_s12 <= {c_addr_width+1{1'b0}};
        end
        else begin
           viv_s11 <= viv_s10;
           viv_s12 <= viv_s11;
        end
     end
   assign viv_s9 = f_gray2bin(viv_s12);
   assign fifo_empty      = (viv_s4 == viv_s8);
   assign viv_s13   = viv_s4 - viv_s8;
   always @(*)
     begin
        fifo_fill_level =  viv_s13;
        fifo_flush = 1'b0;
        for (v_loop2 = (c_fifo_depth / c_depth_burst_ratio) - 1;  v_loop2 >= 0; v_loop2 = v_loop2 - 1)
          if ((viv_s13 > v_loop2) &&
              ( viv_s1[(viv_s8[c_addr_width-1:0] + v_loop2) & {c_addr_width{1'b1}}] |
                   (viv_s2[(viv_s8[c_addr_width-1:0] + v_loop2) & {c_addr_width{1'b1}}] && rotation) ) )  
                  begin
             fifo_fill_level = v_loop2 + 1;
             fifo_flush = 1'b1;
          end
     end
endmodule
