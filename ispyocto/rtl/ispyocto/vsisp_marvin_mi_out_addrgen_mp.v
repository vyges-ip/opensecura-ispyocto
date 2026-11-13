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

module vsisp_marvin_mi_out_addrgen_mp
  (
   m_hclk,
   reset_m_hclk_n,
   soft_rst_m_hclk,
   mp_fifo_h_end,
   mp_fifo_v_end,
   soft_upd,
   mp_write_format,
   mp_output_format,
   mp_y_llength,
   init_base_en,
   init_offset_en,
   mp_pingpong_en,
   mp_y_base_ad,
   mp_y_size,
   mp_y_offs_cnt,
   mp_y_base_ad_init,
   mp_y_base_ad_init2,
   mp_y_size_init,
   mp_y_offs_cnt_init,
   mp_y_offs_cnt_start,
   mp_y_irq_offs_init,
   mp_y_irq_offs,
   mp_cb_base_ad,
   mp_cb_size,
   mp_cb_offs_cnt,
   mp_cb_base_ad_init,
   mp_cb_base_ad_init2,
   mp_cb_size_init,
   mp_cb_offs_cnt_init,
   mp_cb_offs_cnt_start,
   mp_cr_base_ad,
   mp_cr_size,
   mp_cr_offs_cnt,
   mp_cr_base_ad_init,
   mp_cr_base_ad_init2,
   mp_cr_size_init,
   mp_cr_offs_cnt_init,
   mp_cr_offs_cnt_start,
   vci_out_m1_rspval,
   vci_out_m1_reop,
   stat_mblk_line,
   stat_fill_mp_y,
   stat_wrap_mp_y,
   stat_wrap_mp_cb,
   stat_wrap_mp_cr,
   mp_fifo_read64,
   mp_fifo_select,
   cfg_out_update_mp,
   stat_skip_active,
   mp_y_cur_ptr,
   mp_cb_cur_ptr,
   mp_cr_cur_ptr,
   mp_line_sens,
   cfg_upd_double
   );
`include "vsisp_marvin_mi.vh"
   input         mp_line_sens;
   output        cfg_upd_double;
   input         m_hclk;
   input         reset_m_hclk_n;
   input         soft_rst_m_hclk;
   input         mp_fifo_h_end;
   input         mp_fifo_v_end;
   input         soft_upd;
   input [1:0]   mp_write_format;
   input [3:0]   mp_output_format;
   input [14:0]  mp_y_llength;
   input         init_base_en;
   input         init_offset_en;
   input         mp_pingpong_en;  
   input    [c_mi_data_addr+3:3]    mp_y_base_ad_init;
   input    [c_mi_data_addr+3:3]    mp_y_base_ad_init2;
   input    [c_mi_data_addr:3]      mp_y_size_init;
   input    [c_mi_data_addr:3]      mp_y_offs_cnt_init;
   input    [c_mi_data_addr:3]      mp_y_irq_offs_init;
   output   [c_mi_data_addr+3:3]    mp_y_base_ad;
   output   [c_mi_data_addr:3]      mp_y_size;
   output   [c_mi_data_addr:3]      mp_y_offs_cnt;
   output   [c_mi_data_addr:3]      mp_y_offs_cnt_start;
   output   [c_mi_data_addr:3]      mp_y_irq_offs;
   input    [c_mi_data_addr+3:3]    mp_cb_base_ad_init;
   input    [c_mi_data_addr+3:3]    mp_cb_base_ad_init2;
   input    [c_mi_data_addr-1:3]    mp_cb_size_init;
   input    [c_mi_data_addr-1:3]    mp_cb_offs_cnt_init;   
   output   [c_mi_data_addr+3:3]    mp_cb_base_ad;
   output   [c_mi_data_addr-1:3]    mp_cb_size;
   output   [c_mi_data_addr-1:3]    mp_cb_offs_cnt;
   output   [c_mi_data_addr-1:3]    mp_cb_offs_cnt_start;
   input    [c_mi_data_addr+3:3]    mp_cr_base_ad_init;
   input    [c_mi_data_addr+3:3]    mp_cr_base_ad_init2;
   input    [c_mi_data_addr-1:3]    mp_cr_size_init;
   input    [c_mi_data_addr-1:3]    mp_cr_offs_cnt_init;   
   output   [c_mi_data_addr+3:3]    mp_cr_base_ad;
   output   [c_mi_data_addr-1:3]    mp_cr_size;
   output   [c_mi_data_addr-1:3]    mp_cr_offs_cnt;
   output   [c_mi_data_addr-1:3]    mp_cr_offs_cnt_start;
   input                            vci_out_m1_rspval;
   input                            vci_out_m1_reop;
   output                           stat_mblk_line;
   output                           stat_fill_mp_y;
   output                           stat_wrap_mp_y;
   output                           stat_wrap_mp_cb;
   output                           stat_wrap_mp_cr;
   input                            mp_fifo_read64;
   input    [1:0]                   mp_fifo_select;
   input                            cfg_out_update_mp;
   input                            stat_skip_active;
   output   [c_mi_data_addr:3]      mp_y_cur_ptr;
   output   [c_mi_data_addr-1:3]    mp_cb_cur_ptr;
   output   [c_mi_data_addr-1:3]    mp_cr_cur_ptr;
   wire                             viv_s0;        
   wire                             cfg_upd_double;        
   wire [c_mi_data_addr:3]          viv_s1;      
   wire [c_mi_data_addr-1:3]        viv_s2;     
   wire [c_mi_data_addr-1:3]        viv_s3;     
   reg  [c_mi_data_addr:3]          viv_s4;
   reg  [c_mi_data_addr-1:3]        viv_s5;
   reg  [c_mi_data_addr-1:3]        viv_s6;
   reg  [c_mi_data_addr:3]          viv_s7;
   reg  [c_mi_data_addr-1:3]        viv_s8;
   reg  [c_mi_data_addr-1:3]        viv_s9;
   reg  [c_mi_data_addr:3]          viv_s10;
   reg  [c_mi_data_addr-1:3]        viv_s11;
   reg  [c_mi_data_addr-1:3]        viv_s12;
   reg  [c_mi_data_addr:3]          viv_s13;
   reg  [c_mi_data_addr-1:3]        viv_s14;
   reg  [c_mi_data_addr-1:3]        viv_s15;
   reg  [3:0]                       viv_s16;
   reg  [2:0]                       viv_s17;
   reg  [2:0]                       viv_s18;
   reg  [3:0]                       viv_s19;
   reg  [2:0]                       viv_s20;
   reg  [2:0]                       viv_s21;
   reg                              viv_s22;
   reg                              viv_s23;
   reg                              viv_s24;
   reg  [14:0]                      viv_s25;
   reg  [14:0]                      viv_s26;
   wire [c_mi_data_addr:3]          viv_s27;
   wire [c_mi_data_addr:3]          viv_s28;
   wire [c_mi_data_addr:3]          viv_s29;
   reg  [c_mi_data_addr:3]          viv_s30;
   reg  [c_mi_data_addr:3]          viv_s31;
   reg  [c_mi_data_addr:3]          viv_s32;
   reg  [c_mi_data_addr:3]          viv_s33;
   reg  [c_mi_data_addr:3]          viv_s34;
   reg  [c_mi_data_addr:3]          viv_s35;
   reg  [c_mi_data_addr+3:3]        mp_y_base_ad;
   reg  [c_mi_data_addr:3]          mp_y_size;
   reg  [c_mi_data_addr:3]          mp_y_offs_cnt_start;
   reg  [c_mi_data_addr:3]          mp_y_irq_offs;
   reg  [c_mi_data_addr+3:3]        mp_cb_base_ad;
   reg  [c_mi_data_addr-1:3]        mp_cb_size;
   reg  [c_mi_data_addr-1:3]        mp_cb_offs_cnt_start;
   reg  [c_mi_data_addr+3:3]        mp_cr_base_ad;
   reg  [c_mi_data_addr-1:3]        mp_cr_size;
   reg  [c_mi_data_addr-1:3]        mp_cr_offs_cnt_start;
   reg                              stat_mblk_line;
   reg                              stat_wrap_mp_y;
   reg                              stat_wrap_mp_cb;
   reg                              stat_wrap_mp_cr;
   reg  [c_mi_data_addr:3]          mp_y_cur_ptr;
   reg  [c_mi_data_addr-1:3]        mp_cb_cur_ptr;
   reg  [c_mi_data_addr-1:3]        mp_cr_cur_ptr;
   reg                              viv_s36;               
   reg                              viv_s37;           
   reg                              viv_s38;    
   assign stat_fill_mp_y = ((mp_fifo_select == 2'd0) & mp_fifo_read64) &&
                            (mp_y_cur_ptr == mp_y_irq_offs);
   assign viv_s1  = mp_y_cur_ptr  + 22'd1;
   assign viv_s2 = mp_cb_cur_ptr + 21'd1;
   assign viv_s3 = mp_cr_cur_ptr + 21'd1;
      reg [14:0] viv_s39;
   always @(posedge m_hclk or negedge reset_m_hclk_n) 
   begin
      if (~reset_m_hclk_n) begin
          viv_s25    <= 15'h0;
      end else 
      begin
            if(((mp_output_format == 4'b0010) && (mp_write_format == 2'b10)) || (mp_output_format == 4'b0100) || (mp_output_format == 4'b0111))begin
                viv_s25 <= {mp_y_llength[13:0],1'b0};            
            end
            else if(mp_output_format == 4'b0110) begin
                viv_s25 <= {mp_y_llength[11:0],3'b0};            
            end
            else begin
                viv_s25  <= mp_y_llength;
            end
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) 
   begin
     if (~reset_m_hclk_n) begin
         viv_s26    <= 15'h0;
     end else 
     begin
        if ((mp_output_format == 4'b0011) && (mp_write_format == 2'b01)) begin 
           viv_s26  <= {mp_y_llength[13:0], 1'b0};   
        end
        else if ((mp_output_format == 4'b0011) && (mp_write_format == 2'b00)) begin
           viv_s26  <= mp_y_llength;
        end
        else if ((mp_output_format == 4'b0010) && (mp_write_format == 2'b01)) begin
           viv_s26  <= mp_y_llength;
        end
        else if ((mp_output_format == 4'b0010) && (mp_write_format == 2'b00)) begin
           viv_s26  <= {1'b0, mp_y_llength[14:1]};   
        end
        else if ((mp_output_format == 4'b0001) && (mp_write_format == 2'b01)) begin
           viv_s26  <= mp_y_llength;
        end
        else if ((mp_output_format == 4'b0001) && (mp_write_format == 2'b00)) begin
           viv_s26  <= {1'b0, mp_y_llength[14:1]};    
        end
        else begin
           viv_s26  <= 15'h0;
        end
     end
   end
   assign viv_s27  = {1'b0,viv_s30 } + {{(c_mi_data_addr+1-14){1'b0}},viv_s25[14:3]};
   assign viv_s28 = {1'b0,viv_s31} + {{(c_mi_data_addr-14){1'b0}},viv_s26[14:3]};
   assign viv_s29 = {1'b0,viv_s32} + {{(c_mi_data_addr-14){1'b0}},viv_s26[14:3]};
always @(*) 
begin
    viv_s4        = mp_y_cur_ptr;
    viv_s7      = viv_s10;
    viv_s13 = mp_y_offs_cnt_start;
    viv_s33       = viv_s30;
    stat_wrap_mp_y          = 1'b0;
    if (cfg_upd_double | soft_upd) 
        begin
            if (init_offset_en) 
                begin
                    viv_s7 = mp_y_offs_cnt_init;
                end
            viv_s33 = viv_s7;
            viv_s4  = viv_s7;
        end
     else
         begin
             if ((mp_fifo_select == 2'd0) & mp_fifo_read64) 
                begin
                    if (mp_fifo_h_end & mp_fifo_v_end & stat_skip_active) 
                        begin
                            if (init_offset_en)
                                begin
                                    viv_s7 = mp_y_offs_cnt_init;  
                                end
                            else
                                begin
                                    viv_s7 = viv_s10;  
                                end
                            viv_s33 = viv_s7;
                            viv_s4  = viv_s7;
                        end
                    else
                        begin
                            if (mp_fifo_h_end & mp_fifo_v_end) 
                                begin
                                    if (viv_s27>= mp_y_size)
                                        begin
                                            viv_s4  = {c_mi_data_addr-2{1'b0}};
                                            viv_s33 = {c_mi_data_addr-2{1'b0}}; 
                                            stat_wrap_mp_y    = 1'b1;
                                        end
                                    else 
                                        begin
                                            viv_s33 = viv_s27;
                                            if(mp_line_sens)
                                                begin
                                                    viv_s4 = viv_s33;
                                                end
                                            else
                                                begin
                                                    viv_s4      = viv_s1;
                                                end
                                        end
                                    viv_s7      = viv_s4;
                                    viv_s13 = viv_s10;
                                end
                            else
                                begin
                                  if (viv_s1 >= mp_y_size || (viv_s27>= mp_y_size && mp_fifo_h_end))
                                        begin
                                            viv_s33 = {c_mi_data_addr-2{1'b0}}; 
                                            viv_s4  = {c_mi_data_addr-2{1'b0}};
                                            stat_wrap_mp_y    = 1'b1;
                                        end
                                    else 
                                        begin
                                            if(mp_fifo_h_end)
                                                begin
                                                    viv_s33 = viv_s27;
                                                    if(mp_line_sens)
                                                        begin
                                                            viv_s4 = viv_s33;
                                                        end
                                                    else
                                                        begin
                                                            viv_s4      = viv_s1;
                                                        end
                                                end
                                            else
                                                viv_s4 = viv_s1;
                                        end
                                end
                        end
                    end
                else 
                    begin
                        viv_s4        = mp_y_cur_ptr;
                        viv_s7      = viv_s10;
                        viv_s13 = mp_y_offs_cnt_start;
                        stat_wrap_mp_y          = 1'b0;
                    end
       end
   end
   always @(*) begin
      viv_s5        = mp_cb_cur_ptr;
      viv_s8      = viv_s11;
      viv_s14 = mp_cb_offs_cnt_start;
      viv_s34       = viv_s31;
      stat_wrap_mp_cb          = 1'b0;
      if (cfg_upd_double | soft_upd) begin
         if (init_offset_en) begin
            viv_s8   = mp_cb_offs_cnt_init;
         end
         viv_s34 = viv_s8;
         viv_s5  = viv_s8;
      end
      else if ((mp_fifo_select == 2'd1) & mp_fifo_read64) begin
         if (mp_fifo_h_end & mp_fifo_v_end & stat_skip_active) begin
            if (init_offset_en) begin
               viv_s8   = mp_cb_offs_cnt_init;  
            end
            else begin
               viv_s8   = viv_s11;  
            end
            viv_s34 = viv_s8;
            viv_s5  = viv_s8;
         end
         else if (mp_fifo_h_end & mp_fifo_v_end) begin
            if (viv_s28 >= mp_cb_size) begin
               viv_s34 = {c_mi_data_addr-2{1'b0}};
               viv_s5  = {c_bufsize-2{1'b0}};
               stat_wrap_mp_cb    = 1'b1;
            end
            else begin
                viv_s34 = viv_s28;
                if(mp_line_sens) begin
                    viv_s5 = viv_s34;
                end
                else begin
                    viv_s5      = viv_s2;
                end
            end
            viv_s8      = viv_s5;
            viv_s14 = viv_s11;
         end
         else if (viv_s2 >= mp_cb_size || (viv_s28>= mp_cb_size && mp_fifo_h_end)) begin
            viv_s34 = {c_mi_data_addr-2{1'b0}}; 
            viv_s5 = {c_mi_data_addr-2{1'b0}};
            stat_wrap_mp_cb   = 1'b1;
         end
         else begin
             if(mp_fifo_h_end)
             begin
                 viv_s34 = viv_s28;
                 if(mp_line_sens) begin
                    viv_s5 = viv_s34;
                end
                else begin
                    viv_s5      = viv_s2;
                end
             end
             else
            viv_s5 = viv_s2;
         end
      end
      else begin
         viv_s5        = mp_cb_cur_ptr;
         viv_s8      = viv_s11;
         viv_s14 = mp_cb_offs_cnt_start;
         stat_wrap_mp_cb          = 1'b0;
      end
   end
   always @(*) begin
      viv_s6        = mp_cr_cur_ptr;
      viv_s9      = viv_s12;
      viv_s15 = mp_cr_offs_cnt_start;
      viv_s35       = viv_s32;
      stat_wrap_mp_cr          = 1'b0;
      if (cfg_upd_double | soft_upd) begin
         if (init_offset_en) begin
            viv_s9   = mp_cr_offs_cnt_init;
         end
         viv_s35 = viv_s9;
         viv_s6  = viv_s9;
      end
      else if ((mp_fifo_select == 2'd2) & mp_fifo_read64) begin
         if (mp_fifo_h_end & mp_fifo_v_end & stat_skip_active) begin
            if (init_offset_en) begin
               viv_s9   = mp_cr_offs_cnt_init;  
            end
            else begin
               viv_s9   = viv_s12;  
            end
            viv_s35 = viv_s9;
            viv_s6  = viv_s9;
         end
         else if (mp_fifo_h_end & mp_fifo_v_end) begin
            if (viv_s29 >= mp_cr_size) begin
               viv_s35 = {c_mi_data_addr-2{1'b0}};
               viv_s6  = {c_mi_data_addr-2{1'b0}};
               stat_wrap_mp_cr    = 1'b1;
            end
            else begin
                viv_s35 = viv_s29;
                if(mp_line_sens) begin
                    viv_s6 = viv_s35;
                end
                else begin
                    viv_s6      = viv_s3;
                end
            end
            viv_s9      = viv_s6;
            viv_s15 = viv_s12;
         end
         else if (viv_s3 >= mp_cr_size || (viv_s29>= mp_cr_size && mp_fifo_h_end)) begin
            viv_s35 = {c_mi_data_addr-2{1'b0}}; 
            viv_s6 = {c_mi_data_addr-2{1'b0}};
            stat_wrap_mp_cr   = 1'b1;
         end
         else begin
             if(mp_fifo_h_end)
             begin
                viv_s35 = viv_s29;
                if(mp_line_sens) begin
                    viv_s6 = viv_s35;
                end
                else begin
                    viv_s6      = viv_s3;
                end
             end
             else
            viv_s6 = viv_s3;
         end
      end
      else begin
         viv_s6        = mp_cr_cur_ptr;
         viv_s9      = viv_s12;
         viv_s15 = mp_cr_offs_cnt_start;
         stat_wrap_mp_cr          = 1'b0;
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         mp_y_cur_ptr         <= {c_mi_data_addr-2{1'b0}};
         mp_cb_cur_ptr        <= {c_mi_data_addr-3{1'b0}};
         mp_cr_cur_ptr        <= {c_mi_data_addr-3{1'b0}};
         viv_s10       <= {c_mi_data_addr-2{1'b0}};
         viv_s11      <= {c_mi_data_addr-3{1'b0}};
         viv_s12      <= {c_mi_data_addr-3{1'b0}};
         mp_y_offs_cnt_start  <= {c_mi_data_addr-2{1'b0}};
         mp_cb_offs_cnt_start <= {c_mi_data_addr-3{1'b0}};
         mp_cr_offs_cnt_start <= {c_mi_data_addr-3{1'b0}};
         viv_s30        <= {c_mi_data_addr-3{1'b0}};
         viv_s31       <= {c_mi_data_addr-3{1'b0}};
         viv_s32       <= {c_mi_data_addr-3{1'b0}};
      end
      else if (soft_rst_m_hclk) begin
         mp_y_cur_ptr         <= {c_mi_data_addr-2{1'b0}};
         mp_cb_cur_ptr        <= {c_mi_data_addr-3{1'b0}};
         mp_cr_cur_ptr        <= {c_mi_data_addr-3{1'b0}};
         viv_s10       <= {c_mi_data_addr-2{1'b0}};
         viv_s11      <= {c_mi_data_addr-3{1'b0}};
         viv_s12      <= {c_mi_data_addr-3{1'b0}};
         mp_y_offs_cnt_start  <= {c_mi_data_addr-2{1'b0}};
         mp_cb_offs_cnt_start <= {c_mi_data_addr-3{1'b0}};
         mp_cr_offs_cnt_start <= {c_mi_data_addr-3{1'b0}};
         viv_s30        <= {c_mi_data_addr-3{1'b0}};
         viv_s31       <= {c_mi_data_addr-3{1'b0}};
         viv_s32       <= {c_mi_data_addr-3{1'b0}};
      end
      else begin
         mp_y_cur_ptr         <= viv_s4;
         mp_cb_cur_ptr        <= viv_s5;
         mp_cr_cur_ptr        <= viv_s6;
         viv_s10       <= viv_s7;
         viv_s11      <= viv_s8;
         viv_s12      <= viv_s9;
         mp_y_offs_cnt_start  <= viv_s13;
         mp_cb_offs_cnt_start <= viv_s14;
         mp_cr_offs_cnt_start <= viv_s15;
         viv_s30        <= viv_s33;
         viv_s31       <= viv_s34;
         viv_s32       <= viv_s35;
      end
   end
   assign mp_y_offs_cnt  = viv_s10;
   assign mp_cb_offs_cnt = viv_s11;
   assign mp_cr_offs_cnt = viv_s12;
   assign viv_s0 = cfg_out_update_mp && ~viv_s37;
   assign cfg_upd_double = (cfg_out_update_mp && ~viv_s37) || viv_s38;
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         mp_y_base_ad       <= {c_mi_data_addr+1{1'b0}};
         mp_y_size          <= {c_mi_data_addr-2{1'b0}};
         mp_cb_base_ad      <= {c_mi_data_addr+1{1'b0}};
         mp_cb_size         <= {c_mi_data_addr-3{1'b0}};
         mp_cr_base_ad      <= {c_mi_data_addr+1{1'b0}};
         mp_cr_size         <= {c_mi_data_addr-3{1'b0}};
         mp_y_irq_offs      <= {c_mi_data_addr-2{1'b0}};
         viv_s36            <= 1'b0;
         viv_s37        <= 1'b0;
         viv_s38 <= 1'b0;
      end
      else if (soft_rst_m_hclk) begin
         mp_y_base_ad  <= mp_y_base_ad_init;
         mp_y_size     <= mp_y_size_init;
         mp_y_irq_offs <= mp_y_irq_offs_init;
         mp_cb_base_ad <= mp_cb_base_ad_init;
         mp_cb_size    <= mp_cb_size_init;
         mp_cr_base_ad <= mp_cr_base_ad_init;
         mp_cr_size    <= mp_cr_size_init;
         viv_s36       <= 1'b0;
      end
      else begin
         viv_s37        <= cfg_out_update_mp;
         viv_s38 <= viv_s0;
         if (soft_upd | cfg_upd_double) begin
            mp_y_irq_offs  <= mp_y_irq_offs_init;
         end
         if (soft_upd) begin 
            viv_s36       <= 1'b0;
         end
         else if (viv_s0 & init_base_en) begin
            viv_s36 <= ~viv_s36;
         end
         if ((soft_upd | viv_s0 ) & init_base_en) begin
            if (soft_upd) begin 
               mp_y_base_ad  <= mp_y_base_ad_init;
               mp_cb_base_ad <= mp_cb_base_ad_init;
               mp_cr_base_ad <= mp_cr_base_ad_init;
            end
            else begin
               if (mp_pingpong_en && ~viv_s36) begin
                  mp_y_base_ad  <= mp_y_base_ad_init2;
                  mp_cb_base_ad <= mp_cb_base_ad_init2;
                  mp_cr_base_ad <= mp_cr_base_ad_init2;
               end
               else begin
                  mp_y_base_ad  <= mp_y_base_ad_init;
                  mp_cb_base_ad <= mp_cb_base_ad_init;
                  mp_cr_base_ad <= mp_cr_base_ad_init;
               end
            end
            mp_y_size     <= mp_y_size_init;
            mp_cb_size    <= mp_cb_size_init;
            mp_cr_size    <= mp_cr_size_init;
         end
      end
   end
   always @(*) begin
      if (soft_upd | cfg_upd_double) begin
         viv_s16  = 4'd15;
         viv_s17 = 3'd7;
         viv_s18 = 3'd7;
      end
      else begin
         viv_s16  = viv_s19;
         viv_s17 = viv_s20;
         viv_s18 = viv_s21;
         if (mp_fifo_read64 & mp_fifo_h_end & ~stat_skip_active) begin
            case (mp_fifo_select)
              2'd0: begin
                 if (viv_s19 > 4'd0) begin
                    viv_s16  = viv_s19  - 4'd1;
                 end
                 else begin
                    viv_s16  = 4'd15;
                 end
              end
              2'd1: begin
                 if (viv_s20 > 3'd0) begin
                    viv_s17 = viv_s20 - 3'd1;
                 end
                 else begin
                    viv_s17 = 3'd7;
                 end
              end
              default: begin
                 if (viv_s21 > 3'd0) begin
                    viv_s18 = viv_s21 - 3'd1;
                 end
                 else begin
                    viv_s18 = 3'd7;
                 end
              end
            endcase
         end
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s19  <= 4'd15;
         viv_s20 <= 3'd7;
         viv_s21 <= 3'd7;
      end
      else if (soft_rst_m_hclk) begin
         viv_s19  <= 4'd15;
         viv_s20 <= 3'd7;
         viv_s21 <= 3'd7;
      end
      else begin
         viv_s19  <= viv_s16;
         viv_s20 <= viv_s17;
         viv_s21 <= viv_s18;
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         viv_s22  <= 1'b0;
         viv_s23 <= 1'b0;
         viv_s24 <= 1'b0;
         stat_mblk_line <= 1'b0;
      end
      else if (soft_rst_m_hclk) begin
         viv_s22  <= 1'b0;
         viv_s23 <= 1'b0;
         viv_s24 <= 1'b0;
         stat_mblk_line <= 1'b0;
      end
      else begin
         if (soft_upd | cfg_upd_double | stat_mblk_line) begin
            viv_s22  <= 1'b0;
            viv_s23 <= 1'b0;
            viv_s24 <= 1'b0;
            stat_mblk_line <= 1'b0;
         end
         else if (mp_fifo_read64 & mp_fifo_h_end & ~stat_skip_active) begin
            if ((mp_fifo_select == 2'd0) && (viv_s16 == 4'd0)) begin
               viv_s22 <= 1'b1;
            end
            else if ((mp_fifo_select == 2'd1) &&
                     (viv_s17 == 3'd0)) begin
               viv_s23 <= 1'b1;
            end
            else if ((mp_fifo_select == 2'd2) &&
                     (viv_s18 == 3'd0)) begin
               viv_s24 <= 1'b1;
            end
         end
         if (viv_s22 & viv_s23 &
             (viv_s24 | (mp_write_format == 2'b01)) &  
             vci_out_m1_rspval & vci_out_m1_reop & ~stat_skip_active) begin
            stat_mblk_line <= 1'b1;
         end
      end
   end
endmodule
