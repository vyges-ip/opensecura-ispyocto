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

module vsisp_isp_cac_ver 
  (
   clk,
   reset_n,
   in_val,
   in_ack,
   in_h_end,
   in_v_end,
   mem_data_1t,
   mem_data_m2,
   mem_data_m3,
   mem_data_m4,
   mem_data_m5,
   mem_data_m6,
   mem_data_7b,
   cv_mask,
   regs_dem_bypass,
   cac_v_sel_1,
   cac_v_sel_2,
   cac_v_sel_3,
   cac_v_coef,
   cac_v_filt_disable,
   cac_v_data_out,
   out_h_end,
   out_v_end,
   out_val,
   out_ack);
`include "vsisp_isp.vh"    
   input                 clk;         
   input                 reset_n;     
   input                 in_val;      
   output                in_ack;      
   input                 in_h_end;    
   input                 in_v_end;    
   input [c_dw_si-1:0]   mem_data_1t; 
   input [c_dw_si-1:0]   mem_data_m2; 
   input [c_dw_si-1:0]   mem_data_m3; 
   input [c_dw_si-1:0]   mem_data_m4; 
   input [c_dw_si-1:0]   mem_data_m5; 
   input [c_dw_si-1:0]   mem_data_m6; 
   input [c_dw_si-1:0]   mem_data_7b; 
   input [1:0]           cv_mask;        
   input                 regs_dem_bypass;
   input [3:0]           cac_v_sel_1;    
   input [3:0]           cac_v_sel_2;    
   input [3:0]           cac_v_sel_3;    
   input [4:0]           cac_v_coef;         
   input                 cac_v_filt_disable; 
   output [c_dw_si-1:0]  cac_v_data_out;     
   output                out_h_end;          
   output                out_v_end;          
   output                out_val;            
   input                 out_ack;            
   wire                  viv_s0;
   reg [c_dw_si-1:0]     viv_s1;
   reg [c_dw_si-1:0]     viv_s2;
   reg [c_dw_si-1:0]     viv_s3;
   reg [c_dw_si-1:0]     viv_s4;
   reg [c_dw_si-1:0]     viv_s5;
   reg [c_dw_si-1:0]     viv_s6;
   wire [c_dw_si:0]      viv_s7;
   wire [c_dw_si:0]      viv_s8;
   wire [c_dw_si:0]      viv_s9;
   wire [c_dw_si:0]      viv_s10;
   wire [c_dw_si:0]      viv_s11;
   wire [c_dw_si:0]      viv_s12;
   wire [c_dw_si:0]      viv_s13;
   wire [c_dw_si-1:0]    viv_s14;
   wire [c_dw_si-1:0]    viv_s15;
   wire [c_dw_si-1:0]    viv_s16;
   wire [c_dw_si-1:0]    viv_s17;
   wire [c_dw_si-1:0]    viv_s18;
   wire [c_dw_si+5:0]    viv_s19;
   wire [c_dw_si+4:0]    viv_s20;
   wire [c_dw_si:0]      viv_s21;
   wire [c_dw_si-1:0]    viv_s22;
   wire [c_dw_si+4:0]    viv_s23;
   wire [c_dw_si+2:0]    viv_s24;
   wire [c_dw_si+2:0]    viv_s25;
   wire [c_dw_si+2:0]    viv_s26;
   wire [c_dw_si+4:0]    viv_s27;
   reg [c_dw_si-1:0]     cac_v_data_out;
   reg                   out_h_end;
   reg                   out_v_end;
   reg                   out_val;
   always @(*)
     begin
        case(cac_v_sel_1)
          4'd4   : viv_s1 = mem_data_1t;
          4'd5   : viv_s1 = mem_data_1t;
          4'd6   : viv_s1 = mem_data_m2;
          4'd7   : viv_s1 = mem_data_m3;
          4'd8   : viv_s1 = mem_data_m4;
          4'd9   : viv_s1 = mem_data_m5;
          4'd10  : viv_s1 = mem_data_m6;
          default: viv_s1 = mem_data_7b;
        endcase                        
     end
   always @(*)
     begin
        case(cac_v_sel_1)
          4'd4   : viv_s4 = mem_data_m2;
          4'd5   : viv_s4 = mem_data_m3;
          4'd6   : viv_s4 = mem_data_m4;
          4'd7   : viv_s4 = mem_data_m5;
          4'd8   : viv_s4 = mem_data_m6;
          default: viv_s4 = mem_data_7b;
        endcase                        
     end
   always @(*)
     begin
        case(cac_v_sel_2)
          4'd4   : viv_s2 = mem_data_1t;
          4'd5   : viv_s2 = mem_data_1t;
          4'd6   : viv_s2 = mem_data_m2;
          4'd7   : viv_s2 = mem_data_m3;
          4'd8   : viv_s2 = mem_data_m4;
          4'd9   : viv_s2 = mem_data_m5;
          4'd10  : viv_s2 = mem_data_m6;
          default: viv_s2 = mem_data_7b;
        endcase                        
     end
   always @(*)
     begin
        case(cac_v_sel_2)
          4'd4   : viv_s5 = mem_data_m2;
          4'd5   : viv_s5 = mem_data_m3;
          4'd6   : viv_s5 = mem_data_m4;
          4'd7   : viv_s5 = mem_data_m5;
          4'd8   : viv_s5 = mem_data_m6;
          default: viv_s5 = mem_data_7b;
        endcase                        
     end
   always @(*)
     begin
        case(cac_v_sel_3)
          4'd4   : viv_s3 = mem_data_1t;
          4'd5   : viv_s3 = mem_data_1t;
          4'd6   : viv_s3 = mem_data_m2;
          4'd7   : viv_s3 = mem_data_m3;
          4'd8   : viv_s3 = mem_data_m4;
          4'd9   : viv_s3 = mem_data_m5;
          4'd10  : viv_s3 = mem_data_m6;
          default: viv_s3 = mem_data_7b;
        endcase                        
     end
   always @(*)
     begin
        case(cac_v_sel_3)
          4'd4   : viv_s6 = mem_data_m2;
          4'd5   : viv_s6 = mem_data_m3;
          4'd6   : viv_s6 = mem_data_m4;
          4'd7   : viv_s6 = mem_data_m5;
          4'd8   : viv_s6 = mem_data_m6;
          default: viv_s6 = mem_data_7b;
        endcase                        
     end
   assign viv_s7 = {1'b0, viv_s1} + viv_s3 +1;
   assign viv_s8 = {1'b0, viv_s4} + viv_s6 +1;
   assign viv_s9 = (cac_v_coef[0]) ?  viv_s8 : viv_s7;
   assign viv_s10 = (cac_v_coef[1]) ?  viv_s8 : viv_s7;
   assign viv_s11 = (cac_v_coef[2]) ?  viv_s8 : viv_s7;
   assign viv_s12 = (cac_v_coef[3]) ?  viv_s8 : viv_s7;
   assign viv_s13 = (cac_v_coef[4]) ?  viv_s7 : viv_s8; 
   assign viv_s14 = (cac_v_coef[0]) ? viv_s5 : viv_s2;
   assign viv_s15 = (cac_v_coef[1]) ? viv_s5 : viv_s2;
   assign viv_s16 = (cac_v_coef[2]) ? viv_s5 : viv_s2;
   assign viv_s17 = (cac_v_coef[3]) ? viv_s5 : viv_s2;
   assign viv_s18 = (cac_v_coef[4]) ? viv_s5 : viv_s2;
   assign viv_s19 = {5'h0, viv_s7} + viv_s9 +
                   {viv_s10, 1'h0} + {viv_s11, 2'h0} +
                   {viv_s12, 3'h0} + {viv_s13, 4'h0};
   assign viv_s20 = {5'h0, viv_s2} + viv_s14 +
                  {viv_s15, 1'h0} + {viv_s16, 2'h0} +
                  {viv_s17, 3'h4} + {viv_s18, 4'hC};
   assign viv_s21 = viv_s19[c_dw_si+5:5];
   assign viv_s22  =  viv_s20[c_dw_si+4:5];
   assign viv_s23  = {1'b0, viv_s21,3'b110};
   assign viv_s24  =        {viv_s22,3'b110};
   assign viv_s25  = (cv_mask == 2'd1) ? {c_dw_si+3{1'b0}} :
                   (cv_mask == 2'd2) ? {1'b0, viv_s21,1'b1} :
                   {viv_s21,2'b10};  
   assign viv_s26  = (cv_mask == 2'd1) ? {viv_s22,3'b100} :
                   (cv_mask == 2'd2) ? {1'b0, viv_s22,2'b11} :
                   {{c_dw_si+1{1'b0}},2'b10};   
   assign viv_s27  = viv_s23 + viv_s24 + viv_s25 + viv_s26;
   assign in_ack        = ~out_val || out_ack;
   assign viv_s0  = ~out_val || out_ack;
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         out_v_end      <= 1'b0;
         out_h_end      <= 1'b0;
         out_val        <= 1'b0;
         cac_v_data_out <= {c_dw_si{1'b0}};
      end else if (viv_s0) begin
         out_v_end      <= in_v_end;
         out_h_end      <= in_h_end;
         out_val        <= in_val;
         if (regs_dem_bypass)                   
           cac_v_data_out <= {c_dw_si{1'b0}};
         else if ((cv_mask == 2'b00) || cac_v_filt_disable) 
           cac_v_data_out <= viv_s22;
         else
           cac_v_data_out <= viv_s27[c_dw_si+4:5];
      end
   end
endmodule
