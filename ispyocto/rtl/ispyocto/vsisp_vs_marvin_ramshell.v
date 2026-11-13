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

module vsisp_vs_marvin_ramshell
  (
   reset_,
   regs_disable_isp_clk,
   scan_mode,
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
   mp_cr_fifo_sram_we_n
   );
`include "vsisp_isp.vh"
`include "vsisp_ram_sizes.vh"
   input                       reset_;
   input                       regs_disable_isp_clk;
   input                       scan_mode;
   input                     isp_fifo_ram_clk;
   input                     isp_fifo_cs_n;
   input                     isp_fifo_wr_n;
   input  [c_ispfifo_aw-1:0] isp_fifo_addr;
   input  [c_ispfifo_dw-1:0] isp_fifo_wdata;
   output [c_ispfifo_dw-1:0] isp_fifo_rdata;
   input  isp_rgb_ram_clk; 
   input  [c_aw_dem_mem-1:0] isp_ispram_addr;  
   input  [c_dw_dem_mem-1:0] isp_ispram_wdata; 
   output [c_dw_dem_mem-1:0] isp_ispram_rdata; 
   input                    isp_ispram_wr_n;  
   input                    isp_ispram_cs_n;  
   input         rszm_mram_clk;   
   input         rszm_mramy_wr_n;  
   input         rszm_mramy_cs_n;  
   input  [c_aw_mrsz-1:0] rszm_mramy_addr;  
   input  [31:0] rszm_mramy_wdata; 
   output [31:0] rszm_mramy_rdata; 
   input         rszm_mramc_wr_n;  
   input         rszm_mramc_cs_n;  
   input  [c_aw_mrsz-1:0] rszm_mramc_addr;  
   input  [31:0] rszm_mramc_wdata; 
   output [31:0] rszm_mramc_rdata; 
   input         rszs_sram_clk;   
   input         rszs_sramy_wr_n;  
   input         rszs_sramy_cs_n;  
   input  [c_aw_srsz-1:0] rszs_sramy_addr;  
   input  [31:0] rszs_sramy_wdata; 
   output [31:0] rszs_sramy_rdata; 
   input         rszs_sramc_wr_n;  
   input         rszs_sramc_cs_n;  
   input  [c_aw_srsz-1:0] rszs_sramc_addr;  
   input  [31:0] rszs_sramc_wdata; 
   output [31:0] rszs_sramc_rdata; 
  input   [65:0]  mp_y_fifo_sram_wdata  ;
  output  [65:0]  mp_y_fifo_sram_rdata  ;
  input   [ c_mi_mp_y_aw-1:0]  mp_y_fifo_sram_addr   ;
  input           mp_y_fifo_sram_cs_n   ;
  input           mp_y_fifo_sram_we_n   ;
  input   [65:0]  mp_cb_fifo_sram_wdata ;
  output  [65:0]  mp_cb_fifo_sram_rdata ;
  input   [ c_mi_mp_c_aw-1:0]  mp_cb_fifo_sram_addr  ;
  input           mp_cb_fifo_sram_cs_n  ;
  input           mp_cb_fifo_sram_we_n  ;
  input   [65:0]  mp_cr_fifo_sram_wdata ;
  output  [65:0]  mp_cr_fifo_sram_rdata ;
  input   [ c_mi_mp_c_aw -1:0]  mp_cr_fifo_sram_addr  ;
  input           mp_cr_fifo_sram_cs_n  ;
  input           mp_cr_fifo_sram_we_n  ;
  wire [15:0] GC_CONTROL = {11'b0,regs_disable_isp_clk,3'b100,scan_mode};
  wire [31:0] mcReg_registerTimingControl = 32'h30000;
  `ifdef ISP_FPGA
RAM_128X28_FPGA u_isp_fifo(
  .clka (isp_fifo_ram_clk),
  .ena  (~isp_fifo_cs_n),
  .wea  (~isp_fifo_wr_n),
  .addra(isp_fifo_addr),
  .dina (isp_fifo_wdata),
  .douta(isp_fifo_rdata)
);
  `else
  vsisp_isp_isp_fifo_wrapper u_isp_fifo(
  	.GC_CONTROL(GC_CONTROL),
	.cEn0_(isp_fifo_cs_n),
	.mcReg_registerTimingControl(mcReg_registerTimingControl),
	.reset_(reset_),
	.rwAddr0(isp_fifo_addr),
	.rwclk0(isp_fifo_ram_clk),
	.wData0(isp_fifo_wdata),
	.wEn0_(isp_fifo_wr_n),
	.rData0(isp_fifo_rdata)
    );
  `endif
  `ifdef ISP_FPGA
RAM_960X168_FPGA u_ispram(
  .clka (isp_rgb_ram_clk),
  .ena  (~isp_ispram_cs_n),
  .wea  (~isp_ispram_wr_n),
  .addra(isp_ispram_addr),
  .dina (isp_ispram_wdata),
  .douta(isp_ispram_rdata)
);
  `else
   vsisp_isp_isp_ram_wrapper u_ispram(
	.GC_CONTROL(GC_CONTROL),
	.cEn0_(isp_ispram_cs_n),
	.mcReg_registerTimingControl(mcReg_registerTimingControl),
	.reset_(reset_),
	.rwAddr0(isp_ispram_addr),
	.rwclk0(isp_rgb_ram_clk),
	.wData0(isp_ispram_wdata),
	.wEn0_(isp_ispram_wr_n),
	.rData0(isp_ispram_rdata)
    );
  `endif
        assign rszm_mramy_rdata = 32'd0;
        assign rszm_mramc_rdata = 32'd0;
          `ifdef ISP_FPGA
        RAM_1024X32_FPGA u_srsz_y_rszram(
          .clka (rszs_sram_clk),
          .ena  (~rszs_sramy_cs_n),
          .wea  (~rszs_sramy_wr_n),
          .addra(rszs_sramy_addr),
          .dina (rszs_sramy_wdata),
          .douta(rszs_sramy_rdata)
        );
          `else
           vsisp_isp_srsz_y_wrapper u_srsz_y_rszram(
        	.GC_CONTROL(GC_CONTROL),
        	.cEn0_(rszs_sramy_cs_n),
        	.mcReg_registerTimingControl(mcReg_registerTimingControl),
        	.reset_(reset_),
        	.rwAddr0(rszs_sramy_addr),
        	.rwclk0(rszs_sram_clk),
        	.wData0(rszs_sramy_wdata),
        	.wEn0_(rszs_sramy_wr_n),
        	.rData0(rszs_sramy_rdata)
            );
          `endif
          `ifdef ISP_FPGA
        RAM_1024X32_FPGA u_srsz_c_rszram(
          .clka (rszs_sram_clk),
          .ena  (~rszs_sramc_cs_n),
          .wea  (~rszs_sramc_wr_n),
          .addra(rszs_sramc_addr),
          .dina (rszs_sramc_wdata),
          .douta(rszs_sramc_rdata)
        );
          `else
           vsisp_isp_srsz_c_wrapper u_srsz_c_rszram(
        	.GC_CONTROL(GC_CONTROL),
        	.cEn0_(rszs_sramc_cs_n),
        	.mcReg_registerTimingControl(mcReg_registerTimingControl),
        	.reset_(reset_),
        	.rwAddr0(rszs_sramc_addr),
        	.rwclk0(rszs_sram_clk),
        	.wData0(rszs_sramc_wdata),
        	.wEn0_(rszs_sramc_wr_n),
        	.rData0(rszs_sramc_rdata)
            );
          `endif
  `ifdef ISP_FPGA
RAM_80X66_FPGA u_mi_sram_fifo_y(
  .clka (isp_fifo_ram_clk     ),
  .dina (mp_y_fifo_sram_wdata ),
  .douta(mp_y_fifo_sram_rdata )
  .addra(mp_y_fifo_sram_addr  ),
  .ena  (~mp_y_fifo_sram_cs_n ),
  .wea  (~mp_y_fifo_sram_we_n ),
);
  `else
 vsisp_isp_miv1_mp_sramy_wrapper u_mi_sram_fifo_y(
	.GC_CONTROL(GC_CONTROL),
	.mcReg_registerTimingControl(mcReg_registerTimingControl),
	.reset_                     (reset_),
	.rwclk0                     (isp_fifo_ram_clk     ),
	.wData0                     (mp_y_fifo_sram_wdata),
	.rData0                     (mp_y_fifo_sram_rdata),
	.rwAddr0                    (mp_y_fifo_sram_addr ),
	.cEn0_                      (mp_y_fifo_sram_cs_n ),
	.wEn0_                      (mp_y_fifo_sram_we_n )
    );
  `endif 
  assign mp_cb_fifo_sram_rdata = 66'd0;
  assign mp_cr_fifo_sram_rdata = 66'd0;
endmodule
