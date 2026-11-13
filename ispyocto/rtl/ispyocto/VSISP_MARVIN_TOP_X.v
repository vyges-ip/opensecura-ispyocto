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

module VSISP_MARVIN_TOP_X
  (
   clk,            
   reset_n,        
   sclk,           
   s_hclk,         
   m_hclk,         
   axi_m1_marvin_awvalid,
   axi_m1_marvin_awaddr,
   axi_m1_marvin_awlen,
   axi_m1_marvin_awsize,
   axi_m1_marvin_awburst,
   axi_m1_marvin_awlock,
   axi_m1_marvin_awcache,
   axi_m1_marvin_awprot,
   axi_m1_marvin_awid,
   axi_m1_marvin_awready,
   axi_m1_marvin_wvalid,
   axi_m1_marvin_wlast,
   axi_m1_marvin_wdata,
   axi_m1_marvin_wstrb,
   axi_m1_marvin_wid,
   axi_m1_marvin_wready,
   axi_m1_marvin_bvalid,
   axi_m1_marvin_bresp,
   axi_m1_marvin_bid,
   axi_m1_marvin_bready,
   axi_m2_marvin_awvalid,
   axi_m2_marvin_awaddr,
   axi_m2_marvin_awlen,
   axi_m2_marvin_awsize,
   axi_m2_marvin_awburst,
   axi_m2_marvin_awlock,
   axi_m2_marvin_awcache,
   axi_m2_marvin_awprot,
   axi_m2_marvin_awid,
   axi_m2_marvin_awready,
   axi_m2_marvin_wvalid,
   axi_m2_marvin_wlast,
   axi_m2_marvin_wdata,
   axi_m2_marvin_wstrb,
   axi_m2_marvin_wid,
   axi_m2_marvin_wready,
   axi_m2_marvin_bvalid,
   axi_m2_marvin_bresp,
   axi_m2_marvin_bid,
   axi_m2_marvin_bready,
   hsel_s,
   haddr_s,
   htrans_s,
   hwrite_s,
   hwdata_s,
   hrdata_s,
   hresp_s,
   hready_s,
   s_data,
   s_hsync,
   s_vsync,
   s_valid,
   disable_isp,
   scan_mode,       
   mi_irq,          
   isp_irq,         
   out_y_r_frame_start,
   out_y_r_frame_end, 
   out_y_r_line_start,
   out_y_r_line_end,
   out_cb_g_frame_start,
   out_cb_g_frame_end,
   out_cb_g_line_start,
   out_cb_g_line_end,
   out_cr_b_frame_start,
   out_cr_b_frame_end,
   out_cr_b_line_start,
   out_cr_b_line_end,
   out_y_r_ack_stream,
   out_cb_g_ack_stream,
   out_cr_b_ack_stream,
   out_y_r_val_stream,
   out_y_r_data_stream,
   out_cb_g_val_stream,
   out_cb_g_data_stream,
   out_cr_b_val_stream,
   out_cr_b_data_stream
   );
`include "vsisp_marvin_id.vh"
`include "vsisp_isp.vh"
`include "vsisp_ram_sizes.vh"
   input     clk;      
   input     reset_n;  
   input     sclk;     
   input     s_hclk;   
   input     m_hclk;   
   output        axi_m1_marvin_awvalid;  
   output [31:3] axi_m1_marvin_awaddr;   
   output [3:0]  axi_m1_marvin_awlen;    
   output [2:0]  axi_m1_marvin_awsize;
   output [1:0]  axi_m1_marvin_awburst;
   output [1:0]  axi_m1_marvin_awlock;
   output [3:0]  axi_m1_marvin_awcache;
   output [2:0]  axi_m1_marvin_awprot;
   output [3:0]  axi_m1_marvin_awid;
   input         axi_m1_marvin_awready;  
   output        axi_m1_marvin_wvalid;
   output        axi_m1_marvin_wlast;
   output [63:0] axi_m1_marvin_wdata;
   output [7:0]  axi_m1_marvin_wstrb;
   output [3:0]  axi_m1_marvin_wid;
   input         axi_m1_marvin_wready;   
   input         axi_m1_marvin_bvalid;
   input [1:0]   axi_m1_marvin_bresp;
   input [3:0]   axi_m1_marvin_bid;
   output        axi_m1_marvin_bready;
   output        axi_m2_marvin_awvalid;  
   output [31:3] axi_m2_marvin_awaddr;   
   output [3:0]  axi_m2_marvin_awlen;    
   output [2:0]  axi_m2_marvin_awsize;
   output [1:0]  axi_m2_marvin_awburst;
   output [1:0]  axi_m2_marvin_awlock;
   output [3:0]  axi_m2_marvin_awcache;
   output [2:0]  axi_m2_marvin_awprot;
   output [3:0]  axi_m2_marvin_awid;
   input         axi_m2_marvin_awready;  
   output        axi_m2_marvin_wvalid;
   output        axi_m2_marvin_wlast;
   output [63:0] axi_m2_marvin_wdata;
   output [7:0]  axi_m2_marvin_wstrb;
   output [3:0]  axi_m2_marvin_wid;
   input         axi_m2_marvin_wready;   
   input         axi_m2_marvin_bvalid;
   input [1:0]   axi_m2_marvin_bresp;
   input [3:0]   axi_m2_marvin_bid;
   output        axi_m2_marvin_bready;
   wire         axi_rd_marvin_arvalid;  
   wire  [31:3] axi_rd_marvin_araddr;   
   wire  [3:0]  axi_rd_marvin_arlen;    
   wire  [2:0]  axi_rd_marvin_arsize;
   wire  [1:0]  axi_rd_marvin_arburst;
   wire  [1:0]  axi_rd_marvin_arlock;
   wire  [3:0]  axi_rd_marvin_arcache;
   wire  [2:0]  axi_rd_marvin_arprot;
   wire  [3:0]  axi_rd_marvin_arid;
   wire         axi_rd_marvin_arready;  
   wire         axi_rd_marvin_rvalid;
   wire         axi_rd_marvin_rlast;   
   wire [63:0]  axi_rd_marvin_rdata;   
   wire [1:0]   axi_rd_marvin_rresp;
   wire [3:0]   axi_rd_marvin_rid;
   wire         axi_rd_marvin_rready;
   input         hsel_s;
   input [31:0]  haddr_s;
   input [1:0]   htrans_s;
   input         hwrite_s;
   input [31:0]  hwdata_s;
   output [31:0] hrdata_s;
   output [1:0]  hresp_s;
   output        hready_s;
   input [11:0]  s_data;           
   input         s_hsync;          
   input         s_vsync;          
   input         s_valid;
   input         disable_isp;
   input         scan_mode;     
   output        mi_irq;        
   output        isp_irq;       
   output  out_y_r_frame_start;
   output  out_y_r_frame_end;
   output  out_y_r_line_start;
   output  out_y_r_line_end;
   output  out_cb_g_frame_start;
   output  out_cb_g_frame_end;
   output  out_cb_g_line_start;
   output  out_cb_g_line_end;
   output  out_cr_b_frame_start;
   output  out_cr_b_frame_end;
   output  out_cr_b_line_start;
   output  out_cr_b_line_end;
   output         out_y_r_val_stream;      
   output wire [ 7: 0] out_y_r_data_stream;     
   output         out_cb_g_val_stream;     
   output wire [ 7: 0] out_cb_g_data_stream;    
   output         out_cr_b_val_stream;     
   output wire [ 7: 0] out_cr_b_data_stream;    
  input out_y_r_ack_stream;
  input out_cb_g_ack_stream;
  input out_cr_b_ack_stream;
   wire                      isp_fifo_ram_clk;
   wire                      isp_fifo_cs_n;
   wire                      isp_fifo_wr_n;
   wire   [c_ispfifo_aw-1:0] isp_fifo_addr;
   wire   [c_ispfifo_dw-1:0] isp_fifo_wdata;
   wire   [c_ispfifo_dw-1:0] isp_fifo_rdata;
   wire   isp_rgb_ram_clk; 
   wire   [c_aw_dem_mem-1:0] isp_ispram_addr;
   wire   [c_dw_dem_mem-1:0] isp_ispram_wdata;
   wire   [c_dw_dem_mem-1:0] isp_ispram_rdata;
   wire                     isp_ispram_wr_n;
   wire                     isp_ispram_cs_n;
    wire         rszm_mram_clk;
    wire         rszm_mramy_wr_n;
    wire         rszm_mramy_cs_n;
    wire  [c_aw_mrsz-1:0] rszm_mramy_addr;
    wire  [31:0] rszm_mramy_wdata;
    wire  [31:0] rszm_mramy_rdata; 
    wire         rszm_mramc_wr_n;
    wire         rszm_mramc_cs_n;
    wire  [c_aw_mrsz-1:0] rszm_mramc_addr;
    wire  [31:0] rszm_mramc_wdata;
    wire  [31:0] rszm_mramc_rdata; 
    wire                    rszs_sram_clk;
    wire                    rszs_sramy_wr_n;
    wire                    rszs_sramy_cs_n;
    wire  [c_aw_srsz-1:0]   rszs_sramy_addr;
    wire  [31:0]            rszs_sramy_wdata;
    wire  [31:0]            rszs_sramy_rdata; 
    wire                    rszs_sramc_wr_n;
    wire                    rszs_sramc_cs_n;
    wire  [c_aw_srsz-1:0]   rszs_sramc_addr;
    wire  [31:0]            rszs_sramc_wdata;
    wire  [31:0]            rszs_sramc_rdata; 
   wire [65:0]  mp_y_fifo_sram_wdata  ;
   wire [65:0]  mp_y_fifo_sram_rdata  ;
   wire [ c_mi_mp_y_aw -1:0]  mp_y_fifo_sram_addr   ;
   wire         mp_y_fifo_sram_cs_n   ;
   wire         mp_y_fifo_sram_we_n   ;
   wire [65:0]  mp_cb_fifo_sram_wdata ;
   wire [65:0]  mp_cb_fifo_sram_rdata ;
   wire [ c_mi_mp_c_aw -1:0]  mp_cb_fifo_sram_addr  ;
   wire         mp_cb_fifo_sram_cs_n  ;
   wire         mp_cb_fifo_sram_we_n  ;
   wire [65:0]  mp_cr_fifo_sram_wdata ;
   wire [65:0]  mp_cr_fifo_sram_rdata ;
   wire [ c_mi_mp_c_aw- 1:0]  mp_cr_fifo_sram_addr  ;
   wire         mp_cr_fifo_sram_cs_n  ;
   wire         mp_cr_fifo_sram_we_n  ;
   vsisp_marvin_top_a u_marvin_top_a_0 (
   .clk                     (clk        ), 
   .reset_n                 (reset_n    ),        
   .sclk                    (sclk     ),         
   .s_hclk                  (s_hclk     ),         
   .m_hclk                  (m_hclk     ),         
   .scan_mode                (scan_mode                ),
   .regs_disable_isp_clk    (regs_disable_isp_clk),
   .axi_m1_marvin_awvalid  (axi_m1_marvin_awvalid),
   .axi_m1_marvin_awaddr   (axi_m1_marvin_awaddr ),
   .axi_m1_marvin_awlen    (axi_m1_marvin_awlen  ),
   .axi_m1_marvin_awsize   (axi_m1_marvin_awsize ),
   .axi_m1_marvin_awburst  (axi_m1_marvin_awburst),
   .axi_m1_marvin_awlock   (axi_m1_marvin_awlock ),
   .axi_m1_marvin_awcache  (axi_m1_marvin_awcache),
   .axi_m1_marvin_awprot   (axi_m1_marvin_awprot ),
   .axi_m1_marvin_awid     (axi_m1_marvin_awid   ),
   .axi_m1_marvin_awready  (axi_m1_marvin_awready),
   .axi_m1_marvin_wvalid   (axi_m1_marvin_wvalid),
   .axi_m1_marvin_wlast    (axi_m1_marvin_wlast ),
   .axi_m1_marvin_wdata    (axi_m1_marvin_wdata ),
   .axi_m1_marvin_wstrb    (axi_m1_marvin_wstrb ),
   .axi_m1_marvin_wid      (axi_m1_marvin_wid   ),
   .axi_m1_marvin_wready   (axi_m1_marvin_wready),
   .axi_m1_marvin_bvalid   (axi_m1_marvin_bvalid),
   .axi_m1_marvin_bresp    (axi_m1_marvin_bresp ),
   .axi_m1_marvin_bid      (axi_m1_marvin_bid   ),
   .axi_m1_marvin_bready   (axi_m1_marvin_bready), 
   .axi_m2_marvin_awvalid  (axi_m2_marvin_awvalid),
   .axi_m2_marvin_awaddr   (axi_m2_marvin_awaddr ),
   .axi_m2_marvin_awlen    (axi_m2_marvin_awlen  ),
   .axi_m2_marvin_awsize   (axi_m2_marvin_awsize ),
   .axi_m2_marvin_awburst  (axi_m2_marvin_awburst),
   .axi_m2_marvin_awlock   (axi_m2_marvin_awlock ),
   .axi_m2_marvin_awcache  (axi_m2_marvin_awcache),
   .axi_m2_marvin_awprot   (axi_m2_marvin_awprot ),
   .axi_m2_marvin_awid     (axi_m2_marvin_awid   ),
   .axi_m2_marvin_awready  (axi_m2_marvin_awready),
   .axi_m2_marvin_wvalid   (axi_m2_marvin_wvalid),
   .axi_m2_marvin_wlast    (axi_m2_marvin_wlast ),
   .axi_m2_marvin_wdata    (axi_m2_marvin_wdata ),
   .axi_m2_marvin_wstrb    (axi_m2_marvin_wstrb ),
   .axi_m2_marvin_wid      (axi_m2_marvin_wid   ),
   .axi_m2_marvin_wready   (axi_m2_marvin_wready),
   .axi_m2_marvin_bvalid   (axi_m2_marvin_bvalid),
   .axi_m2_marvin_bresp    (axi_m2_marvin_bresp ),
   .axi_m2_marvin_bid      (axi_m2_marvin_bid   ),
   .axi_m2_marvin_bready   (axi_m2_marvin_bready), 
   .hsel_s              (hsel_s    ),
   .haddr_s             (haddr_s   ),
   .htrans_s            (htrans_s  ),
   .hwrite_s            (hwrite_s  ),
   .hwdata_s            (hwdata_s  ),
   .hrdata_s            (hrdata_s  ),
   .hresp_s             (hresp_s   ),
   .hready_s            (hready_s  ),
   .s_data             (s_data),
   .s_hsync            (s_hsync),
   .s_vsync            (s_vsync),
   .s_valid            (s_valid),
   .disable_isp         (disable_isp ),
   .mi_irq              (mi_irq),          
   .isp_irq             (isp_irq),         
    .isp_fifo_ram_clk              (isp_fifo_ram_clk),           
    .isp_fifo_cs_n                 (isp_fifo_cs_n),              
    .isp_fifo_wr_n                 (isp_fifo_wr_n),              
    .isp_fifo_addr                 (isp_fifo_addr),              
    .isp_fifo_wdata                (isp_fifo_wdata),             
    .isp_fifo_rdata                (isp_fifo_rdata),             
    .isp_rgb_ram_clk               (isp_rgb_ram_clk),            
    .isp_ispram_addr               (isp_ispram_addr),            
    .isp_ispram_wdata              (isp_ispram_wdata),           
    .isp_ispram_rdata              (isp_ispram_rdata),           
    .isp_ispram_wr_n               (isp_ispram_wr_n),            
    .isp_ispram_cs_n               (isp_ispram_cs_n),            
    .rszm_mram_clk                 (rszm_mram_clk),              
    .rszm_mramy_wr_n               (rszm_mramy_wr_n),            
    .rszm_mramy_cs_n               (rszm_mramy_cs_n),            
    .rszm_mramy_addr               (rszm_mramy_addr),            
    .rszm_mramy_wdata              (rszm_mramy_wdata),           
    .rszm_mramy_rdata              (rszm_mramy_rdata),           
    .rszm_mramc_wr_n               (rszm_mramc_wr_n),            
    .rszm_mramc_cs_n               (rszm_mramc_cs_n),            
    .rszm_mramc_addr               (rszm_mramc_addr),            
    .rszm_mramc_wdata              (rszm_mramc_wdata),           
    .rszm_mramc_rdata              (rszm_mramc_rdata),           
    .mp_y_fifo_sram_wdata          (mp_y_fifo_sram_wdata   ),
    .mp_y_fifo_sram_rdata          (mp_y_fifo_sram_rdata   ),
    .mp_y_fifo_sram_addr           (mp_y_fifo_sram_addr    ),
    .mp_y_fifo_sram_cs_n           (mp_y_fifo_sram_cs_n    ),
    .mp_y_fifo_sram_we_n           (mp_y_fifo_sram_we_n    ),
    .mp_cb_fifo_sram_wdata         (mp_cb_fifo_sram_wdata  ),
    .mp_cb_fifo_sram_rdata         (mp_cb_fifo_sram_rdata  ),
    .mp_cb_fifo_sram_addr          (mp_cb_fifo_sram_addr   ),
    .mp_cb_fifo_sram_cs_n          (mp_cb_fifo_sram_cs_n   ),
    .mp_cb_fifo_sram_we_n          (mp_cb_fifo_sram_we_n   ),
    .mp_cr_fifo_sram_wdata         (mp_cr_fifo_sram_wdata  ),
    .mp_cr_fifo_sram_rdata         (mp_cr_fifo_sram_rdata  ),
    .mp_cr_fifo_sram_addr          (mp_cr_fifo_sram_addr   ),
    .mp_cr_fifo_sram_cs_n          (mp_cr_fifo_sram_cs_n   ),
    .mp_cr_fifo_sram_we_n          (mp_cr_fifo_sram_we_n   ),
  .rszs_sram_clk     ( rszs_sram_clk    )          ,    
  .rszs_sramy_wr_n   ( rszs_sramy_wr_n  )          ,  
  .rszs_sramy_cs_n   ( rszs_sramy_cs_n  )          ,  
  .rszs_sramy_addr   ( rszs_sramy_addr  )          ,  
  .rszs_sramy_wdata  ( rszs_sramy_wdata )          , 
  .rszs_sramy_rdata  ( rszs_sramy_rdata )          , 
  .rszs_sramc_wr_n   ( rszs_sramc_wr_n  )          ,  
  .rszs_sramc_cs_n   ( rszs_sramc_cs_n  )          ,  
  .rszs_sramc_addr   ( rszs_sramc_addr  )          ,  
  .rszs_sramc_wdata  ( rszs_sramc_wdata )          , 
  .rszs_sramc_rdata  ( rszs_sramc_rdata )          , 
           .out_y_r_val_stream       (out_y_r_val_stream),
           .out_y_r_data_stream      (out_y_r_data_stream),
           .out_cb_g_val_stream      (out_cb_g_val_stream),
           .out_cb_g_data_stream     (out_cb_g_data_stream),
           .out_cr_b_val_stream      (out_cr_b_val_stream),
           .out_cr_b_data_stream     (out_cr_b_data_stream),
	   .out_y_r_ack_stream(out_y_r_ack_stream),
           .out_cb_g_ack_stream(out_cb_g_ack_stream),
           .out_cr_b_ack_stream(out_cr_b_ack_stream),
           .out_y_r_frame_start  (out_y_r_frame_start),
           .out_y_r_frame_end    (out_y_r_frame_end),
           .out_y_r_line_start   (out_y_r_line_start),     
           .out_y_r_line_end     (out_y_r_line_end),
           .out_cb_g_frame_start (out_cb_g_frame_start),
           .out_cb_g_frame_end   (out_cb_g_frame_end),
           .out_cb_g_line_start  (out_cb_g_line_start),
           .out_cb_g_line_end    (out_cb_g_line_end),
           .out_cr_b_frame_start (out_cr_b_frame_start),
           .out_cr_b_frame_end   (out_cr_b_frame_end),
           .out_cr_b_line_start  (out_cr_b_line_start),
           .out_cr_b_line_end    (out_cr_b_line_end)
   );
  vsisp_vs_marvin_ramshell u_marvin_ramshell
    (
	.reset_		           (reset_n),
	.scan_mode                 (scan_mode ),
        .regs_disable_isp_clk      (regs_disable_isp_clk),
    .isp_fifo_ram_clk              (isp_fifo_ram_clk),           
    .isp_fifo_cs_n                 (isp_fifo_cs_n),              
    .isp_fifo_wr_n                 (isp_fifo_wr_n),              
    .isp_fifo_addr                 (isp_fifo_addr),              
    .isp_fifo_wdata                (isp_fifo_wdata),             
    .isp_fifo_rdata                (isp_fifo_rdata),             
    .isp_rgb_ram_clk               (isp_rgb_ram_clk),            
    .isp_ispram_addr               (isp_ispram_addr),            
    .isp_ispram_wdata              (isp_ispram_wdata),           
    .isp_ispram_rdata              (isp_ispram_rdata),           
    .isp_ispram_wr_n               (isp_ispram_wr_n),            
    .isp_ispram_cs_n               (isp_ispram_cs_n),            
    .rszm_mram_clk                 (rszm_mram_clk),              
    .rszm_mramy_wr_n               (rszm_mramy_wr_n),            
    .rszm_mramy_cs_n               (rszm_mramy_cs_n),            
    .rszm_mramy_addr               (rszm_mramy_addr),            
    .rszm_mramy_wdata              (rszm_mramy_wdata),           
    .rszm_mramy_rdata              (rszm_mramy_rdata),           
    .rszm_mramc_wr_n               (rszm_mramc_wr_n),            
    .rszm_mramc_cs_n               (rszm_mramc_cs_n),            
    .rszm_mramc_addr               (rszm_mramc_addr),            
    .rszm_mramc_wdata              (rszm_mramc_wdata),           
    .rszm_mramc_rdata              (rszm_mramc_rdata),           
    .rszs_sram_clk                 (rszs_sram_clk),              
    .rszs_sramy_wr_n               (rszs_sramy_wr_n),            
    .rszs_sramy_cs_n               (rszs_sramy_cs_n),            
    .rszs_sramy_addr               (rszs_sramy_addr),            
    .rszs_sramy_wdata              (rszs_sramy_wdata),           
    .rszs_sramy_rdata              (rszs_sramy_rdata),           
    .rszs_sramc_wr_n               (rszs_sramc_wr_n),            
    .rszs_sramc_cs_n               (rszs_sramc_cs_n),            
    .rszs_sramc_addr               (rszs_sramc_addr),            
    .rszs_sramc_wdata              (rszs_sramc_wdata),           
    .rszs_sramc_rdata              (rszs_sramc_rdata),           
    .mp_y_fifo_sram_wdata          (mp_y_fifo_sram_wdata   ),
    .mp_y_fifo_sram_rdata          (mp_y_fifo_sram_rdata   ),
    .mp_y_fifo_sram_addr           (mp_y_fifo_sram_addr    ),
    .mp_y_fifo_sram_cs_n           (mp_y_fifo_sram_cs_n    ),
    .mp_y_fifo_sram_we_n           (mp_y_fifo_sram_we_n    ),
    .mp_cb_fifo_sram_wdata         (mp_cb_fifo_sram_wdata  ),
    .mp_cb_fifo_sram_rdata         (mp_cb_fifo_sram_rdata  ),
    .mp_cb_fifo_sram_addr          (mp_cb_fifo_sram_addr   ),
    .mp_cb_fifo_sram_cs_n          (mp_cb_fifo_sram_cs_n   ),
    .mp_cb_fifo_sram_we_n          (mp_cb_fifo_sram_we_n   ),
    .mp_cr_fifo_sram_wdata         (mp_cr_fifo_sram_wdata  ),
    .mp_cr_fifo_sram_rdata         (mp_cr_fifo_sram_rdata  ),
    .mp_cr_fifo_sram_addr          (mp_cr_fifo_sram_addr   ),
    .mp_cr_fifo_sram_cs_n          (mp_cr_fifo_sram_cs_n   ),
    .mp_cr_fifo_sram_we_n          (mp_cr_fifo_sram_we_n   )
    );
endmodule
