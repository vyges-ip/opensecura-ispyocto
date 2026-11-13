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

module vsisp_marvin_mi_out_ctrl_mp
  (
   m_hclk, 
   reset_m_hclk_n,
   soft_rst_m_hclk,
   mp_fifo_read64, 
   stat_mp_frame_end, 
   vci_out_m1_cmdval, 
   vci_out_m1_plen, 
   vci_out_m1_eop, 
   vci_out_m1_address, 
   vci_out_m1_wdata, 
   vci_out_m1_be, 
   vci_out_m1_cmd, 
   vci_out_m1_const, 
   vci_out_m1_contig, 
   vci_out_m1_wrap, 
   vci_out_m1_cmdack, 
   vci_out_m1_rspval, 
   vci_out_m1_reop, 
   vci_out_m1_rspack,
   fifo_select_val,
   burst_len,
   address,
   data,
   stat_skip_active,
   mp_frame_end,
   next_sel,
   stat_mp_enable_in,
   stat_jpeg_enable_in,
   stat_raw_enable_in,
   last_pixel_sig_en,
   last_pixel_m1_req,
   last_pixel_m1_ack
   );
`include "vsisp_marvin_mi.vh"
   input     m_hclk; 
   input     reset_m_hclk_n;
   input     soft_rst_m_hclk; 
   output    mp_fifo_read64; 
   reg       mp_fifo_read64; 
   output    stat_mp_frame_end; 
   reg       stat_mp_frame_end; 
   reg       viv_s0; 
   reg       viv_s1; 
   output                       vci_out_m1_cmdval; 
   output [8:0]                 vci_out_m1_plen; 
   output                       vci_out_m1_eop; 
   output [c_mi_data_addr+3:3]  vci_out_m1_address; 
   output [63:0]                vci_out_m1_wdata; 
   output [7:0]                 vci_out_m1_be; 
   output [1:0]                 vci_out_m1_cmd; 
   output                       vci_out_m1_const; 
   output                       vci_out_m1_contig; 
   output                       vci_out_m1_wrap; 
   input                        vci_out_m1_cmdack; 
   input                        vci_out_m1_rspval; 
   input                        vci_out_m1_reop; 
   output                       vci_out_m1_rspack; 
   reg                          vci_out_m1_cmdval;
   reg                          vci_out_m1_eop;
   reg [c_mi_data_addr+3:3]     vci_out_m1_address;
   reg [63:0]                   vci_out_m1_wdata; 
   input                      fifo_select_val;
   input [c_burst_len_bw-1:0] burst_len;
   input [c_mi_data_addr+3:3] address;
   input [63:0]               data;
   input                      stat_skip_active;
   input                      mp_frame_end;
   output                     next_sel;
   input                      stat_mp_enable_in;
   input                      stat_jpeg_enable_in;
   input                      stat_raw_enable_in;
   reg                        next_sel;
   output                     last_pixel_m1_req;
   input                      last_pixel_m1_ack;
   input                      last_pixel_sig_en;
   reg                        last_pixel_m1_req;
   reg                        viv_s2;
   reg                        viv_s3;
   reg                        viv_s4;
   reg [2:0]                  viv_s5;
   reg [2:0]                  viv_s6;
   reg [c_burst_len_bw-1:0]   viv_s7;
   reg [c_burst_len_bw-1:0]   viv_s8;
   wire viv_s9; 
   reg  viv_s10;          
   reg  viv_s11;    
   parameter c_bvci_idle   = 3'b000;
   parameter c_single      = 3'b001;
   parameter c_burst       = 3'b010;
   parameter c_burst_fake  = 3'b011;
   parameter c_last_single = 3'b111;
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s5 <= c_bvci_idle;
      end
      else if (soft_rst_m_hclk) begin
         viv_s5 <= c_bvci_idle;
      end
      else begin
         viv_s5 <= viv_s6;
      end
   end
   always @ (viv_s7 or burst_len or viv_s5 or fifo_select_val or 
             mp_frame_end or vci_out_m1_cmdack or viv_s9 or 
             vci_out_m1_reop or stat_skip_active or vci_out_m1_cmdval) begin
      viv_s2 = 1'b0;
      viv_s3 = 1'b0;
      viv_s4    = 1'b0;
      viv_s8         = viv_s7;
      mp_fifo_read64        = 1'b0;
      next_sel              = 1'b0;
      viv_s0 = 1'b0;
      viv_s6            = viv_s5;
      case (viv_s5) 
        c_single: begin
           if (vci_out_m1_cmdack) begin
              next_sel              = 1'b1;
              viv_s6            = c_bvci_idle;
           end
           else begin
              viv_s3 = 1'b1;
              viv_s4    = 1'b1;
           end
        end
        c_burst: begin
           viv_s3 = 1'b1;
           if (vci_out_m1_cmdack && (viv_s7 == (burst_len - 1))) begin
              viv_s4 = 1'b1;
              mp_fifo_read64     = 1'b1;
              viv_s8      = viv_s7 + 5'd1;
              viv_s6         = c_single;
           end
           else if (vci_out_m1_cmdack) begin
              mp_fifo_read64   = 1'b1;
              viv_s8 = viv_s7 + 5'd1;
           end
        end
        c_burst_fake: begin
           if (viv_s7 == burst_len) begin
              next_sel              = 1'b1;
              viv_s0 = mp_frame_end;
              viv_s6            = c_bvci_idle;
           end
           else begin
              mp_fifo_read64 = 1'b1;
              viv_s8  = viv_s7 + 5'd1;
           end
        end
        c_last_single: begin
           viv_s2 = 1'b1;
           if (vci_out_m1_cmdval && vci_out_m1_cmdack) begin
              viv_s6     = c_bvci_idle;
           end
           else begin
              viv_s3 = 1'b1;
              viv_s4    = 1'b1;
           end
        end
        default: begin  
           viv_s8             = 5'd0;
           if (vci_out_m1_reop) begin
              viv_s0 = mp_frame_end;
           end           
           if (fifo_select_val & ~stat_skip_active & (burst_len == 5'd1)) begin
              viv_s3  = 1'b1;
              viv_s4     = 1'b1;
              mp_fifo_read64         = 1'b1;
              viv_s8          = 5'd1;
              viv_s6             = c_single;
           end
           else if (fifo_select_val & ~stat_skip_active) begin
              viv_s3  = 1'b1;
              mp_fifo_read64         = 1'b1;
              viv_s8          = 5'd1;
              viv_s6             = c_burst;
           end
           else if (fifo_select_val & stat_skip_active) begin
              mp_fifo_read64         = 1'b1;
              viv_s8          = 5'd1;
              viv_s6             = c_burst_fake;
           end
           if (viv_s9) begin
              viv_s8  = 5'd1;
              viv_s6     = c_last_single;
           end
        end     
      endcase
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         vci_out_m1_cmdval <= 1'b0;
         vci_out_m1_eop    <= 1'b0;
         viv_s7         <= {(c_burst_len_bw){1'd0}};
         last_pixel_m1_req <= 1'b0;
      end
      else if (soft_rst_m_hclk) begin
         vci_out_m1_cmdval <= 1'b0;
         vci_out_m1_eop    <= 1'b0;
         viv_s7         <= {(c_burst_len_bw){1'd0}};
         last_pixel_m1_req <= 1'b0;
      end
      else begin
         vci_out_m1_cmdval <= viv_s3;
         vci_out_m1_eop    <= viv_s4;
         viv_s7         <= viv_s8;
         if (viv_s2) begin
            last_pixel_m1_req <= 1'b1;
         end else  if (last_pixel_m1_ack) begin 
            last_pixel_m1_req <= 1'b0;
         end  
      end
   end
   assign vci_out_m1_cmd    = 2'b10;
   assign vci_out_m1_contig = 1'b1;
   assign vci_out_m1_wrap   = 1'b0;
   assign vci_out_m1_const  = 1'b0;
   assign vci_out_m1_plen   = (viv_s5 == c_last_single) ? 9'd8 :
                              {1'b0, burst_len, 3'b000};  
   assign vci_out_m1_be      = 8'b11111111;
   assign vci_out_m1_rspack  = 1'b1;
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         vci_out_m1_address <= 29'h0;
         vci_out_m1_wdata   <= 64'h0;
      end
      else if (soft_rst_m_hclk) begin
         vci_out_m1_address <= 29'h0;
         vci_out_m1_wdata   <= 64'h0;
      end
      else if (mp_fifo_read64) begin
         vci_out_m1_address <= address;
         vci_out_m1_wdata   <= data;
      end
   end
   assign viv_s9        = (~viv_s11 & viv_s10);
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         stat_mp_frame_end            <= 1'b0;
         viv_s1       <= 1'b0;
         viv_s10                 <= 1'b0;
         viv_s11           <= 1'b0;
      end else if (soft_rst_m_hclk) begin
         stat_mp_frame_end            <= 1'b0;
         viv_s1       <= 1'b0;
         viv_s10                 <= 1'b0;
         viv_s11           <= 1'b0;
      end else begin
         viv_s11           <= viv_s10;
         if (last_pixel_sig_en) begin
            if (viv_s0) begin 
               viv_s1 <= 1'b1;
            end
         end
         if (last_pixel_sig_en) begin
            if (stat_mp_enable_in) begin
               viv_s10           <= viv_s1;
            end else if (stat_jpeg_enable_in | stat_raw_enable_in) begin
               viv_s10           <= viv_s1;
            end else if (last_pixel_m1_ack) begin
               viv_s10           <= 1'b0;
            end
         end
         if (last_pixel_sig_en) begin
            stat_mp_frame_end         <= 1'b0; 
            if (last_pixel_m1_ack & viv_s1) begin
               stat_mp_frame_end      <= 1'b1;
               viv_s1 <= 1'b0;
            end
         end else begin
            stat_mp_frame_end         <= viv_s0;
         end
      end
   end
endmodule
