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

module vsisp_isp_bls_subtr 
  (
   clk, 
   reset_n, 
   soft_rst,
   bayer_pat_diff,
   in_data, 
   in_h_end, 
   in_v_end,
   in_val,
   in_ack,
   out_data, 
   out_h_end, 
   out_v_end,
   out_val,
   out_ack, 
   bls_en,
   bls_mode,
   bls_a_fixed,
   bls_b_fixed,
   bls_c_fixed,
   bls_d_fixed,
   bls_a_measured,
   bls_b_measured,
   bls_c_measured,
   bls_d_measured
   );
`include "vsisp_isp.vh"   
   input               clk;                     
   input               reset_n;                 
   input               soft_rst;                
   input [1:0]         bayer_pat_diff;
   input [c_dw_si-1:0] in_data;                 
   input               in_h_end;                
   input               in_v_end;                
   input               in_val;                  
   output              in_ack;                  
  output [c_dw_si-1:0] out_data;                
  output               out_h_end;               
  output               out_v_end;               
  output               out_val;                 
  input                out_ack;                 
  input                bls_en;                  
  input                bls_mode;                
  input [c_dw_si:0]    bls_a_fixed;             
  input [c_dw_si:0]    bls_b_fixed;             
  input [c_dw_si:0]    bls_c_fixed;             
  input [c_dw_si:0]    bls_d_fixed;             
  input [c_dw_si-1:0]  bls_a_measured;          
  input [c_dw_si-1:0]  bls_b_measured;          
  input [c_dw_si-1:0]  bls_c_measured;          
  input [c_dw_si-1:0]  bls_d_measured;          
  reg [c_dw_si-1:0]  out_data;                
  reg                out_h_end;
  reg                out_v_end;
  reg                viv_s0;     
  wire               viv_s1;             
  wire [c_dw_si-1:0] viv_s2;            
  wire               viv_s3;
  wire               viv_s4;
  wire               viv_s5;
  wire [c_dw_si+1:0] viv_s6;             
  wire [c_dw_si-1:0] viv_s7;            
  wire [2:0]         viv_s8;              
  reg  [c_dw_si:0]   viv_s9;             
  reg                viv_s10;             
  reg                viv_s11;             
  wire               viv_s12;
  wire               out_val;
  reg                viv_s13;
  reg   [1:0]        viv_s14;
  assign viv_s12 = (in_val && in_ack);
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin  
      viv_s13     <= 1'b0;
      viv_s14 <= 2'd0;
      viv_s10                <= 1'b0;
      viv_s11                <= 1'b0;
    end
    else begin                          
      if (out_v_end && out_h_end && out_val || soft_rst) begin
        viv_s13  <= 1'b0;    
      end else if (viv_s12) begin   
        viv_s13  <= 1'b1;    
      end
      if (~viv_s13) begin
        viv_s14 <= bayer_pat_diff;
      end
      if (soft_rst) begin               
        viv_s10            <= 1'b0;
        viv_s11            <= 1'b0;
      end else if (viv_s12) begin      
        if (in_h_end) begin             
          viv_s10 <= 1'b0;
          if(in_v_end) begin            
            viv_s11 <= 1'b0;
          end else begin
            viv_s11 <= ~viv_s11;
          end
        end else begin
          viv_s10 <= ~viv_s10;
        end  
      end 
    end      
  end  
  assign viv_s8[0] = viv_s10 ^ viv_s14[0];
  assign viv_s8[1] = viv_s11 ^ viv_s14[1];
  assign viv_s8[2] = bls_mode;
  always @(*) begin
    case (viv_s8)
      3'd0:    viv_s9 = bls_a_fixed;
      3'd1:    viv_s9 = bls_b_fixed;
      3'd2:    viv_s9 = bls_c_fixed;
      3'd3:    viv_s9 = bls_d_fixed;
      3'd4:    viv_s9 = {1'b0, bls_a_measured};
      3'd5:    viv_s9 = {1'b0, bls_b_measured};
      3'd6:    viv_s9 = {1'b0, bls_c_measured};
      default: viv_s9 = {1'b0, bls_d_measured};
    endcase  
  end
  assign viv_s5 = in_val;
  assign viv_s3 = in_h_end;
  assign viv_s4 = in_v_end;
  assign viv_s6  = {2'b0, in_data} - {viv_s9[c_dw_si], viv_s9};
  assign viv_s7 = (viv_s6[c_dw_si+1]) ? {c_dw_si{1'b0}} : 
                    (viv_s6[c_dw_si])   ? {c_dw_si{1'b1}} : 
                     viv_s6[c_dw_si-1:0];
  assign viv_s2 = bls_en ? viv_s7 : in_data;
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      out_data           <= {c_dw_si{1'b0}};
      out_v_end          <= 1'b0;
      out_h_end          <= 1'b0;
      viv_s0 <= 1'b0;
    end
    else begin 
      if (soft_rst) begin
        viv_s0 <= 1'b0;
        out_v_end          <= 1'b0;
        out_h_end          <= 1'b0;
      end
      else begin
        if (viv_s1) begin
          viv_s0 <= viv_s5;
          out_data           <= viv_s2;
          out_h_end          <= viv_s3;
          out_v_end          <= viv_s4;
        end
      end
    end
  end
  assign viv_s1 = out_ack || (~viv_s0);
  assign in_ack     = viv_s1;
  assign out_val    = viv_s0;
endmodule
