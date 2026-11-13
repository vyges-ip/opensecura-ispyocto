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

module vsisp_isp_exp_regs 
  ( 
    clk,
    reset_n,
    clk_cfg,
    reset_cfg_n,
    cfg_val_i,
    cfg_addr_i,
    cfg_rd_i,
    cfg_wdata_i,
    cfg_rdata_o,
    exp_h_offset_o,
    exp_v_offset_o,
    exp_h_size_o,
    exp_v_size_o,
    exp_mean_data_i,
    exp_mean_addr_i,
    exp_mean_val_i,
    exp_alt_mode_o,
    exp_ena_o,
    exp_ena_rst_i,
    autostop_o
    );
`include "vsisp_isp.vh"
   input          clk;              
   input          reset_n;          
   input          clk_cfg;          
   input          reset_cfg_n;      
   input          cfg_val_i;        
   input [13: 2]  cfg_addr_i;       
   input          cfg_rd_i;         
   input [31: 0]  cfg_wdata_i;      
   output [31: 0] cfg_rdata_o;      
   reg [31: 0]    cfg_rdata_o;      
   output [12: 0] exp_h_offset_o;   
   output [12: 0] exp_v_offset_o;   
   output [10: 0] exp_h_size_o;     
   output [10: 0] exp_v_size_o;     
   input [ 7: 0]  exp_mean_data_i;      
   input [ 5: 0]  exp_mean_addr_i;      
   input          exp_mean_val_i;       
   output         exp_alt_mode_o;   
   output         exp_ena_o;
   input          exp_ena_rst_i;
   output         autostop_o;
   reg            exp_alt_mode_o;
   reg            exp_ena_o;
   reg            autostop_o;
   reg [12: 0]    exp_h_offset_o;   
   reg [12: 0]    exp_v_offset_o;   
   reg [10: 0]    exp_h_size_o;     
   reg [10: 0]    exp_v_size_o;     
   reg [ 7: 0]    viv_s0;
   reg [ 7: 0]    viv_s1;
   reg [ 7: 0]    viv_s2;
   reg [ 7: 0]    viv_s3;
   reg [ 7: 0]    viv_s4;
   reg [ 7: 0]    viv_s5;
   reg [ 7: 0]    viv_s6;
   reg [ 7: 0]    viv_s7;
   reg [ 7: 0]    viv_s8;
   reg [ 7: 0]    viv_s9;
   reg [ 7: 0]    viv_s10;
   reg [ 7: 0]    viv_s11;
   reg [ 7: 0]    viv_s12;
   reg [ 7: 0]    viv_s13;
   reg [ 7: 0]    viv_s14;
   reg [ 7: 0]    viv_s15;
   reg [ 7: 0]    viv_s16;
   reg [ 7: 0]    viv_s17;
   reg [ 7: 0]    viv_s18;
   reg [ 7: 0]    viv_s19;
   reg [ 7: 0]    viv_s20;
   reg [ 7: 0]    viv_s21;
   reg [ 7: 0]    viv_s22;
   reg [ 7: 0]    viv_s23;
   reg [ 7: 0]    viv_s24;
   always @( cfg_addr_i   or exp_h_offset_o or exp_v_offset_o or
             exp_h_size_o or exp_v_size_o   or viv_s0    or
             viv_s1  or viv_s2    or viv_s3    or
             viv_s4  or viv_s5    or viv_s6    or
             viv_s7  or viv_s8    or viv_s9    or
             viv_s10  or viv_s11    or viv_s12    or
             viv_s13  or viv_s14    or viv_s15    or
             viv_s16  or viv_s17    or viv_s18    or
             viv_s19  or viv_s20    or viv_s21    or
             viv_s22  or viv_s23    or viv_s24    or
             autostop_o   or exp_ena_o      or exp_alt_mode_o) begin
      case (cfg_addr_i)
        c_exp_conf[13:2]     : cfg_rdata_o = { exp_alt_mode_o, 29'd0, autostop_o, exp_ena_o }; 
        c_exp_h_offset[13:2] : cfg_rdata_o = { 19'd0, exp_h_offset_o }; 
        c_exp_v_offset[13:2] : cfg_rdata_o = { 19'd0, exp_v_offset_o }; 
        c_exp_h_size[13:2]   : cfg_rdata_o = { 21'd0, exp_h_size_o };   
        c_exp_v_size[13:2]   : cfg_rdata_o = { 21'd0, exp_v_size_o };  
        c_exp_mean_00[13:2]  : cfg_rdata_o = { 24'd0, viv_s0 };
        c_exp_mean_10[13:2]  : cfg_rdata_o = { 24'd0, viv_s1 };
        c_exp_mean_20[13:2]  : cfg_rdata_o = { 24'd0, viv_s2 };
        c_exp_mean_30[13:2]  : cfg_rdata_o = { 24'd0, viv_s3 };
        c_exp_mean_40[13:2]  : cfg_rdata_o = { 24'd0, viv_s4 };
        c_exp_mean_01[13:2]  : cfg_rdata_o = { 24'd0, viv_s5 };
        c_exp_mean_11[13:2]  : cfg_rdata_o = { 24'd0, viv_s6 };
        c_exp_mean_21[13:2]  : cfg_rdata_o = { 24'd0, viv_s7 };
        c_exp_mean_31[13:2]  : cfg_rdata_o = { 24'd0, viv_s8 };
        c_exp_mean_41[13:2]  : cfg_rdata_o = { 24'd0, viv_s9 };
        c_exp_mean_02[13:2]  : cfg_rdata_o = { 24'd0, viv_s10 };
        c_exp_mean_12[13:2]  : cfg_rdata_o = { 24'd0, viv_s11 };
        c_exp_mean_22[13:2]  : cfg_rdata_o = { 24'd0, viv_s12 };
        c_exp_mean_32[13:2]  : cfg_rdata_o = { 24'd0, viv_s13 };
        c_exp_mean_42[13:2]  : cfg_rdata_o = { 24'd0, viv_s14 };
        c_exp_mean_03[13:2]  : cfg_rdata_o = { 24'd0, viv_s15 };
        c_exp_mean_13[13:2]  : cfg_rdata_o = { 24'd0, viv_s16 };
        c_exp_mean_23[13:2]  : cfg_rdata_o = { 24'd0, viv_s17 };
        c_exp_mean_33[13:2]  : cfg_rdata_o = { 24'd0, viv_s18 };
        c_exp_mean_43[13:2]  : cfg_rdata_o = { 24'd0, viv_s19 };
        c_exp_mean_04[13:2]  : cfg_rdata_o = { 24'd0, viv_s20 };
        c_exp_mean_14[13:2]  : cfg_rdata_o = { 24'd0, viv_s21 };
        c_exp_mean_24[13:2]  : cfg_rdata_o = { 24'd0, viv_s22 };
        c_exp_mean_34[13:2]  : cfg_rdata_o = { 24'd0, viv_s23 };
        c_exp_mean_44[13:2]  : cfg_rdata_o = { 24'd0, viv_s24 };
        default              : cfg_rdata_o = 32'd0;
      endcase
   end
   always @(posedge clk_cfg or negedge reset_cfg_n) begin
      if (~reset_cfg_n) begin
         exp_ena_o        <=  1'b0;
         autostop_o       <=  1'b0;
         exp_alt_mode_o   <=  1'b0;
         exp_h_offset_o   <= 13'd0;
         exp_v_offset_o   <= 13'd0;
         exp_h_size_o     <= 11'd0;
         exp_v_size_o     <= 11'd0;
      end 
      else begin
         if (exp_ena_rst_i) begin
            exp_ena_o       <= 1'b0;
         end         
         if (cfg_val_i && ~cfg_rd_i) begin   
            case (cfg_addr_i)
              c_exp_conf[13:2]     : begin
                 exp_alt_mode_o   <= cfg_wdata_i[31];
                 exp_ena_o        <= cfg_wdata_i[0: 0];
                 autostop_o       <= cfg_wdata_i[1: 1];
              end 
              c_exp_h_offset[13:2] : begin
                 exp_h_offset_o   <= cfg_wdata_i[12: 0];
              end 
              c_exp_v_offset[13:2] : begin
                 exp_v_offset_o   <= cfg_wdata_i[12: 0];
              end 
              c_exp_h_size[13:2]   : begin
                 exp_h_size_o     <= cfg_wdata_i[10: 0];
              end  
              c_exp_v_size[13:2]   : begin
                 exp_v_size_o     <= cfg_wdata_i[10: 0];
              end  
              default : begin 
              end
            endcase
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s0 <= 8'd0; 
         viv_s1 <= 8'd0; 
         viv_s2 <= 8'd0;
         viv_s3 <= 8'd0; 
         viv_s4 <= 8'd0; 
         viv_s5 <= 8'd0;
         viv_s6 <= 8'd0; 
         viv_s7 <= 8'd0; 
         viv_s8 <= 8'd0;
         viv_s9 <= 8'd0; 
         viv_s10 <= 8'd0; 
         viv_s11 <= 8'd0;
         viv_s12 <= 8'd0; 
         viv_s13 <= 8'd0; 
         viv_s14 <= 8'd0;
         viv_s15 <= 8'd0; 
         viv_s16 <= 8'd0; 
         viv_s17 <= 8'd0;
         viv_s18 <= 8'd0; 
         viv_s19 <= 8'd0; 
         viv_s20 <= 8'd0;
         viv_s21 <= 8'd0; 
         viv_s22 <= 8'd0; 
         viv_s23 <= 8'd0;
         viv_s24 <= 8'd0;
      end 
      else begin
         if (exp_mean_val_i) begin
            case (exp_mean_addr_i)
              6'b000000 : viv_s0 <= exp_mean_data_i;
              6'b001000 : viv_s1 <= exp_mean_data_i;
              6'b010000 : viv_s2 <= exp_mean_data_i;
              6'b011000 : viv_s3 <= exp_mean_data_i;
              6'b100000 : viv_s4 <= exp_mean_data_i;
              6'b000001 : viv_s5 <= exp_mean_data_i;
              6'b001001 : viv_s6 <= exp_mean_data_i;
              6'b010001 : viv_s7 <= exp_mean_data_i;
              6'b011001 : viv_s8 <= exp_mean_data_i;
              6'b100001 : viv_s9 <= exp_mean_data_i;
              6'b000010 : viv_s10 <= exp_mean_data_i;
              6'b001010 : viv_s11 <= exp_mean_data_i;
              6'b010010 : viv_s12 <= exp_mean_data_i;
              6'b011010 : viv_s13 <= exp_mean_data_i;
              6'b100010 : viv_s14 <= exp_mean_data_i;
              6'b000011 : viv_s15 <= exp_mean_data_i;
              6'b001011 : viv_s16 <= exp_mean_data_i;
              6'b010011 : viv_s17 <= exp_mean_data_i;
              6'b011011 : viv_s18 <= exp_mean_data_i;
              6'b100011 : viv_s19 <= exp_mean_data_i;
              6'b000100 : viv_s20 <= exp_mean_data_i;
              6'b001100 : viv_s21 <= exp_mean_data_i;
              6'b010100 : viv_s22 <= exp_mean_data_i;
              6'b011100 : viv_s23 <= exp_mean_data_i;
              6'b100100 : viv_s24 <= exp_mean_data_i;
              default   : viv_s24 <= exp_mean_data_i; 
            endcase
         end
      end
   end
endmodule
