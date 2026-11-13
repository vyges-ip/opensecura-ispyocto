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

module vsisp_isp_demosaic_3x2 
  (
   regs_dem_bypass,
   proc_pix_c1,
   proc_pix_c2,
   proc_pix_c3,
   proc_pix_n2,
   proc_pattern,
   flag_v,
   g_data);
`include "vsisp_isp.vh" 
   input               regs_dem_bypass; 
   input [c_dw_si-1:0] proc_pix_c1;     
   input [c_dw_si-1:0] proc_pix_c2;     
   input [c_dw_si-1:0] proc_pix_c3;     
   input [c_dw_si-1:0] proc_pix_n2;     
   input [1:0]         proc_pattern;    
   input               flag_v;          
   output [c_dw_si-1:0] g_data;         
   wire [c_dw_si+1:0]   viv_s0;
   wire [c_dw_si-1:0]   viv_s1;        
   reg [c_dw_si-1:0]    viv_s2;        
   assign viv_s0    = {1'b0, proc_pix_c1, 1'b1} + {proc_pix_c3, 1'b1};
   assign viv_s1 = viv_s0[c_dw_si+1:2];
   always @(*) begin
      if (regs_dem_bypass) begin            
         viv_s2 = proc_pix_c2;
      end else if (flag_v) begin
         case (proc_pattern)
           c_r     : viv_s2 = proc_pix_n2;  
           c_gr    : viv_s2 = proc_pix_c2;  
           c_gb    : viv_s2 = proc_pix_c2;  
           default : viv_s2 = proc_pix_n2;  
         endcase
      end else begin
         case (proc_pattern)
           c_r     : viv_s2 = viv_s1;      
           c_gr    : viv_s2 = proc_pix_c2;  
           c_gb    : viv_s2 = proc_pix_c2;  
           default : viv_s2 = viv_s1;      
         endcase
      end 
   end
assign g_data   = viv_s2;
endmodule
