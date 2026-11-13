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

module vsisp_marvin_ctrl
  (
   clk,
   reset_n,
   ctrl_reset_clk_n,
   m_hclk,
   reset_m_hclk_n,
   soft_rst_marvin,    
   paddr,
   pwdata,
   prdata,
   pval,
   prd,
   pack,
   cfg_addr,
   cfg_wdata,
   cfg_rd,
   cfg_rdata_isp,
   cfg_val_isp,
   cfg_ack_isp,
   cfg_rdata_mrsz,
   cfg_val_mrsz,
   cfg_ack_mrsz,
   cfg_rdata_srsz,
   cfg_val_srsz,
   cfg_ack_srsz,
   clk_isp,
   clk_mrsz,
   clk_srsz,
   clk_mi,
   clk_cfg_isp,
   clk_cfg_mrsz,   
   clk_cfg_srsz,
   soft_rst_isp,
   soft_rst_yc,
   soft_rst_mrsz,
   soft_rst_srsz,
   soft_rst_mi,
   mi_clk_en_mhclk,
   soft_rst_mi_mhclk,
   isp_clk_en,
   test_mode
   );
   parameter c_marvin_id =  32'h00453017;
`include "vsisp_marvin_ctrl.vh"
   input          clk;             
   input          reset_n;         
   input          ctrl_reset_clk_n;
   input          m_hclk;          
   input  reset_m_hclk_n;  
   output         soft_rst_marvin; 
   input [c_paddr_word-1:0]   paddr;        
   input [c_pwdata_word-1:0]  pwdata;       
   output [c_prdata_word-1:0] prdata;       
   input                      pval;         
   input                      prd;          
   output                     pack;         
   output [c_cfg_addr_word-1:0] cfg_addr;       
   output [c_cfg_wdata_word-1:0] cfg_wdata;      
   output                        cfg_rd;         
   input [c_cfg_rdata32_word-1:0] cfg_rdata_isp;  
   output                         cfg_val_isp;    
   input                          cfg_ack_isp;    
   input [c_cfg_rdata32_word-1:0] cfg_rdata_mrsz; 
   output                         cfg_val_mrsz;   
   input                          cfg_ack_mrsz;   
   input [c_cfg_rdata32_word-1:0] cfg_rdata_srsz; 
   output                         cfg_val_srsz;   
   input                          cfg_ack_srsz;   
   output                         clk_isp;        
   output                         clk_mrsz;       
   output                         clk_srsz;       
   output                         clk_mi;         
   output                         mi_clk_en_mhclk;
   output                         soft_rst_mi_mhclk;
   output                         isp_clk_en;
   output                         clk_cfg_isp;    
   output                         clk_cfg_mrsz;   
   output                         clk_cfg_srsz;   
   output                         soft_rst_isp;   
   output                         soft_rst_yc;    
   output                         soft_rst_mrsz;  
   output                         soft_rst_srsz;  
   output                         soft_rst_mi;    
   input                          test_mode;      
   reg [c_cfg_wdata_word-1:0]     cfg_wdata;           
   reg                            cfg_rd;              
   reg [c_cfg_addr_word-1:0]      cfg_addr;            
   wire                           viv_s0;      
   wire                           viv_s1;     
   wire                           viv_s2;     
   wire                           viv_s3;            
   wire [c_prdata_word-1:0]       viv_s4;     
   wire                           viv_s5;          
   wire                           viv_s6;       
   wire                           viv_s7;        
   wire [c_prdata_word-1:0]       viv_s8;      
   wire [c_iccl_word-1:0]         viv_s9;         
   wire [c_ircl_word-1:0]         viv_s10;         
   wire                           viv_s11;   
   wire                           viv_s12;  
   wire                           viv_s13;  
   wire viv_s14;
   reg viv_s15;
   reg viv_s16;
   reg viv_s17;
   reg viv_s18;
   reg viv_s19;
   reg viv_s20;
  wire viv_s21;
   wire viv_s22;
   wire mi_clk_en_mhclk;
   wire soft_rst_mi_mhclk;
   vsisp_marvin_ctrl_pvci  #(
                       .c_marvin_id(c_marvin_id)
                       ) u_marvin_ctrl_pvci
      (
      .clk             (clk),
      .reset_n         (ctrl_reset_clk_n),
      .pval            (pval),
      .prd             (prd),
      .paddr           (paddr),
      .pwdata          (pwdata),
      .vi_iccl         (viv_s9),
      .pack_ctrl_off   (viv_s6),
      .prdata_ctrl_off (viv_s4),
      .vi_ccl_out      (viv_s5)
      );
   vsisp_marvin_ctrl_pvcidis u_marvin_ctrl_pvcidis
     (
      .clk     (viv_s3),
      .reset_n (ctrl_reset_clk_n),
      .pval    (pval),
      .prd     (prd),
      .paddr   (paddr),
      .pwdata  (pwdata),
      .cfg_rdata_isp    (cfg_rdata_isp),
      .cfg_rdata_mrsz   (cfg_rdata_mrsz),
      .cfg_rdata_srsz   (cfg_rdata_srsz),
      .cfg_ack_isp    (cfg_ack_isp),
      .cfg_ack_mrsz   (cfg_ack_mrsz),
      .cfg_ack_srsz   (cfg_ack_srsz),
      .vi_iccl_out    (viv_s9),
      .vi_ircl_out    (viv_s10),
      .pack_ctrl_on   (viv_s7),
      .prdata_ctrl_on (viv_s8),
      .cfg_val_mrsz   (cfg_val_mrsz),
      .cfg_val_srsz   (cfg_val_srsz),
      .cfg_val_isp    (cfg_val_isp)
      );
   vsisp_m4_clock_gating u_clock_gating_clk
     (
      .per_clk_i(clk),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i(!viv_s5),
      .clk_o(viv_s3)
      );
   vsisp_m4_clock_gating u_clock_gating_isp
     (
      .per_clk_i(clk),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i(viv_s9[0] & !viv_s5),
      .clk_o(clk_isp)
      );
   assign isp_clk_en = (viv_s9[0] & !viv_s5);
   vsisp_m4_clock_gating u_clock_gating_mrsz
     (
      .per_clk_i(clk),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i(viv_s9[3] & !viv_s5),
      .clk_o(clk_mrsz)
      );
   vsisp_m4_clock_gating u_clock_gating_srsz
     (
      .per_clk_i(clk),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i(viv_s9[4] & !viv_s5),
      .clk_o(clk_srsz)
      );
   vsisp_m4_clock_gating u_clock_gating_mi
     (
      .per_clk_i(clk),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i(viv_s9[6] & !viv_s5),
      .clk_o(clk_mi)
      );
   vsisp_m4_clock_gating u_cfg_clock_gating_isp
     (
      .per_clk_i(clk),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i(viv_s0 & !viv_s5),
      .clk_o(clk_cfg_isp)
      );
   vsisp_m4_clock_gating u_cfg_clock_gating_mrsz
     (
      .per_clk_i(clk),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i(viv_s1 & !viv_s5),
      .clk_o(clk_cfg_mrsz)
      );
   vsisp_m4_clock_gating u_cfg_clock_gating_srsz
     (
      .per_clk_i(clk),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i(viv_s2 & !viv_s5),
      .clk_o(clk_cfg_srsz)
      );
   assign viv_s11  = viv_s9[0];
   assign viv_s12 = viv_s9[3];
   assign viv_s13 = viv_s9[4];
   assign viv_s0   = ((c_isp_start_addr <= paddr[11:8] < c_isp_end_addr) && pval &&
                              viv_s11)  ? 1'b1 : 1'b0;
   assign viv_s1  = ((paddr[11:8]  == c_mrsz_addr) && pval &&
                              viv_s12) ? 1'b1 : 1'b0;
   assign viv_s2  = ((paddr[13:7]  == c_srsz_addr) && pval &&
                              viv_s13) ? 1'b1 : 1'b0;
   always @(posedge clk or negedge ctrl_reset_clk_n) begin
      if (!ctrl_reset_clk_n) begin
         cfg_wdata <= {c_cfg_wdata_word{1'b0}};
         cfg_rd    <= 1'b0;
         cfg_addr  <= {c_paddr_word{1'b0}};
      end
      else begin
         cfg_wdata <= pwdata[c_cfg_wdata_word-1:0];
         cfg_rd    <= prd;
         cfg_addr  <= paddr[c_paddr_word-1:0];
      end
   end
vsisp_AQSync u_aqsync_soft_rst_mi(
   .bitSync (viv_s21), 
   .clk     (m_hclk), 
   .bitIn   (viv_s10[6]), 
   .reset_  (reset_m_hclk_n) 
   );
reg  viv_s23;
   always @(posedge clk or negedge ctrl_reset_clk_n) begin
       if(~ctrl_reset_clk_n)
          viv_s23 <= 1'b0;
       else
          viv_s23 <= viv_s9[6] & !viv_s5;
   end
 vsisp_AQSync u_aqsync_iccl_mi_en(
   .bitSync (viv_s22), 
   .clk     (m_hclk), 
   .bitIn   (viv_s23), 
   .reset_  (reset_m_hclk_n) 
   );
   assign mi_clk_en_mhclk   = viv_s22;
   assign soft_rst_mi_mhclk = viv_s21;
   assign pack   = (viv_s6 || viv_s7) ? 1'b1 : 1'b0;
   assign prdata = (viv_s6) ? viv_s4 : viv_s8;
   assign soft_rst_isp    = viv_s10[0];
   assign soft_rst_yc     = viv_s10[2];
   assign soft_rst_mrsz   = viv_s10[3];
   assign soft_rst_srsz   = viv_s10[4];
   assign soft_rst_mi     = viv_s10[6];
   assign soft_rst_marvin = viv_s20;
   always @(posedge clk or negedge ctrl_reset_clk_n) begin
      if (!ctrl_reset_clk_n) begin
         viv_s15 <= 1'b0;
         viv_s16 <= 1'b0;
         viv_s17 <= 1'b0;
         viv_s18 <= 1'b0;
         viv_s19 <= 1'b0;
      end
      else begin
         viv_s15 <= viv_s14;
         viv_s16 <= viv_s15;
         viv_s17 <= viv_s16;
         viv_s18 <= viv_s17;
         viv_s19 <= viv_s18;
      end
   end
 vsisp_AQSync u_aqsync_soft_rst_marvin(
   .bitSync (viv_s14), 
   .clk     (clk), 
   .bitIn   (viv_s10[7]), 
   .reset_  (ctrl_reset_clk_n) 
   );
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s20 <= 1'b0;
      end
      else begin
         viv_s20 <= viv_s19;
      end
   end
endmodule
