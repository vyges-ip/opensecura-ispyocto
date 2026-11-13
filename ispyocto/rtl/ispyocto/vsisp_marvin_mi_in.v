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

module vsisp_marvin_mi_in
  (
   clk,
   reset_n,
   soft_rst,
   in_mp_y_val,
   in_mp_y_data,
   in_mp_y_h_end,
   in_mp_y_v_end,
   in_mp_y_cfg_upd,
   in_mp_y_ack,
   in_mp_cb_val,
   in_mp_cb_data,
   in_mp_cb_h_end,
   in_mp_cb_v_end,
   in_mp_cb_cfg_upd,
   in_mp_cb_ack,
   in_mp_cr_val,
   in_mp_cr_data,
   in_mp_cr_h_end,
   in_mp_cr_v_end,
   in_mp_cr_cfg_upd,
   in_mp_cr_ack,
   in_jpeg_val,
   in_jpeg_data,
   in_jpeg_end,
   in_jpeg_byte_no,
   in_jpeg_ack,
   in_dp_data,
   in_dp_end,
   in_dp_val,
   in_dp_ack,
   in_sp_y_val,
   in_sp_y_data,
   in_sp_y_h_end,
   in_sp_y_v_end,
   in_sp_y_cfg_upd,
   in_sp_y_ack,
   in_sp_cb_val,
   in_sp_cb_data,
   in_sp_cb_h_end,
   in_sp_cb_v_end,
   in_sp_cb_cfg_upd,
   in_sp_cb_ack,
   in_sp_cr_val,
   in_sp_cr_data,
   in_sp_cr_h_end,
   in_sp_cr_v_end,
   in_sp_cr_cfg_upd,
   in_sp_cr_ack,
   mp_y_fifo_data,
   mp_y_fifo_h_end,
   mp_y_fifo_v_end,
   mp_y_fifo_write64,
   mp_y_fifo_full,
   mp_cb_fifo_data,
   mp_cb_fifo_h_end,
   mp_cb_fifo_v_end,
   mp_cb_fifo_write64,
   mp_cb_fifo_full,
   mp_cr_fifo_data,
   mp_cr_fifo_h_end,
   mp_cr_fifo_v_end,
   mp_cr_fifo_write64,
   mp_cr_fifo_full,
   sp_y_fifo_data,
   sp_y_fifo_h_end,
   sp_y_fifo_v_end,
   sp_y_fifo_write64,
   sp_y_fifo_full,
   sp_cb_fifo_data,
   sp_cb_fifo_h_end,
   sp_cb_fifo_v_end,
   sp_cb_fifo_write64,
   sp_cb_fifo_full,
   sp_cr_fifo_data,
   sp_cr_fifo_h_end,
   sp_cr_fifo_v_end,
   sp_cr_fifo_write64,
   sp_cr_fifo_full,
   mp_auto_update,
   sp_auto_update,
   mp_nv21,
   sp_nv21,
   soft_upd,
   mp_enable,
   sp_enable,
   jpeg_enable,
   dp_enable,
   raw_enable,
   mp_write_format,
   sp_write_format,
   sp_output_format,
   sp_line_sens,
   sp_col_sens,
   stat_mp_enable_in,
   stat_sp_enable_in,
   stat_jpeg_enable_in,
   stat_dp_enable_in,
   stat_raw_enable_in,
   stat_byte_cnt_raw_val,
   stat_byte_cnt_raw,
   stat_byte_cnt_raw_ack,
   stat_byte_cnt_jpeg_val,
   stat_byte_cnt_jpeg,
   stat_byte_cnt_jpeg_ack,
   stat_byte_cnt_dp_val,
   stat_byte_cnt_dp,
   stat_byte_cnt_dp_ack,
   cfg_in_update_mp,
   cfg_in_update_sp,
   cfg_out_update_mp,
   cfg_out_update_sp,
   mp_line_sens,
   mp_y_pic_width,
   mp_y_pic_height,
   mp_y_llength,
   mp_y_pic_size,
   slice_size,
   data_format,
   mp_slice_offset_y,
   mp_slice_offset_c,
   stat_skip_active,
   handshake_en
   );
`include "vsisp_marvin_mi.vh"
    input  [31:0]               mp_y_pic_width;
    input  [31:0]               mp_y_pic_height;
    input  [14:0]               mp_y_llength;
    input  [31:0]               mp_y_pic_size;
    input  [7:0]                slice_size;
    input  [1:0]                data_format;
    input  [c_mi_data_addr:0]   mp_slice_offset_y;
    input  [c_mi_data_addr:0]   mp_slice_offset_c;
    input                       stat_skip_active;
    input                       handshake_en;
    output                      mp_line_sens;
   input         clk;
   input         reset_n;
   input         soft_rst;
   input         in_mp_y_val;
   input [7:0]   in_mp_y_data;
   input         in_mp_y_h_end;
   input         in_mp_y_v_end;
   input         in_mp_y_cfg_upd;
   output        in_mp_y_ack;
   input         in_mp_cb_val;
   input [7:0]   in_mp_cb_data;
   input         in_mp_cb_h_end;
   input         in_mp_cb_v_end;
   input         in_mp_cb_cfg_upd;
   output        in_mp_cb_ack;
   input         in_mp_cr_val;
   input [7:0]   in_mp_cr_data;
   input         in_mp_cr_h_end;
   input         in_mp_cr_v_end;
   input         in_mp_cr_cfg_upd;
   output        in_mp_cr_ack;
   input         in_sp_y_val;
   input [7:0]   in_sp_y_data;
   input         in_sp_y_h_end;
   input         in_sp_y_v_end;
   input         in_sp_y_cfg_upd;
   output        in_sp_y_ack;
   input         in_sp_cb_val;
   input [7:0]   in_sp_cb_data;
   input         in_sp_cb_h_end;
   input         in_sp_cb_v_end;
   input         in_sp_cb_cfg_upd;
   output        in_sp_cb_ack;
   input         in_sp_cr_val;
   input [7:0]   in_sp_cr_data;
   input         in_sp_cr_h_end;
   input         in_sp_cr_v_end;
   input         in_sp_cr_cfg_upd;
   output        in_sp_cr_ack;
   input         in_jpeg_val;
   input [63:0]  in_jpeg_data;
   input         in_jpeg_end;
   input [2:0]   in_jpeg_byte_no;
   output        in_jpeg_ack;
   input [31:0]  in_dp_data;
   input         in_dp_end;
   input         in_dp_val;
   output        in_dp_ack;
   output [63:0] mp_y_fifo_data;
   output        mp_y_fifo_h_end;
   output        mp_y_fifo_v_end;
   output        mp_y_fifo_write64;
   input         mp_y_fifo_full;
   output [63:0] mp_cb_fifo_data;
   output        mp_cb_fifo_h_end;
   output        mp_cb_fifo_v_end;
   output        mp_cb_fifo_write64;
   input         mp_cb_fifo_full;
   output [63:0] mp_cr_fifo_data;
   output        mp_cr_fifo_h_end;
   output        mp_cr_fifo_v_end;
   output        mp_cr_fifo_write64;
   input         mp_cr_fifo_full;
   output [63:0] sp_y_fifo_data;
   output        sp_y_fifo_h_end;
   output        sp_y_fifo_v_end;
   output        sp_y_fifo_write64;
   input         sp_y_fifo_full;
   output [63:0] sp_cb_fifo_data;
   output        sp_cb_fifo_h_end;
   output        sp_cb_fifo_v_end;
   output        sp_cb_fifo_write64;
   input         sp_cb_fifo_full;
   output [63:0] sp_cr_fifo_data;
   output        sp_cr_fifo_h_end;
   output        sp_cr_fifo_v_end;
   output        sp_cr_fifo_write64;
   input         sp_cr_fifo_full;
   input         mp_auto_update;          
   input         sp_auto_update;          
   input         mp_nv21;
   input         sp_nv21;
   input         soft_upd;
   input         mp_enable;
   input         sp_enable;
   input         jpeg_enable;
   input [1:0]   dp_enable;
   input         raw_enable;
   input [1:0]   mp_write_format;
   input [1:0]   sp_write_format;
   input [2:0]   sp_output_format;
   input         sp_line_sens;
   input         sp_col_sens;
   output                 stat_mp_enable_in;
   output                 stat_sp_enable_in;
   output                 stat_jpeg_enable_in;
   output [1:0]           stat_dp_enable_in;
   output                 stat_raw_enable_in;
   output                 stat_byte_cnt_raw_val;
   output [c_mi_data_addr-1:0] stat_byte_cnt_raw;
   input                  stat_byte_cnt_raw_ack;
   output                 stat_byte_cnt_jpeg_val;
   output [c_mi_data_addr-1:0] stat_byte_cnt_jpeg;
   input                  stat_byte_cnt_jpeg_ack;
   output                 stat_byte_cnt_dp_val;
   output [c_mi_data_addr-1:0] stat_byte_cnt_dp;
   input                  stat_byte_cnt_dp_ack;
   reg                    stat_mp_enable_in;
   reg                    stat_sp_enable_in;
   reg                    stat_jpeg_enable_in;
   reg [1:0]              stat_dp_enable_in;
   reg                    stat_raw_enable_in;
   reg                    stat_byte_cnt_raw_val;
   reg [c_mi_data_addr-1:0]    stat_byte_cnt_raw;
   reg                    stat_byte_cnt_jpeg_val;
   reg [c_mi_data_addr-1:0]    stat_byte_cnt_jpeg;
   reg                    stat_byte_cnt_dp_val;
   reg [c_mi_data_addr-1:0]    stat_byte_cnt_dp;
   output        cfg_in_update_mp;
   output        cfg_in_update_sp;
   input         cfg_out_update_mp;
   input         cfg_out_update_sp;
   wire [3:0]  viv_s0;
   wire [3:0]  viv_s1;
   wire        mp_line_sens;
   wire        viv_s2;
   reg         viv_s3;
   reg         viv_s4;
   reg         viv_s5;
   reg         viv_s6;
   reg         viv_s7;
   reg         viv_s8;
   reg  [7:0]  viv_s9;
   reg  [7:0]  viv_s10;
   reg  [7:0]  viv_s11;
   reg  [7:0]  viv_s12;
   reg  [7:0]  viv_s13;
   reg  [7:0]  viv_s14;
   wire          viv_s15;
   wire          viv_s16;
   wire          viv_s17;
   wire          viv_s18;
   wire          viv_s19;
   wire          viv_s20;
   wire          viv_s21;
   wire          viv_s22;
   wire          viv_s23;
   wire [63:0]   viv_s24;
   wire          viv_s25;
   wire          viv_s26;
   wire          in_jpeg_ack;
   wire          viv_s27;
   wire          viv_s28;
   wire          viv_s29;
   wire          viv_s30;
   wire          viv_s31;
   wire          viv_s32;
   wire          viv_s33; 
   assign viv_s27  = in_mp_y_h_end;
   assign viv_s28 = in_mp_cb_h_end;
   assign viv_s29 = in_mp_cr_h_end;
assign viv_s15  = handshake_en && ((mp_slice_offset_y == {23'h0,viv_s12[7:0]})  ? 1'h0 : viv_s18);
assign viv_s16 = handshake_en && ((mp_slice_offset_c == {23'h0,viv_s13[7:0]}) ? 1'h0 : viv_s19);
assign viv_s17 = handshake_en && ((mp_slice_offset_c == {23'h0,viv_s14[7:0]}) ? 1'h0 : viv_s20);
always @(*)
begin
    viv_s12[7:0]  = 8'h0;
    viv_s13[7:0] = 8'h0;
    viv_s14[7:0] = 8'h0;
    if(data_format[1:0] == 2'b00)
        viv_s12[7:0]  = slice_size[7:0];
    else
    if((data_format[1:0] == 2'b01) || (data_format[1:0] == 2'b10))
        begin
            viv_s12[7:0]  = slice_size[7:0];
            viv_s13[7:0] = slice_size[7:0];
            viv_s14[7:0] = slice_size[7:0];
        end
    else
        begin
            if(data_format[1:0] == 2'b11)
                begin
                    viv_s12[7:0]  = slice_size[7:0];
                    viv_s13[7:0] = {1'b0,slice_size[7:1]};
                    viv_s14[7:0] = {1'b0,slice_size[7:1]};
                end
        end
end
always @(posedge clk or negedge reset_n) 
begin   
    if (~reset_n) 
        viv_s9[7:0] <= 8'h0;
    else
        begin
            if(viv_s18 || in_mp_y_v_end || soft_upd)
                viv_s9[7:0] <= 8'h0;
            else
                begin
                   if(~stat_skip_active)
                      begin   
                          if(in_mp_y_h_end)
                              viv_s9[7:0] <= viv_s9[7:0] + 1;
                      end
              end
       end
end
assign viv_s18 =((viv_s9[7:0] == viv_s12[7:0]) && in_mp_y_h_end);
always @(posedge clk or negedge reset_n) 
begin   
    if (~reset_n) 
        viv_s10[7:0] <= 8'h0;
    else
        begin
            if(viv_s19 || in_mp_cb_v_end || soft_upd)
                viv_s10[7:0] <= 8'h0;
            else
                begin
                   if(~stat_skip_active)
                      begin   
                          if(in_mp_cb_h_end)
                              viv_s10[7:0] <= viv_s10[7:0] + 1;
                      end
              end
       end
end
assign viv_s19 =((viv_s10[7:0] == viv_s13[7:0]) && in_mp_cb_h_end);
always @(posedge clk or negedge reset_n) 
begin   
    if (~reset_n) 
        viv_s11[7:0] <= 8'h0;
    else
        begin
            if(viv_s20 || in_mp_cr_v_end || soft_upd)
                viv_s11[7:0] <= 8'h0;
            else
                begin
                   if(~stat_skip_active)
                      begin   
                          if(in_mp_cr_h_end)
                              viv_s11[7:0] <= viv_s11[7:0] + 1;
                      end
              end
       end
end
assign viv_s20 =((viv_s11[7:0] == viv_s14[7:0]) && in_mp_cr_h_end);
   vsisp_marvin_mi_dpsbe #(65) u_marvin_mi_dpsbe
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i ({in_jpeg_end,
                      in_jpeg_data}),
      .dpsbe_val_i  (in_jpeg_val),
      .dpsbe_ack_o  (in_jpeg_ack),
      .dpsbe_data_o ({viv_s25,
                      viv_s24}),
      .dpsbe_val_o  (viv_s23),
      .dpsbe_ack_i  (viv_s26)
      );
   vsisp_marvin_mi_in_distrib u_marvin_mi_mp_distrib
     (
      .slice_offset_sens_y(viv_s15),
      .slice_offset_sens_cb(viv_s16),
      .slice_offset_sens_cr(viv_s17),
      .clk                 (clk),
      .reset_n             (reset_n),
      .soft_rst            (soft_rst),
      .in_y_val            (in_mp_y_val),
      .in_y_data           (in_mp_y_data),
      .in_y_h_end          (viv_s27), 
      .in_y_v_end          (in_mp_y_v_end),
      .in_y_cfg_upd        (in_mp_y_cfg_upd),
      .in_y_ack            (in_mp_y_ack),
      .in_cb_val           (in_mp_cb_val),
      .in_cb_data          (in_mp_cb_data),
      .in_cb_h_end         (viv_s28),  
      .in_cb_v_end         (in_mp_cb_v_end),
      .in_cb_cfg_upd       (in_mp_cb_cfg_upd),
      .in_cb_ack           (in_mp_cb_ack),
      .in_cr_val           (in_mp_cr_val),
      .in_cr_data          (in_mp_cr_data),
      .in_cr_h_end         (viv_s29),  
      .in_cr_v_end         (in_mp_cr_v_end),
      .in_cr_cfg_upd       (in_mp_cr_cfg_upd),
      .in_cr_ack           (in_mp_cr_ack),
      .in_jpeg_val         (viv_s23),
      .in_jpeg_data        (viv_s24),
      .in_jpeg_end         (viv_s25),
      .in_jpeg_ack         (viv_s26),
      .in_dp_data          (in_dp_data),
      .in_dp_val           (in_dp_val),
      .in_dp_ack           (viv_s21),
      .in_dp_end           (in_dp_end),
      .out_y_fifo_data     (mp_y_fifo_data),
      .out_y_fifo_h_end    (mp_y_fifo_h_end),
      .out_y_fifo_v_end    (mp_y_fifo_v_end),
      .out_y_fifo_write64  (mp_y_fifo_write64),
      .out_y_fifo_full     (mp_y_fifo_full),
      .out_cb_fifo_data    (mp_cb_fifo_data),
      .out_cb_fifo_h_end   (mp_cb_fifo_h_end),
      .out_cb_fifo_v_end   (mp_cb_fifo_v_end),
      .out_cb_fifo_write64 (mp_cb_fifo_write64),
      .out_cb_fifo_full    (mp_cb_fifo_full),
      .out_cr_fifo_data    (mp_cr_fifo_data),
      .out_cr_fifo_h_end   (mp_cr_fifo_h_end),
      .out_cr_fifo_v_end   (mp_cr_fifo_v_end),
      .out_cr_fifo_write64 (mp_cr_fifo_write64),
      .out_cr_fifo_full    (mp_cr_fifo_full),
      .path_sel            (viv_s0),
      .nv21                (mp_nv21),
      .line_sens           (mp_line_sens),
      .col_sens            (viv_s2),
      .auto_update         (mp_auto_update),
      .cfg_in_update       (cfg_in_update_mp),
      .cfg_out_update      (cfg_out_update_mp)
      );
   assign mp_line_sens = mp_y_pic_width != mp_y_llength;
   assign viv_s2  = 1'b0;  
   assign viv_s0 =
                       (stat_raw_enable_in & ((mp_write_format==2'b01) | (mp_write_format==2'b10))) ? 4'b1_111 : 
                       (stat_raw_enable_in & (mp_write_format==2'b00)) ? 4'b1_110 : 
                       (stat_dp_enable_in[0]                           ) ? 4'b0_001 : 
                       (stat_jpeg_enable_in                            ) ? 4'b1_011 : 
                       (stat_mp_enable_in  & (mp_write_format == 2'b10)) ? 4'b1_010 : 
                       (stat_mp_enable_in  & (mp_write_format == 2'b01)) ? 4'b1_001 : 
                       (stat_mp_enable_in  & (mp_write_format == 2'b00)) ? 4'b1_000 : 
		       (stat_mp_enable_in  & (mp_write_format == 2'b11)) ? 4'b1_110 : 
                       4'b0_000;   
   assign viv_s30  = in_sp_y_h_end  && (in_sp_y_v_end  || sp_line_sens);
   assign viv_s31 = in_sp_cb_h_end && (in_sp_cb_v_end || sp_line_sens);
   assign viv_s32 = in_sp_cr_h_end && (in_sp_cr_v_end || sp_line_sens);
   vsisp_marvin_mi_in_distrib u_marvin_mi_sp_distrib
     (
      .slice_offset_sens_y (1'b0),
      .slice_offset_sens_cb(1'b0),
      .slice_offset_sens_cr(1'b0),
      .clk                 (clk),
      .reset_n             (reset_n),
      .soft_rst            (soft_rst),
      .in_y_val            (in_sp_y_val),
      .in_y_data           (in_sp_y_data),
      .in_y_h_end          (viv_s30),   
      .in_y_v_end          (in_sp_y_v_end),
      .in_y_cfg_upd        (in_sp_y_cfg_upd),
      .in_y_ack            (in_sp_y_ack),
      .in_cb_val           (in_sp_cb_val),
      .in_cb_data          (in_sp_cb_data),
      .in_cb_h_end         (viv_s31),   
      .in_cb_v_end         (in_sp_cb_v_end),
      .in_cb_cfg_upd       (in_sp_cb_cfg_upd),
      .in_cb_ack           (in_sp_cb_ack),
      .in_cr_val           (in_sp_cr_val),
      .in_cr_data          (in_sp_cr_data),
      .in_cr_h_end         (viv_s32),   
      .in_cr_v_end         (in_sp_cr_v_end),
      .in_cr_cfg_upd       (in_sp_cr_cfg_upd),
      .in_cr_ack           (in_sp_cr_ack),
      .in_jpeg_val         (1'b0),
      .in_jpeg_data        (64'b0),
      .in_jpeg_end         (1'b0),
      .in_jpeg_ack         (viv_s33),
      .in_dp_data          (in_dp_data),
      .in_dp_val           (in_dp_val),
      .in_dp_ack           (viv_s22),
      .in_dp_end           (in_dp_end),
      .out_y_fifo_data     (sp_y_fifo_data),
      .out_y_fifo_h_end    (sp_y_fifo_h_end),
      .out_y_fifo_v_end    (sp_y_fifo_v_end),
      .out_y_fifo_write64  (sp_y_fifo_write64),
      .out_y_fifo_full     (sp_y_fifo_full),
      .out_cb_fifo_data    (sp_cb_fifo_data),
      .out_cb_fifo_h_end   (sp_cb_fifo_h_end),
      .out_cb_fifo_v_end   (sp_cb_fifo_v_end),
      .out_cb_fifo_write64 (sp_cb_fifo_write64),
      .out_cb_fifo_full    (sp_cb_fifo_full),
      .out_cr_fifo_data    (sp_cr_fifo_data),
      .out_cr_fifo_h_end   (sp_cr_fifo_h_end),
      .out_cr_fifo_v_end   (sp_cr_fifo_v_end),
      .out_cr_fifo_write64 (sp_cr_fifo_write64),
      .out_cr_fifo_full    (sp_cr_fifo_full),
      .path_sel            (viv_s1),
      .nv21                (sp_nv21),
      .line_sens           (sp_line_sens),
      .col_sens            (sp_col_sens),
      .auto_update         (sp_auto_update),
      .cfg_in_update       (cfg_in_update_sp),
      .cfg_out_update      (cfg_out_update_sp)
      );
   assign viv_s1 =
                       (stat_sp_enable_in & (sp_output_format==3'b100)) ? 4'b1_101 : 
                       (stat_sp_enable_in & ((sp_output_format==3'b110) | (sp_output_format==3'b101))) ? 4'b1_100 : 
                       (stat_dp_enable_in[1]                          ) ? 4'b0_001 : 
                       (stat_sp_enable_in & (sp_write_format == 2'b10)) ? 4'b1_010 : 
                       (stat_sp_enable_in & (sp_write_format == 2'b01)) ? 4'b1_001 : 
                       (stat_sp_enable_in & (sp_write_format == 2'b00)) ? 4'b1_000 : 
                       (sp_output_format == 3'b100)                     ? 4'b0_101 : 
                       4'b0_000;   
   assign in_dp_ack = (stat_dp_enable_in[0]) ? viv_s21 :
                      (stat_dp_enable_in[1]) ? viv_s22 : 1'b1;
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         stat_mp_enable_in            <= 1'b0;
         stat_sp_enable_in            <= 1'b0;
         stat_jpeg_enable_in          <= 1'b0;
         stat_dp_enable_in            <= 2'b0;
         stat_raw_enable_in           <= 1'b0;
      end
      else begin  
         if (cfg_in_update_mp | soft_upd) begin
            stat_mp_enable_in         <= mp_enable;
            stat_raw_enable_in        <= raw_enable;
         end
         if (cfg_in_update_sp | soft_upd) begin
            stat_sp_enable_in         <= sp_enable;
         end
         if (soft_upd) begin
            stat_jpeg_enable_in       <= jpeg_enable;
            stat_dp_enable_in         <= dp_enable;
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s3       <= 1'b0;
         viv_s4       <= 1'b0;
      end
      else begin
         viv_s3       <= stat_byte_cnt_raw_ack;
         viv_s4       <= viv_s3;
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         stat_byte_cnt_raw_val        <= 1'b0;
         stat_byte_cnt_raw            <= {c_mi_data_addr{1'b0}};
      end
      else if (soft_rst) begin
         stat_byte_cnt_raw_val        <= 1'b0;
         stat_byte_cnt_raw            <= {c_mi_data_addr{1'b0}};
      end
      else begin
         if (stat_byte_cnt_raw_val) begin
            if (viv_s4) begin
               stat_byte_cnt_raw_val  <= 1'b0;
               stat_byte_cnt_raw      <= {c_mi_data_addr{1'b0}};
            end
         end
         else if (stat_raw_enable_in & in_mp_y_val & in_mp_y_ack) begin
            if (in_mp_y_h_end & in_mp_y_v_end) begin
               stat_byte_cnt_raw_val  <= 1'b1;
               stat_byte_cnt_raw      <= stat_byte_cnt_raw +
                                         ((mp_write_format[1] == 1'b1) ? 28'd2 : 28'd1);
            end
            else begin
               stat_byte_cnt_raw      <= stat_byte_cnt_raw +
                                         ((mp_write_format[1] == 1'b1) ? 28'd2 : 28'd1);
            end
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s5      <= 1'b0;
         viv_s6      <= 1'b0;
      end
      else begin
         viv_s5      <= stat_byte_cnt_jpeg_ack;
         viv_s6      <= viv_s5;
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         stat_byte_cnt_jpeg_val       <= 1'b0;
         stat_byte_cnt_jpeg           <= {c_mi_data_addr{1'b0}};
      end
      else if (soft_rst) begin
         stat_byte_cnt_jpeg_val       <= 1'b0;
         stat_byte_cnt_jpeg           <= {c_mi_data_addr{1'b0}};
      end
      else begin
         if (stat_byte_cnt_jpeg_val) begin
            if (viv_s6) begin
               stat_byte_cnt_jpeg_val <= 1'b0;
               stat_byte_cnt_jpeg     <= {c_mi_data_addr{1'b0}};
            end
         end
         else if (stat_jpeg_enable_in & in_jpeg_val & in_jpeg_ack) begin
            if (in_jpeg_end) begin
               stat_byte_cnt_jpeg_val <= 1'b1;
               stat_byte_cnt_jpeg     <= stat_byte_cnt_jpeg +
                                         {25'h0, in_jpeg_byte_no} + 28'd1;
            end
            else begin
               stat_byte_cnt_jpeg <= stat_byte_cnt_jpeg +
                                     ((in_jpeg_byte_no[2]) ? 28'd8 : 28'd4);
            end
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s7      <= 1'b0;
         viv_s8      <= 1'b0;
      end
      else begin
         viv_s7      <= stat_byte_cnt_dp_ack;
         viv_s8      <= viv_s7;
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         stat_byte_cnt_dp_val <= 1'b0;
         stat_byte_cnt_dp     <= {c_mi_data_addr{1'b0}};
      end
      else if (soft_rst) begin
         stat_byte_cnt_dp_val <= 1'b0;
         stat_byte_cnt_dp     <= {c_mi_data_addr{1'b0}};
      end
      else begin
         if (stat_byte_cnt_dp_val) begin
            if (viv_s8) begin
               stat_byte_cnt_dp_val <= 1'b0;
               stat_byte_cnt_dp     <= {c_mi_data_addr{1'b0}};
            end
         end
         else if (|stat_dp_enable_in & in_dp_val & in_dp_ack) begin
            stat_byte_cnt_dp     <= stat_byte_cnt_dp + 28'd1;
            if (in_dp_end) begin
               stat_byte_cnt_dp_val <= 1'b1;
            end
         end
      end
   end
endmodule
