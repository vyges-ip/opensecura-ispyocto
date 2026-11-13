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

module vsisp_mi_jpeg_ctrl 
  (
   clk,
   reset_clk_n,
   paddr,
   pwdata,
   prdata,
   pval,
   prd,
   pack,
   cfg_addr,
   cfg_wdata,
   cfg_rd,
   cfg_rdata,
   cfg_val,
   cfg_ack,
   clk_cfg,
   clk_en,  
   test_mode
   );
   parameter c_mod_addr0     = 12'he00;
   parameter c_mod_addr1     = 12'hfec;
`include "vsisp_marvin_ctrl.vh"
   input     clk; 
   input     reset_clk_n;
   input [c_paddr_word-1:0]   paddr;          
   input [c_pwdata_word-1:0]  pwdata;         
   output [c_prdata_word-1:0] prdata;         
   input                      pval;           
   input                      prd;            
   output                     pack;           
   output [c_cfg_addr_word-1:0]  cfg_addr;       
   output [c_cfg_wdata_word-1:0] cfg_wdata;      
   output                        cfg_rd;         
   input [c_cfg_rdata32_word-1:0] cfg_rdata;   
   output                         cfg_val;     
   input                          cfg_ack;     
   input                          clk_en;   
   output                         clk_cfg;     
   input                          test_mode;   
   reg                        viv_s0;           
   reg                        viv_s1;           
   reg                        viv_s2;           
   reg [c_cfg_wdata_word-1:0] cfg_wdata;           
   reg                        cfg_rd;              
   reg [c_cfg_addr_word-1:0]  cfg_addr;            
   reg                        viv_s3;
   wire [c_prdata_word-1:0]   prdata;         
   wire                       pack;           
   wire                       viv_s4; 
   wire                       viv_s5;
   always @(posedge clk or negedge reset_clk_n) begin
      if (!reset_clk_n) begin
         viv_s0 <= 1'b0;
         viv_s1 <= 1'b0;
         viv_s2 <= 1'b0;         
         cfg_wdata <= {c_cfg_wdata_word{1'b0}};
         cfg_rd    <= 1'b0;
         cfg_addr  <= {c_paddr_word{1'b0}};    
      end 
      else begin
         viv_s0 <= pval;
         viv_s1 <= viv_s0; 
         viv_s2 <= viv_s1;      
         cfg_wdata <= pwdata[c_cfg_wdata_word-1:0];
         cfg_rd    <= prd;
         cfg_addr  <= paddr[c_paddr_word-1:0];    
      end
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if (!reset_clk_n) begin
         viv_s3 <= 1'b0;
      end
      else begin
         if (viv_s3) begin
            viv_s3 <= 1'b0;
         end
         else begin
            if (paddr[11:0] >= c_mod_addr0  && paddr[11:0] <= c_mod_addr1 ) begin
               if (pval) begin
                  if (!clk_en) begin
                     viv_s3 <= 1'b1;
                  end                         
               end 
            end
         end
      end
   end
   assign viv_s4 = pval || viv_s0 || viv_s1 || viv_s2;
   assign viv_s5    = ((paddr[11:0] >= c_mod_addr0  && paddr[11:0] <= c_mod_addr1) && 
                           (viv_s4) && clk_en) ? 1'b1 : 1'b0;
   vsisp_m4_clock_gating u_cfg_clock_gating_share
     (
      .per_clk_i        (clk),
      .pdft_scan_mode_i (test_mode),
      .gating_en_i      (viv_s5),
      .clk_o            (clk_cfg)
      );
   assign pack    = (viv_s3 || cfg_ack) ? 1'b1: 1'b0;
   assign prdata  = (viv_s3) ? c_prdata_ctrl_off : cfg_rdata;
   assign cfg_val = pval && clk_en; 
endmodule
