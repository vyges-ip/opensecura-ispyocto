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

module vsisp_self_rsz_dpsbe 
  (clk, 
   reset_n,
   soft_rst, 
   in_pix_data, 
   in_val, 
   in_h_end, 
   in_v_end,
   in_cfg_upd,
   in_ack, 
   out_pix_data, 
   out_val, 
   out_h_end, 
   out_v_end,
   out_cfg_upd, 
   out_ack);
   input        clk; 
   input        reset_n;
   input        soft_rst;   
   input [7:0]  in_pix_data; 
   input        in_val; 
   input        in_h_end; 
   input        in_v_end;
   input        in_cfg_upd;   
   output       in_ack; 
   output [7:0] out_pix_data; 
   wire [7:0]   out_pix_data;
   output       out_val; 
   output       out_h_end; 
   output       out_v_end; 
   output       out_cfg_upd;
   input        out_ack; 
   reg [7:0]    viv_s0; 
   reg          viv_s1; 
   reg          viv_s2; 
   reg          viv_s3;
   reg          viv_s4;
   reg          viv_s5; 
   reg [7:0]    viv_s6; 
   reg          viv_s7; 
   reg          viv_s8; 
   reg          viv_s9;
   reg          viv_s10;
   reg          viv_s11; 
   always @(posedge clk or negedge reset_n)
     begin : sync_dpsbe_proc
        if (~reset_n) begin
           viv_s6 <= 8'b0; 
           viv_s7      <= 1'b0; 
           viv_s8    <= 1'b0; 
           viv_s9    <= 1'b0;
           viv_s10  <= 1'b0; 
           viv_s11       <= 1'b0; 
        end
        else begin
           if (soft_rst) begin
                viv_s7      <= 1'b0; 
                viv_s11       <= 1'b0;                 
           end else begin
                viv_s11 <= ~(~out_ack & viv_s1); 
                if (viv_s11) begin
                   viv_s6 <= in_pix_data; 
                   viv_s7      <= in_val; 
                   viv_s8    <= in_h_end; 
                   viv_s9    <= in_v_end;
                   viv_s10  <= in_cfg_upd;     
                end 
            end  
        end 
     end
   always @(*) begin : comb_dpsbe_proc
            viv_s5 = viv_s11; 
            if (viv_s11)
               begin
                  viv_s0 = in_pix_data; 
                  viv_s1      = in_val; 
                  viv_s2    = in_h_end; 
                  viv_s3    = in_v_end;
                  viv_s4  = in_cfg_upd; 
               end
            else
               begin
                  viv_s0 = viv_s6; 
                  viv_s1      = viv_s7; 
                  viv_s2    = viv_s8; 
                  viv_s3    = viv_s9;
                  viv_s4  = viv_s10;                   
               end 
   end 
   assign out_pix_data = viv_s0;
   assign out_val      = viv_s1;
   assign out_h_end    = viv_s2;
   assign out_v_end    = viv_s3;
   assign out_cfg_upd = viv_s4;
   assign in_ack       = viv_s5;
endmodule
