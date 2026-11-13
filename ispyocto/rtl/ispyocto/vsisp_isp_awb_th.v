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

module vsisp_isp_awb_th (
        meas_data,
        wnd_val,
        th_val,
        regs_awb_meas_mode,
        regs_awb_max_en,
        regs_awb_mode,
        regs_awb_ref_cb__max_b,
        regs_awb_ref_cr__max_r,
        regs_awb_max_y,
        regs_awb_min_y__max_g,
        regs_awb_min_c,
        regs_awb_max_csum);
input  [23:0]       meas_data;           
input               wnd_val;             
output              th_val;              
input               regs_awb_meas_mode;   
input               regs_awb_max_en;     
input  [ 1:0]       regs_awb_mode;       
input  [ 7:0]       regs_awb_ref_cb__max_b; 
input  [ 7:0]       regs_awb_ref_cr__max_r; 
input  [ 7:0]       regs_awb_max_y;         
input  [ 7:0]       regs_awb_min_y__max_g;  
input  [ 7:0]       regs_awb_min_c;         
input  [ 7:0]       regs_awb_max_csum;      
reg [8:0] viv_s0;
reg [8:0] viv_s1;
reg [8:0] viv_s2;
reg [8:0] viv_s3;
reg [9:0] viv_s4;
reg [9:0] viv_s5;
reg [9:0] viv_s6;
reg [10:0] viv_s7;
reg [10:0] viv_s8;
reg       viv_s9;
reg       viv_s10;
reg       th_val;
always @(meas_data or wnd_val or regs_awb_max_en or regs_awb_mode or
         regs_awb_max_y or regs_awb_min_y__max_g or regs_awb_meas_mode or 
         regs_awb_min_c or regs_awb_max_csum or regs_awb_ref_cb__max_b or 
         regs_awb_ref_cr__max_r) begin
  viv_s0            = {1'b0,meas_data[15:8]} - regs_awb_ref_cb__max_b;
  viv_s1            = {1'b0,meas_data[ 7:0]} - regs_awb_ref_cr__max_r;
  viv_s3    = {1'b0,meas_data[23:16]} - regs_awb_min_y__max_g;
  viv_s2    = {1'b0,regs_awb_max_y} - meas_data[23:16];
  viv_s4   = {viv_s0[8], viv_s0} + regs_awb_min_c;
  viv_s5   = {viv_s1[8], viv_s1} + regs_awb_min_c;
  viv_s6      = {viv_s0[8], viv_s0} + {viv_s1[8], viv_s1};
  viv_s8 = {2'b00, regs_awb_max_csum} - {viv_s6[9], viv_s6};
  viv_s7 = {viv_s6[9], viv_s6} + {2'b00, regs_awb_max_csum};
  viv_s9 =  (~viv_s2[8] | ~regs_awb_max_en)    &&
                                  ~viv_s3[8]     &&
                                  ~viv_s4[9]    &&
                                  ~viv_s5[9]    &&
                                  ~viv_s8[10] &&
                                  ~viv_s7[10];
  viv_s10 = viv_s0[8] && viv_s1[8] && viv_s3[8];
  th_val   = wnd_val                                   && 
             (regs_awb_mode != 2'b00)                  && 
             (regs_awb_meas_mode ? viv_s10 : viv_s9)  ;
end
endmodule
