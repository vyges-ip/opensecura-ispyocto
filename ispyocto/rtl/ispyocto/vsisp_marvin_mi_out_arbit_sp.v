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

module vsisp_marvin_mi_out_arbit_sp
  (
   m_hclk,
   reset_m_hclk_n,
   soft_rst_m_hclk,
   burst_length_y,
   burst_length_c,
   sp_y_size,
   sp_cb_size,
   sp_cr_size,
   sp_y_base_ad,
   sp_cb_base_ad,
   sp_cr_base_ad,
   sp_y_fifo_fill_level,
   sp_y_fifo_flush,
   sp_cb_fifo_fill_level,
   sp_cb_fifo_flush,
   sp_cr_fifo_fill_level,
   sp_cr_fifo_flush,
   y_addr,
   cb_addr,
   cr_addr,
   next_sel,
   fifo_select_val,
   sp_fifo_select,
   burst_len,
   sp_y_cur_ptr,
   sp_cb_cur_ptr,
   sp_cr_cur_ptr
   );
`include "vsisp_marvin_mi.vh"
   input     m_hclk;
   input     reset_m_hclk_n;
   input     soft_rst_m_hclk;
   input [c_burst_len_bw-1:0] burst_length_y;
   input [c_burst_len_bw-1:0] burst_length_c;
   input [c_bufsize:3]        sp_y_size;
   input [c_bufsize-1:3]      sp_cb_size;
   input [c_bufsize-1:3]      sp_cr_size;
   input [11:3]               sp_y_base_ad;
   input [11:3]               sp_cb_base_ad;
   input [11:3]               sp_cr_base_ad;
   input [c_fifo_depth_bw-1:0] sp_y_fifo_fill_level;
   input                       sp_y_fifo_flush;
   input [c_fifo_depth_bw-1:0] sp_cb_fifo_fill_level;
   input                       sp_cb_fifo_flush;
   input [c_fifo_depth_bw-1:0] sp_cr_fifo_fill_level;
   input                       sp_cr_fifo_flush;
   input                       next_sel;
   output                      fifo_select_val;
   output [1:0]                sp_fifo_select;
   output [c_burst_len_bw-1:0] burst_len;
   input [c_bufsize:3]         sp_y_cur_ptr;
   input [c_bufsize-1:3]       sp_cb_cur_ptr;
   input [c_bufsize-1:3]       sp_cr_cur_ptr;
   input [11:3] y_addr;
   input [11:3] cb_addr;
   input [11:3] cr_addr;
   reg                         fifo_select_val;
   reg [1:0]                   sp_fifo_select;
   reg [c_burst_len_bw-1:0]    burst_len;
   wire [c_bufsize:3]          viv_s0;   
   wire [c_bufsize-1:3]        viv_s1;
   wire [c_bufsize-1:3]        viv_s2;
   reg                         viv_s3;
   reg [1:0]                   viv_s4;
   reg [c_burst_len_bw-1:0]    viv_s5;
   integer                     v_loop;
   wire                        viv_s6;
   wire                        viv_s7;
   wire                        viv_s8;
   assign viv_s0         = sp_y_size  - sp_y_cur_ptr;
   assign viv_s1        = sp_cb_size - sp_cb_cur_ptr;
   assign viv_s2        = sp_cr_size - sp_cr_cur_ptr;
   assign viv_s6 = ((sp_y_fifo_fill_level >= 6'd8) && (sp_y_cur_ptr[6:3] != 4'd0) && (burst_length_y >= 5'd8)) ||
                  ((sp_y_fifo_fill_level >= 6'd4) && (sp_y_cur_ptr[5:3] != 3'd0)) ||
                  ((sp_y_fifo_fill_level >= 6'd2) && (sp_y_cur_ptr[4:3] != 2'd0)) ||
                  ((sp_y_fifo_fill_level >  6'd0) &&   (sp_y_cur_ptr[3] != 1'd0)) ||
                  ((sp_y_fifo_fill_level >  6'd0) && sp_y_fifo_flush) ||
                   (sp_y_fifo_fill_level >= burst_length_y);
   assign viv_s7 = ((sp_cb_fifo_fill_level >= 6'd8) && (sp_cb_cur_ptr[6:3] != 4'd0) && (burst_length_c >= 5'd8)) ||
                   ((sp_cb_fifo_fill_level >= 6'd4) && (sp_cb_cur_ptr[5:3] != 3'd0)) ||
                   ((sp_cb_fifo_fill_level >= 6'd2) && (sp_cb_cur_ptr[4:3] != 2'd0)) ||
                   ((sp_cb_fifo_fill_level >  6'd0) &&   (sp_cb_cur_ptr[3] != 1'd0)) ||
                   ((sp_cb_fifo_fill_level >  6'd0) && sp_cb_fifo_flush) ||
                    (sp_cb_fifo_fill_level >= burst_length_c);
   assign viv_s8 = ((sp_cr_fifo_fill_level >= 6'd8) && (sp_cr_cur_ptr[6:3] != 4'd0) && (burst_length_c >= 5'd8)) ||
                   ((sp_cr_fifo_fill_level >= 6'd4) && (sp_cr_cur_ptr[5:3] != 3'd0)) ||
                   ((sp_cr_fifo_fill_level >= 6'd2) && (sp_cr_cur_ptr[4:3] != 2'd0)) ||
                   ((sp_cr_fifo_fill_level >  6'd0) &&   (sp_cr_cur_ptr[3] != 1'd0)) ||
                   ((sp_cr_fifo_fill_level >  6'd0) && sp_cr_fifo_flush) ||
                    (sp_cr_fifo_fill_level >= burst_length_c);
   always @(*) begin
      if (next_sel) begin
         viv_s3 = 1'b0;
         viv_s4     = sp_fifo_select;
      end else if (fifo_select_val == 1'b0) begin
         if ( viv_s6 &&
              (~viv_s7 || (sp_y_fifo_fill_level >= sp_cb_fifo_fill_level)) &&
              (~viv_s8 || (sp_y_fifo_fill_level >= sp_cr_fifo_fill_level))) begin
           viv_s3 = 1'b1;
           viv_s4     = 2'b00;
         end else if ( viv_s7 &&
              (~viv_s8 || (sp_cb_fifo_fill_level >= sp_cr_fifo_fill_level))) begin
           viv_s3 = 1'b1;
           viv_s4     = 2'b01;
         end else if (viv_s8) begin
           viv_s3 = 1'b1;
           viv_s4     = 2'b10;
         end else begin
           viv_s3 = fifo_select_val;
           viv_s4     = sp_fifo_select;
         end
      end else begin
         viv_s3 = fifo_select_val;
         viv_s4     = sp_fifo_select;
      end
   end
wire [8:0] viv_s9=viv_s4 ==2'b0 ? y_addr : viv_s4 ==2'b1 ? cb_addr: cr_addr;
wire [9:0] viv_s10=10'b1000000000-{1'b0,viv_s9};
   always @(*) begin
     viv_s5 = burst_len;
     if (fifo_select_val == 1'b0) begin
         case (viv_s4)
           2'd0: begin
              if (viv_s6) begin
                 if (     (burst_length_y == 5'd16) &&
                          (viv_s0 >= 23'd16) && (sp_y_cur_ptr[6:3] == 4'd0) &&
                          (sp_y_fifo_fill_level >= 6'd16)) begin
                       if(viv_s10<16)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd16;
                 end
                 else if (((burst_length_y == 5'd8) || (burst_length_y == 5'd16))  &&
                          (viv_s0 >= 23'd8) && (sp_y_cur_ptr[5:3] == 3'd0) &&
                          (sp_y_fifo_fill_level >= 6'd8)) begin
                       if(viv_s10<8)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd8;
                 end
                 else if ((viv_s0 >= 23'd4) && (sp_y_cur_ptr[4:3] == 2'd0) &&
                          (sp_y_fifo_fill_level >= 6'd4)) begin
                       if(viv_s10<4)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd4;
                 end
                 else if ((viv_s0 >= 23'd2) && (sp_y_cur_ptr[3] == 1'd0) &&
                          (sp_y_fifo_fill_level >= 6'd2)) begin
                    if(viv_s10<2)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd2;
                 end
                 else begin
                    viv_s5 = 5'd1;
                 end
              end
           end
           2'd1: begin
              if (viv_s7) begin
                 if (     (burst_length_c == 5'd16) &&
                          (viv_s1 >= 23'd16) && (sp_cb_cur_ptr[6:3] == 4'd0) &&
                          (sp_cb_fifo_fill_level >= 6'd16)) begin
                       if(viv_s10<16)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd16;
                 end
                 else if (((burst_length_c == 5'd8) || (burst_length_c == 5'd16))  &&
                          (viv_s1 >= 23'd8) && (sp_cb_cur_ptr[5:3] == 3'd0) &&
                          (sp_cb_fifo_fill_level >= 6'd8)) begin
                       if(viv_s10<8)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd8;
                 end
                 else if ((viv_s1 >= 23'd4) && (sp_cb_cur_ptr[4:3] == 2'd0) &&
                          (sp_cb_fifo_fill_level >= 6'd4)) begin
                       if(viv_s10<4)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd4;
                 end
                 else if ((viv_s1 >= 23'd2) && (sp_cb_cur_ptr[3] == 1'd0) &&
                          (sp_cb_fifo_fill_level >= 6'd2)) begin
                    if(viv_s10<2)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd2;
                 end
                 else begin
                    viv_s5 = 5'd1;
                 end
              end
           end
           default: begin
              if (viv_s8) begin
                 if (     (burst_length_c == 5'd16) &&
                          (viv_s2 >= 23'd16) && (sp_cr_cur_ptr[6:3] == 4'd0) &&
                          (sp_cr_fifo_fill_level >= 6'd16)) begin
                       if(viv_s10<16)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd16;
                 end
                 else if (((burst_length_c == 5'd8) || (burst_length_c == 5'd16))  &&
                          (viv_s2 >= 23'd8) && (sp_cr_cur_ptr[5:3] == 3'd0) &&
                          (sp_cr_fifo_fill_level >= 6'd8)) begin
                       if(viv_s10<8)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd8;
                 end
                 else if ((viv_s2 >= 23'd4) && (sp_cr_cur_ptr[4:3] == 2'd0) &&
                          (sp_cr_fifo_fill_level >= 6'd4)) begin
                       if(viv_s10<4)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd4;
                     end
                 else if ((viv_s2 >= 23'd2) && (sp_cr_cur_ptr[3] == 1'd0) &&
                          (sp_cr_fifo_fill_level >= 6'd2)) begin
                       if(viv_s10<2)
                       viv_s5 = viv_s10;
                       else
                       viv_s5 = 5'd2;
                 end
                 else begin
                    viv_s5 = 5'd1;
                 end
              end
           end
         endcase
      end else begin
         viv_s5 = burst_len;
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         sp_fifo_select     <= 2'd0;
         fifo_select_val    <= 1'b0;
         burst_len          <= 5'd0;
      end
      else if (soft_rst_m_hclk) begin
         sp_fifo_select     <= 2'd0;
         fifo_select_val    <= 1'b0;
         burst_len          <= 5'd0;
      end
      else begin
         sp_fifo_select     <= viv_s4;
         fifo_select_val    <= viv_s3;
         burst_len          <= viv_s5;
      end
   end
endmodule
