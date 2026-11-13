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

module vsisp_marvin_top_a
  (
   clk,            
   reset_n,        
   sclk,           
   s_hclk,         
   m_hclk,         
   regs_disable_isp_clk,
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
   isp_fifo_ram_clk,      
   isp_fifo_cs_n,
   isp_fifo_wr_n,
   isp_fifo_addr,
   isp_fifo_wdata,
   isp_fifo_rdata,
   isp_rgb_ram_clk,        
   isp_ispram_addr,
   isp_ispram_wdata,
   isp_ispram_rdata,
   isp_ispram_wr_n,
   isp_ispram_cs_n,
   rszm_mram_clk,    
   rszm_mramy_wr_n,  
   rszm_mramy_cs_n,  
   rszm_mramy_addr,  
   rszm_mramy_wdata, 
   rszm_mramy_rdata, 
   rszm_mramc_wr_n,  
   rszm_mramc_cs_n,  
   rszm_mramc_addr,  
   rszm_mramc_wdata, 
   rszm_mramc_rdata, 
   rszs_sram_clk,    
   rszs_sramy_wr_n,  
   rszs_sramy_cs_n,  
   rszs_sramy_addr,  
   rszs_sramy_wdata, 
   rszs_sramy_rdata, 
   rszs_sramc_wr_n,  
   rszs_sramc_cs_n,  
   rszs_sramc_addr,  
   rszs_sramc_wdata, 
   rszs_sramc_rdata, 
  mp_y_fifo_sram_wdata  ,
  mp_y_fifo_sram_rdata  ,
  mp_y_fifo_sram_addr   ,
  mp_y_fifo_sram_cs_n   ,
  mp_y_fifo_sram_we_n   ,
  mp_cb_fifo_sram_wdata ,
  mp_cb_fifo_sram_rdata ,
  mp_cb_fifo_sram_addr  ,
  mp_cb_fifo_sram_cs_n  ,
  mp_cb_fifo_sram_we_n  ,
  mp_cr_fifo_sram_wdata ,
  mp_cr_fifo_sram_rdata ,
  mp_cr_fifo_sram_addr  ,
  mp_cr_fifo_sram_cs_n  ,
  mp_cr_fifo_sram_we_n  ,
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
   parameter c_cfg_addr_word         = 32;       
   parameter c_cfg_wdata_word        = 32;       
   parameter c_cfg_rdata16_word      = 16;       
   parameter c_cfg_rdata32_word      = 32;       
   parameter c_prdata_word           = 32;       
`include "vsisp_marvin_id.vh"
`include "vsisp_isp.vh"
`include "vsisp_jpeg_r2b.vh"
`include "vsisp_ram_sizes.vh"
   input     clk;      
   input     reset_n;  
   input     sclk;     
   input     s_hclk;   
   input     m_hclk;   
   output    regs_disable_isp_clk;
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
   output                    isp_fifo_ram_clk;
   output                    isp_fifo_cs_n;
   output                    isp_fifo_wr_n;
   output [c_ispfifo_aw-1:0] isp_fifo_addr;
   output [c_ispfifo_dw-1:0] isp_fifo_wdata;
   input  [c_ispfifo_dw-1:0] isp_fifo_rdata;
   output isp_rgb_ram_clk; 
   output [c_aw_dem_mem-1:0] isp_ispram_addr;
   output [c_dw_dem_mem-1:0] isp_ispram_wdata;
   input  [c_dw_dem_mem-1:0] isp_ispram_rdata;
   output                   isp_ispram_wr_n;
   output                   isp_ispram_cs_n;
   output        rszm_mram_clk;
   output        rszm_mramy_wr_n;
   output        rszm_mramy_cs_n;
   output [c_aw_mrsz-1:0] rszm_mramy_addr;
   output [31:0] rszm_mramy_wdata;
   input  [31:0] rszm_mramy_rdata; 
   output        rszm_mramc_wr_n;
   output        rszm_mramc_cs_n;
   output [c_aw_mrsz-1:0] rszm_mramc_addr;
   output [31:0] rszm_mramc_wdata;
   input  [31:0] rszm_mramc_rdata; 
   output        rszs_sram_clk;
   output        rszs_sramy_wr_n;
   output        rszs_sramy_cs_n;
   output [c_aw_srsz-1:0] rszs_sramy_addr;
   output [31:0] rszs_sramy_wdata;
   input  [31:0] rszs_sramy_rdata; 
   output        rszs_sramc_wr_n;
   output        rszs_sramc_cs_n;
   output [c_aw_srsz-1:0] rszs_sramc_addr;
   output [31:0] rszs_sramc_wdata;
   input  [31:0] rszs_sramc_rdata; 
 output   [65:0]  mp_y_fifo_sram_wdata  ;
  input  [65:0]  mp_y_fifo_sram_rdata  ;
  output   [ c_mi_mp_y_aw-1:0]  mp_y_fifo_sram_addr   ;
  output           mp_y_fifo_sram_cs_n   ;
  output           mp_y_fifo_sram_we_n   ;
  output   [65:0]  mp_cb_fifo_sram_wdata ;
  input  [65:0]  mp_cb_fifo_sram_rdata ;
  output   [ c_mi_mp_c_aw-1:0]  mp_cb_fifo_sram_addr  ;
  output           mp_cb_fifo_sram_cs_n  ;
  output           mp_cb_fifo_sram_we_n  ;
  output   [65:0]  mp_cr_fifo_sram_wdata ;
  input  [65:0]  mp_cr_fifo_sram_rdata ;
  output   [ c_mi_mp_c_aw-1:0]  mp_cr_fifo_sram_addr  ;
  output           mp_cr_fifo_sram_cs_n  ;
  output           mp_cr_fifo_sram_we_n  ;
   wire          regs_sample_edge;
   wire [11:0]   sensor_fifo_data;
   wire          sensor_fifo_hsync;
   wire          sensor_fifo_vsync;
   wire          sensor_fifo_val;
   wire          sensor_fifo_ack;
   wire          sclk_mux_en;
   wire          sclk_n;
   wire          sclk_gated;
   wire          sclk_gated_tmp;
   wire [11:0]   if_sel_data;
   wire          if_sel_hsync;
   wire          if_sel_vsync;
   wire          if_sel_val;
   wire          if_sel_ack;
   wire          if_sel_valack;
   wire          pipeline_full;
   wire [31:0]  paddr;
   wire [31:0]  pwdata;
   wire [31:0]  prdata;
   wire         pval;
   wire         pack;
   wire         prd;
   wire [16-1:0]         isp_raw_out_data;
   wire                  isp_raw_out_h_end;
   wire                  isp_raw_out_v_end;
   wire                  isp_raw_out_val;
   wire                  isp_raw_out_cfg_upd;
   wire                  isp_raw_out_ack ;
   wire                  raw_mode;
   wire                  format_conv_ctrl;
   wire [19:0]   isp_data;
   wire          isp_val;
   wire          isp_ack;
   wire          isp_h_end;
   wire          isp_v_end;
   wire          isp_cfg_upd;
   wire [9:0]    ycsp_y_data;
   wire [9:0]    ycsp_y_s_data;
   wire          ycsp_y_val;
   wire          ycsp_y_ack;
   wire          ycsp_y_h_end;
   wire          ycsp_y_v_end;
   wire          ycsp_y_cfg_upd;
   wire [9:0]    ycsp_c_data;
   wire [9:0]    ycsp_c_s_data;
   wire          ycsp_c_val;
   wire          ycsp_c_ack;
   wire          ycsp_c_h_end;
   wire          ycsp_c_v_end;
   wire          ycsp_c_cfg_upd;
   wire [7:0]    format_conv_y_data;
   wire          format_conv_y_val;
   wire          format_conv_y_ack;
   wire          format_conv_y_in_ack;
   wire          format_conv_y_h_end;
   wire          format_conv_y_v_end;
   wire          format_conv_y_cfg_upd;
   wire [7:0]    format_conv_c_data;
   wire          format_conv_c_val;
   wire          format_conv_c_ack;
   wire          format_conv_c_in_ack;
   wire          format_conv_c_h_end;
   wire          format_conv_c_v_end;
   wire          format_conv_c_cfg_upd;
   wire [7:0]    fifo_rszm_y_data;
   wire          fifo_rszm_y_val;
   wire          fifo_rszm_y_ack;
   wire          fifo_rszm_y_h_end;
   wire          fifo_rszm_y_v_end;
   wire          fifo_rszm_y_cfg_upd;
   wire [7:0]    ycsp_spmux_y_data;
   wire          ycsp_spmux_y_val;
   wire          ycsp_spmux_y_ack;
   wire          ycsp_spmux_y_h_end;
   wire          ycsp_spmux_y_v_end;
   wire [7:0]    fifo_rszm_c_data;
   wire          fifo_rszm_c_val;
   wire          fifo_rszm_c_ack;
   wire          fifo_rszm_c_h_end;
   wire          fifo_rszm_c_v_end;
   wire          fifo_rszm_c_cfg_upd;
   wire [7:0]    ycsp_spmux_c_data;
   wire          ycsp_spmux_c_val;
   wire          ycsp_spmux_c_ack;
   wire          ycsp_spmux_c_h_end;
   wire          ycsp_spmux_c_v_end;
   wire          ycsp_rszall_cfg_upd;
   wire [7:0]    rszm_y_data;
   wire          rszm_y_val;
   wire          rszm_y_ack;
   wire          rszm_y_h_end;
   wire          rszm_y_v_end;
   wire          rszm_y_cfg_upd;
   wire [7:0]    rszm_c_data;
   wire          rszm_c_val;
   wire          rszm_c_ack;
   wire          rszm_c_h_end;
   wire          rszm_c_v_end;
   wire          rszm_c_cfg_upd;
   wire [7:0]    out_y_data;
   wire          out_y_val;
   wire          out_y_h_end;
   wire          out_y_v_end;
   wire [7:0]    out_c_data;
   wire          out_c_val;
   wire          out_c_h_end;
   wire          out_c_v_end;
   wire          out_cfg_upd;
   wire          jpeg_mi_val;
   wire [63:0]   jpeg_mi_data;
   wire          jpeg_mi_ack;
   wire [2:0]    jpeg_mi_byte_no;
   wire          jpeg_mi_end;
   wire [31:0]   isp_dp_data;
   wire          isp_dp_end;
   wire          isp_dp_val;
   wire          isp_dp_ack;
   wire [7:0]    mi_dmamux_y_data;
   wire          mi_dmamux_y_val;
   wire          mi_dmamux_y_h_end;
   wire          mi_dmamux_y_v_end;
   wire          mi_dmamux_y_cfg_upd;
   wire          mi_dmamux_y_ack;
   wire [7:0]    mi_dmamux_c_data;
   wire          mi_dmamux_c_val;
   wire          mi_dmamux_c_h_end;
   wire          mi_dmamux_c_v_end;
   wire          mi_dmamux_c_cfg_upd;
   wire          mi_dmamux_c_ack;
   wire [7:0]    dmamux_spmux_y_data;
   wire          dmamux_spmux_y_val;
   wire          dmamux_spmux_y_h_end;
   wire          dmamux_spmux_y_v_end;
   wire          dmamux_spmux_y_ack;
   wire          dmamux_spmux_y_cfg_upd;
   wire [7:0]    dmamux_spmux_c_data;
   wire          dmamux_spmux_c_val;
   wire          dmamux_spmux_c_h_end;
   wire          dmamux_spmux_c_v_end;
   wire          dmamux_spmux_c_ack;
   wire          dmamux_spmux_c_cfg_upd;
   wire [7:0]    dmamux_simp_y_data;
   wire          dmamux_simp_y_val;
   wire          dmamux_simp_y_h_end;
   wire          dmamux_simp_y_v_end;
   wire          dmamux_simp_y_ack;
   wire [7:0]    dmamux_simp_c_data;
   wire          dmamux_simp_c_val;
   wire          dmamux_simp_c_h_end;
   wire          dmamux_simp_c_v_end;
   wire          dmamux_simp_c_ack;
   wire [7:0]    dmamux_iemux_y_data;
   wire          dmamux_iemux_y_val;
   wire          dmamux_iemux_y_h_end;
   wire          dmamux_iemux_y_v_end;
   wire          dmamux_iemux_y_ack;
   wire [7:0]    dmamux_iemux_c_data;
   wire          dmamux_iemux_c_val;
   wire          dmamux_iemux_c_h_end;
   wire          dmamux_iemux_c_v_end;
   wire          dmamux_iemux_c_ack;
   wire [15:0]   dmamux_isp_data;
   wire          dmamux_isp_val;
   wire          dmamux_isp_h_end;
   wire          dmamux_isp_v_end;
   wire          dmamux_isp_ack;
   wire [7:0]    dmamux_dpmux_y_data;
   wire          dmamux_dpmux_y_val;
   wire          dmamux_dpmux_y_h_end;
   wire          dmamux_dpmux_y_v_end;
   wire          dmamux_dpmux_y_ack;
   wire          dmamux_dpmux_y_cfg_upd;
   wire [7:0]    dmamux_dpmux_c_data;
   wire          dmamux_dpmux_c_val;
   wire          dmamux_dpmux_c_h_end;
   wire          dmamux_dpmux_c_v_end;
   wire          dmamux_dpmux_c_ack;
   wire          dmamux_dpmux_c_cfg_upd;
   wire          spmux_fifo_y_val;
   wire [7:0]    spmux_fifo_y_data;
   wire          spmux_fifo_y_h_end;
   wire          spmux_fifo_y_v_end;
   wire          spmux_fifo_y_ack;
   wire          spmux_fifo_y_cfg_upd;
   wire          spmux_fifo_c_val;
   wire [7:0]    spmux_fifo_c_data;
   wire          spmux_fifo_c_h_end;
   wire          spmux_fifo_c_v_end;
   wire          spmux_fifo_c_ack;
   wire          spmux_fifo_c_cfg_upd;
   wire [7:0]    fifo_rszs_y_data;
   wire          fifo_rszs_y_val;
   wire          fifo_rszs_y_h_end;
   wire          fifo_rszs_y_v_end;
   wire          fifo_rszs_y_ack;
   wire          fifo_rszs_y_cfg_upd;
   wire [7:0]    fifo_rszs_c_data;
   wire          fifo_rszs_c_val;
   wire          fifo_rszs_c_h_end;
   wire          fifo_rszs_c_v_end;
   wire          fifo_rszs_c_ack;
   wire          fifo_rszs_c_cfg_upd;
   wire          rszs_fifo_y_val;
   wire [7:0]    rszs_fifo_y_data;
   wire          rszs_fifo_y_h_end;
   wire          rszs_fifo_y_v_end;
   wire          rszs_fifo_y_ack;
   wire          rszs_fifo_y_cfg_upd;
   wire          rszs_fifo_c_val;
   wire [7:0]    rszs_fifo_c_data;
   wire          rszs_fifo_c_h_end;
   wire          rszs_fifo_c_v_end;
   wire          rszs_fifo_c_ack;
   wire          rszs_fifo_c_cfg_upd;
   wire          fifo_mi_y_val;
   wire [7:0]    fifo_mi_y_data;
   wire          fifo_mi_y_h_end;
   wire          fifo_mi_y_v_end;
   wire          fifo_mi_y_ack;
   wire          fifo_mi_y_cfg_upd;
   wire          fifo_mi_c_val;
   wire [7:0]    fifo_mi_c_data;
   wire          fifo_mi_c_h_end;
   wire          fifo_mi_c_v_end;
   wire          fifo_mi_c_ack;
   wire          fifo_mi_c_cfg_upd;
   wire                     ahbs_ctrl_pval_all;
   wire                     ahbs_ctrl_pack_all;
   wire [c_prdata_word-1:0] ahbs_ctrl_prdata_all;
   wire                     ctrl_pval_all;
   wire                     ctrl_pack_all;
   wire [c_prdata_word-1:0] ctrl_prdata_all;
   wire                     ahbs_ctrl_pval_mi;
   wire                     ahbs_ctrl_pack_mi;
   wire [c_prdata_word-1:0] ahbs_ctrl_prdata_mi;
   wire                     ctrl_pval_mi;
   wire                     ctrl_pack_mi;
   wire [c_prdata_word-1:0] ctrl_prdata_mi;
   wire                     soft_rst_marvin;
   wire                     ctrl_reset_clk_n;
   wire                     ctrl_reset_s_hclk_n;
   wire                     ctrl_reset_sclk_n;
   wire                     ctrl_reset_m_hclk_n;
   wire [c_cfg_addr_word-1:0]  ctrl_mi_addr;
   wire                        ctrl_mi_rd;
   wire [c_cfg_wdata_word-1:0] ctrl_mi_wdata;
   wire [c_cfg_addr_word-1:0] ctrl_all_addr;
   wire                       ctrl_all_rd;
   wire [c_cfg_wdata_word-1:0] ctrl_all_wdata;
   wire [c_cfg_rdata32_word-1:0] ctrl_isp_rdata;
   wire                          ctrl_isp_val;
   wire                          ctrl_isp_ack;
   wire [c_cfg_rdata32_word-1:0] ctrl_rszm_rdata;
   wire                          ctrl_rszm_val;
   wire                          ctrl_rszm_ack;
   wire [c_cfg_rdata32_word-1:0] ctrl_rszs_rdata;
   wire                          ctrl_rszs_val;
   wire                          ctrl_rszs_ack;
   wire [c_cfg_rdata32_word-1:0] ctrl_mi_rdata;
   wire                          ctrl_mi_val;
   wire                          ctrl_mi_ack;
   wire ctrl_isp_clk;
   wire clk_isp_rgb_ram;
   wire ctrl_rszm_clk;
   wire ctrl_rszs_clk;
   wire ctrl_mi_clk;
   wire ctrl_isp_clk_cfg;
   wire ctrl_rszm_clk_cfg;
   wire ctrl_rszs_clk_cfg;
   wire ctrl_mi_m_hclk_cfg;
   wire ctrl_isp_soft_rst;
   wire ctrl_yc_soft_rst;
   wire ctrl_rszm_soft_rst;
   wire ctrl_rszs_soft_rst;
   wire ctrl_mi_soft_rst;
   wire mi_clk_en_mhclk;
   wire soft_rst_mi_mhclk;
   wire isp_clk_en;
   wire mi_mp_frame_end_int;
   wire mi_sp_frame_end_int;
   wire mi_mblk_line_int;
   wire mi_fill_mp_y_int;
   wire mi_wrap_mp_y_int;
   wire mi_wrap_mp_cb_int;
   wire mi_wrap_mp_cr_int;
   wire mi_wrap_sp_y_int;
   wire mi_wrap_sp_cb_int;
   wire mi_wrap_sp_cr_int;
   wire mi_dma_ready_int;
   wire mi_mp_handshk_int;
   wire mi_mp_handshk_sw_int;
   wire isp_hist_end_int;
   wire isp_exp_end_int;
   wire isp_fl_cap_int;
   wire isp_afm_fin_int;
   wire isp_afm_lum_of_int;
   wire isp_afm_sum_of_int;
   wire isp_sh_off_int;
   wire isp_sh_on_int;
   wire isp_fl_off_int;
   wire isp_fl_on_int;
   wire isp_h_start_int;
   wire isp_v_start_int;
   wire isp_size_err_int;
   wire isp_frame_int;
   wire isp_frame_in_int;
   wire isp_dataloss_int;
   wire isp_off_int;
   wire isp_awb_done_int;
   wire isp_vsm_done_int;
   wire        rot_en;       
   wire        rotram_cs_n;  
   wire        rotram_we_n;  
   wire [3:0]  rotram_wr_n;  
   wire [13:0] rotram_addr;  
   wire [31:0] rotram_rdata; 
   wire [31:0] rotram_wdata; 
   wire        bvci_out_m1_cmdval;
   wire [8:0]  bvci_out_m1_plen;
   wire        bvci_out_m1_eop;
   wire [31:3] bvci_out_m1_address;
   wire [63:0] bvci_out_m1_wdata;
   wire [7:0]  bvci_out_m1_be;
   wire [1:0]  bvci_out_m1_cmd;
   wire        bvci_out_m1_const;
   wire        bvci_out_m1_contig;
   wire        bvci_out_m1_wrap;
   wire        bvci_out_m1_cmdack;
   wire        bvci_out_m1_rspval;
   wire        bvci_out_m1_reop;
   wire        bvci_out_m1_rspack;
   wire        bvci_out_m2_cmdval;
   wire [8:0]  bvci_out_m2_plen;
   wire        bvci_out_m2_eop;
   wire [31:3] bvci_out_m2_address;
   wire [63:0] bvci_out_m2_wdata;
   wire [7:0]  bvci_out_m2_be;
   wire [1:0]  bvci_out_m2_cmd;
   wire        bvci_out_m2_const;
   wire        bvci_out_m2_contig;
   wire        bvci_out_m2_wrap;
   wire        bvci_out_m2_cmdack;
   wire        bvci_out_m2_rspval;
   wire        bvci_out_m2_reop;
   wire        bvci_out_m2_rspack;
   wire        bvci_in_cmdval;
   wire [31:3] bvci_in_address;
   wire [7:0]  bvci_in_be;      
   wire [1:0]  bvci_in_cmd;
   wire        bvci_in_eop;
   wire [8:0]  bvci_in_plen;
   wire        bvci_in_contig;  
   wire        bvci_in_const;   
   wire        bvci_in_wrap;    
   wire        bvci_in_rspack;  
   wire [63:0] bvci_in_rdata;
   wire        bvci_in_cmdack;
   wire        bvci_in_rspval;
   wire        bvci_in_reop;
   wire [11:0] rszm_mramy_addr_tmp;
   wire [11:0] rszm_mramc_addr_tmp;
   wire [11:0] rszs_sramy_addr_tmp;
   wire [11:0] rszs_sramc_addr_tmp;
   wire        mp_lsb_flag;
   wire [3:0]  mp_output_format;
   wire        mp_little_endian;
   wire [31:0] paddr_tmp;
   wire [31:0] pwdata_tmp;
   wire [31:0] prdata_tmp;
   wire        pval_tmp;
   wire        pack_tmp;
   wire        prd_tmp;
      wire scan_mode_src;
`ifdef FPGA
   assign scan_mode_src = 0;
`else
   assign scan_mode_src = scan_mode;
`endif
   assign isp_fifo_ram_clk = ctrl_isp_clk;
   assign isp_rgb_ram_clk  = clk_isp_rgb_ram;
   assign rszm_mram_clk    = ctrl_rszm_clk;
   assign rszs_sram_clk    = ctrl_rszs_clk;
   vsisp_ahb2pvci u_ahb2pvci_marvin (
     .hclk      (s_hclk),   
     .hreset_n  (ctrl_reset_s_hclk_n),  
     .pval      (pval),     
     .paddress  (paddr),    
     .pwdata    (pwdata),   
     .prd       (prd),      
     .pack      (pack),     
     .prdata    (prdata),   
     .hsel      (hsel_s),      
     .hrdata    (hrdata_s),    
     .haddr     (haddr_s),     
     .hwdata    (hwdata_s),    
     .hwrite    (hwrite_s),    
     .hready_in (hready_s),    
     .htrans    (htrans_s),    
     .hresp     (hresp_s),     
     .hready    (hready_s)     
   );
   vsisp_sensor_fifo u_sensor_fifo
     (
      .sclk         (sclk_gated),
      .reset_sclk_n (ctrl_reset_sclk_n),
      .mclk         (ctrl_isp_clk),
      .reset_mclk_n (ctrl_reset_clk_n),
      .s_data       (s_data),
      .s_hsync      (s_hsync),
      .s_vsync      (s_vsync),
      .s_valid      (s_valid),
      .s_fifo_data  (sensor_fifo_data),
      .s_fifo_hsync (sensor_fifo_hsync),
      .s_fifo_vsync (sensor_fifo_vsync),
      .s_fifo_val   (sensor_fifo_val),
      .s_fifo_ack   (sensor_fifo_ack),
      .s_fifo_full  ()
      );
   assign if_sel_val = sensor_fifo_val;
   assign if_sel_data = sensor_fifo_data;
   assign if_sel_hsync = sensor_fifo_hsync;
   assign if_sel_vsync = sensor_fifo_vsync;
   assign sensor_fifo_ack = if_sel_ack;
   assign pipeline_full = if_sel_val && ~if_sel_ack;
   assign if_sel_valack = if_sel_val && if_sel_ack;
   vsisp_isp #(.c_ispfifo_aw (c_ispfifo_aw)) u_isp
     (
      .clk_not_gated   (clk),              
      .clk              (ctrl_isp_clk),     
      .reset_clk_n     (ctrl_reset_clk_n), 
      .clk_isp_rgb_ram (clk_isp_rgb_ram),
      .clk_cfg      (ctrl_isp_clk_cfg),     
      .reset_cfg_n (ctrl_reset_clk_n),     
      .soft_rst    (ctrl_isp_soft_rst),    
      .s_data      (if_sel_data),  
      .s_hsync     (if_sel_hsync), 
      .s_vsync     (if_sel_vsync), 
      .s_data_val  (if_sel_valack),   
      .s_data_ack  (if_sel_ack),
      .regs_sample_edge (regs_sample_edge),
      .pipeline_full    (pipeline_full),
      .disable_isp  (disable_isp),
      .regs_disable_isp_clk (regs_disable_isp_clk),
      .isp_data    (isp_data), 
      .isp_val      (isp_val),    
      .isp_ack      (isp_ack),    
      .isp_h_end   (isp_h_end),  
      .isp_v_end   (isp_v_end),  
      .isp_cfg_upd (isp_cfg_upd),
      .raw_out_data        (isp_raw_out_data        ), 
      .raw_out_h_end       (isp_raw_out_h_end       ),  
      .raw_out_v_end       (isp_raw_out_v_end       ),  
      .raw_out_val         (isp_raw_out_val         ),
      .raw_out_cfg_upd     (isp_raw_out_cfg_upd     ),    
      .raw_out_ack         (isp_raw_out_ack         ), 
      .raw_mode            (raw_mode         ),
      .format_conv_ctrl    (format_conv_ctrl),
      .cfg_addr   (ctrl_all_addr), 
      .cfg_wdata  (ctrl_all_wdata),      
      .cfg_rdata  (ctrl_isp_rdata),      
      .cfg_rd     (ctrl_all_rd),         
      .cfg_val    (ctrl_isp_val),        
      .cfg_ack    (ctrl_isp_ack),        
      .isp_fifo_cs_n  (isp_fifo_cs_n),
      .isp_fifo_we_n  (isp_fifo_wr_n),
      .isp_fifo_addr  (isp_fifo_addr),
      .isp_fifo_wdata (isp_fifo_wdata),
      .isp_fifo_rdata (isp_fifo_rdata),
      .ispram_addr    (isp_ispram_addr),  
      .ispram_wdata   (isp_ispram_wdata), 
      .ispram_rdata   (isp_ispram_rdata), 
      .ispram_we_n    (isp_ispram_wr_n),  
      .ispram_cs_n    (isp_ispram_cs_n),  
      .isp_int_exp_end   (isp_exp_end_int),
      .isp_int_awb_done  (isp_awb_done_int),
      .isp_int_h_start   (isp_h_start_int),    
      .isp_int_v_start   (isp_v_start_int),    
      .isp_int_size_err  (isp_size_err_int), 
      .isp_int_frame_in  (isp_frame_in_int), 
      .isp_int_dataloss  (isp_dataloss_int), 
      .test_mode         (scan_mode_src),
      .isp_clk_en        (isp_clk_en)        
      );
vsisp_yc_split	#(.data_width(c_dw_do)) u_yc_split
(
	.clk            	(	ctrl_rszm_clk           ),
	.reset_n        	(	ctrl_reset_clk_n        ),
	.soft_rst       	(	ctrl_rszm_soft_rst      ),
	.cfg_chan_mode  	(	2'h3  	),
	.in_data        	(	isp_data                ),
	.in_h_end       	(	isp_h_end               ),
	.in_v_end       	(	isp_v_end               ),
	.in_cfg_upd     	(	isp_cfg_upd             ),
	.in_val         	(	isp_val                 ),
	.in_ack         	(	isp_ack                 ),
	.out_y_m_data   	(	ycsp_y_data             ),
	.out_y_m_val    	(	ycsp_y_val              ),
	.out_y_m_ack    	(	ycsp_y_ack              ),
	.out_y_m_h_end  	(	ycsp_y_h_end            ),
	.out_y_m_v_end  	(	ycsp_y_v_end            ),
	.out_c_m_data   	(	ycsp_c_data             ), 
	.out_c_m_val    	(	ycsp_c_val              ),
	.out_c_m_ack    	(	ycsp_c_ack              ),
	.out_c_m_h_end  	(	ycsp_c_h_end            ),
	.out_c_m_v_end  	(	ycsp_c_v_end            ),
	.out_y_s_data   	(	ycsp_y_s_data     	    ),
	.out_y_s_val    	(	spmux_fifo_y_val      	),
	.out_y_s_ack    	(	spmux_fifo_y_ack      	),
	.out_y_s_h_end  	(	spmux_fifo_y_h_end    	),
	.out_y_s_v_end  	(	spmux_fifo_y_v_end    	),
	.out_c_s_data   	(	ycsp_c_s_data           ),
	.out_c_s_val    	(	spmux_fifo_c_val        ),
	.out_c_s_ack    	(	spmux_fifo_c_ack        ),
	.out_c_s_h_end  	(	spmux_fifo_c_h_end      ),
	.out_c_s_v_end  	(	spmux_fifo_c_v_end      ),
	.out_cfg_upd    	(	out_cfg_upd	    ),
	.out_ext_y_data 	(		            ),
	.out_ext_y_val  	(	            	),
	.out_ext_y_ack  	(	1'b1	        ),
	.out_ext_y_h_end	(	            	),
	.out_ext_y_v_end	(	            	),
	.out_ext_c_data 	(	            	),
	.out_ext_c_val  	(	            	),
	.out_ext_c_ack  	(	 1'b1          	),
	.out_ext_c_h_end	(	            	),
	.out_ext_c_v_end	(		            )
) ;
assign ycsp_y_cfg_upd           = out_cfg_upd;
assign ycsp_c_cfg_upd           = out_cfg_upd;
assign spmux_fifo_y_cfg_upd     =  out_cfg_upd;  
assign spmux_fifo_c_cfg_upd     =  out_cfg_upd;  
assign ycsp_y_ack               = 1'b1;
assign ycsp_c_ack               = 1'b1; 
assign spmux_fifo_y_data        = ycsp_y_s_data[9:2];
assign spmux_fifo_c_data        = ycsp_c_s_data[9:2];
assign ctrl_rszm_rdata = 'b0;
assign ctrl_rszm_ack   = 'b0;
assign rszm_mramc_wr_n = 'b0;
assign rszm_mramc_cs_n = 'b0;
assign rszm_mramc_addr = 'b0;
assign rszm_mramc_wdata = 'b0;
assign rszm_mramy_wr_n = 'b0;
assign rszm_mramy_cs_n = 'b0;
assign rszm_mramy_addr = 'b0;
assign rszm_mramy_wdata = 'b0;
   wire [15:0]  isp_raw_out_data_new;
   reg          mp_lsb_flag_dly1, mp_lsb_flag_dly2;
   reg  [3:0]   mp_output_format_dly1, mp_output_format_dly2;
   reg          mp_little_endian_dly1,mp_little_endian_dly2;
   always @(posedge clk or negedge reset_n) begin
   if(!reset_n) begin
     mp_lsb_flag_dly1 <= 1'b0;
     mp_lsb_flag_dly2 <= 1'b0;
     mp_output_format_dly1 <= 4'd0;
     mp_output_format_dly2 <= 4'd0;
     mp_little_endian_dly1 <= 1'b0;
     mp_little_endian_dly2 <= 1'b0;
   end
   else begin
     mp_lsb_flag_dly1 <= mp_lsb_flag;
     mp_lsb_flag_dly2 <= mp_lsb_flag_dly1;
     mp_output_format_dly1 <= mp_output_format;
     mp_output_format_dly2 <= mp_output_format_dly1;
     mp_little_endian_dly1 <= mp_little_endian;
     mp_little_endian_dly2 <= mp_little_endian_dly1;
   end
   end
   assign isp_raw_out_data_new = mp_lsb_flag_dly2 ? ((mp_output_format_dly2 == 4'b0100) ? (isp_raw_out_data >> 4) : 
                                            (mp_output_format_dly2 == 4'b0111) ? (isp_raw_out_data >> 6) : 
                                            isp_raw_out_data ) : 
                                           isp_raw_out_data;
   wire [7:0] raw_y_data;
   wire [7:0] raw_c_data;
   wire       raw_y_ack;
   wire       raw_c_ack;
	   assign  raw_y_data     = ((mp_output_format_dly2 == 4'b0101) ? isp_raw_out_data_new [15:8] : (mp_little_endian_dly2 ? isp_raw_out_data_new [7:0] : isp_raw_out_data_new [15:8]));
           assign  raw_y_val      = isp_raw_out_val && isp_raw_out_ack ;
	   assign  raw_y_h_end    = isp_raw_out_h_end;
	   assign  raw_y_v_end    = isp_raw_out_v_end;
	   assign  raw_y_cfg_upd  = isp_raw_out_cfg_upd ;
	   assign  raw_c_data     = ((mp_output_format_dly2 == 4'b0101) ? 8'h0 : (mp_little_endian_dly2 ? isp_raw_out_data_new [15:8] : isp_raw_out_data_new [7:0]));
           assign  raw_c_val      = ((mp_output_format_dly2 == 4'b0101) ? 1'b0 : isp_raw_out_val && isp_raw_out_ack);
	   assign  raw_c_h_end    = isp_raw_out_h_end ;
	   assign  raw_c_v_end    = isp_raw_out_v_end ;
	   assign  raw_c_cfg_upd  = isp_raw_out_cfg_upd ;
	   assign  isp_raw_out_ack = (mp_output_format_dly2 == 4'b0101) ? raw_y_ack : raw_y_ack && raw_c_ack; 
    wire [7:0] raw_y_data_2to3;
    wire [7:0] raw_cb_data_2to3;
    wire [7:0] raw_cr_data_2to3;
    wire       raw_y_ack_2to3;
    wire       raw_cb_ack_2to3;
    wire       raw_cr_ack_2to3;
    vsisp_marvin_mi_2to3 u_mi_2to3
     (
      .clk                     (ctrl_mi_clk),
      .reset_n                 (ctrl_reset_clk_n),
      .soft_rst                (ctrl_mi_soft_rst),
      .in_y_val                (raw_y_val),
      .in_y_data               (raw_y_data),
      .in_y_h_end              (raw_y_h_end),
      .in_y_v_end              (raw_y_v_end),
      .in_y_cfg_upd            (raw_y_cfg_upd),
      .in_y_ack                (raw_y_ack),
      .in_c_val                (raw_c_val),
      .in_c_data               (raw_c_data),
      .in_c_h_end              (raw_c_h_end),
      .in_c_v_end              (raw_c_v_end),
      .in_c_cfg_upd            (raw_c_cfg_upd),
      .in_c_ack                (raw_c_ack),
      .out_y_val               (raw_y_val_2to3),
      .out_y_data              (raw_y_data_2to3),
      .out_y_h_end             (raw_y_h_end_2to3),
      .out_y_v_end             (raw_y_v_end_2to3),
      .out_y_cfg_update        (raw_y_cfg_upd_2to3),
      .out_y_ack               (raw_y_ack_2to3),
      .out_cb_val              (raw_cb_val_2to3),
      .out_cb_data             (raw_cb_data_2to3),
      .out_cb_h_end            (raw_cb_h_end_2to3),
      .out_cb_v_end            (raw_cb_v_end_2to3),
      .out_cb_cfg_update       (raw_cb_cfg_upd_2to3),
      .out_cb_ack              (raw_cb_ack_2to3),
      .out_cr_val              (raw_cr_val_2to3),
      .out_cr_data             (raw_cr_data_2to3),
      .out_cr_h_end            (raw_cr_h_end_2to3),
      .out_cr_v_end            (raw_cr_v_end_2to3),
      .out_cr_cfg_update       (raw_cr_cfg_upd_2to3),
      .out_cr_ack              (raw_cr_ack_2to3)
      );
   wire [7:0] fifo_dpmux_y_data;
   wire [7:0] fifo_dpmux_cb_data;
   wire [7:0] fifo_dpmux_cr_data;
   wire       fifo_dpmux_y_ack;
   wire       fifo_dpmux_cb_ack;
   wire       fifo_dpmux_cr_ack;
  assign fifo_dpmux_y_val       = raw_mode ? raw_y_val_2to3         : 'b0     ;
  assign fifo_dpmux_y_data      = raw_mode ? raw_y_data_2to3        : 'b0     ;
  assign fifo_dpmux_y_h_end     = raw_mode ? raw_y_h_end_2to3       : 'b0     ;
  assign fifo_dpmux_y_v_end     = raw_mode ? raw_y_v_end_2to3       : 'b0     ;
  assign fifo_dpmux_y_cfg_upd   = raw_mode ? raw_y_cfg_upd_2to3     : 'b0     ;
  assign fifo_dpmux_cb_val      = raw_mode ? raw_cb_val_2to3        : 'b0    ;
  assign fifo_dpmux_cb_data     = raw_mode ? raw_cb_data_2to3       : 'b0    ;
  assign fifo_dpmux_cb_h_end    = raw_mode ? raw_cb_h_end_2to3      : 'b0    ;
  assign fifo_dpmux_cb_v_end    = raw_mode ? raw_cb_v_end_2to3      : 'b0    ;
  assign fifo_dpmux_cb_cfg_upd  = raw_mode ? raw_cb_cfg_upd_2to3    : 'b0    ;
  assign fifo_dpmux_cr_val      = raw_mode ? raw_cr_val_2to3        : 'b0    ;
  assign fifo_dpmux_cr_data     = raw_mode ? raw_cr_data_2to3       : 'b0    ;
  assign fifo_dpmux_cr_h_end    = raw_mode ? raw_cr_h_end_2to3      : 'b0    ;
  assign fifo_dpmux_cr_v_end    = raw_mode ? raw_cr_v_end_2to3      : 'b0    ;
  assign fifo_dpmux_cr_cfg_upd  = raw_mode ? raw_cr_cfg_upd_2to3    : 'b0    ;
  assign raw_y_ack_2to3  = raw_mode ? fifo_dpmux_y_ack : 1'b1;
  assign raw_cb_ack_2to3 = raw_mode ? fifo_dpmux_cb_ack : 1'b1;
  assign raw_cr_ack_2to3 = raw_mode ? fifo_dpmux_cr_ack : 1'b1;
  assign rszm2mi_y_ack  = raw_mode ? 1'b1 : fifo_dpmux_y_ack;
  assign rszm2mi_cb_ack = raw_mode ? 1'b1 : fifo_dpmux_cb_ack;
  assign rszm2mi_cr_ack = raw_mode ? 1'b1 : fifo_dpmux_cr_ack;
wire mi_handshk_bresp_in;
assign mi_handshk_bresp_in = axi_m1_marvin_bvalid && (axi_m1_marvin_bresp==2'b00);
         assign      jpeg_mi_val       = 1'b0;
         assign      jpeg_mi_data      = 64'b0;
         assign      jpeg_mi_byte_no     = 3'b0;
         assign      jpeg_mi_end         = 1'b0;
   assign    isp_dp_data = 32'd0;
   assign    isp_dp_end  = 1'b0;
   assign    isp_dp_val  = 1'b0;
   assign    isp_dp_ack  = 1'b0;
wire [7:0] rszs2mi_y_data;
wire       rszs2mi_y_val;
wire       rszs2mi_y_v_end;
wire       rszs2mi_y_h_end;
wire       rszs2mi_y_cfg_upd;
wire       rszs2mi_y_ack;
wire [7:0] rszs2mi_cb_data;
wire       rszs2mi_cb_val;
wire       rszs2mi_cb_v_end;
wire       rszs2mi_cb_h_end;
wire       rszs2mi_cb_cfg_upd;
wire       rszs2mi_cb_ack; 
wire [7:0] rszs2mi_cr_data;
wire       rszs2mi_cr_val;
wire       rszs2mi_cr_v_end;
wire       rszs2mi_cr_h_end;
wire       rszs2mi_cr_cfg_upd;
wire       rszs2mi_cr_ack;
         vsisp_fifo4fe #(11) u3_fifo4fe(
                                  .clk          ( ctrl_rszs_clk       ),
                                  .reset_n      ( ctrl_reset_clk_n  ),
                                  .soft_rst     ( ctrl_rszs_soft_rst  ),
                                  .fifo_data_i ({spmux_fifo_y_h_end,
                                                 spmux_fifo_y_v_end,
                                                 spmux_fifo_y_cfg_upd,
                                                 spmux_fifo_y_data}),
                                  .fifo_val_i   (spmux_fifo_y_val),
                                  .fifo_ack_o   (spmux_fifo_y_ack),
                                  .fifo_data_o ({fifo_rszs_y_h_end,
                                                 fifo_rszs_y_v_end,
                                                 fifo_rszs_y_cfg_upd,
                                                 fifo_rszs_y_data}),
                                  .fifo_val_o   (fifo_rszs_y_val),
                                  .fifo_ack_i   (fifo_rszs_y_ack)
                                  );
         vsisp_fifo4fe #(11) u4_fifo4fe(
                                  .clk          ( ctrl_rszs_clk       ),
                                  .reset_n      ( ctrl_reset_clk_n  ),
                                  .soft_rst     ( ctrl_rszs_soft_rst  ),
                                  .fifo_data_i ({spmux_fifo_c_h_end,
                                                 spmux_fifo_c_v_end,
                                                 spmux_fifo_c_cfg_upd,
                                                 spmux_fifo_c_data}),
                                  .fifo_val_i   (spmux_fifo_c_val),
                                  .fifo_ack_o   (spmux_fifo_c_ack),
                                  .fifo_data_o ({fifo_rszs_c_h_end,
                                                 fifo_rszs_c_v_end,
                                                 fifo_rszs_c_cfg_upd,
                                                 fifo_rszs_c_data}),
                                  .fifo_val_o   (fifo_rszs_c_val),
                                  .fifo_ack_i   (fifo_rszs_c_ack)
                                  );
        vsisp_resize_conv u_self_resize
          (
           .clk            (ctrl_rszs_clk),      
           .reset_n        (ctrl_reset_clk_n),   
           .clk_cfg        (ctrl_rszs_clk_cfg),  
           .reset_cfg_n    (ctrl_reset_clk_n),   
           .soft_rst       (ctrl_rszs_soft_rst), 
           .cfg_val        (ctrl_rszs_val),        
           .cfg_addr       (ctrl_all_addr[6:2]),   
           .cfg_rd         (ctrl_all_rd),          
           .cfg_wdata      (ctrl_all_wdata[31:0]), 
           .cfg_rdata      (ctrl_rszs_rdata[31:0]),
           .cfg_ack        (ctrl_rszs_ack),        
           .in_y_pix_data  (fifo_rszs_y_data),
           .in_y_val       (fifo_rszs_y_val),
           .in_y_h_end     (fifo_rszs_y_h_end),
           .in_y_v_end     (fifo_rszs_y_v_end),
           .in_y_cfg_upd   (fifo_rszs_y_cfg_upd),
           .in_y_ack       (fifo_rszs_y_ack),
           .in_c_pix_data  (fifo_rszs_c_data),
           .in_c_val       (fifo_rszs_c_val),
           .in_c_h_end     (fifo_rszs_c_h_end),
           .in_c_v_end     (fifo_rszs_c_v_end),
           .in_c_cfg_upd   (fifo_rszs_c_cfg_upd),
           .in_c_ack       (fifo_rszs_c_ack),
           .out_y_r_data     (rszs2mi_y_data), 
           .out_y_r_val      (rszs2mi_y_val),      
           .out_y_r_h_end    (rszs2mi_y_h_end),    
           .out_y_r_v_end    (rszs2mi_y_v_end),    
           .out_y_r_cfg_upd  (rszs2mi_y_cfg_upd),  
           .out_y_r_ack      (rszs2mi_y_ack),
           .out_cb_g_data     (rszs2mi_cb_data), 
           .out_cb_g_val      (rszs2mi_cb_val),      
           .out_cb_g_h_end    (rszs2mi_cb_h_end),        
           .out_cb_g_v_end    (rszs2mi_cb_v_end),        
           .out_cb_g_cfg_upd  (rszs2mi_cb_cfg_upd),    
           .out_cb_g_ack      (rszs2mi_cb_ack),
           .out_cr_b_data     (rszs2mi_cr_data), 
           .out_cr_b_val      (rszs2mi_cr_val),      
           .out_cr_b_h_end    (rszs2mi_cr_h_end),        
           .out_cr_b_v_end    (rszs2mi_cr_v_end),        
           .out_cr_b_cfg_upd  (rszs2mi_cr_cfg_upd),    
           .out_cr_b_ack      (rszs2mi_cr_ack),
           .ram_y_wr_n     (rszs_sramy_wr_n),  
           .ram_y_cs_n     (rszs_sramy_cs_n),  
           .ram_y_addr     (rszs_sramy_addr_tmp),  
           .ram_y_wdata    (rszs_sramy_wdata), 
           .ram_y_rdata    (rszs_sramy_rdata), 
           .ram_c_wr_n     (rszs_sramc_wr_n),  
           .ram_c_cs_n     (rszs_sramc_cs_n),  
           .ram_c_addr     (rszs_sramc_addr_tmp),  
           .ram_c_wdata    (rszs_sramc_wdata), 
           .ram_c_rdata    (rszs_sramc_rdata),  
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
            assign rszs_sramy_addr  = rszs_sramy_addr_tmp[c_aw_mrsz-1:0];
            assign rszs_sramc_addr  = rszs_sramc_addr_tmp[c_aw_mrsz-1:0];
   vsisp_marvin_mi #(
               .c_rot_line_length       (c_rot_line_length),          
               .c_rot_ram_aw            (c_rot_ram_aw)                
               )
   u_marvin_mi
     (
       .isp_0_ack(1'b1),
       .bresp_in(mi_handshk_bresp_in),
       .isp_0_ready(),
       .isp_0_attr(),
      .clk                (ctrl_mi_clk          ),  
      .reset_n            (ctrl_reset_clk_n     ),  
      .soft_rst           (ctrl_mi_soft_rst     ),  
      .m_hclk             (m_hclk               ),  
      .reset_m_hclk_n     (ctrl_reset_m_hclk_n  ),  
      .m_hclk_cfg         (ctrl_mi_m_hclk_cfg   ),  
      .reset_m_hclk_cfg_n (ctrl_reset_m_hclk_n  ),  
      .soft_rst_m_hclk    (soft_rst_mi_mhclk    ),  
      .jpeg_clk           (ctrl_mi_clk          ),  
      .reset_jpeg_clk_n   (ctrl_reset_clk_n     ),  
      .test_mode          (scan_mode_src        ),  
      .mp_lsb_alignment_out(mp_lsb_flag         ),
      .mp_output_format_out(mp_output_format    ),
      .mp_little_endian_out(mp_little_endian    ),
      .cfg_mi_val       (ctrl_mi_val),        
      .cfg_mi_addr      (ctrl_mi_addr[8:2]),  
      .cfg_mi_rd        (ctrl_mi_rd),         
      .cfg_mi_wdata     (ctrl_mi_wdata),      
      .cfg_mi_rdata     (ctrl_mi_rdata),      
      .cfg_mi_ack       (ctrl_mi_ack),        
      .in_mp_y_val      (fifo_dpmux_y_val),     
      .in_mp_y_data     (fifo_dpmux_y_data),    
      .in_mp_y_h_end    (fifo_dpmux_y_h_end),   
      .in_mp_y_v_end    (fifo_dpmux_y_v_end),   
      .in_mp_y_cfg_upd  (fifo_dpmux_y_cfg_upd), 
      .in_mp_y_ack      (fifo_dpmux_y_ack),     
      .in_mp_cb_val      (fifo_dpmux_cb_val),     
      .in_mp_cb_data     (fifo_dpmux_cb_data),    
      .in_mp_cb_h_end    (fifo_dpmux_cb_h_end),   
      .in_mp_cb_v_end    (fifo_dpmux_cb_v_end),   
      .in_mp_cb_cfg_upd  (fifo_dpmux_cb_cfg_upd), 
      .in_mp_cb_ack      (fifo_dpmux_cb_ack),     
      .in_mp_cr_val      (fifo_dpmux_cr_val),     
      .in_mp_cr_data     (fifo_dpmux_cr_data),    
      .in_mp_cr_h_end    (fifo_dpmux_cr_h_end),   
      .in_mp_cr_v_end    (fifo_dpmux_cr_v_end),   
      .in_mp_cr_cfg_upd  (fifo_dpmux_cr_cfg_upd), 
      .in_mp_cr_ack      (fifo_dpmux_cr_ack),     
      .in_sp_y_val      (rszs2mi_y_val),      
      .in_sp_y_data     (rszs2mi_y_data),     
      .in_sp_y_h_end    (rszs2mi_y_h_end),    
      .in_sp_y_v_end    (rszs2mi_y_v_end),    
      .in_sp_y_cfg_upd  (rszs2mi_y_cfg_upd),  
      .in_sp_y_ack      (rszs2mi_y_ack),      
      .in_sp_cb_val      (rszs2mi_cb_val),      
      .in_sp_cb_data     (rszs2mi_cb_data),     
      .in_sp_cb_h_end    (rszs2mi_cb_h_end),    
      .in_sp_cb_v_end    (rszs2mi_cb_v_end),    
      .in_sp_cb_cfg_upd  (rszs2mi_cb_cfg_upd),  
      .in_sp_cb_ack      (rszs2mi_cb_ack),      
      .in_sp_cr_val      (rszs2mi_cr_val),      
      .in_sp_cr_data     (rszs2mi_cr_data),     
      .in_sp_cr_h_end    (rszs2mi_cr_h_end),    
      .in_sp_cr_v_end    (rszs2mi_cr_v_end),    
      .in_sp_cr_cfg_upd  (rszs2mi_cr_cfg_upd),  
      .in_sp_cr_ack      (rszs2mi_cr_ack),      
      .in_jpeg_val      (jpeg_mi_val),         
      .in_jpeg_data     ({jpeg_mi_data[ 7: 0], 
                          jpeg_mi_data[15: 8],
                          jpeg_mi_data[23:16],
                          jpeg_mi_data[31:24],
                          jpeg_mi_data[39:32],
                          jpeg_mi_data[47:40],
                          jpeg_mi_data[55:48],
                          jpeg_mi_data[63:56]}),
      .in_jpeg_end      (jpeg_mi_end),     
      .in_jpeg_byte_no  (jpeg_mi_byte_no), 
      .in_jpeg_ack      (),     
      .in_dp_data       (isp_dp_data),
      .in_dp_end        (isp_dp_end),
      .in_dp_val        (isp_dp_val),
      .in_dp_ack        (),
      .in_bp_val        (1'b0         ),       
      .in_bp_data       (16'b0        ),        
      .in_bp_h_end      (1'b0      ),         
      .in_bp_v_end      (1'b0      ),         
      .in_bp_cfg_upd    (1'b0     ),           
      .in_bp_ack        (         ),       
      .in_bp_frame_end  (1'b0 ),             
      .bayer_pat        (2'b0   ),       
      .data_mode_en     (1'b0         ),
      .vci_out_m1_cmdval  (bvci_out_m1_cmdval),
      .vci_out_m1_plen    (bvci_out_m1_plen),
      .vci_out_m1_eop     (bvci_out_m1_eop),
      .vci_out_m1_address (bvci_out_m1_address),
      .vci_out_m1_wdata   (bvci_out_m1_wdata),
      .vci_out_m1_be      (bvci_out_m1_be),
      .vci_out_m1_cmd     (bvci_out_m1_cmd),
      .vci_out_m1_const   (bvci_out_m1_const),
      .vci_out_m1_contig  (bvci_out_m1_contig),
      .vci_out_m1_wrap    (bvci_out_m1_wrap),
      .vci_out_m1_cmdack  (bvci_out_m1_cmdack),
      .vci_out_m1_rspval  (bvci_out_m1_rspval),
      .vci_out_m1_reop    (bvci_out_m1_reop),
      .vci_out_m1_rspack  (bvci_out_m1_rspack),
      .vci_out_m2_cmdval  (bvci_out_m2_cmdval),
      .vci_out_m2_plen    (bvci_out_m2_plen),
      .vci_out_m2_eop     (bvci_out_m2_eop),
      .vci_out_m2_address (bvci_out_m2_address),
      .vci_out_m2_wdata   (bvci_out_m2_wdata),
      .vci_out_m2_be      (bvci_out_m2_be),
      .vci_out_m2_cmd     (bvci_out_m2_cmd),
      .vci_out_m2_const   (bvci_out_m2_const),
      .vci_out_m2_contig  (bvci_out_m2_contig),
      .vci_out_m2_wrap    (bvci_out_m2_wrap),
      .vci_out_m2_cmdack  (bvci_out_m2_cmdack),
      .vci_out_m2_rspval  (bvci_out_m2_rspval),
      .vci_out_m2_reop    (bvci_out_m2_reop),
      .vci_out_m2_rspack  (bvci_out_m2_rspack),
      .vci_out_m3_cmdval  (),
      .vci_out_m3_plen    (),
      .vci_out_m3_eop     (),
      .vci_out_m3_address (),
      .vci_out_m3_wdata   (),
      .vci_out_m3_be      (),
      .vci_out_m3_cmd     (),
      .vci_out_m3_const   (),
      .vci_out_m3_contig  (),
      .vci_out_m3_wrap    (),
      .vci_out_m3_cmdack  (1'b1),
      .vci_out_m3_rspval  (1'b1),
      .vci_out_m3_reop    (1'b1),
      .vci_out_m3_rspack  (), 
      .out_y_val        (mi_dmamux_y_val),
      .out_y_data       (mi_dmamux_y_data),
      .out_y_h_end      (mi_dmamux_y_h_end),
      .out_y_v_end      (mi_dmamux_y_v_end),
      .out_y_cfg_update (mi_dmamux_y_cfg_upd),
      .out_y_ack        (1'b1),
      .out_c_val        (mi_dmamux_c_val),
      .out_c_data       (mi_dmamux_c_data),
      .out_c_h_end      (mi_dmamux_c_h_end),
      .out_c_v_end      (mi_dmamux_c_v_end),
      .out_c_cfg_update (mi_dmamux_c_cfg_upd),
      .out_c_ack        (1'b1),
      .vci_in_cmdval    (bvci_in_cmdval ),  
      .vci_in_plen      (bvci_in_plen   ),  
      .vci_in_eop       (bvci_in_eop    ),  
      .vci_in_address   (bvci_in_address),  
      .vci_in_be        (bvci_in_be     ),  
      .vci_in_cmd       (bvci_in_cmd    ),  
      .vci_in_const     (bvci_in_const  ),  
      .vci_in_contig    (bvci_in_contig ),  
      .vci_in_wrap      (bvci_in_wrap   ),  
      .vci_in_cmdack    (bvci_in_cmdack ),  
      .vci_in_rspval    (bvci_in_rspval ),  
      .vci_in_reop      (bvci_in_reop   ),  
      .vci_in_rdata     (bvci_in_rdata  ),  
      .vci_in_rspack    (bvci_in_rspack ),  
      .mi_mp_frame_end_int (mi_mp_frame_end_int), 
      .mi_bp_frame_end_int (mi_bp_frame_end_int),
      .mi_sp_frame_end_int (mi_sp_frame_end_int), 
      .mi_mblk_line_int    (mi_mblk_line_int),    
      .mi_fill_mp_y_int    (mi_fill_mp_y_int),    
      .mi_fill_bp_r_int    (mi_fill_bp_r_int),
      .mi_wrap_mp_y_int    (mi_wrap_mp_y_int),    
      .mi_wrap_mp_cb_int   (mi_wrap_mp_cb_int),   
      .mi_wrap_mp_cr_int   (mi_wrap_mp_cr_int),   
      .mi_wrap_bp_r_int   (mi_wrap_mp_r_int),
      .mi_wrap_bp_gr_int   (mi_wrap_mp_gr_int),
      .mi_wrap_bp_gb_int   (mi_wrap_mp_gb_int),
      .mi_wrap_bp_b_int   (mi_wrap_mp_b_int),
      .mi_wrap_sp_y_int    (mi_wrap_sp_y_int),    
      .mi_wrap_sp_cb_int   (mi_wrap_sp_cb_int),   
      .mi_wrap_sp_cr_int   (mi_wrap_sp_cr_int),   
      .mi_dma_ready_int    (mi_dma_ready_int),    
      .mi_mp_handshk_int   (mi_mp_handshk_int),
      .mi_mp_handshk_sw_int(mi_mp_handshk_sw_int),
      .rot_en            (rot_en      ),
      .ram_cs_n          (rotram_cs_n ),
      .ram_we_n          (rotram_we_n ),
      .ram_addr          (rotram_addr ),
      .ram_wdata         (rotram_wdata),
      .ram_rdata         (32'h0),
      .mp_y_fifo_sram_DIN   (mp_y_fifo_sram_rdata   ),
      .mp_y_fifo_sram_DOUT  (mp_y_fifo_sram_wdata   ),
      .mp_y_fifo_sram_ADDR  (mp_y_fifo_sram_addr    ),
      .mp_y_fifo_sram_CEN   (mp_y_fifo_sram_cs_n    ),
      .mp_y_fifo_sram_WEN   (mp_y_fifo_sram_we_n    ),
      .mp_cb_fifo_sram_DIN  (mp_cb_fifo_sram_rdata  ),
      .mp_cb_fifo_sram_DOUT (mp_cb_fifo_sram_wdata  ),
      .mp_cb_fifo_sram_ADDR (mp_cb_fifo_sram_addr   ),
      .mp_cb_fifo_sram_CEN  (mp_cb_fifo_sram_cs_n   ),
      .mp_cb_fifo_sram_WEN  (mp_cb_fifo_sram_we_n   ),
      .mp_cr_fifo_sram_DIN  (mp_cr_fifo_sram_rdata  ),
      .mp_cr_fifo_sram_DOUT (mp_cr_fifo_sram_wdata  ),
      .mp_cr_fifo_sram_ADDR (mp_cr_fifo_sram_addr   ),
      .mp_cr_fifo_sram_CEN  (mp_cr_fifo_sram_cs_n   ),
      .mp_cr_fifo_sram_WEN  (mp_cr_fifo_sram_we_n   ),
      .bp_ec_fifo_sram_DIN  (66'd0  ),             
      .bp_ec_fifo_sram_DOUT ( ),              
      .bp_ec_fifo_sram_ADDR ( ),              
      .bp_ec_fifo_sram_CEN  (  ),             
      .bp_ec_fifo_sram_WEN  (  ),             
      .bp_oc_fifo_sram_DIN  (66'd0  ),             
      .bp_oc_fifo_sram_DOUT ( ),              
      .bp_oc_fifo_sram_ADDR ( ),              
      .bp_oc_fifo_sram_CEN  (  ),             
      .bp_oc_fifo_sram_WEN  (  ),             
      .last_pixel_m1_req (last_pixel_m1_req),
      .last_pixel_m1_ack (1'b1),
      .last_pixel_m2_req(),
      .last_pixel_m2_ack(1'b1),
      .last_pixel_m3_req (last_pixel_m3_req),
      .last_pixel_m3_ack (1'b1)
      );
   vsisp_marvin_pvci_reg_stage u_marvin_pvci_reg_stage
     (.clk      (s_hclk),
      .reset_n  (ctrl_reset_s_hclk_n),
      .pwdata_i (pwdata),
      .paddr_i  (paddr),
      .pval_i   (pval),
      .prd_i    (prd),
      .pack_o   (pack),
      .prdata_o (prdata),
      .pwdata_o (pwdata_tmp),
      .paddr_o  (paddr_tmp),
      .pval_o   (pval_tmp),
      .prd_o    (prd_tmp),
      .pack_i   (pack_tmp),
      .prdata_i (prdata_tmp)
      );
   vsisp_pvci_mux u_pvci_mux
     (
      .paddr     (paddr_tmp[11:0]),
      .hval      (pval_tmp),
      .hack      (pack_tmp),
      .hrdata    (prdata_tmp),
      .val_all   (ahbs_ctrl_pval_all),
      .ack_all   (ahbs_ctrl_pack_all),
      .rdata_all (ahbs_ctrl_prdata_all),
      .val_mi    (ahbs_ctrl_pval_mi),
      .ack_mi    (ahbs_ctrl_pack_mi),
      .rdata_mi  (ahbs_ctrl_prdata_mi)
      );
   vsisp_pvci_sync u_pvci_sync_all
     (
      .hclk        (s_hclk),
      .hreset_n    (ctrl_reset_s_hclk_n),
      .clk         (clk),
      .reset_clk_n (ctrl_reset_clk_n),
      .hval        (ahbs_ctrl_pval_all),  
      .hack        (ahbs_ctrl_pack_all),  
      .hrdata      (ahbs_ctrl_prdata_all),
      .val         (ctrl_pval_all),  
      .ack         (ctrl_pack_all),  
      .rdata       (ctrl_prdata_all)  
      );
   vsisp_pvci_sync u_pvci_sync_mi
     (
      .hclk        (s_hclk),
      .hreset_n    (ctrl_reset_s_hclk_n),
      .clk         (m_hclk),
      .reset_clk_n (ctrl_reset_m_hclk_n),
      .hval        (ahbs_ctrl_pval_mi),  
      .hack        (ahbs_ctrl_pack_mi),  
      .hrdata      (ahbs_ctrl_prdata_mi),
      .val         (ctrl_pval_mi),  
      .ack         (ctrl_pack_mi),  
      .rdata       (ctrl_prdata_mi) 
      );
   vsisp_marvin_ctrl  
     u_marvin_ctrl
     (
      .clk             (clk),                 
      .reset_n         (reset_n),             
      .ctrl_reset_clk_n(ctrl_reset_clk_n),    
      .m_hclk          (m_hclk),              
      .reset_m_hclk_n  (ctrl_reset_m_hclk_n), 
      .soft_rst_marvin (soft_rst_marvin),      
      .paddr          (paddr_tmp),      
      .pwdata         (pwdata_tmp),     
      .prdata         (ctrl_prdata_all),
      .pval           (ctrl_pval_all),  
      .prd            (prd_tmp),        
      .pack           (ctrl_pack_all),  
      .cfg_addr       (ctrl_all_addr),  
      .cfg_wdata      (ctrl_all_wdata), 
      .cfg_rd         (ctrl_all_rd),    
      .cfg_rdata_isp  (ctrl_isp_rdata), 
      .cfg_val_isp    (ctrl_isp_val),   
      .cfg_ack_isp    (ctrl_isp_ack),   
      .cfg_rdata_mrsz (ctrl_rszm_rdata), 
      .cfg_val_mrsz   (ctrl_rszm_val),   
      .cfg_ack_mrsz   (ctrl_rszm_ack),   
      .cfg_rdata_srsz (ctrl_rszs_rdata), 
      .cfg_val_srsz   (ctrl_rszs_val),   
      .cfg_ack_srsz   (ctrl_rszs_ack),   
      .clk_isp        (ctrl_isp_clk),    
      .clk_mrsz       (ctrl_rszm_clk),   
      .clk_srsz       (ctrl_rszs_clk),   
      .clk_mi         (ctrl_mi_clk),     
      .clk_cfg_isp    (ctrl_isp_clk_cfg),  
      .clk_cfg_mrsz   (ctrl_rszm_clk_cfg), 
      .clk_cfg_srsz   (ctrl_rszs_clk_cfg), 
      .soft_rst_isp   (ctrl_isp_soft_rst),  
      .soft_rst_yc    (ctrl_yc_soft_rst),   
      .soft_rst_mrsz  (ctrl_rszm_soft_rst), 
      .soft_rst_srsz  (ctrl_rszs_soft_rst), 
      .soft_rst_mi    (ctrl_mi_soft_rst),   
      .mi_clk_en_mhclk   (mi_clk_en_mhclk),  
      .soft_rst_mi_mhclk (soft_rst_mi_mhclk),
      .isp_clk_en        (isp_clk_en),  
      .test_mode      (scan_mode_src) 
      );
   vsisp_mi_jpeg_ctrl  u_mi_ctrl
     (
      .clk         (m_hclk),              
      .reset_clk_n (ctrl_reset_m_hclk_n), 
      .paddr       (paddr_tmp),  
      .pwdata      (pwdata_tmp), 
      .prdata      (ctrl_prdata_mi), 
      .pval        (ctrl_pval_mi),   
      .prd         (prd_tmp),        
      .pack        (ctrl_pack_mi),   
      .cfg_addr    (ctrl_mi_addr),  
      .cfg_wdata   (ctrl_mi_wdata), 
      .cfg_rd      (ctrl_mi_rd),    
      .cfg_rdata   (ctrl_mi_rdata), 
      .cfg_val     (ctrl_mi_val),   
      .cfg_ack     (ctrl_mi_ack),   
      .clk_cfg     (ctrl_mi_m_hclk_cfg), 
      .clk_en      (mi_clk_en_mhclk),    
      .test_mode   (scan_mode_src) 
      );
   assign sclk_gated = sclk;
   vsisp_marvin_ctrl_reset_gen u_marvin_ctrl_sclk_reset (
                                                   .reset_n(reset_n),               
                                                   .clk(sclk),                      
                                                   .soft_rst_i(soft_rst_marvin),    
                                                   .reset_out_n(ctrl_reset_sclk_n), 
                                                   .test_mode(scan_mode_src)            
                                                   );
   vsisp_marvin_ctrl_reset_gen u_marvin_ctrl_clk_reset (
                                                  .reset_n(reset_n),              
                                                  .clk(clk),                      
                                                  .soft_rst_i(soft_rst_marvin),   
                                                  .reset_out_n(ctrl_reset_clk_n), 
                                                  .test_mode(scan_mode_src)           
                                                  );
   vsisp_marvin_ctrl_reset_gen u_marvin_ctrl_s_hclk_reset (
                                                     .reset_n(reset_n),                 
                                                     .clk(s_hclk),                      
                                                     .soft_rst_i(soft_rst_marvin),      
                                                     .reset_out_n(ctrl_reset_s_hclk_n), 
                                                     .test_mode(scan_mode_src)              
                                                     );
   vsisp_marvin_ctrl_reset_gen u_marvin_ctrl_m_hclk_reset (
                                                     .reset_n(reset_n),                 
                                                     .clk(m_hclk),                      
                                                     .soft_rst_i(soft_rst_marvin),      
                                                     .reset_out_n(ctrl_reset_m_hclk_n), 
                                                     .test_mode(scan_mode_src)              
                                                     );
   vsisp_marvin_irq_handler u_marvin_irq_handler
     (
      .clk                (clk),                  
      .reset_n            (ctrl_reset_clk_n),     
      .jpeg_clk           (clk),                  
      .reset_jpeg_clk_n   (ctrl_reset_clk_n),     
      .isp_hist_end_int   (1'b0),
      .isp_exp_end_int    (isp_exp_end_int),
      .isp_fl_cap_int     (1'b0),
      .isp_afm_fin_int    (1'b0),
      .isp_afm_lum_of_int (1'b0),
      .isp_afm_sum_of_int (1'b0),
      .isp_sh_off_int     (1'b0),
      .isp_sh_on_int      (1'b0),
      .isp_fl_off_int     (1'b0),
      .isp_fl_on_int      (1'b0),
      .isp_h_start_int    (isp_h_start_int),
      .isp_v_start_int    (isp_v_start_int),
      .isp_frame_in_int   (isp_frame_in_int),
      .isp_awb_done_int   (isp_awb_done_int),
      .isp_vsm_done_int   (1'b0),
      .isp_size_err_int   (isp_size_err_int),
      .isp_frame_int      (1'b0),
      .isp_dataloss_int   (isp_dataloss_int),
      .isp_off_int        (1'b0),
      .mi_mp_frame_end_int (mi_mp_frame_end_int),
      .mi_bp_frame_end_int (1'b0),
      .mi_sp_frame_end_int (mi_sp_frame_end_int),
      .mi_mblk_line_int    (mi_mblk_line_int),
      .mi_fill_mp_y_int    (mi_fill_mp_y_int),
      .mi_fill_bp_r_int    (1'b0),
      .mi_wrap_mp_y_int    (mi_wrap_mp_y_int),
      .mi_wrap_mp_cb_int   (mi_wrap_mp_cb_int),
      .mi_wrap_mp_cr_int   (1'b0),
      .mi_wrap_bp_r_int   (1'b0),
      .mi_wrap_bp_gr_int   (1'b0),
      .mi_wrap_bp_gb_int   (1'b0),
      .mi_wrap_bp_b_int   (1'b0),
      .mi_wrap_sp_y_int    (mi_wrap_sp_y_int),
      .mi_wrap_sp_cb_int   (1'b0),
      .mi_wrap_sp_cr_int   (1'b0),
      .mi_dma_ready_int    (1'b0),
      .mi_mp_handshk_int   (1'b0),
      .mi_mp_handshk_sw_int(1'b0),
      .jpeg_err_int        (11'h0),
      .jpeg_stat_int       (2'h0),
      .mi_irq              (mi_irq),
      .isp_irq             (isp_irq),
      .jpeg_stat_irq       (),
      .jpeg_err_irq        ()
      );
   vsisp_bvci2axi_wr u_bvci2axi_wr_mp
     (
      .clk          (m_hclk),
      .reset_n      (ctrl_reset_m_hclk_n),
      .bvci_cmdval  (bvci_out_m1_cmdval),
      .bvci_cmdack  (bvci_out_m1_cmdack),
      .bvci_cmd     (bvci_out_m1_cmd),
      .bvci_plen    (bvci_out_m1_plen),
      .bvci_contig  (bvci_out_m1_contig),
      .bvci_wrap    (bvci_out_m1_wrap),
      .bvci_address (bvci_out_m1_address),
      .bvci_be      (bvci_out_m1_be),
      .bvci_eop     (bvci_out_m1_eop),
      .bvci_rspval  (bvci_out_m1_rspval),
      .bvci_rspack  (bvci_out_m1_rspack),
      .bvci_reop    (bvci_out_m1_reop),
      .bvci_wdata   (bvci_out_m1_wdata),
      .axi_wr_marvin_awvalid(axi_m1_marvin_awvalid),
      .axi_wr_marvin_awaddr (axi_m1_marvin_awaddr),
      .axi_wr_marvin_awlen  (axi_m1_marvin_awlen),
      .axi_wr_marvin_awsize (axi_m1_marvin_awsize),
      .axi_wr_marvin_awburst(axi_m1_marvin_awburst),
      .axi_wr_marvin_awlock (axi_m1_marvin_awlock),
      .axi_wr_marvin_awcache(axi_m1_marvin_awcache),
      .axi_wr_marvin_awprot (axi_m1_marvin_awprot),
      .axi_wr_marvin_awid   (axi_m1_marvin_awid),
      .axi_wr_marvin_awready(axi_m1_marvin_awready),
      .axi_wr_marvin_wvalid (axi_m1_marvin_wvalid),
      .axi_wr_marvin_wlast  (axi_m1_marvin_wlast),
      .axi_wr_marvin_wdata  (axi_m1_marvin_wdata),
      .axi_wr_marvin_wstrb  (axi_m1_marvin_wstrb),
      .axi_wr_marvin_wid    (axi_m1_marvin_wid),
      .axi_wr_marvin_wready (axi_m1_marvin_wready),
      .axi_wr_marvin_bvalid (axi_m1_marvin_bvalid),
      .axi_wr_marvin_bresp  (axi_m1_marvin_bresp),
      .axi_wr_marvin_bid    (axi_m1_marvin_bid),
      .axi_wr_marvin_bready (axi_m1_marvin_bready)
      ); 
         vsisp_bvci2axi_wr u_bvci2axi_wr_sp
                          (
                           .clk          (m_hclk),
                           .reset_n      (ctrl_reset_m_hclk_n),
                           .bvci_cmdval  (bvci_out_m2_cmdval),
                           .bvci_cmdack  (bvci_out_m2_cmdack),
                           .bvci_cmd     (bvci_out_m2_cmd),
                           .bvci_plen    (bvci_out_m2_plen),
                           .bvci_contig  (bvci_out_m2_contig),
                           .bvci_wrap    (bvci_out_m2_wrap),
                           .bvci_address (bvci_out_m2_address),
                           .bvci_be      (bvci_out_m2_be),
                           .bvci_eop     (bvci_out_m2_eop),
                           .bvci_rspval  (bvci_out_m2_rspval),
                           .bvci_rspack  (bvci_out_m2_rspack),
                           .bvci_reop    (bvci_out_m2_reop),
                           .bvci_wdata   (bvci_out_m2_wdata),
                           .axi_wr_marvin_awvalid(axi_m2_marvin_awvalid),
                           .axi_wr_marvin_awaddr (axi_m2_marvin_awaddr),
                           .axi_wr_marvin_awlen  (axi_m2_marvin_awlen),
                           .axi_wr_marvin_awsize (axi_m2_marvin_awsize),
                           .axi_wr_marvin_awburst(axi_m2_marvin_awburst),
                           .axi_wr_marvin_awlock (axi_m2_marvin_awlock),
                           .axi_wr_marvin_awcache(axi_m2_marvin_awcache),
                           .axi_wr_marvin_awprot (axi_m2_marvin_awprot),
                           .axi_wr_marvin_awid   (axi_m2_marvin_awid),
                           .axi_wr_marvin_awready(axi_m2_marvin_awready),
                           .axi_wr_marvin_wvalid (axi_m2_marvin_wvalid),
                           .axi_wr_marvin_wlast  (axi_m2_marvin_wlast),
                           .axi_wr_marvin_wdata  (axi_m2_marvin_wdata),
                           .axi_wr_marvin_wstrb  (axi_m2_marvin_wstrb),
                           .axi_wr_marvin_wid    (axi_m2_marvin_wid),
                           .axi_wr_marvin_wready (axi_m2_marvin_wready),
                           .axi_wr_marvin_bvalid (axi_m2_marvin_bvalid),
                           .axi_wr_marvin_bresp  (axi_m2_marvin_bresp),
                           .axi_wr_marvin_bid    (axi_m2_marvin_bid),
                           .axi_wr_marvin_bready (axi_m2_marvin_bready)
                           );
         assign bvci_in_cmdack                = 1'b1;  
         assign bvci_in_rspval                = 1'b1;  
         assign bvci_in_reop                  = 1'b1;   
         assign bvci_in_rdata                 = 64'b0; 
         assign        axi_rd_marvin_arvalid  = 1'b0;
         assign        axi_rd_marvin_araddr  = 29'b0;
         assign        axi_rd_marvin_arlen   = 4'b0;
         assign        axi_rd_marvin_arsize  = 3'b0;
         assign        axi_rd_marvin_arburst = 2'b0;
         assign        axi_rd_marvin_arlock  = 2'b0;
         assign        axi_rd_marvin_arcache = 4'b0;
         assign        axi_rd_marvin_arprot  = 3'b0;
         assign        axi_rd_marvin_arid    = 4'b0;
         assign        axi_rd_marvin_rready  = 1'b1;
`ifdef FPGA_DEBUG_ISP
   (* mark_debug = "true" *)reg [15:0]  probing__s1_data/* synthesis syn_noprune=1 syn_preserve = 1 */;           // in sensor pixel data [c_dw-1:0]
   (* mark_debug = "true" *)reg         probing__s1_hsync/* synthesis syn_noprune=1 syn_preserve = 1 */;          // in horizontal synchronization signal
   (* mark_debug = "true" *)reg         probing__s1_vsync/* synthesis syn_noprune=1 syn_preserve = 1 */;          // in vertical synchronization signal
   (* mark_debug = "true" *)reg         probing__s1_valid/* synthesis syn_noprune=1 syn_preserve = 1 */;
   (* mark_debug = "true" *)  reg         probing__axi_m1_marvin_awvalid;  
   (* mark_debug = "true" *)  reg  [31:3] probing__axi_m1_marvin_awaddr;   
   (* mark_debug = "true" *)  reg  [3:0]  probing__axi_m1_marvin_awlen;    
   (* mark_debug = "true" *)  reg  [2:0]  probing__axi_m1_marvin_awsize;
   (* mark_debug = "true" *)  reg  [1:0]  probing__axi_m1_marvin_awburst;
   (* mark_debug = "true" *)  reg  [1:0]  probing__axi_m1_marvin_awlock;
   (* mark_debug = "true" *)  reg  [3:0]  probing__axi_m1_marvin_awcache;
   (* mark_debug = "true" *)  reg  [2:0]  probing__axi_m1_marvin_awprot;
   (* mark_debug = "true" *)  reg  [3:0]  probing__axi_m1_marvin_awid;
   (* mark_debug = "true" *)  reg         probing__axi_m1_marvin_awready;  
   (* mark_debug = "true" *)  reg         probing__axi_m1_marvin_wvalid;
   (* mark_debug = "true" *)  reg         probing__axi_m1_marvin_wlast;
   (* mark_debug = "true" *)  reg  [63:0] probing__axi_m1_marvin_wdata;
   (* mark_debug = "true" *)  reg  [7:0]  probing__axi_m1_marvin_wstrb;
   (* mark_debug = "true" *)  reg  [3:0]  probing__axi_m1_marvin_wid;
   (* mark_debug = "true" *)  reg         probing__axi_m1_marvin_wready;   
   (* mark_debug = "true" *)  reg         probing__axi_m1_marvin_bvalid;
   (* mark_debug = "true" *)  reg [1:0]   probing__axi_m1_marvin_bresp;
   (* mark_debug = "true" *)  reg [3:0]   probing__axi_m1_marvin_bid;
   (* mark_debug = "true" *)  reg         probing__axi_m1_marvin_bready;
   (* mark_debug = "true" *)  reg         probing__axi_m2_marvin_awvalid;  
   (* mark_debug = "true" *)  reg  [31:3] probing__axi_m2_marvin_awaddr;   
   (* mark_debug = "true" *)  reg  [3:0]  probing__axi_m2_marvin_awlen;    
   (* mark_debug = "true" *)  reg  [2:0]  probing__axi_m2_marvin_awsize;
   (* mark_debug = "true" *)  reg  [1:0]  probing__axi_m2_marvin_awburst;
   (* mark_debug = "true" *)  reg  [1:0]  probing__axi_m2_marvin_awlock;
   (* mark_debug = "true" *)  reg  [3:0]  probing__axi_m2_marvin_awcache;
   (* mark_debug = "true" *)  reg  [2:0]  probing__axi_m2_marvin_awprot;
   (* mark_debug = "true" *)  reg  [3:0]  probing__axi_m2_marvin_awid;
   (* mark_debug = "true" *)  reg         probing__axi_m2_marvin_awready;  
   (* mark_debug = "true" *)  reg         probing__axi_m2_marvin_wvalid;
   (* mark_debug = "true" *)  reg         probing__axi_m2_marvin_wlast;
   (* mark_debug = "true" *)  reg  [63:0] probing__axi_m2_marvin_wdata;
   (* mark_debug = "true" *)  reg  [7:0]  probing__axi_m2_marvin_wstrb;
   (* mark_debug = "true" *)  reg  [3:0]  probing__axi_m2_marvin_wid;
   (* mark_debug = "true" *)  reg         probing__axi_m2_marvin_wready;   
   (* mark_debug = "true" *)  reg         probing__axi_m2_marvin_bvalid;
   (* mark_debug = "true" *)  reg [1:0]   probing__axi_m2_marvin_bresp;
   (* mark_debug = "true" *)  reg [3:0]   probing__axi_m2_marvin_bid;
   (* mark_debug = "true" *)  reg         probing__axi_m2_marvin_bready;        
always@(posedge sclk)begin
       probing__s1_data   <= s_data  ;
       probing__s1_hsync  <= s_hsync ;
       probing__s1_vsync  <= s_vsync ;
       probing__s1_valid  <= s_valid ; 
end 
always @(posedge m_hclk) begin 
probing__axi_m1_marvin_awvalid          <=   axi_m1_marvin_awvalid        ; 
probing__axi_m1_marvin_awaddr           <=   axi_m1_marvin_awaddr         ;
probing__axi_m1_marvin_awlen            <=   axi_m1_marvin_awlen          ;
probing__axi_m1_marvin_awsize           <=   axi_m1_marvin_awsize         ;
probing__axi_m1_marvin_awburst          <=   axi_m1_marvin_awburst        ;
probing__axi_m1_marvin_awlock           <=   axi_m1_marvin_awlock         ;
probing__axi_m1_marvin_awcache          <=   axi_m1_marvin_awcache        ;
probing__axi_m1_marvin_awprot           <=   axi_m1_marvin_awprot         ;
probing__axi_m1_marvin_awid             <=   axi_m1_marvin_awid           ;
probing__axi_m1_marvin_awready          <=   axi_m1_marvin_awready        ;
probing__axi_m1_marvin_wvalid           <=   axi_m1_marvin_wvalid         ;
probing__axi_m1_marvin_wlast            <=   axi_m1_marvin_wlast          ;
probing__axi_m1_marvin_wdata            <=   axi_m1_marvin_wdata          ;
probing__axi_m1_marvin_wstrb            <=   axi_m1_marvin_wstrb          ;
probing__axi_m1_marvin_wid              <=   axi_m1_marvin_wid            ;
probing__axi_m1_marvin_wready           <=   axi_m1_marvin_wready         ;
probing__axi_m1_marvin_bvalid           <=   axi_m1_marvin_bvalid         ;
probing__axi_m1_marvin_bresp            <=   axi_m1_marvin_bresp          ;
probing__axi_m1_marvin_bid              <=   axi_m1_marvin_bid            ;
probing__axi_m1_marvin_bready           <=   axi_m1_marvin_bready         ;
probing__axi_m2_marvin_awvalid          <=   axi_m2_marvin_awvalid        ;
probing__axi_m2_marvin_awaddr           <=   axi_m2_marvin_awaddr         ;
probing__axi_m2_marvin_awlen            <=   axi_m2_marvin_awlen          ;
probing__axi_m2_marvin_awsize           <=   axi_m2_marvin_awsize         ;
probing__axi_m2_marvin_awburst          <=   axi_m2_marvin_awburst        ;
probing__axi_m2_marvin_awlock           <=   axi_m2_marvin_awlock         ;
probing__axi_m2_marvin_awcache          <=   axi_m2_marvin_awcache        ;
probing__axi_m2_marvin_awprot           <=   axi_m2_marvin_awprot         ;
probing__axi_m2_marvin_awid             <=   axi_m2_marvin_awid           ;
probing__axi_m2_marvin_awready          <=   axi_m2_marvin_awready        ;
probing__axi_m2_marvin_wvalid           <=   axi_m2_marvin_wvalid         ;
probing__axi_m2_marvin_wlast            <=   axi_m2_marvin_wlast          ;
probing__axi_m2_marvin_wdata            <=   axi_m2_marvin_wdata          ;
probing__axi_m2_marvin_wstrb            <=   axi_m2_marvin_wstrb          ;
probing__axi_m2_marvin_wid              <=   axi_m2_marvin_wid            ;
probing__axi_m2_marvin_wready           <=   axi_m2_marvin_wready         ; 
probing__axi_m2_marvin_bvalid           <=   axi_m2_marvin_bvalid         ;
probing__axi_m2_marvin_bresp            <=   axi_m2_marvin_bresp          ;
probing__axi_m2_marvin_bid              <=   axi_m2_marvin_bid            ;
probing__axi_m2_marvin_bready           <=   axi_m2_marvin_bready         ; 
end 
`endif
endmodule
