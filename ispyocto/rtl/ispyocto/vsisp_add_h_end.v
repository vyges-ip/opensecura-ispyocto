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

module vsisp_add_h_end
  (
   clk,
   reset_n,
   soft_rst,
   in_c_data_i,
   in_c_h_end_i,
   in_c_v_end_i,
   in_c_cfg_upd_i,
   in_c_val_i,
   in_c_ack_o,
   out_c_data_o,
   out_c_h_end_o,
   out_c_v_end_o,
   out_c_cfg_upd_o,
   out_c_val_o,
   out_c_ack_i
   );
   parameter c_data_width = 8; 
   input     clk;      
   input     reset_n;  
   input     soft_rst;
   input [c_data_width-1:0] in_c_data_i; 
   input                    in_c_h_end_i; 
   input                    in_c_v_end_i; 
   input                    in_c_cfg_upd_i; 
   input                    in_c_val_i; 
   output                   in_c_ack_o; 
   output [c_data_width-1:0] out_c_data_o; 
   output                    out_c_h_end_o; 
   output                    out_c_v_end_o; 
   output                    out_c_cfg_upd_o; 
   output                    out_c_val_o; 
   input                     out_c_ack_i; 
   reg [10:0]                vsisp_fifo[1:0];
   reg [1:0]                 viv_s0;
   reg [1:0]                 viv_s1;
   wire [10:0]               viv_s2;
   wire [10:0]               viv_s3;
   wire                      viv_s4;
   wire                      viv_s5;
   assign in_c_ack_o = ~viv_s4 | (out_c_val_o & out_c_ack_i);
   assign out_c_data_o = viv_s2[7:0];
   assign out_c_h_end_o = viv_s2[8] || viv_s3[8];
   assign out_c_v_end_o = viv_s2[9];
   assign out_c_cfg_upd_o = viv_s2[10];
   assign out_c_val_o = viv_s4 || (~viv_s5 & viv_s2[8]);
   assign viv_s2 = vsisp_fifo[viv_s1[0]];
   assign viv_s3 = vsisp_fifo[~viv_s1[0]];
   assign viv_s4 = (viv_s1[0] == viv_s0[0]) & (viv_s1[1] == ~viv_s0[1]);
   assign viv_s5 = (viv_s1 == viv_s0);
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s0 <= 2'd0;
         viv_s1 <= 2'd0;
         vsisp_fifo[0] <= 11'd0;
         vsisp_fifo[1] <= 11'd0;
      end
      else begin
         if (soft_rst) begin
            viv_s0 <= 2'd0;
            viv_s1 <= 2'd0;
            vsisp_fifo[0] <= 11'd0;
            vsisp_fifo[1] <= 11'd0;
         end else begin
            if (in_c_val_i & in_c_ack_o) begin
               vsisp_fifo[viv_s0[0]] <= {in_c_cfg_upd_i, in_c_v_end_i, 
                                   in_c_h_end_i, in_c_data_i};
               viv_s0 <= viv_s0 + 2'd1;
            end
            if (out_c_val_o & out_c_ack_i) begin
               viv_s1 <= viv_s1 + 2'd1;
            end
         end
      end
   end
endmodule
