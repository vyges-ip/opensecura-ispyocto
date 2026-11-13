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

module vsisp_isp_awb_acc (
                    clk,
                    reset_n,
                    soft_rst,
                    in_data,
                    in_val,
                    meas_end,
                    acc_data_y,
                    acc_data_cb,
                    acc_data_cr,
                    acc_cnt,
                    acc_val);
`include "vsisp_isp.vh"   
input                         clk;          
input                         reset_n;      
input                         soft_rst;     
input   [23:0]                in_data;      
input                         in_val;       
input                         meas_end;     
output  [c_awb_acc_width-1:0] acc_data_y;   
output  [c_awb_acc_width-1:0] acc_data_cb;  
output  [c_awb_acc_width-1:0] acc_data_cr;  
output  [c_white_cnt-1:0]     acc_cnt;      
output                        acc_val;      
reg     [c_awb_acc_width-1:0] acc_data_y;
reg     [c_awb_acc_width-1:0] acc_data_cb;
reg     [c_awb_acc_width-1:0] acc_data_cr;
reg     [c_white_cnt-1:0]     acc_cnt;
reg                           acc_val;
wire    [c_awb_acc_width:0]   viv_s0;
wire    [c_awb_acc_width:0]   viv_s1;
wire    [c_awb_acc_width:0]   viv_s2;
assign viv_s0  = {1'b0,acc_data_y } + in_data[23:16];
assign viv_s1 = {1'b0,acc_data_cb} + in_data[15:8]; 
assign viv_s2 = {1'b0,acc_data_cr} + in_data[7:0];  
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         acc_data_y   <= {c_awb_acc_width{1'b0}};
         acc_data_cb  <= {c_awb_acc_width{1'b0}};
         acc_data_cr  <= {c_awb_acc_width{1'b0}};
         acc_cnt      <= {c_white_cnt{1'b0}};
         acc_val      <= 1'b0;
      end else begin
         if (soft_rst == 1'b1) begin
            acc_data_y   <= {c_awb_acc_width{1'b0}};
            acc_data_cb  <= {c_awb_acc_width{1'b0}};
            acc_data_cr  <= {c_awb_acc_width{1'b0}};
            acc_cnt      <= {c_white_cnt{1'b0}};
            acc_val      <= 1'b0;
         end else begin
            if (meas_end) begin
               acc_cnt  <= acc_cnt;
               acc_val  <= 1'b1;
            end else begin
               acc_val <= 1'b0;
               if (acc_val) begin
                  acc_data_y   <= {c_awb_acc_width{1'b0}};
                  acc_data_cb  <= {c_awb_acc_width{1'b0}};
                  acc_data_cr  <= {c_awb_acc_width{1'b0}};
                  acc_cnt      <= {c_white_cnt{1'b0}};
               end else begin
                  if (in_val) begin
                     acc_data_y  <= viv_s0[c_awb_acc_width]  ? {c_awb_acc_width{1'b1}} :
                                    viv_s0[c_awb_acc_width-1:0];
                     acc_data_cb <= viv_s1[c_awb_acc_width] ? {c_awb_acc_width{1'b1}} : 
                                    viv_s1[c_awb_acc_width-1:0];
                     acc_data_cr <= viv_s2[c_awb_acc_width] ? {c_awb_acc_width{1'b1}} :
                                    viv_s2[c_awb_acc_width-1:0];
                     acc_cnt     <= acc_cnt + 1;
                  end
               end
            end
         end
      end
   end
endmodule
