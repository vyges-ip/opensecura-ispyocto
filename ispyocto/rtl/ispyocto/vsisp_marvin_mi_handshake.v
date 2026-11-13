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

module vsisp_marvin_mi_handshake( 
isp_0_clock     ,
isp_0_rst_n     ,
soft_upd        ,
mp_line_sens    ,
data_format     ,
starage_format  ,
slice_size      ,
buf_size        ,
mp_fifo_h_end   ,
mp_fifo_v_end   ,
mp_fifo_read64  ,
stat_skip_active,
mp_fifo_select  ,
isp_0_ack       ,
bresp_in        ,
isp_0_ready     ,
isp_0_attr      ,
mp_y_base_ad    ,
mp_cb_base_ad   ,
mp_cr_base_ad   ,
address         ,
mp_addr_cur_y   ,
mp_addr_cur_cb  ,
mp_addr_cur_cr  ,
ack_count       ,
mp_y_llength    ,
mp_slice_offset_y,
mp_slice_offset_c,
mp_interrupt,    
handshake_en    ,
handshake_mode_0,
slice_cnt_int   ,
sw_addr_mp_y    ,
sw_addr_mp_cb   ,
sw_addr_mp_cr   ,
sw_interrupt_out);
`include "vsisp_marvin_mi.vh"
input                       isp_0_clock     ;
input                       isp_0_rst_n     ;
input                       soft_upd        ;
input                       mp_line_sens    ;
input   [1:0]               data_format     ;
input   [1:0]               starage_format  ;
input   [7:0]               slice_size      ;
input   [7:0]               buf_size        ;
input                       mp_fifo_h_end   ;
input                       mp_fifo_v_end   ;
input                       mp_fifo_read64  ;
input                       stat_skip_active;
input   [1:0]               mp_fifo_select  ;
input                       isp_0_ack       ;
input                       bresp_in        ;
output                      isp_0_ready     ;
output  [1:0]               isp_0_attr      ;
input   [c_mi_data_addr:0]  mp_y_base_ad    ;
input   [c_mi_data_addr:0]  mp_cb_base_ad   ;
input   [c_mi_data_addr:0]  mp_cr_base_ad   ;
output  [c_mi_data_addr:0]  address         ;
output  [c_mi_data_addr:0]  mp_addr_cur_y   ;
output  [c_mi_data_addr:0]  mp_addr_cur_cb  ;
output  [c_mi_data_addr:0]  mp_addr_cur_cr  ;
input   [7:0]               ack_count       ;
input   [14:0]              mp_y_llength    ;
input   [c_mi_data_addr:0]  mp_slice_offset_y;
input   [c_mi_data_addr:0]  mp_slice_offset_c;
output                      mp_interrupt;    
input                       handshake_en    ;
input                       handshake_mode_0;
input   [7:0]               slice_cnt_int   ;
output  [c_mi_data_addr:0]  sw_addr_mp_y    ;
output  [c_mi_data_addr:0]  sw_addr_mp_cb   ;
output  [c_mi_data_addr:0]  sw_addr_mp_cr   ;
output                      sw_interrupt_out;
reg [1:0]                   isp_0_attr      ;
reg [c_mi_data_addr:0]      address         ;
reg [c_mi_data_addr:0]      mp_addr_cur_y   ;
reg [c_mi_data_addr:0]      mp_addr_cur_cb  ;
reg [c_mi_data_addr:0]      mp_addr_cur_cr  ;
reg [c_mi_data_addr:0]      sw_addr_mp_y    ;
reg [c_mi_data_addr:0]      sw_addr_mp_cb   ;
reg [c_mi_data_addr:0]      sw_addr_mp_cr   ;
reg                     viv_s0;
reg                     viv_s1;
reg                     viv_s2;
reg                     viv_s3;
reg                     viv_s4;
reg                     viv_s5;
reg                     viv_s6;
reg     [7:0]           viv_s7;
reg     [7:0]           viv_s8;
reg     [7:0]           viv_s9;
reg     [7:0]           viv_s10;
reg     [1:0]           viv_s11;
reg                     viv_s12;
reg                     viv_s13;
reg                     viv_s14;
reg     [7:0]           viv_s15;
reg     [7:0]           viv_s16;
reg     [7:0]           viv_s17;
reg     [7:0]           viv_s18;
reg     [7:0]           viv_s19;
reg     [7:0]           viv_s20;
reg                     viv_s21;
reg                     viv_s22;
reg                     viv_s23;
reg                     viv_s24;
reg                     viv_s25;
reg     [14:0]          viv_s26;
reg     [14:0]          viv_s27;
reg     [c_mi_data_addr:0]          viv_s28;
reg     [c_mi_data_addr:0]          viv_s29;
reg     [c_mi_data_addr:0]          viv_s30;
reg     [c_mi_data_addr:0]          viv_s31;
reg     [c_mi_data_addr:0]          viv_s32;
reg     [c_mi_data_addr:0]          viv_s33;
wire    [c_mi_data_addr:0]          viv_s34;
wire    [c_mi_data_addr:0]          viv_s35;
wire    [c_mi_data_addr:0]          viv_s36;
wire    [c_mi_data_addr:0]          viv_s37;
wire    [c_mi_data_addr:0]          viv_s38;
wire    [c_mi_data_addr:0]          viv_s39;
reg                     viv_s40;
reg     [7:0]           viv_s41;
reg                     viv_s42;
wire                    viv_s43;
wire                    viv_s44;
wire                    viv_s45;
wire    [c_mi_data_addr:0]          viv_s46;   
wire    [c_mi_data_addr:0]          viv_s47;
wire    [c_mi_data_addr:0]          viv_s48;
wire                    viv_s49;
wire                    viv_s50;
wire                    viv_s51;
wire    [c_mi_data_addr:0]          viv_s52;
wire                    viv_s53;
always @(*)
begin
    viv_s1  = 1'b0;
    viv_s2 = 1'b0;
    viv_s3 = 1'b0;
    viv_s4  = 1'b0;
    viv_s5 = 1'b0;
    viv_s6 = 1'b0;
    if(mp_fifo_read64)
        begin
            case(mp_fifo_select)
                2'b00:      begin
                                viv_s1  = mp_fifo_h_end;
                                viv_s4  = mp_fifo_v_end && mp_fifo_h_end;
                            end
                2'b01:      begin
                                viv_s2 = mp_fifo_h_end;
                                viv_s5 = mp_fifo_v_end && mp_fifo_h_end;
                            end
                2'b10:      begin
                                viv_s3 = mp_fifo_h_end;
                                viv_s6 = mp_fifo_v_end && mp_fifo_h_end;
                            end
            endcase
        end
end
always @(*)
begin
    viv_s7[7:0]  = 8'h0;
    viv_s8[7:0] = 8'h0;
    viv_s9[7:0] = 8'h0;
    if(data_format[1:0] == 2'b00)
        viv_s7[7:0]  = slice_size[7:0];
    else
    if((data_format[1:0] == 2'b01) || (data_format[1:0] == 2'b10))
        begin
            viv_s7[7:0]  = slice_size[7:0];
            viv_s8[7:0] = slice_size[7:0];
            viv_s9[7:0] = slice_size[7:0];
        end
    else
        begin
            if(data_format[1:0] == 2'b11)
                begin
                    viv_s7[7:0]  = slice_size[7:0];
                    viv_s8[7:0] = {1'b0,slice_size[7:1]};
                    viv_s9[7:0] = {1'b0,slice_size[7:1]};
                end
        end
end
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin   
    if (~isp_0_rst_n)      
        begin
            viv_s13 <= 1'b0;
            viv_s14  <= 1'b0;
        end
    else
        begin
            viv_s13 <= isp_0_ack;
            viv_s14  <= viv_s13;
        end
end
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin   
    if (~isp_0_rst_n) 
        viv_s15[7:0] <= 8'h0;
    else
        begin
            if(viv_s43 || viv_s4 || soft_upd)
                viv_s15[7:0] <= 8'h0;
            else
                begin
                   if(~stat_skip_active)
                      begin   
                          if(viv_s1)
                              viv_s15[7:0] <= viv_s15[7:0] + 1;
                      end
              end
       end
end
assign viv_s43 =((viv_s15[7:0] == viv_s7[7:0]) && viv_s1) || viv_s4;
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n)
        viv_s21 <= 1'b0;
    else
        begin
            if(soft_upd || viv_s14)
                viv_s21 <= 1'b0;
            else
                begin
                    if(viv_s43)
                        viv_s21 <= 1'b1;
                end
        end
end
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin   
    if (~isp_0_rst_n) 
        viv_s16[7:0] <= 8'h0;
    else
        begin
            if(viv_s44 || viv_s5 || soft_upd)
                viv_s16[7:0] <= 8'h0;
            else
                begin
                   if(~stat_skip_active)
                      begin   
                          if(viv_s2)
                              viv_s16[7:0] <= viv_s16[7:0] + 1;
                      end
              end
       end
end
assign viv_s44 =((viv_s16[7:0] == viv_s8[7:0]) && viv_s2) || viv_s5;
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n)
        viv_s23 <= 1'b0;
    else
        begin
            if(soft_upd || viv_s14)
                viv_s23 <= 1'b0;
            else
                begin
                    if(viv_s44)
                        viv_s23 <= 1'b1;
                end
        end
end
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin   
    if (~isp_0_rst_n) 
        viv_s17[7:0] <= 8'h0;
    else
        begin
            if(viv_s45 || viv_s6 || soft_upd)
                viv_s17[7:0] <= 8'h0;
            else
                begin
                   if(~stat_skip_active)
                      begin   
                          if(viv_s3)
                              viv_s17[7:0] <= viv_s17[7:0] + 1;
                      end
              end
       end
end
assign viv_s45 =((viv_s17[7:0] == viv_s9[7:0]) && viv_s3) || viv_s6;
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n)
        viv_s22 <= 1'b0;
    else
        begin
            if(soft_upd || viv_s14)
                viv_s22 <= 1'b0;
            else
                begin
                    if(viv_s45)
                        viv_s22 <= 1'b1;
                end
        end
end
always @(*)
begin
    viv_s12 = 1'b0;
    case(starage_format)
        2'b00: viv_s12 = viv_s22;
        2'b01: viv_s12 = viv_s23;
        2'b10: viv_s12 = viv_s21;
    endcase
end
assign isp_0_ready = viv_s0;
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin     
    if (~isp_0_rst_n)
        viv_s0 <= 1'b0;
    else
        begin
            if(soft_upd || viv_s14 || mp_interrupt)
                viv_s0 <= 1'b0;
            else
                begin
                    if((viv_s12) && (bresp_in || stat_skip_active)) 
                        viv_s0 <= 1'b1;
                end
        end
end
always @(*)
begin
    viv_s24 = 1'b0;
    case(starage_format[1:0])
        2'b00: viv_s24 = viv_s6;
        2'b01: viv_s24 = viv_s5;
        2'b10: viv_s24 = viv_s4;
    endcase
end
always @(posedge isp_0_clock or negedge isp_0_rst_n)
begin
    if (~isp_0_rst_n)
        viv_s25 <= 1'b0;
    else
        begin
            if((viv_s14 && viv_s0) || soft_upd || mp_interrupt)
                viv_s25 <= 1'b0;
            else
                begin
                    if(viv_s24)
                        viv_s25 <= 1'b1;
                end
        end
end
always @(posedge isp_0_clock or negedge isp_0_rst_n)
begin
    if (~isp_0_rst_n)
        isp_0_attr[1:0] <= 2'b00;
    else
        begin
            if(soft_upd)
                isp_0_attr[1:0] <= 2'b01;
            else
                begin
                    if(viv_s25)
                        begin
                            if((isp_0_attr[1:0] == 2'b01) || (isp_0_attr[1:0] == 2'b11))
                                isp_0_attr[1:0] <= 2'b11;
                            else
                                isp_0_attr[1:0] <= 2'b10;
                        end
                    else
                        begin
                            if(isp_0_attr[1:0] == 2'b00)
                                isp_0_attr[1:0] <= 2'b00;
                            else
                                begin
                                    if(viv_s14 && viv_s0)
                                        isp_0_attr[1:0] <= 2'b00;
                                    else
                                        isp_0_attr[1:0] <= 2'b01;
                                end
                        end
                end
        end
end
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n)
        viv_s10[7:0] <= 8'h0;
    else
        begin
            if(soft_upd || viv_s14 || mp_interrupt)
                viv_s10[7:0] <= 8'h0;
            else
                begin
                    if(isp_0_ready)
                        viv_s10[7:0] <= viv_s10[7:0] + 1;
                end
        end
end
assign mp_interrupt = (viv_s10[7:0] == ack_count[7:0] - 1);
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin     
    if (~isp_0_rst_n)
        viv_s18[7:0] <= 8'h0;
    else
        begin
            if(viv_s49 || viv_s4 || soft_upd)
                viv_s18[7:0] <= 8'h0;
            else
                begin
                    if(~stat_skip_active)
                        begin
                            if ((mp_fifo_select[1:0] == 2'b00) & viv_s43)
                                viv_s18[7:0] <= viv_s18[7:0] + 1;
                        end
                end
        end
end
assign viv_s49 = (viv_s18[7:0] == buf_size[7:0]) && ((mp_fifo_select[1:0] == 2'b00) & viv_s43);
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin     
    if (~isp_0_rst_n)
        viv_s19[7:0] <= 8'h0;
    else
        begin
            if(viv_s50 || viv_s5 || soft_upd)
                viv_s19[7:0] <= 8'h0;
            else
                begin
                    if(~stat_skip_active)
                        begin
                            if ((mp_fifo_select[1:0] == 2'b01) & viv_s44)
                                viv_s19[7:0] <= viv_s19[7:0] + 1;
                        end
                end
        end
end
assign viv_s50 = (viv_s19[7:0] == buf_size[7:0]) && ((mp_fifo_select[1:0] == 2'b01) & viv_s44);
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin     
    if (~isp_0_rst_n)
        viv_s20[7:0] <= 8'h0;
    else
        begin
            if(viv_s51 || viv_s6 || soft_upd)
                viv_s20[7:0] <= 8'h0;
            else
                begin
                    if(~stat_skip_active)
                        begin
                            if ((mp_fifo_select[1:0] == 2'b10) & viv_s45)
                                viv_s20[7:0] <= viv_s20[7:0] + 1;
                        end
                end
        end
end
assign viv_s51 = (viv_s20[7:0] == buf_size[7:0]) && ((mp_fifo_select[1:0] == 2'b10) & viv_s45);
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n) 
        viv_s26[14:0] <= 15'h0;
    else 
        begin
            if (starage_format[1:0] == 2'b10)
                viv_s26[14:0] <= {mp_y_llength[13:0],1'b0};
            else 
                viv_s26[14:0] <= mp_y_llength[14:0];
        end
end
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n) 
        viv_s27[14:0] <= 15'h0;
    else 
        begin
            case(data_format[1:0])
                2'b01:  begin
                            if(starage_format == 2'b01)
                                viv_s27[14:0] <= {mp_y_llength[13:0], 1'b0};   
                            else
                                begin
                                    if(starage_format == 2'b00)
                                        viv_s27[14:0] <= mp_y_llength[14:0];
                                end
                        end
                2'b10:  begin
                            if(starage_format == 2'b01)
                                viv_s27[14:0] <= mp_y_llength[14:0];
                            else
                                begin
                                    if(starage_format == 2'b00)
                                        viv_s27[14:0] <= {1'b0, mp_y_llength[14:1]};   
                                end
                        end
                2'b11:  begin
                            if(starage_format == 2'b01)
                                viv_s27[14:0] <= mp_y_llength[14:0];
                            else
                                begin
                                    if(starage_format == 2'b00)
                                        viv_s27[14:0] <= {1'b0, mp_y_llength[14:1]};    
                                end
                        end
                default:viv_s27[14:0] <= 15'h0;
            endcase
       end
end
assign viv_s37[c_mi_data_addr:0] = viv_s28[c_mi_data_addr:0] + mp_slice_offset_y[c_mi_data_addr:0];
assign viv_s34[c_mi_data_addr:0]  = viv_s31[c_mi_data_addr:0] + {17'h0,viv_s26[14:3]};
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin     
    if (~isp_0_rst_n)
        begin
            mp_addr_cur_y[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
            viv_s28[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
            viv_s31[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
        end
    else
        begin
            if(viv_s49 || viv_s4 || soft_upd)
                begin
                    mp_addr_cur_y[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
                    viv_s28[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
                    viv_s31[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
                end
            else
                begin
                    if(~stat_skip_active)
                        begin
                            if ((mp_fifo_select[1:0] == 2'b00) & mp_fifo_read64)
                                begin
                                    if(viv_s43)
                                        begin
                                            viv_s28[c_mi_data_addr:0] <= viv_s37[c_mi_data_addr:0];
                                            mp_addr_cur_y[c_mi_data_addr:0]  <= viv_s37[c_mi_data_addr:0];
                                            viv_s31[c_mi_data_addr:0]  <= viv_s37[c_mi_data_addr:0];
                                        end
                                    else 
                                        begin
                                            if (viv_s1)
                                                begin
                                                    viv_s31[c_mi_data_addr:0] <= viv_s34[c_mi_data_addr:0];
                                                    if(mp_line_sens)
                                                        mp_addr_cur_y[c_mi_data_addr:0] <= viv_s34[c_mi_data_addr:0];
                                                    else
                                                        mp_addr_cur_y[c_mi_data_addr:0] <= mp_addr_cur_y[c_mi_data_addr:0] + 1;
                                                end
                                            else
                                                begin
                                                    mp_addr_cur_y[c_mi_data_addr:0] <= mp_addr_cur_y[c_mi_data_addr:0] + 1;
                                                end
                                        end
                                end
                        end
                end
        end
end
assign viv_s38[c_mi_data_addr:0] = viv_s29[c_mi_data_addr:0] + mp_slice_offset_c[c_mi_data_addr:0];
assign viv_s35[c_mi_data_addr:0]  = viv_s32[c_mi_data_addr:0] + {17'h0,viv_s27[14:3]};
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin     
    if (~isp_0_rst_n)
        begin
            mp_addr_cur_cb[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
            viv_s29[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
            viv_s32[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
        end
    else
        begin
            if(viv_s50 || viv_s5 || soft_upd)
                begin
                    mp_addr_cur_cb[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
                    viv_s29[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
                    viv_s32[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
                end
            else
                begin
                    if(~stat_skip_active)
                        begin
                            if ((mp_fifo_select[1:0] == 2'b01) & mp_fifo_read64)
                                begin
                                    if(viv_s44)
                                        begin
                                            viv_s29[c_mi_data_addr:0] <= viv_s38[c_mi_data_addr:0];
                                            mp_addr_cur_cb[c_mi_data_addr:0]  <= viv_s38[c_mi_data_addr:0];
                                            viv_s32[c_mi_data_addr:0]  <= viv_s38[c_mi_data_addr:0];
                                        end
                                    else 
                                        begin
                                            if (viv_s2)
                                                begin
                                                    viv_s32[c_mi_data_addr:0] <= viv_s35[c_mi_data_addr:0];
                                                    if(mp_line_sens)
                                                        mp_addr_cur_cb[c_mi_data_addr:0] <= viv_s35[c_mi_data_addr:0];
                                                    else
                                                        mp_addr_cur_cb[c_mi_data_addr:0] <= mp_addr_cur_cb[c_mi_data_addr:0] + 1;
                                                end
                                            else
                                                begin
                                                    mp_addr_cur_cb[c_mi_data_addr:0] <= mp_addr_cur_cb[c_mi_data_addr:0] + 1;
                                                end
                                        end
                                end
                        end
                end
        end
end
assign viv_s39[c_mi_data_addr:0] = viv_s30[c_mi_data_addr:0] + mp_slice_offset_c[c_mi_data_addr:0];
assign viv_s36[c_mi_data_addr:0]  = viv_s33[c_mi_data_addr:0] + {17'h0,viv_s27[14:3]};
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin     
    if (~isp_0_rst_n)
        begin
            mp_addr_cur_cr[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
            viv_s30[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
            viv_s33[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
        end
    else
        begin
            if(viv_s51 || viv_s6 || soft_upd)
                begin
                    mp_addr_cur_cr[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
                    viv_s30[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
                    viv_s33[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
                end
            else
                begin
                    if(~stat_skip_active)
                        begin
                            if ((mp_fifo_select[1:0] == 2'b10) & mp_fifo_read64)
                                begin
                                    if(viv_s45)
                                        begin
                                            viv_s30[c_mi_data_addr:0] <= viv_s39[c_mi_data_addr:0];
                                            mp_addr_cur_cr[c_mi_data_addr:0]  <= viv_s39[c_mi_data_addr:0];
                                            viv_s33[c_mi_data_addr:0]  <= viv_s39[c_mi_data_addr:0];
                                        end
                                    else 
                                        begin
                                            if (viv_s3)
                                                begin
                                                    viv_s33[c_mi_data_addr:0] <= viv_s36[c_mi_data_addr:0];
                                                    if(mp_line_sens)
                                                        mp_addr_cur_cr[c_mi_data_addr:0] <= viv_s36[c_mi_data_addr:0];
                                                    else
                                                        mp_addr_cur_cr[c_mi_data_addr:0] <= mp_addr_cur_cr[c_mi_data_addr:0] + 1;
                                                end
                                            else
                                                begin
                                                    mp_addr_cur_cr[c_mi_data_addr:0] <= mp_addr_cur_cr[c_mi_data_addr:0] + 1;
                                                end
                                        end
                                end
                        end
                end
        end
end
assign viv_s46[c_mi_data_addr:0]  = mp_y_base_ad[c_mi_data_addr:0]  + mp_addr_cur_y[c_mi_data_addr:0];
assign viv_s47[c_mi_data_addr:0] = mp_cb_base_ad[c_mi_data_addr:0] + mp_addr_cur_cb[c_mi_data_addr:0];
assign viv_s48[c_mi_data_addr:0] = mp_cr_base_ad[c_mi_data_addr:0] + mp_addr_cur_cr[c_mi_data_addr:0];
assign viv_s52[c_mi_data_addr:0] = ((mp_fifo_select[1:0] == 2'd0) ? viv_s46[c_mi_data_addr:0]  : {c_mi_data_addr+1{1'b0}}) |
                           ((mp_fifo_select[1:0] == 2'd1) ? viv_s47[c_mi_data_addr:0] : {c_mi_data_addr+1{1'b0}}) |
                           ((mp_fifo_select[1:0] == 2'd2) ? viv_s48[c_mi_data_addr:0] : {c_mi_data_addr+1{1'b0}});
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n) 
        address[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
    else
        begin
            if (mp_fifo_read64) 
                address[c_mi_data_addr:0] <= viv_s52[c_mi_data_addr:0];
        end
end
always @(*)
begin
    viv_s42 = 1'b0;
    case(starage_format)
        2'b00: viv_s42 = viv_s45;
        2'b01: viv_s42 = viv_s44;
        2'b10: viv_s42 = viv_s43;
    endcase
end
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n)
        viv_s41[7:0] <= 8'h0;
    else
        if(viv_s53)
            viv_s41[7:0] <= 8'h0;
        else
            if(viv_s42)
                viv_s41[7:0] <= viv_s41[7:0] + 1;
end
assign viv_s53 = ((viv_s41[7:0] == slice_cnt_int[7:0]) && viv_s42) || viv_s4;
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n) 
        begin
            sw_addr_mp_y[c_mi_data_addr:0]  <= {c_mi_data_addr+1{1'b0}};
            sw_addr_mp_cb[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
            sw_addr_mp_cr[c_mi_data_addr:0] <= {c_mi_data_addr+1{1'b0}};
        end
    else
        if(viv_s53)
            begin
                sw_addr_mp_y[c_mi_data_addr:0]  <= viv_s46[c_mi_data_addr:0];
                sw_addr_mp_cb[c_mi_data_addr:0] <= viv_s47[c_mi_data_addr:0];
                sw_addr_mp_cr[c_mi_data_addr:0] <= viv_s48[c_mi_data_addr:0];
            end
end
always @(posedge isp_0_clock or negedge isp_0_rst_n) 
begin
    if (~isp_0_rst_n)
        viv_s40 <= 1'b0;
    else
        if(viv_s53)
            viv_s40 <= 1'b1;
        else
            viv_s40 <= 1'b0;
end
assign sw_interrupt_out = viv_s40 && handshake_mode_0 && handshake_en;
endmodule
