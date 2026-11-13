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

module vsisp_marvin_mi_out_addrgen_sp
  (
   m_hclk, 
   reset_m_hclk_n,
   soft_rst_m_hclk,
   sp_fifo_h_end,
   sp_fifo_v_end,
   soft_upd, 
   h_flip, 
   v_flip, 
   rot, 
   sp_write_format, 
   sp_output_format, 
   init_base_en, 
   init_offset_en, 
   sp_pingpong_en,
   sp_y_base_ad, 
   sp_y_size, 
   sp_y_offs_cnt, 
   sp_y_base_ad_init, 
   sp_y_base_ad_init2, 
   sp_y_size_init, 
   sp_y_offs_cnt_init, 
   sp_y_offs_cnt_start, 
   sp_y_pic_width,
   sp_y_llength,
   sp_y_pic_size,
   sp_cb_base_ad, 
   sp_cb_size, 
   sp_cb_offs_cnt, 
   sp_cb_base_ad_init, 
   sp_cb_base_ad_init2, 
   sp_cb_size_init, 
   sp_cb_offs_cnt_init, 
   sp_cb_offs_cnt_start, 
   sp_cr_base_ad, 
   sp_cr_size, 
   sp_cr_offs_cnt, 
   sp_cr_base_ad_init, 
   sp_cr_base_ad_init2, 
   sp_cr_size_init, 
   sp_cr_offs_cnt_init, 
   sp_cr_offs_cnt_start,
   stat_wrap_sp_y,
   stat_wrap_sp_cb, 
   stat_wrap_sp_cr, 
   sp_fifo_read64, 
   sp_fifo_select,
   cfg_out_update_sp, 
   sp_y_cur_ptr,
   sp_cb_cur_ptr,
   sp_cr_cur_ptr
   );
`include "vsisp_marvin_mi.vh"
   input         m_hclk; 
   input         reset_m_hclk_n;
   input         soft_rst_m_hclk; 
   input         sp_fifo_h_end;
   input         sp_fifo_v_end;
   input         soft_upd; 
   input         h_flip; 
   input         v_flip; 
   input         rot; 
   input [1:0]   sp_write_format; 
   input [2:0]   sp_output_format; 
   input         init_base_en; 
   input         init_offset_en; 
   input         sp_pingpong_en;  
   output [31:3]          sp_y_base_ad; 
   output [c_bufsize:3]   sp_y_size; 
   output [c_bufsize:3]   sp_y_offs_cnt; 
   input [31:3]           sp_y_base_ad_init; 
   input [31:3]           sp_y_base_ad_init2; 
   input [c_bufsize:3]    sp_y_size_init; 
   input [c_bufsize:3]    sp_y_offs_cnt_init; 
   output [c_bufsize:3]   sp_y_offs_cnt_start; 
   input [14:0]           sp_y_pic_width;
   input [14:0]           sp_y_llength;
   input [c_bufsize:0]    sp_y_pic_size;
   reg [31:3]             sp_y_base_ad; 
   reg [c_bufsize:3]      sp_y_size; 
   reg [c_bufsize:3]      sp_y_offs_cnt_start; 
   output [31:3]          sp_cb_base_ad; 
   output [c_bufsize-1:3] sp_cb_size; 
   output [c_bufsize-1:3] sp_cb_offs_cnt; 
   input [31:3]           sp_cb_base_ad_init; 
   input [31:3]           sp_cb_base_ad_init2; 
   input [c_bufsize-1:3]  sp_cb_size_init; 
   input [c_bufsize-1:3]  sp_cb_offs_cnt_init; 
   output [c_bufsize-1:3] sp_cb_offs_cnt_start; 
   reg [31:3]             sp_cb_base_ad; 
   reg [c_bufsize-1:3]    sp_cb_size; 
   reg [c_bufsize-1:3]    sp_cb_offs_cnt_start; 
   output [31:3] sp_cr_base_ad; 
   output [c_bufsize-1:3] sp_cr_size; 
   output [c_bufsize-1:3] sp_cr_offs_cnt; 
   input [31:3]           sp_cr_base_ad_init; 
   input [31:3]           sp_cr_base_ad_init2; 
   input [c_bufsize-1:3]  sp_cr_size_init; 
   input [c_bufsize-1:3]  sp_cr_offs_cnt_init; 
   output [c_bufsize-1:3] sp_cr_offs_cnt_start;
   reg [31:3]             sp_cr_base_ad; 
   reg [c_bufsize-1:3]    sp_cr_size; 
   reg [c_bufsize-1:3]    sp_cr_offs_cnt_start;
   output        stat_wrap_sp_y; 
   output        stat_wrap_sp_cb; 
   output        stat_wrap_sp_cr; 
   reg           stat_wrap_sp_y; 
   reg           stat_wrap_sp_cb; 
   reg           stat_wrap_sp_cr; 
   input         sp_fifo_read64; 
   input [1:0]   sp_fifo_select;
   input         cfg_out_update_sp; 
   output [c_bufsize:3]   sp_y_cur_ptr;   
   output [c_bufsize-1:3] sp_cb_cur_ptr;   
   output [c_bufsize-1:3] sp_cr_cur_ptr;   
   reg [c_bufsize:3]      sp_y_cur_ptr;   
   reg [c_bufsize-1:3]    sp_cb_cur_ptr;   
   reg [c_bufsize-1:3]    sp_cr_cur_ptr;
   reg                    viv_s0;               
   reg                    viv_s1;           
   reg                    viv_s2;    
   wire                   viv_s3;        
   wire                   viv_s4;        
   reg [14:0]             viv_s5;   
   reg [14:0]             viv_s6;    
   reg [c_bufsize:0]      viv_s7;    
   reg [14:0]             viv_s8;   
   reg [14:0]             viv_s9;    
   reg [c_bufsize:0]      viv_s10;    
   reg [c_bufsize:0]      viv_s11; 
   reg [c_bufsize:0]    viv_s12; 
   wire [c_bufsize:0]   viv_s13; 
   wire [c_bufsize:0]   viv_s14; 
   wire [c_bufsize+1:3]     viv_s15;      
   wire [c_bufsize:3]     viv_s16;     
   wire [c_bufsize:3]     viv_s17;     
   reg [c_bufsize+1:3]      viv_s18;     
   reg [c_bufsize:3]      viv_s19;    
   reg [c_bufsize:3]      viv_s20;    
   reg                    viv_s21;  
   reg [c_bufsize+1:3]      viv_s22;   
   reg [c_bufsize:3]      viv_s23;  
   reg [c_bufsize:3]      viv_s24;  
   reg                    viv_s25;  
   wire [c_bufsize+1:3]     viv_s26;    
   wire [c_bufsize:3]     viv_s27;   
   wire [c_bufsize:3]     viv_s28;   
   wire [c_bufsize:3]     viv_s29;    
   wire [c_bufsize:3]     viv_s30;   
   wire [c_bufsize:3]     viv_s31;   
   wire [c_bufsize:3]     viv_s32;    
   wire [c_bufsize:3]     viv_s33;   
   wire [c_bufsize:3]     viv_s34;   
   wire [c_bufsize:3]     viv_s35;    
   wire [c_bufsize:3]     viv_s36;   
   wire [c_bufsize:3]     viv_s37;   
   wire [c_bufsize:3]     viv_s38;    
   wire [c_bufsize-1:3]     viv_s39;   
   wire [c_bufsize-1:3]     viv_s40;   
   wire [c_bufsize:3]     viv_s41;    
   wire [c_bufsize:3]     viv_s42;   
   wire [c_bufsize:3]     viv_s43;   
   wire [c_bufsize:3]     viv_s44;    
   wire [c_bufsize:3]     viv_s45;   
   wire [c_bufsize:3]     viv_s46;   
   reg [c_bufsize+1:3]      viv_s47;      
   reg [c_bufsize+1:3]      viv_s48;     
   reg [c_bufsize+1:3]      viv_s49;   
   reg [c_bufsize+1:3]      viv_s50;    
   reg [c_bufsize:3]      viv_s51;     
   reg [c_bufsize:3]      viv_s52;    
   reg [c_bufsize:3]      viv_s53;  
   reg [c_bufsize:3]      viv_s54;   
   reg [c_bufsize:3]      viv_s55;     
   reg [c_bufsize:3]      viv_s56;    
   reg [c_bufsize:3]      viv_s57;  
   reg [c_bufsize:3]      viv_s58;   
   reg [c_bufsize:3]      viv_s59;  
   reg [c_bufsize-1:3]    viv_s60;  
   reg [c_bufsize-1:3]    viv_s61;  
   reg [c_bufsize:3]      viv_s62;
   reg [c_bufsize-1:3]    viv_s63;
   reg [c_bufsize-1:3]    viv_s64;
   reg [c_bufsize:3]      viv_s65; 
   reg [c_bufsize-1:3]    viv_s66; 
   reg [c_bufsize-1:3]    viv_s67; 
   reg [c_bufsize:3]      viv_s68; 
   reg [c_bufsize-1:3]    viv_s69; 
   reg [c_bufsize-1:3]    viv_s70;
   wire          viv_s71; 
   wire          viv_s72;
   assign viv_s72 = (sp_y_pic_width != sp_y_llength) | 
                         (h_flip | v_flip | rot);
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
          viv_s5   <= 15'h0;
          viv_s6    <= 15'h0;
          viv_s7    <= {(c_bufsize+1){1'b0}};
          viv_s8   <= 15'h0;
          viv_s9    <= 15'h0;
          viv_s10    <= {(c_bufsize+1){1'b0}};
      end else begin
         if ((sp_output_format == 3'b100) || (sp_write_format == 2'b10))begin
            viv_s5 <= {sp_y_pic_width[13:0] , 1'b0} - 12'd2;    
            viv_s6  <= {sp_y_llength[13:0]   , 1'b0};            
            viv_s7  <= {sp_y_pic_size[c_bufsize-1:0]  , 1'b0};   
         end
         else if (sp_output_format[2]) begin
            viv_s5 <= {sp_y_pic_width[12:0] , 2'b00} - 12'd4;   
            viv_s6  <= {sp_y_llength[12:0]   , 2'b00};           
            viv_s7  <= {sp_y_pic_size[c_bufsize-2:0]  , 2'b00};  
         end
         else begin
            viv_s5 <= sp_y_pic_width - 15'd1;
            viv_s6  <= sp_y_llength;
            viv_s7  <= sp_y_pic_size;
         end
         if ((sp_output_format == 3'b011) && (sp_write_format == 2'b01)) begin 
            viv_s8 <= {sp_y_pic_width[13:0], 1'b0}; 
            viv_s9  <= {sp_y_llength[13:0], 1'b0};   
            viv_s10  <= {sp_y_pic_size[c_bufsize-1:0], 1'b0};  
         end
         else if ((sp_output_format == 3'b011) && (sp_write_format == 2'b00)) begin
            viv_s8 <= sp_y_pic_width - 15'd1;
            viv_s9  <= sp_y_llength;
            viv_s10  <= sp_y_pic_size;
         end
         else if ((sp_output_format == 3'b010) && (sp_write_format == 2'b01)) begin
            viv_s8 <= sp_y_pic_width - 15'd1;
            viv_s9  <= sp_y_llength;
            viv_s10  <= sp_y_pic_size;
         end
         else if ((sp_output_format == 3'b010) && (sp_write_format == 2'b00)) begin
            viv_s8 <= {1'b0, sp_y_pic_width[14:1]}; 
            viv_s9  <= {1'b0, sp_y_llength[14:1]};   
            viv_s10  <= {1'b0, sp_y_pic_size[c_bufsize:1]};  
         end
         else if ((sp_output_format == 3'b001) && (sp_write_format == 2'b01)) begin
            viv_s8 <= sp_y_pic_width - 15'd1;
            viv_s9  <= sp_y_llength;
            viv_s10  <= {1'b0, sp_y_pic_size[c_bufsize:1]};  
         end
         else if ((sp_output_format == 3'b001) && (sp_write_format == 2'b00)) begin
            viv_s8 <= {1'b0, sp_y_pic_width[14:1]};  
            viv_s9  <= {1'b0, sp_y_llength[14:1]};    
            viv_s10  <= {2'b00, sp_y_pic_size[c_bufsize:2]};  
         end
         else begin
            viv_s8 <= 15'h0;
            viv_s9  <= 15'h0;
            viv_s10  <= {(c_bufsize+1){1'b0}};
         end
      end
   end
   assign viv_s13 = viv_s7 - {{c_bufsize-14{1'b0}}, viv_s6};
   assign viv_s14 = viv_s10 - {{c_bufsize-14{1'b0}}, viv_s9};
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
          viv_s11 <= {c_bufsize+1{1'b0}};
          viv_s12 <= {c_bufsize+1{1'b0}};
      end else begin
         case({rot, h_flip, v_flip})
           3'b000, 3'b010, 3'b100: begin
              viv_s11 <= {c_bufsize+1{1'b0}};
              viv_s12 <= {c_bufsize+1{1'b0}};
           end
           3'b001, 3'b011, 3'b101: begin
              viv_s11 <= viv_s13;
              viv_s12 <= viv_s14;
           end
           3'b110: begin
              if (sp_output_format == 3'b011) begin  
                 viv_s11 <= viv_s13 + 
                                 {{c_bufsize-14{1'b0}}, viv_s5[14:2], 2'b0};
                 viv_s12 <= viv_s14 + 
                                 {{c_bufsize-14{1'b0}}, viv_s8[14:2], 2'b0};
              end
              else begin  
                 viv_s11 <= viv_s13 + 
                                 {{c_bufsize-14{1'b0}}, viv_s5[14:4], 4'b0};
                 viv_s12 <= viv_s14 + 
                                 {{c_bufsize-14{1'b0}}, viv_s8[14:4], 4'b0};
              end
           end
           default: begin  
              if (sp_output_format == 3'b011) begin  
                 viv_s11  <= {{c_bufsize-14{1'b0}}, viv_s5[14:2], 2'b0};
                 viv_s12  <= {{c_bufsize-14{1'b0}}, viv_s8[14:2], 2'b0};
              end
              else begin  
                 viv_s11  <= {{c_bufsize-14{1'b0}}, viv_s5[14:4], 4'b0};
                 viv_s12  <= {{c_bufsize-14{1'b0}}, viv_s8[14:4], 4'b0};
              end
           end
         endcase
      end
   end
   assign viv_s71       = ({rot, h_flip} == 2'b11) ? ~v_flip : v_flip;
   always @(*) begin
      if (~viv_s71) begin
         viv_s18       = {1'b0,viv_s59 } + {{(c_bufsize+1-14){1'b0}},viv_s6[14:3]};
         viv_s19      = {1'b0,viv_s60} + {{(c_bufsize-14){1'b0}},viv_s9[14:3]};
         viv_s20      = {1'b0,viv_s61} + {{(c_bufsize-14){1'b0}},viv_s9[14:3]};
         viv_s21  = 1'b0;
      end
      else begin
         viv_s18            = {1'b0,viv_s59 } -  {{(c_bufsize+1-14){1'b0}},viv_s6[14:3]};
         viv_s19           = {1'b0,viv_s60} -  {{(c_bufsize-14){1'b0}},viv_s9[14:3]};
         viv_s20           = {1'b0,viv_s61} -  {{(c_bufsize-14){1'b0}},viv_s9[14:3]};
         viv_s21       = 1'b1;
      end
   end
   always @(h_flip or viv_s63 or viv_s64 or 
            sp_output_format or viv_s62) begin
      if (sp_output_format == 3'b011) begin  
         if (~h_flip) begin
            viv_s22       = {1'b0,viv_s62 } + 27'd1;
            viv_s23      = {1'b0,viv_s63} + 27'd1;
            viv_s24      = {1'b0,viv_s64} + 27'd1;
            viv_s25  = 1'b0;
         end                                                                   
         else begin
            viv_s22       = {1'b0,viv_s62 } - 27'd1;
            viv_s23      = {1'b0,viv_s63} - 27'd1;
            viv_s24      = {1'b0,viv_s64} - 27'd1;
            viv_s25  = 1'b1;
         end
      end
      else begin
         if (~h_flip) begin
            viv_s22       = {1'b0,viv_s62 } + 27'd2;
            viv_s23      = {1'b0,viv_s63} + 27'd4;
            viv_s24      = {1'b0,viv_s64} + 27'd4;
            viv_s25  = 1'b0;
         end                                                                   
         else begin
            viv_s22       = {1'b0,viv_s62 } - 27'd2;
            viv_s23      = {1'b0,viv_s63} - 27'd4;
            viv_s24      = {1'b0,viv_s64} - 27'd4;
            viv_s25  = 1'b1;
         end
      end
   end
   assign viv_s26          = {1'b0,viv_s65} +{1'b0, viv_s7[c_bufsize:3]  };
   assign viv_s27         = {1'b0,viv_s66}+{1'b0, viv_s10[c_bufsize-1:3]};
   assign viv_s28         = {1'b0,viv_s67}+{1'b0, viv_s10[c_bufsize-1:3]};
   assign viv_s29      = (viv_s26  >= {1'b0, sp_y_size})  ? viv_s26  - {1'b0, sp_y_size} : viv_s26;
   assign viv_s30     = (viv_s27 >= {1'b0, sp_cb_size}) ? viv_s27 - {1'b0, sp_cb_size}: viv_s27;
   assign viv_s31     = (viv_s28 >= {1'b0, sp_cr_size}) ? viv_s28 - {1'b0, sp_cr_size}: viv_s28;
   assign viv_s35          = viv_s29   + viv_s11[c_bufsize:3];
   assign viv_s36         = viv_s30  + viv_s12[c_bufsize:3];
   assign viv_s37         = viv_s31  + viv_s12[c_bufsize:3];
   assign viv_s32          = (viv_s35  >= sp_y_size ) ?
          viv_s35  - sp_y_size  : viv_s35;
   assign viv_s33 = (viv_s36 >= {1'b0, sp_cb_size}) ?
          viv_s36 - {1'b0, sp_cb_size} : viv_s36;
   assign viv_s34 = (viv_s37 >= {1'b0, sp_cr_size}) ?
          viv_s37 - {1'b0, sp_cr_size} : viv_s37;
   assign viv_s38      = init_offset_en ? sp_y_offs_cnt_init  : viv_s65;
   assign viv_s39     = init_offset_en ? sp_cb_offs_cnt_init : viv_s66;
   assign viv_s40     = init_offset_en ? sp_cr_offs_cnt_init : viv_s67;
   assign viv_s44  = viv_s38   + viv_s11[c_bufsize:3];
   assign viv_s45 = {1'b0, viv_s39}  + viv_s12[c_bufsize:3];
   assign viv_s46 = {1'b0, viv_s40}  + viv_s12[c_bufsize:3];
   assign viv_s41  = (viv_s44  >= sp_y_size ) ?
          viv_s44  - sp_y_size  : viv_s44;
   assign viv_s42 = (viv_s45 >= {1'b0, sp_cb_size}) ?
          viv_s45 - {1'b0, sp_cb_size} : viv_s45;
   assign viv_s43 = (viv_s46 >= {1'b0, sp_cr_size}) ?
          viv_s46 - {1'b0, sp_cr_size} : viv_s46;
   assign viv_s15        = {1'b0, sp_y_cur_ptr}  + 27'd1;
   assign viv_s16       = {1'b0, sp_cb_cur_ptr} + 27'd1;
   assign viv_s17       = {1'b0, sp_cr_cur_ptr} + 27'd1;
   always @(*) begin
      viv_s47            = {1'b0, sp_y_cur_ptr};
      viv_s48           = {1'b0, viv_s59};
      viv_s49         = {1'b0, viv_s62};
      viv_s50          = {1'b0, viv_s65};
      viv_s68     = sp_y_offs_cnt_start;
      stat_wrap_sp_y              = 1'b0;
      if (viv_s4 | soft_upd) begin
         if (init_offset_en) begin
            viv_s50    = {1'b0, sp_y_offs_cnt_init};
         end
         viv_s47         = {1'b0, viv_s41};
         viv_s48        = {1'b0, viv_s41};
         viv_s49      = {1'b0, viv_s41};
         viv_s68  = sp_y_offs_cnt_start;  
      end
      else if ((sp_fifo_select == 2'd0) & sp_fifo_read64) begin
         if (sp_fifo_h_end & sp_fifo_v_end & viv_s72) begin
            if (viv_s26 >= {1'b0, sp_y_size}) begin
               viv_s50    = viv_s26 - {1'b0, sp_y_size};
               stat_wrap_sp_y        = 1'b1;
            end
            else begin
               viv_s50    = viv_s26;
            end
            viv_s47         = {1'b0, viv_s32};
            viv_s48       = {1'b0, viv_s32};
            viv_s49      = {1'b0, viv_s32};
            viv_s68  = viv_s65;
         end
         else if (sp_fifo_h_end & sp_fifo_v_end) begin
            if (viv_s15 >= {1'b0, sp_y_size}) begin
               viv_s47      = {(c_bufsize-1){1'b0}};
               viv_s50    = {(c_bufsize-1){1'b0}}; 
               stat_wrap_sp_y        = 1'b1;
            end
            else begin
               viv_s47      = viv_s15;
               viv_s50    = viv_s15;  
            end
            viv_s68  = viv_s65;
         end
         else if (sp_fifo_h_end & viv_s72 & viv_s18[c_bufsize+1] & viv_s21) begin
            viv_s48 = viv_s18 + {1'b0, sp_y_size}; 
            viv_s47  = viv_s18 + {1'b0, sp_y_size}; 
            stat_wrap_sp_y    = 1'b1;
         end
         else if (sp_fifo_h_end & viv_s72 & 
                  (viv_s18 >= {1'b0, sp_y_size})) begin
            viv_s48 = viv_s18 - {1'b0, sp_y_size}; 
            viv_s47  = viv_s18 - {1'b0, sp_y_size}; 
            stat_wrap_sp_y    = 1'b1;
         end
         else if (sp_fifo_h_end & viv_s72) begin
            viv_s48 = viv_s18; 
            viv_s47  = viv_s18;
         end
         else if (rot & sp_fifo_v_end & viv_s22[c_bufsize+1] & viv_s25) begin
            viv_s49 = viv_s22 + {1'b0, sp_y_size}; 
            viv_s48   = viv_s22 + {1'b0, sp_y_size}; 
            viv_s47    = viv_s22 + {1'b0, sp_y_size}; 
            stat_wrap_sp_y      = 1'b1;
         end
         else if (rot & sp_fifo_v_end & (viv_s22 >= {1'b0, sp_y_size})) begin
            viv_s49 = viv_s22 - {1'b0, sp_y_size}; 
            viv_s48   = viv_s22 - {1'b0, sp_y_size}; 
            viv_s47    = viv_s22 - {1'b0, sp_y_size}; 
            stat_wrap_sp_y      = 1'b1;
         end
         else if (rot & sp_fifo_v_end) begin
            viv_s49 = viv_s22;
            viv_s48   = viv_s22;
            viv_s47    = viv_s22;
         end
         else if (viv_s15 >= {1'b0, sp_y_size}) begin
            viv_s47     = {(c_bufsize-1){1'b0}};
            stat_wrap_sp_y   = 1'b1;
         end
         else begin
            viv_s47 = viv_s15;
         end
      end
   end
   always @(*) begin
      viv_s51        = {1'b0, sp_cb_cur_ptr};
      viv_s52       = {1'b0, viv_s60};
      viv_s53     = {1'b0, viv_s63};
      viv_s54      = {1'b0, viv_s66};
      viv_s69 = sp_cb_offs_cnt_start;
      stat_wrap_sp_cb          = 1'b0;
      if (viv_s4 | soft_upd) begin
         if (init_offset_en) begin
            viv_s54   = {1'b0, sp_cb_offs_cnt_init};
         end
         viv_s51        = viv_s42;
         viv_s52       = viv_s42;
         viv_s53     = viv_s42;
         viv_s69 = sp_cb_offs_cnt_start;  
      end
      else if ((sp_fifo_select == 2'd1) & sp_fifo_read64) begin
         if (sp_fifo_h_end & sp_fifo_v_end & viv_s72) begin
            if (viv_s27 >= {1'b0, sp_cb_size}) begin
           viv_s54    = viv_s27 - {1'b0, sp_cb_size};
               stat_wrap_sp_cb        = 1'b1;
            end
            else begin
               viv_s54    = viv_s27;
            end
            viv_s51        = viv_s33;
            viv_s52       = viv_s33;
            viv_s53     = viv_s33;
            viv_s69 = viv_s66;
         end
         else if (sp_fifo_h_end & sp_fifo_v_end) begin
            if (viv_s16 >= {1'b0, sp_cb_size}) begin
               viv_s51      = {(c_bufsize-2){1'b0}};
               viv_s54    = {(c_bufsize-2){1'b0}}; 
               stat_wrap_sp_cb        = 1'b1;
            end
            else begin
               viv_s51      = viv_s16;
               viv_s54    = viv_s16; 
            end
            viv_s69  = viv_s66;
         end
         else if (sp_fifo_h_end & viv_s72 & viv_s19[c_bufsize] & viv_s21) begin
            viv_s52 = viv_s19 + {1'b0, sp_cb_size};
            viv_s51  = viv_s19 + {1'b0, sp_cb_size};
            stat_wrap_sp_cb    = 1'b1;
         end
         else if (sp_fifo_h_end & viv_s72 & 
                  (viv_s19 >= {1'b0, sp_cb_size})) begin
            viv_s52 = viv_s19 - {1'b0, sp_cb_size};
            viv_s51  = viv_s19 - {1'b0, sp_cb_size};
            stat_wrap_sp_cb    = 1'b1;
         end
         else if (sp_fifo_h_end & viv_s72) begin
            viv_s52 = viv_s19;
            viv_s51  = viv_s19;
         end
         else if (rot & sp_fifo_v_end & viv_s23[c_bufsize] & viv_s25) begin
            viv_s53 = viv_s23 + {1'b0, sp_cb_size};
            viv_s52   = viv_s23 + {1'b0, sp_cb_size};
            viv_s51    = viv_s23 + {1'b0, sp_cb_size};
            stat_wrap_sp_cb      = 1'b1;
         end
         else if (rot & sp_fifo_v_end & (viv_s23 >= {1'b0, sp_cb_size})) begin
            viv_s53 = viv_s23 - {1'b0, sp_cb_size};
            viv_s52   = viv_s23 - {1'b0, sp_cb_size};
            viv_s51    = viv_s23 - {1'b0, sp_cb_size};
            stat_wrap_sp_cb      = 1'b1;
         end
         else if (rot & sp_fifo_v_end) begin
            viv_s53 = viv_s23;
            viv_s52   = viv_s23;
            viv_s51    = viv_s23;
         end
         else if (viv_s16 >= {1'b0, sp_cb_size}) begin
            viv_s51      = {(c_bufsize-2){1'b0}};
            stat_wrap_sp_cb   = 1'b1;
         end
         else begin
            viv_s51 = viv_s16;
         end
      end
   end
   always @(*) begin
      viv_s55        = {1'b0, sp_cr_cur_ptr};
      viv_s56       = {1'b0, viv_s61};
      viv_s57     = {1'b0, viv_s64};
      viv_s58      = {1'b0, viv_s67};
      viv_s70 = sp_cr_offs_cnt_start;
      stat_wrap_sp_cr          = 1'b0;
      if (viv_s4 | soft_upd) begin
         if (init_offset_en) begin
            viv_s58   = {1'b0, sp_cr_offs_cnt_init};
         end
         viv_s55        = viv_s43;
         viv_s56       = viv_s43;
         viv_s57     = viv_s43;
         viv_s70 = sp_cr_offs_cnt_start;  
      end
      else if ((sp_fifo_select == 2'd2) & sp_fifo_read64) begin
         if (sp_fifo_h_end & sp_fifo_v_end & viv_s72) begin
            if (viv_s28 >= {1'b0, sp_cr_size}) begin
               viv_s58   = viv_s28 - {1'b0, sp_cr_size};
               stat_wrap_sp_cr       = 1'b1;
            end
            else begin
               viv_s58   = viv_s28;
            end
            viv_s55        = viv_s34;
            viv_s56       = viv_s34;
            viv_s57     = viv_s34;
            viv_s70 = viv_s67;
         end
         else if (sp_fifo_h_end & sp_fifo_v_end) begin
            if (viv_s17 >= {1'b0, sp_cr_size}) begin
               viv_s55      = {(c_bufsize-2){1'b0}};
               viv_s58    = {(c_bufsize-2){1'b0}}; 
               stat_wrap_sp_cr        = 1'b1;
            end
            else begin
               viv_s55      = viv_s17;
               viv_s58    = viv_s17; 
            end
            viv_s70  = viv_s67;
         end
         else if (sp_fifo_h_end & viv_s72 & viv_s20[c_bufsize] & viv_s21) begin
            viv_s56 = viv_s20 + {1'b0, sp_cr_size};
            viv_s55  = viv_s20 + {1'b0, sp_cr_size};
            stat_wrap_sp_cr    = 1'b1;
         end
         else if (sp_fifo_h_end & viv_s72 & 
                  (viv_s20 >= {1'b0, sp_cr_size})) begin
            viv_s56 = viv_s20 - {1'b0, sp_cr_size};
            viv_s55  = viv_s20 - {1'b0, sp_cr_size};
            stat_wrap_sp_cr    = 1'b1;
         end
         else if (sp_fifo_h_end & viv_s72) begin
            viv_s56 = viv_s20;
            viv_s55  = viv_s20;
         end
         else if (rot & sp_fifo_v_end & viv_s24[c_bufsize] & viv_s25) begin
            viv_s57 = viv_s24 + {1'b0, sp_cr_size};
            viv_s56   = viv_s24 + {1'b0, sp_cr_size};
            viv_s55    = viv_s24 + {1'b0, sp_cr_size};
            stat_wrap_sp_cr      = 1'b1;
         end
         else if (rot & sp_fifo_v_end & (viv_s24 >= {1'b0, sp_cr_size})) begin
            viv_s57 = viv_s24 - {1'b0, sp_cr_size};
            viv_s56   = viv_s24 - {1'b0, sp_cr_size};
            viv_s55    = viv_s24 - {1'b0, sp_cr_size};
            stat_wrap_sp_cr      = 1'b1;
         end
         else if (rot & sp_fifo_v_end) begin
            viv_s57 = viv_s24;
            viv_s56   = viv_s24;
            viv_s55    = viv_s24;
         end
         else if (viv_s17 >= {1'b0, sp_cr_size}) begin
            viv_s55     = {(c_bufsize-2){1'b0}};
            stat_wrap_sp_cr   = 1'b1;
         end
         else begin
            viv_s55 = viv_s17;
         end
      end
   end
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         sp_y_cur_ptr         <= {c_bufsize-2{1'b0}};
         sp_cb_cur_ptr        <= {c_bufsize-3{1'b0}};
         sp_cr_cur_ptr        <= {c_bufsize-3{1'b0}};
         viv_s59        <= {c_bufsize-2{1'b0}};
         viv_s60       <= {c_bufsize-3{1'b0}};
         viv_s61       <= {c_bufsize-3{1'b0}};
         viv_s62      <= {c_bufsize-2{1'b0}};
         viv_s63     <= {c_bufsize-3{1'b0}};
         viv_s64     <= {c_bufsize-3{1'b0}};
         viv_s65       <= {c_bufsize-2{1'b0}};
         viv_s66      <= {c_bufsize-3{1'b0}};
         viv_s67      <= {c_bufsize-3{1'b0}};
         sp_y_offs_cnt_start  <= {c_bufsize-2{1'b0}};
         sp_cb_offs_cnt_start <= {c_bufsize-3{1'b0}};
         sp_cr_offs_cnt_start <= {c_bufsize-3{1'b0}};
      end
      else if (soft_rst_m_hclk) begin
         sp_y_cur_ptr         <= {c_bufsize-2{1'b0}};
         sp_cb_cur_ptr        <= {c_bufsize-3{1'b0}};
         sp_cr_cur_ptr        <= {c_bufsize-3{1'b0}};
         viv_s59        <= {c_bufsize-2{1'b0}};
         viv_s60       <= {c_bufsize-3{1'b0}};
         viv_s61       <= {c_bufsize-3{1'b0}};
         viv_s62      <= {c_bufsize-2{1'b0}};
         viv_s63     <= {c_bufsize-3{1'b0}};
         viv_s64     <= {c_bufsize-3{1'b0}};
         viv_s65       <= {c_bufsize-2{1'b0}};
         viv_s66      <= {c_bufsize-3{1'b0}};
         viv_s67      <= {c_bufsize-3{1'b0}};
         sp_y_offs_cnt_start  <= {c_bufsize-2{1'b0}};
         sp_cb_offs_cnt_start <= {c_bufsize-3{1'b0}};
         sp_cr_offs_cnt_start <= {c_bufsize-3{1'b0}};
      end
      else begin
         sp_y_cur_ptr         <= viv_s47[c_bufsize:3];    
         sp_cb_cur_ptr        <= viv_s51[c_bufsize-1:3];
         sp_cr_cur_ptr        <= viv_s55[c_bufsize-1:3];
         viv_s59        <= viv_s48[c_bufsize:3];   
         viv_s60       <= viv_s52[c_bufsize-1:3];
         viv_s61       <= viv_s56[c_bufsize-1:3];
         viv_s62      <= viv_s49[c_bufsize:3]; 
         viv_s63     <= viv_s53[c_bufsize-1:3];
         viv_s64     <= viv_s57[c_bufsize-1:3];
         viv_s65       <= viv_s50[c_bufsize:3];  
         viv_s66      <= viv_s54[c_bufsize-1:3];
         viv_s67      <= viv_s58[c_bufsize-1:3];
         sp_y_offs_cnt_start  <= viv_s68;
         sp_cb_offs_cnt_start <= viv_s69;
         sp_cr_offs_cnt_start <= viv_s70;
      end
   end
   assign sp_y_offs_cnt  = viv_s65;
   assign sp_cb_offs_cnt = viv_s66;
   assign sp_cr_offs_cnt = viv_s67;
   assign viv_s3 = cfg_out_update_sp && ~viv_s1;
   assign viv_s4 = (cfg_out_update_sp && ~viv_s1) || viv_s2;
   always @(posedge m_hclk or negedge reset_m_hclk_n) begin
      if (~reset_m_hclk_n) begin
         sp_y_base_ad       <= {29{1'b0}}; 
         sp_y_size          <= {c_bufsize-2{1'b0}}; 
         sp_cb_base_ad      <= {29{1'b0}}; 
         sp_cb_size         <= {c_bufsize-3{1'b0}}; 
         sp_cr_base_ad      <= {29{1'b0}}; 
         sp_cr_size         <= {c_bufsize-3{1'b0}}; 
         viv_s0            <= 1'b0;
         viv_s1        <= 1'b0;
         viv_s2 <= 1'b0;
      end
      else if (soft_rst_m_hclk) begin
         sp_y_base_ad  <= sp_y_base_ad_init; 
         sp_y_size     <= sp_y_size_init; 
         sp_cb_base_ad <= sp_cb_base_ad_init; 
         sp_cb_size    <= sp_cb_size_init; 
         sp_cr_base_ad <= sp_cr_base_ad_init; 
         sp_cr_size    <= sp_cr_size_init; 
         viv_s0       <= 1'b0;
      end
      else begin
         viv_s1        <= cfg_out_update_sp;
         viv_s2 <= viv_s3;
         if (soft_upd) begin 
            viv_s0       <= 1'b0;
         end
         else if (viv_s3 & init_base_en) begin
            viv_s0 <= ~viv_s0;
         end
         if ((soft_upd | viv_s3 ) & init_base_en) begin
            if (soft_upd) begin
               sp_y_base_ad  <= sp_y_base_ad_init; 
               sp_cb_base_ad <= sp_cb_base_ad_init; 
               sp_cr_base_ad <= sp_cr_base_ad_init;
            end
            else begin
               if (sp_pingpong_en && ~viv_s0) begin
                  sp_y_base_ad  <= sp_y_base_ad_init2; 
                  sp_cb_base_ad <= sp_cb_base_ad_init2; 
                  sp_cr_base_ad <= sp_cr_base_ad_init2;
               end
               else begin
                  sp_y_base_ad  <= sp_y_base_ad_init; 
                  sp_cb_base_ad <= sp_cb_base_ad_init; 
                  sp_cr_base_ad <= sp_cr_base_ad_init;
               end
            end
            sp_y_size     <= sp_y_size_init; 
            sp_cb_size    <= sp_cb_size_init; 
            sp_cr_size    <= sp_cr_size_init;
         end 
      end 
   end 
endmodule
