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

module vsisp_isp_demosaic_3x3_crcb 
  (
   regs_dem_bypass,
   proc_pix_01,
   proc_pix_02,
   proc_pix_03,
   proc_pix_11,
   proc_pix_12,
   proc_pix_13,
   proc_pix_21,
   proc_pix_22,
   proc_pix_23,
   proc_pattern,
   flag_h,
   flag_v,
   g_data,
   rs_data,
   bs_data);
`include "vsisp_isp.vh" 
   input               regs_dem_bypass; 
   input [c_dw_si-1:0] proc_pix_01;     
   input [c_dw_si-1:0] proc_pix_02;     
   input [c_dw_si-1:0] proc_pix_03;     
   input [c_dw_si-1:0] proc_pix_11;     
   input [c_dw_si-1:0] proc_pix_12;     
   input [c_dw_si-1:0] proc_pix_13;     
   input [c_dw_si-1:0] proc_pix_21;     
   input [c_dw_si-1:0] proc_pix_22;     
   input [c_dw_si-1:0] proc_pix_23;     
   input [1:0]         proc_pattern;    
   input               flag_h;          
   input               flag_v;          
   output [c_dw_si-1:0] g_data;          
   output [c_dw_si-1:0] rs_data;         
   output [c_dw_si-1:0] bs_data;         
   wire [c_dw_si-1:0]   viv_s0;      
   wire [c_dw_si-1:0]   viv_s1;      
   wire [c_dw_si-1:0]   viv_s2;       
   wire [c_dw_si-1:0]   viv_s3;        
   reg [c_dw_si-1:0]    viv_s4;
   reg [c_dw_si-1:0]    viv_s5;    
   reg [c_dw_si-1:0]    viv_s6;   
   function [c_dw_si-1:0] f_avg2;
      input [c_dw_si-1:0] a, 
                          b; 
      reg   [c_dw_si+1:0] viv_s7;
      begin
         viv_s7  = {1'b0, a, 1'b1} + {b, 1'b1};
         f_avg2 = viv_s7[c_dw_si+1:2];
      end
   endfunction
   function [c_dw_si-1:0] f_avg4;
      input [c_dw_si-1:0] a, 
                          b, 
                          c, 
                          d; 
      reg   [c_dw_si+2:0] viv_s7;
      begin
         viv_s7  = {2'b0, a, 1'b1} + {b, 1'b1} + {c, 1'b1} + {d, 1'b1};
         f_avg4 = viv_s7[c_dw_si+2:3];
      end
   endfunction
   assign viv_s0 = f_avg2(proc_pix_11, proc_pix_13);
   assign viv_s1 = f_avg2(proc_pix_02, proc_pix_22);
   assign viv_s3   = f_avg4(proc_pix_01, proc_pix_03, proc_pix_21, proc_pix_23);
   assign viv_s2  = f_avg2(viv_s0, viv_s1);
   always @(*) begin
      case(proc_pattern)
        c_b : begin  
           if (flag_h) begin
              viv_s4    = viv_s0;
              viv_s6 = viv_s0;
              viv_s5  = viv_s1;
           end else if (flag_v) begin
              viv_s4    = viv_s1;
              viv_s6 = viv_s1;
              viv_s5  = viv_s0;
           end else begin     
              viv_s4    = viv_s2;
              viv_s6 = viv_s2;
              viv_s5  = viv_s2;
           end
        end 
        c_r : begin 
           if (flag_h) begin
              viv_s4    = viv_s0;
              viv_s6 = viv_s1;
              viv_s5  = viv_s0;
           end else if (flag_v) begin
              viv_s4    = viv_s1;
              viv_s6 = viv_s0;
              viv_s5  = viv_s1;
           end else begin     
              viv_s4    = viv_s2;
              viv_s6 = viv_s2;
        viv_s5  = viv_s2;
           end
        end 
        c_gb : begin 
           viv_s4  = proc_pix_12;
           if (flag_h) begin
              viv_s6 = proc_pix_12;
              viv_s5  = viv_s3;
           end else if (flag_v) begin
              viv_s6 = viv_s3;
              viv_s5  = proc_pix_12;
           end else begin
              viv_s6 = viv_s3;
              viv_s5  = viv_s3;
           end
        end  
        default : begin 
           viv_s4  = proc_pix_12;
           if (flag_h) begin
              viv_s6 = viv_s3;
              viv_s5  = proc_pix_12;
           end else if (flag_v) begin
              viv_s6 = proc_pix_12;
              viv_s5  = viv_s3;
           end else begin
              viv_s6 = viv_s3;
              viv_s5  = viv_s3;
           end
        end 
      endcase 
   end
   assign g_data  = (regs_dem_bypass) ?  proc_pix_12    : viv_s4;
   assign rs_data = (regs_dem_bypass) ? {c_dw_si{1'b0}} : viv_s5;
   assign bs_data = (regs_dem_bypass) ? {c_dw_si{1'b0}} : viv_s6;
endmodule
