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

module vsisp_isp_rgb_yuv_sel
    (
      if_sel,
      yuv_dma_sel,
      s2_val,
      s2_data,
      s2_h_end,
      s2_v_end,
      s2_ack,
      s1_val,
      s1_data,
      s1_h_end,
      s1_v_end,
      s1_ack,
      s0_val,
      s0_data,
      s0_h_end,
      s0_v_end,
      s0_ack,
      out_val,
      out_data,
      out_h_end,
      out_v_end,
      out_ack
     );
`include "vsisp_isp.vh"
   input                 if_sel;       
   input                 yuv_dma_sel;  
   input                 s2_val;       
   input [2*c_dw_do-1:0] s2_data;      
   input                 s2_h_end;     
   input                 s2_v_end;     
   output                s2_ack;       
   input                 s1_val;       
   input [2*c_dw_do-1:0] s1_data;    
   input                 s1_h_end;     
   input                 s1_v_end;     
   output                s1_ack;       
   input                 s0_val;       
   input [2*c_dw_do-1:0] s0_data;      
   input                 s0_h_end;     
   input                 s0_v_end;     
   output                s0_ack;       
   output                 out_val;    
   output [2*c_dw_do-1:0] out_data;   
   output                 out_h_end;  
   output                 out_v_end;  
   input                  out_ack;    
   reg                    out_val;    
   reg    [2*c_dw_do-1:0] out_data;   
   reg                    out_h_end;  
   reg                    out_v_end;  
   reg                    s0_ack;     
   reg                    s1_ack;     
   reg                    s2_ack;     
   always @(*) begin
      if (yuv_dma_sel) begin
         out_val   = s2_val;
         out_h_end = s2_h_end;
         out_v_end = s2_v_end;
         out_data  = s2_data;
         s2_ack    = out_ack;
         s1_ack    = 1'b1;
         s0_ack    = 1'b1;
      end
      else if (if_sel) begin
         out_val   = s1_val;
         out_h_end = s1_h_end;
         out_v_end = s1_v_end;
         out_data  = s1_data;
         s2_ack    = 1'b1;
         s1_ack    = out_ack;
         s0_ack    = 1'b1;
      end
      else begin
         out_val   = s0_val;
         out_h_end = s0_h_end;
         out_v_end = s0_v_end;
         out_data  = s0_data;
         s2_ack    = 1'b1;
         s1_ack    = 1'b1;
         s0_ack    = out_ack;
      end
   end
endmodule
