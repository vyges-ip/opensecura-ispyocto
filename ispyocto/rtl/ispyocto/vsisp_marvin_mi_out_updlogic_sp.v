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

module vsisp_marvin_mi_out_updlogic_sp
  (
   m_hclk, 
   reset_m_hclk_n,
   soft_rst_m_hclk,
   soft_upd,
   sp_enable,
   dp_enable,   
   sp_write_format, 
   sp_output_format, 
   stat_sp_enable_out,
   stat_dp_enable_out,   
   cfg_in_update_sp,
   sp_fifo_h_end, 
   sp_fifo_v_end, 
   sp_fifo_read64, 
   sp_fifo_select,
   stat_sp_frame_end, 
   sp_frame_end,
   cfg_out_update_sp
   );
   input       m_hclk; 
   input       reset_m_hclk_n;
   input       soft_rst_m_hclk; 
   input       soft_upd; 
   input       sp_enable;
   input       dp_enable;
   input [1:0] sp_write_format; 
   input [2:0] sp_output_format; 
   output      stat_sp_enable_out;
   output      stat_dp_enable_out;
   reg         stat_sp_enable_out; 
   reg         stat_dp_enable_out; 
   input       cfg_in_update_sp;
   input       sp_fifo_h_end; 
   input       sp_fifo_v_end; 
   input       sp_fifo_read64; 
   input [1:0] sp_fifo_select;
   input       stat_sp_frame_end; 
   output      sp_frame_end;
   output      cfg_out_update_sp;
   reg         sp_frame_end;
   reg         cfg_out_update_sp;
   reg         viv_s0;
   reg         viv_s1;
   reg         viv_s2;
   reg         viv_s3;
   always @ (viv_s1 or viv_s2 or 
             sp_output_format or sp_write_format or viv_s0 or
             stat_sp_enable_out or stat_dp_enable_out) begin
      if (stat_sp_enable_out & (sp_output_format[2] == 1'b1)) begin
         sp_frame_end = viv_s0;
      end 
      else if (stat_sp_enable_out & (sp_output_format[2:0] == 3'b0)) begin
         sp_frame_end = viv_s0;
      end 
      else if (stat_sp_enable_out & (sp_write_format == 2'b00)) begin
         sp_frame_end = viv_s0  & viv_s1 &
                        viv_s2;
      end 
      else if (stat_sp_enable_out & (sp_write_format == 2'b01)) begin
         sp_frame_end = viv_s0  & viv_s1;
      end 
      else if (stat_sp_enable_out & (sp_write_format == 2'b10)) begin
         sp_frame_end = viv_s0;
      end
      else if (stat_dp_enable_out) begin
         sp_frame_end = viv_s0;
      end      
      else begin
         sp_frame_end = 1'b0;
      end 
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         cfg_out_update_sp <= 1'b0;
      end
      else if (soft_rst_m_hclk) begin
         cfg_out_update_sp <= 1'b0;
      end
      else if ((stat_sp_frame_end | 
                ~(stat_sp_enable_out | stat_dp_enable_out)) & 
                  viv_s3) begin
         cfg_out_update_sp <= 1'b1;
      end
      else if (~cfg_in_update_sp) begin
         cfg_out_update_sp <= 1'b0;
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s3 <= 1'b0;
      end
      else if (soft_rst_m_hclk) begin
         viv_s3 <= 1'b0;
      end
      else begin
         if (cfg_in_update_sp) begin
            viv_s3 <= 1'b1;
         end
         else if (cfg_out_update_sp) begin
            viv_s3 <= 1'b0;
         end
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s0 <= 1'b0;
         viv_s1 <= 1'b0;
         viv_s2 <= 1'b0;
      end
      else if (soft_rst_m_hclk) begin
         viv_s0 <= 1'b0;
         viv_s1 <= 1'b0;
         viv_s2 <= 1'b0;
      end
      else begin
         if (stat_sp_frame_end) begin
            viv_s0 <= 1'b0;
            viv_s1 <= 1'b0;
            viv_s2 <= 1'b0;
         end
         if (sp_fifo_h_end & sp_fifo_v_end & sp_fifo_read64 & 
             (sp_fifo_select == 2'd0)) begin
            viv_s0 <= 1'b1;
         end
         if (sp_fifo_h_end & sp_fifo_v_end & sp_fifo_read64 & 
             (sp_fifo_select == 2'd1)) begin
            viv_s1 <= 1'b1;
         end
         if (sp_fifo_h_end & sp_fifo_v_end & sp_fifo_read64 & 
             (sp_fifo_select == 2'd2)) begin
            viv_s2 <= 1'b1;
         end
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         stat_sp_enable_out <= 1'b0;
         stat_dp_enable_out <= 1'b0;                               
      end
      else begin
         if (soft_upd | cfg_out_update_sp) begin
            stat_sp_enable_out <= sp_enable;
            stat_dp_enable_out <= dp_enable;
         end
      end 
   end
endmodule
