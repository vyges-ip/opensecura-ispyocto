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

module vsisp_isp_filt_regs 
  ( 
    clk_cfg, 
    reset_cfg_n, 
    cfg_val, 
    cfg_addr, 
    cfg_rd, 
    cfg_wdata, 
    cfg_rdata,
    filt_enable,
    filt_lp_select,
    filt_chr_h_mode,
    filt_chr_v_mode,
    filt_mode,
    filt_fac_sh1,
    filt_fac_sh0,
    filt_fac_mid,
    filt_fac_bl0,
    filt_fac_bl1,
    filt_thres_bl0,
    filt_thres_bl1,
    filt_thres_sh0,
    filt_thres_sh1,
    lum_weight_gain,
    lum_weight_kink,
    lum_weight_min,
    cac_enable,
    cac_h_clip_mode,
    cac_v_clip_mode,
    cac_h_count_start,
    cac_v_count_start,
    cac_x_norm_factor,
    cac_y_norm_factor,
    cac_x_norm_shift,
    cac_y_norm_shift,
    cac_a_red,
    cac_b_red,
    cac_c_red,
    cac_a_blue,
        cac_b_blue,
    cac_c_blue);
`include "vsisp_isp.vh"
   parameter c_fa = c_cfg_filt-1 ;
   input           clk_cfg;          
   input           reset_cfg_n;      
   input           cfg_val;          
   input [c_fa:2]  cfg_addr;         
   input           cfg_rd;           
   input [31:0]    cfg_wdata;        
   output [31:0]   cfg_rdata;        
   output          filt_enable;      
   output [3:0]    filt_lp_select;   
   output [1:0]    filt_chr_h_mode;  
   output [1:0]    filt_chr_v_mode;  
   output          filt_mode;        
   output [5:0]    filt_fac_sh1;     
   output [5:0]    filt_fac_sh0;     
   output [5:0]    filt_fac_mid;     
   output [5:0]    filt_fac_bl0;     
   output [5:0]    filt_fac_bl1;     
   output [9:0]    filt_thres_bl0;   
   output [9:0]    filt_thres_bl1;   
   output [9:0]    filt_thres_sh0;   
   output [9:0]    filt_thres_sh1;   
   output [2:0]    lum_weight_gain;  
   output [7:0]    lum_weight_kink;  
   output [7:0]    lum_weight_min;   
   output        cac_enable;        
   output        cac_h_clip_mode;   
   output [1:0]  cac_v_clip_mode;   
   output [12:0] cac_h_count_start; 
   output [12:0] cac_v_count_start; 
   output [4:0]  cac_x_norm_factor; 
   output [4:0]  cac_y_norm_factor; 
   output [3:0]  cac_x_norm_shift;  
   output [3:0]  cac_y_norm_shift;  
   output [8:0]  cac_a_red;         
   output [8:0]  cac_b_red;         
   output [8:0]  cac_c_red;         
   output [8:0]  cac_a_blue;        
   output [8:0]  cac_b_blue;        
   output [8:0]  cac_c_blue;        
   reg           filt_enable;
   reg [3:0]     filt_lp_select;
   reg [1:0]     filt_chr_h_mode;
   reg [1:0]     filt_chr_v_mode;
   reg           filt_mode;
   reg [5:0]     filt_fac_sh1;
   reg [5:0]     filt_fac_sh0;
   reg [5:0]     filt_fac_mid;
   reg [5:0]     filt_fac_bl0;
   reg [5:0]     filt_fac_bl1;
   reg [9:0]     filt_thres_bl0;
   reg [9:0]     filt_thres_bl1;
   reg [9:0]     filt_thres_sh0;
   reg [9:0]     filt_thres_sh1;
   reg [2:0]     lum_weight_gain;
   reg [7:0]     lum_weight_kink;
   reg [7:0]     lum_weight_min;
   reg           cac_enable;
   reg           cac_h_clip_mode;
   reg [1:0]     cac_v_clip_mode;
   reg [12:0]    cac_h_count_start;
   reg [12:0]    cac_v_count_start;
   reg [4:0]     cac_x_norm_factor;
   reg [4:0]     cac_y_norm_factor;
   reg [3:0]     cac_x_norm_shift;
   reg [3:0]     cac_y_norm_shift;
   reg [8:0]     cac_a_red;
   reg [8:0]     cac_b_red;
   reg [8:0]     cac_c_red;
   reg [8:0]     cac_a_blue;
   reg [8:0]     cac_b_blue;
   reg [8:0]     cac_c_blue;
   reg [31:0]    cfg_rdata;
   always @(*) begin
      if (cfg_val) begin
         case (cfg_addr)
           c_filt_mode[c_fa:2]:       cfg_rdata = {20'b0,
                                                   filt_lp_select,
                                                   filt_chr_h_mode,
                                                   filt_chr_v_mode,
                                                   2'b0,
                                                   filt_mode,
                                                   filt_enable};
           c_filt_fac_sh1[c_fa:2]:    cfg_rdata = {26'b0, filt_fac_sh1};
           c_filt_fac_sh0[c_fa:2]:    cfg_rdata = {26'b0, filt_fac_sh0};
           c_filt_fac_mid[c_fa:2]:    cfg_rdata = {26'b0, filt_fac_mid};
           c_filt_fac_bl0[c_fa:2]:    cfg_rdata = {26'b0, filt_fac_bl0};
           c_filt_fac_bl1[c_fa:2]:    cfg_rdata = {26'b0, filt_fac_bl1};
           c_filt_thres_bl0[c_fa:2]:  cfg_rdata = {22'b0, filt_thres_bl0};
           c_filt_thres_bl1[c_fa:2]:  cfg_rdata = {22'b0, filt_thres_bl1};
           c_filt_thres_sh0[c_fa:2]:  cfg_rdata = {22'b0, filt_thres_sh0};
           c_filt_thres_sh1[c_fa:2]:  cfg_rdata = {22'b0, filt_thres_sh1};
           c_filt_lum_weigt[c_fa:2]:  cfg_rdata = {13'b0, lum_weight_gain,
                                                   lum_weight_kink,
                                                   lum_weight_min};
           c_cac_ctrl[c_fa:2]:        cfg_rdata = {28'b0, cac_h_clip_mode,
                                                   cac_v_clip_mode,
                                                   cac_enable};
           c_cac_count_start[c_fa:2]: cfg_rdata =  {3'b0, cac_v_count_start,
                                                    3'b0, cac_h_count_start};
           c_cac_a[c_fa:2]:           cfg_rdata =  {7'b0, cac_a_blue,
                                                    7'b0, cac_a_red};
           c_cac_b[c_fa:2]:           cfg_rdata =  {7'b0, cac_b_blue,
                                                    7'b0, cac_b_red};
           c_cac_c[c_fa:2]:           cfg_rdata =  {7'b0, cac_c_blue,
                                                    7'b0, cac_c_red};
           c_cac_x_norm[c_fa:2]:      cfg_rdata = {12'h0, cac_x_norm_shift,
                                                   11'h0, cac_x_norm_factor};
           c_cac_y_norm[c_fa:2]:      cfg_rdata = {12'h0, cac_y_norm_shift,
                                                   11'h0, cac_y_norm_factor};
           default:                   cfg_rdata = 32'h0;
         endcase
      end else begin
         cfg_rdata = 32'h0;
      end 
   end
   always @(posedge clk_cfg or negedge reset_cfg_n) begin
      if (~reset_cfg_n) begin
         filt_lp_select    <= 4'b0100;
         filt_chr_h_mode   <= 2'b11;
         filt_chr_v_mode   <= 2'b11;
         filt_mode         <= 1'b1;
         filt_enable       <= 1'b0;
         filt_fac_sh1      <= 6'h10;
         filt_fac_sh0      <= 6'h0C;
         filt_fac_mid      <= 6'h0A;
         filt_fac_bl0      <= 6'h06;
         filt_fac_bl1      <= 6'h02;
         filt_thres_sh1    <= 10'h02C;
         filt_thres_sh0    <= 10'h01A;
         filt_thres_bl0    <= 10'h00D;
         filt_thres_bl1    <= 10'h005;
         lum_weight_gain   <= 3'h2;
         lum_weight_kink   <= 8'h20;
         lum_weight_min    <= 8'h40;
         cac_enable        <= 1'b0;
         cac_h_clip_mode   <= 1'b0;   
         cac_v_clip_mode   <= 2'b0;   
         cac_h_count_start <= 13'h1000; 
         cac_v_count_start <= 13'h1000; 
         cac_x_norm_factor <= 5'h10;    
         cac_y_norm_factor <= 5'h10;    
         cac_x_norm_shift  <= 4'h8;
         cac_y_norm_shift  <= 4'h8;
         cac_a_red         <= 9'h0;
         cac_b_red         <= 9'h0;
         cac_c_red         <= 9'h0;
         cac_a_blue        <= 9'h0;
         cac_b_blue        <= 9'h0;
         cac_c_blue        <= 9'h0;
      end else begin
         if (cfg_val && ~cfg_rd) begin
            case (cfg_addr)
              c_filt_mode[c_fa:2]: begin 
                 filt_lp_select    <= cfg_wdata[11:8];
                 filt_chr_h_mode   <= cfg_wdata[7:6];
                 filt_chr_v_mode   <= cfg_wdata[5:4];
                 filt_mode         <= cfg_wdata[1];
                 filt_enable       <= cfg_wdata[0];
              end
              c_filt_thres_bl0[c_fa:2]: begin 
                 filt_thres_bl0    <= cfg_wdata[9:0];
              end
              c_filt_thres_bl1[c_fa:2]: begin 
                 filt_thres_bl1    <= cfg_wdata[9:0];
              end
              c_filt_thres_sh0[c_fa:2]: begin 
                 filt_thres_sh0    <= cfg_wdata[9:0];
              end
              c_filt_thres_sh1[c_fa:2]: begin 
                 filt_thres_sh1    <= cfg_wdata[9:0];
              end
              c_filt_lum_weigt[c_fa:2]: begin 
                 lum_weight_gain   <= cfg_wdata[18:16];
                 lum_weight_kink   <= cfg_wdata[15:8];
                 lum_weight_min    <= cfg_wdata[7:0];
              end
              c_filt_fac_sh1[c_fa:2]: begin 
                 filt_fac_sh1      <= cfg_wdata[5:0];
              end
              c_filt_fac_sh0[c_fa:2]: begin 
                 filt_fac_sh0      <= cfg_wdata[5:0];
              end
              c_filt_fac_mid[c_fa:2]: begin 
                 filt_fac_mid      <= cfg_wdata[5:0];
              end
              c_filt_fac_bl0[c_fa:2]: begin 
                 filt_fac_bl0      <= cfg_wdata[5:0];
              end
              c_filt_fac_bl1[c_fa:2]: begin 
                 filt_fac_bl1      <= cfg_wdata[5:0];
              end
              c_cac_ctrl[c_fa:2]: begin 
                 cac_h_clip_mode   <= cfg_wdata[3];
                 cac_v_clip_mode   <= cfg_wdata[2:1];
                 cac_enable        <= cfg_wdata[0];
              end
              c_cac_count_start[c_fa:2]: begin 
                 cac_v_count_start <= cfg_wdata[28:16];
                 cac_h_count_start <= cfg_wdata[12:0];
              end
              c_cac_a[c_fa:2]: begin 
                 cac_a_blue        <= cfg_wdata[24:16];
                 cac_a_red         <= cfg_wdata[8:0];
              end
              c_cac_b[c_fa:2]: begin 
                 cac_b_blue        <= cfg_wdata[24:16];
                 cac_b_red         <= cfg_wdata[8:0];
              end
              c_cac_c[c_fa:2]: begin 
                 cac_c_blue        <= cfg_wdata[24:16];
                 cac_c_red         <= cfg_wdata[8:0];
              end
              c_cac_x_norm[c_fa:2]: begin 
                 cac_x_norm_shift  <= cfg_wdata[19:16];
                 cac_x_norm_factor <= cfg_wdata[4:0];
              end
              c_cac_y_norm[c_fa:2]: begin 
                 cac_y_norm_shift  <= cfg_wdata[19:16];
                 cac_y_norm_factor <= cfg_wdata[4:0];
              end
              default: begin end 
            endcase
         end 
      end
   end
endmodule
