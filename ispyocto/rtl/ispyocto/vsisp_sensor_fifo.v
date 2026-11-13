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

module vsisp_sensor_fifo 
  (
   sclk,
   reset_sclk_n,
   mclk,
   reset_mclk_n,
   s_data,
   s_hsync,
   s_vsync,
   s_valid,
   s_fifo_val,
   s_fifo_data,
   s_fifo_hsync,
   s_fifo_vsync,
   s_fifo_ack,
   s_fifo_full
   );
   parameter c_fifo_depth = 4;
   parameter c_dw_si = 12;
   parameter c_data_width = c_dw_si + 3;
   parameter c_addr_width = (c_fifo_depth <=   1 ) ? 0 : 
                            (c_fifo_depth <=   2 ) ? 1 : 
                            (c_fifo_depth <=   4 ) ? 2 : 
                            (c_fifo_depth <=   8 ) ? 3 : 
                            (c_fifo_depth <=  16 ) ? 4 : 
                            (c_fifo_depth <=  32 ) ? 5 : 
                            (c_fifo_depth <=  64 ) ? 6 : 
                            (c_fifo_depth <= 128 ) ? 7 : 8;
   input     sclk;
   input     reset_sclk_n;
   input     mclk;
   input     reset_mclk_n;
   input [c_dw_si-1:0] s_data;
   input               s_hsync;
   input               s_vsync;
   input               s_valid;
   output [c_dw_si-1:0] s_fifo_data;
   wire [c_dw_si-1:0]   s_fifo_data;
   output               s_fifo_val;
   wire                 s_fifo_val;
   output               s_fifo_hsync;
   wire                 s_fifo_hsync;
   output               s_fifo_vsync;
   wire                 s_fifo_vsync;
   input                s_fifo_ack;
   output               s_fifo_full;
   wire                 s_fifo_full;
   wire [c_data_width-1:0] viv_s0;
   wire                    viv_s1;
   wire                    viv_s2; 
   wire [c_addr_width:0]   viv_s3; 
   wire                    viv_s4;
   wire [c_data_width-1:0] viv_s5;
   wire                    viv_s6;
   wire                    viv_s7;
   wire [c_addr_width:0]   viv_s8;
   wire [c_data_width-1:0] viv_s9;
   assign viv_s1 = 1'b1;
   assign viv_s0 = {s_vsync, s_hsync, s_valid, s_data};
   vsisp_sync_fifo_core #(c_fifo_depth, c_data_width) u_sync_fifo_core 
     (
      .wr_clk        (sclk         ),
      .wr_reset_n    (reset_sclk_n ),
      .rd_clk        (mclk         ),
      .rd_reset_n    (reset_mclk_n ),
      .wr_en         (viv_s1        ),
      .wdata         (viv_s0        ),
      .fifo_full     (viv_s2    ), 
      .wr_fill_level (viv_s3), 
      .rd_en         (viv_s4        ),
      .rdata         (viv_s5        ),
      .fifo_empty    (viv_s7   ),
      .rd_fill_level (viv_s8)
      );
   vsisp_sync_fifo_outp #(c_data_width) u_sync_fifo_outp 
     (
      .rd_clk     (mclk         ),
      .rd_reset_n (reset_mclk_n ),
      .rd_val     (viv_s6       ),
      .rd_data    (viv_s9      ),
      .rd_ack     (s_fifo_ack   ),
      .rd_en      (viv_s4        ),
      .rdata      (viv_s5        ),
      .fifo_empty (viv_s7   )                      
      );
   assign s_fifo_data  = viv_s9[c_dw_si-1:0];
   assign s_fifo_val = viv_s9[c_dw_si]&viv_s6;
   assign s_fifo_hsync = viv_s9[c_dw_si+1];
   assign s_fifo_vsync = viv_s9[c_dw_si+2];
   assign s_fifo_full = (viv_s8 == c_fifo_depth);
endmodule
