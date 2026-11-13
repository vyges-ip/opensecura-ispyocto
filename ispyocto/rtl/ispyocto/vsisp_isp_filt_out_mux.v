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

module vsisp_isp_filt_out_mux 
  (
   clk,
   reset_n,   
   soft_rst,   
   filt_enable,   
   hpfilt_in_ack,   
   grn_line2,
   crcb_v_filt,
   in_h_end_dem,
   in_v_end_dem,
   in_val_dem,   
   dem_out_ack,   
   grn_filt,
   crcb_filt,
   hpfilt_h_end,
   hpfilt_v_end,
   hpfilt_val,   
   hpfilt_ack,   
   out_data,   
   out_h_end,
   out_v_end,
   out_val,
   out_ack);
`include "vsisp_isp.vh"   
   input clk;           
   input reset_n;       
   input soft_rst;      
   input filt_enable;   
   input hpfilt_in_ack; 
   input [c_dw_si-1:0] grn_line2;     
   input [(2*c_dw_si)+1:0] crcb_v_filt;   
   input            in_h_end_dem;  
   input            in_v_end_dem;  
   input            in_val_dem;    
   output           dem_out_ack;   
   input [c_dw_si+1:0] grn_filt;      
   input [(2*c_dw_si)+1:0] crcb_filt;     
   input                   hpfilt_h_end;  
   input                   hpfilt_v_end;  
   input                   hpfilt_val;    
   output                  hpfilt_ack;    
   output [(3*c_dw_si)-1:0] out_data;      
   output                   out_h_end;     
   output                   out_v_end;     
   output                   out_val;       
   input                    out_ack;       
   wire             viv_s0;
   wire             viv_s1;
   wire             viv_s2;
   wire [c_dw_si:0] viv_s3;
   wire [c_dw_si:0] viv_s4;
   wire [c_dw_si+2:0] viv_s5;  
   wire [c_dw_si+3:0] viv_s6;
   wire [c_dw_si+3:0] viv_s7;
   wire [c_dw_si-1:0] viv_s8;
   wire [c_dw_si-1:0] viv_s9;
   wire [c_dw_si-1:0] viv_s10;
   wire [(3*c_dw_si)-1:0] viv_s11;
   reg                    viv_s12;
   reg                    viv_s13;
   reg                    viv_s14;
   reg                    viv_s15;
   reg [3*c_dw_si-1:0]    viv_s16;
   wire                   viv_s17;
   wire                   viv_s18;
   wire                   viv_s19;
   wire [3*c_dw_si-1:0]   viv_s20;
   wire                   viv_s21;
   reg [(3*c_dw_si)-1:0]  out_data;
   reg                    out_h_end;
   reg                    out_v_end;
   reg                    out_val;
   assign viv_s4 = (filt_enable) ? crcb_filt[c_dw_si:0] : 
                                   {~crcb_v_filt[c_dw_si], crcb_v_filt[c_dw_si-1:0]};
   assign viv_s3 = (filt_enable) ? crcb_filt[(2*c_dw_si)+1 : c_dw_si+1] : 
                                   {~crcb_v_filt[(2*c_dw_si)+1], crcb_v_filt[2*c_dw_si: c_dw_si+1]};
   assign viv_s5 = (filt_enable) ? {1'b0, grn_filt} - {1'b1, {c_dw_si{1'b0}}} : 
                                       {3'b0, grn_line2};
   assign viv_s0 = (filt_enable) ? hpfilt_h_end : in_h_end_dem; 
   assign viv_s1 = (filt_enable) ? hpfilt_v_end : in_v_end_dem; 
   assign viv_s2   = (filt_enable) ? hpfilt_val   : in_val_dem; 
   assign dem_out_ack = (filt_enable) ? hpfilt_in_ack : viv_s12; 
   assign hpfilt_ack  = viv_s12;                
   assign viv_s6 = {viv_s3[c_dw_si], viv_s3[c_dw_si], viv_s3[c_dw_si], viv_s3} + 
                  {viv_s5[c_dw_si+2], viv_s5};
   assign viv_s7 = {viv_s4[c_dw_si], viv_s4[c_dw_si], viv_s4[c_dw_si], viv_s4} + 
                  {viv_s5[c_dw_si+2], viv_s5};
   assign viv_s8 = ( viv_s6[c_dw_si+3])         ? {c_dw_si{1'b0}} : 
                    (|viv_s6[c_dw_si+2:c_dw_si]) ? {c_dw_si{1'b1}} : 
                                                   viv_s6[c_dw_si-1:0];
   assign viv_s10 = ( viv_s7[c_dw_si+3])         ? {c_dw_si{1'b0}} : 
                     (|viv_s7[c_dw_si+2:c_dw_si]) ? {c_dw_si{1'b1}} : 
                                                    viv_s7[c_dw_si-1:0];
   assign viv_s9 = ( viv_s5[c_dw_si+2])         ? {c_dw_si{1'b0}} : 
                      (|viv_s5[c_dw_si+1:c_dw_si]) ? {c_dw_si{1'b1}} : 
                                                           viv_s5[c_dw_si-1:0];
   assign viv_s11 = {viv_s8, viv_s9, viv_s10};
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s16  <= {(3*c_dw_si){1'b0}};
         viv_s14 <= 1'b0;
         viv_s15 <= 1'b0;
         viv_s12    <= 1'b0;
         viv_s13   <= 1'b0;
      end else begin
         if (viv_s12) viv_s16  <= viv_s11;
         if (viv_s12) viv_s14 <= viv_s0;
         if (viv_s12) viv_s15 <= viv_s1;
         if (soft_rst) begin
            viv_s12  <= 1'b0;
            viv_s13 <= 1'b0;
         end else begin
            viv_s12 <= ~viv_s17 | viv_s21;
            if (viv_s12) viv_s13 <= viv_s2;
         end
      end
   end
   assign viv_s18 = viv_s12 ? viv_s0 : viv_s14;
   assign viv_s19 = viv_s12 ? viv_s1 : viv_s15;
   assign viv_s20  = viv_s12 ? viv_s11  : viv_s16;
   assign viv_s17   = viv_s12 ? viv_s2   : viv_s13;
   assign viv_s21 = ~out_val | out_ack;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         out_data  <= {(3*c_dw_si){1'b0}};
         out_h_end <= 0;
         out_v_end <= 0;
         out_val   <= 0;
      end else begin
         if (viv_s21) begin
            out_data  <= viv_s20;
            out_h_end <= viv_s18;
            out_v_end <= viv_s19;
         end
         if (soft_rst)
           out_val   <= 1'b0;
         else if (viv_s21) 
           out_val   <= viv_s17;
      end
   end
endmodule
