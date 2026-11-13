//****************************************************************************
//
// Copyright 2017-2023 Vivante Corporation
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

module axi2sramcrs #(
    parameter       ARID_WIDTH=4,
    parameter       AWID_WIDTH=4,
    parameter       ADDR_WIDTH=32,
    parameter       US_DATA_WIDTH=64,
    parameter       DS_DATA_WIDTH=256,
    parameter       USER_WIDTH=16,
    parameter       IS_AXI3=1'h1,
    parameter       AXLEN_WIDTH=(IS_AXI3==1'h1) ? 4 : 8,
    parameter       RD_ISS=128,
    parameter       WR_ISS=128,
    parameter      DS_WSTRB_WIDTH=DS_DATA_WIDTH/8,
    parameter      US_WSTRB_WIDTH=US_DATA_WIDTH/8)
(
  input                            aclk,
  input                            aresetn,

  input   [AWID_WIDTH-1:0]       awid_s,
  input   [ADDR_WIDTH-1:0]      awaddr_s,
  input   [AXLEN_WIDTH-1:0]       awlen_s,
  input   [2:0]       awsize_s,
  input   [1:0]       awburst_s,
  input   [1:0]       awlock_s,
  input   [3:0]       awcache_s,
  input   [2:0]       awprot_s,
  input               awvalid_s,
  output              awready_s,
  input  [USER_WIDTH-1:0]       awuser_s,
  input  [3:0]                  awregion_s,
  input   [US_DATA_WIDTH-1:0]     wdata_s,
  input   [US_WSTRB_WIDTH-1:0]      wstrb_s,
  input               wlast_s,
  input               wvalid_s,
  output              wready_s,
  input  [AWID_WIDTH-1:0]       wid_s,
  input  [USER_WIDTH-1:0]       wuser_s,
  output  [AWID_WIDTH-1:0]       bid_s,
  output  [1:0]       bresp_s,
  output              bvalid_s,
  input               bready_s,
  output  [USER_WIDTH-1:0]      buser_s,
  input   [3:0]       awqos_s,

  output                        sram_cvalid,
  input                         sram_cready,
  output                        sram_cwrite,
  output  [31:0]                sram_caddr,
  output  [7:0]                 sram_cid,
  output  [255:0]               sram_wdata,
  output  [31:0]                sram_wmask
);

localparam      DS_AXI3=IS_AXI3;
localparam      DS_ADDR_AL_WIDTH=$clog2(DS_WSTRB_WIDTH);
localparam      US_ADDR_AL_WIDTH=$clog2(US_WSTRB_WIDTH);
localparam	ARFMT_WIDTH=1+1+ARID_WIDTH+DS_ADDR_AL_WIDTH*3+1+3;
localparam	AWFMT_WIDTH=AWID_WIDTH+1+4+1+DS_ADDR_AL_WIDTH*2+3+1;
localparam      US_AW_WIDTH=4+USER_WIDTH+AWID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam      US_AR_WIDTH=4+USER_WIDTH+ARID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam      US_R_WIDTH=USER_WIDTH+ARID_WIDTH+US_DATA_WIDTH+2+1;
localparam      US_W_WIDTH=USER_WIDTH+AWID_WIDTH+US_DATA_WIDTH+US_WSTRB_WIDTH+1;
localparam      US_B_WIDTH=USER_WIDTH+AWID_WIDTH+2;
localparam      AW_IDB_WIDTH=US_AW_WIDTH;
localparam      AR_IDB_WIDTH=US_AR_WIDTH;
localparam      W_IDB_WIDTH=AWID_WIDTH+USER_WIDTH+DS_DATA_WIDTH+DS_WSTRB_WIDTH+1;
localparam	R_IDB_WIDTH=USER_WIDTH+ARID_WIDTH+DS_DATA_WIDTH+2+1;
localparam      B_IDB_WIDTH=USER_WIDTH+2+AWID_WIDTH;


//Interface between upsizer and axi2axilite
wire  [AWID_WIDTH-1:0]       awid_m;
wire  [ADDR_WIDTH-1:0]      awaddr_m;
wire  [AXLEN_WIDTH-1:0]       awlen_m;
wire  [2:0]       awsize_m;
wire  [1:0]       awburst_m;
wire  [1:0]       awlock_m;
wire  [3:0]       awcache_m;
wire  [2:0]       awprot_m;
wire              awvalid_m;
wire              awready_m;
wire  [USER_WIDTH-1:0]      awuser_m;
wire  [3:0]                 awregion_m;
wire  [DS_DATA_WIDTH-1:0]     wdata_m;
wire  [DS_WSTRB_WIDTH-1:0]      wstrb_m;
wire              wlast_m;
wire              wvalid_m;
wire              wready_m;
wire  [AWID_WIDTH-1:0]      wid_m;
wire  [USER_WIDTH-1:0]      wuser_m;
wire  [AWID_WIDTH-1:0]       bid_m;
wire  [1:0]       bresp_m;
wire              bvalid_m;
wire              bready_m;
wire  [USER_WIDTH-1:0]      buser_m;
wire  [ARID_WIDTH-1:0]       arid_m;
wire  [ADDR_WIDTH-1:0]      araddr_m;
wire  [AXLEN_WIDTH-1:0]       arlen_m;
wire  [2:0]       arsize_m;
wire  [1:0]       arburst_m;
wire  [1:0]       arlock_m;
wire  [3:0]       arcache_m;
wire  [2:0]       arprot_m;
wire              arvalid_m;
wire              arready_m;
wire  [USER_WIDTH-1:0]      aruser_m;
wire  [3:0]                 arregion_m;
wire  [ARID_WIDTH-1:0]       rid_m;
wire  [DS_DATA_WIDTH-1:0]     rdata_m;
wire  [1:0]       rresp_m;
wire              rlast_m;
wire              rvalid_m;
wire              rready_m;
wire  [USER_WIDTH-1:0]      ruser_m;
wire  [3:0]       awqos_m;
wire  [3:0]       arqos_m;
//Interface between axi2axilite and axilite2sram
wire                       awvalid_lite_m;
wire                       awready_lite_m;
wire [ADDR_WIDTH-1:0]      awaddr_lite_m;
wire [2:0]                 awprot_lite_m;
wire [USER_WIDTH-1:0]      awuser_lite_m;
wire                       wvalid_lite_m;
wire                       wready_lite_m;
wire    [255:0]            wdata_lite_m;
wire    [31:0]             wstrb_lite_m;
wire                       bvalid_lite_m;
wire                       bready_lite_m;
wire      [1:0]            bresp_lite_m;

axi_upsizer #(
    .ARID_WIDTH       (ARID_WIDTH),
    .AWID_WIDTH       (AWID_WIDTH),
    .ADDR_WIDTH       (ADDR_WIDTH),
    .US_DATA_WIDTH    (US_DATA_WIDTH),
    .DS_DATA_WIDTH    (DS_DATA_WIDTH),
    .USER_WIDTH       (USER_WIDTH),
    .IS_AXI3          (IS_AXI3),
    .RD_ISS           (RD_ISS),
    .WR_ISS           (WR_ISS),
    .DS_WSTRB_WIDTH   (DS_WSTRB_WIDTH),
    .US_WSTRB_WIDTH   (US_WSTRB_WIDTH))
u_upsizer(/*AUTOINST*/
                      // Outputs
                      .awid_m           (awid_m[AWID_WIDTH-1:0]),
                      .awaddr_m         (awaddr_m[ADDR_WIDTH-1:0]),
                      .awlen_m          (awlen_m[AXLEN_WIDTH-1:0]),
                      .awsize_m         (awsize_m[2:0]),
                      .awburst_m        (awburst_m[1:0]),
                      .awlock_m         (awlock_m[1:0]),
                      .awcache_m        (awcache_m[3:0]),
                      .awprot_m         (awprot_m[2:0]),
                      .awvalid_m        (awvalid_m),
                      .awuser_m         (awuser_m[USER_WIDTH-1:0]),
                      .awregion_m       (awregion_m[3:0]),
                      .wdata_m          (wdata_m[DS_DATA_WIDTH-1:0]),
                      .wstrb_m          (wstrb_m[DS_WSTRB_WIDTH-1:0]),
                      .wlast_m          (wlast_m),
                      .wvalid_m         (wvalid_m),
                      .wid_m            (wid_m[AWID_WIDTH-1:0]),
                      .wuser_m          (wuser_m[USER_WIDTH-1:0]),
                      .bready_m         (bready_m),
                      .arid_m           (arid_m[ARID_WIDTH-1:0]),
                      .araddr_m         (araddr_m[ADDR_WIDTH-1:0]),
                      .arlen_m          (arlen_m[AXLEN_WIDTH-1:0]),
                      .arsize_m         (arsize_m[2:0]),
                      .arburst_m        (arburst_m[1:0]),
                      .arlock_m         (arlock_m[1:0]),
                      .arcache_m        (arcache_m[3:0]),
                      .arprot_m         (arprot_m[2:0]),
                      .arvalid_m        (arvalid_m),
                      .aruser_m         (aruser_m[USER_WIDTH-1:0]),
                      .arregion_m       (arregion_m[3:0]),
                      .rready_m         (rready_m),
                      .awqos_m          (awqos_m[3:0]),
                      .arqos_m          (arqos_m[3:0]),
                      .awready_s        (awready_s),
                      .wready_s         (wready_s),
                      .bid_s            (bid_s[AWID_WIDTH-1:0]),
                      .bresp_s          (bresp_s[1:0]),
                      .bvalid_s         (bvalid_s),
                      .buser_s          (buser_s[USER_WIDTH-1:0]),
                      .arready_s        (),
                      .rid_s            (),
                      .rdata_s          (),
                      .rresp_s          (),
                      .rlast_s          (),
                      .rvalid_s         (),
                      .ruser_s          (),
                      // Inputs
                      .aclk             (aclk),
                      .aresetn          (aresetn),
                      .awready_m        (awready_m),
                      .wready_m         (wready_m),
                      .bid_m            (bid_m[AWID_WIDTH-1:0]),
                      .bresp_m          (bresp_m[1:0]),
                      .bvalid_m         (bvalid_m),
                      .buser_m          (buser_m[USER_WIDTH-1:0]),
                      .arready_m        (arready_m),
                      .rid_m            (rid_m[ARID_WIDTH-1:0]),
                      .rdata_m          (rdata_m[DS_DATA_WIDTH-1:0]),
                      .rresp_m          (rresp_m[1:0]),
                      .rlast_m          (rlast_m),
                      .rvalid_m         (rvalid_m),
                      .ruser_m          (ruser_m[USER_WIDTH-1:0]),
                      .awid_s           (awid_s[AWID_WIDTH-1:0]),
                      .awaddr_s         (awaddr_s[ADDR_WIDTH-1:0]),
                      .awlen_s          (awlen_s[AXLEN_WIDTH-1:0]),
                      .awsize_s         (awsize_s[2:0]),
                      .awburst_s        (awburst_s[1:0]),
                      .awlock_s         (awlock_s[1:0]),
                      .awcache_s        (awcache_s[3:0]),
                      .awprot_s         (awprot_s[2:0]),
                      .awvalid_s        (awvalid_s),
                      .awuser_s         (awuser_s[USER_WIDTH-1:0]),
                      .awregion_s       (awregion_s[3:0]),
                      .wdata_s          (wdata_s[US_DATA_WIDTH-1:0]),
                      .wstrb_s          (wstrb_s[US_WSTRB_WIDTH-1:0]),
                      .wlast_s          (wlast_s),
                      .wvalid_s         (wvalid_s),
                      .wid_s            (wid_s[AWID_WIDTH-1:0]),
                      .wuser_s          (wuser_s[USER_WIDTH-1:0]),
                      .bready_s         (bready_s),
                      .arid_s           (4'b0),
                      .araddr_s         (32'b0),
                      .arlen_s          (4'b0),
                      .arsize_s         (3'b0),
                      .arburst_s        (2'b0),
                      .arlock_s         (2'b0),
                      .arcache_s        (4'b0),
                      .arprot_s         (3'b0),
                      .arvalid_s        (1'b0),
                      .aruser_s         (16'b0),
                      .arregion_s       (4'b0),
                      .rready_s         (1'b0),
                      .awqos_s          (awqos_m[3:0]),
                      .arqos_s          (4'b0));


axi2axilite #(
    .ARID_WIDTH       (ARID_WIDTH),
    .AWID_WIDTH       (AWID_WIDTH),
    .ADDR_WIDTH       (ADDR_WIDTH),
    .USER_WIDTH       (USER_WIDTH))
u_axi2axilite(/*AUTOINST*/
                          // Outputs
                          .awready_s            (awready_m),
                          .wready_s             (wready_m),
                          .bid_s                (bid_m[AWID_WIDTH-1:0]),
                          .bresp_s              (bresp_m[1:0]),
                          .bvalid_s             (bvalid_m),
                          .buser_s              (buser_m[USER_WIDTH-1:0]),
                          .arready_s            (arready_m),
                          .rid_s                (rid_m[ARID_WIDTH-1:0]),
                          .rdata_s              (rdata_m[31:0]),
                          .rresp_s              (rresp_m[1:0]),
                          .rlast_s              (rlast_m),
                          .rvalid_s             (rvalid_m),
                          .ruser_s              (ruser_m[USER_WIDTH-1:0]),
                          .awvalid_m            (awvalid_lite_m),
                          .awaddr_m             (awaddr_lite_m[ADDR_WIDTH-1:0]),
                          .awprot_m             (awprot_lite_m[2:0]),
                          .awuser_m             (awuser_lite_m[USER_WIDTH-1:0]),
                          .wvalid_m             (wvalid_lite_m),
                          .wdata_m              (wdata_lite_m[255:0]),
                          .wstrb_m              (wstrb_lite_m[31:0]),
                          .bready_m             (bready_lite_m),
                          .arvalid_m            (),//Floating
                          .araddr_m             (),//Floating
                          .arprot_m             (),//Floating
                          .aruser_m             (),//Floating
                          .rready_m             (),//Floating
                          // Inputs
                          .aclk                 (aclk),
                          .aresetn              (aresetn),
                          .awid_s               (awid_m[AWID_WIDTH-1:0]),
                          .awaddr_s             (awaddr_m[ADDR_WIDTH-1:0]),
                          .awlen_s              ({4'b0,awlen_m[3:0]}),
                          .awsize_s             (awsize_m[2:0]),
                          .awburst_s            (awburst_m[1:0]),
                          .awlock_s             (awlock_m[1:0]),
                          .awcache_s            (awcache_m[3:0]),
                          .awprot_s             (awprot_m[2:0]),
                          .awvalid_s            (awvalid_m),
                          .awuser_s             (awuser_m[USER_WIDTH-1:0]),
                          .awregion_s           (awregion_m[3:0]),
                          .wid_s                (wid_m[AWID_WIDTH-1:0]),
                          .wdata_s              (wdata_m[255:0]),
                          .wstrb_s              (wstrb_m[31:0]),
                          .wlast_s              (wlast_m),
                          .wvalid_s             (wvalid_m),
                          .wuser_s              (wuser_m[USER_WIDTH-1:0]),
                          .bready_s             (bready_m),
                          .arid_s               (arid_m[ARID_WIDTH-1:0]),
                          .araddr_s             (araddr_m[ADDR_WIDTH-1:0]),
                          .arlen_s              ({4'b0,arlen_m[3:0]}),
                          .arsize_s             (arsize_m[2:0]),
                          .arburst_s            (arburst_m[1:0]),
                          .arlock_s             (arlock_m[1:0]),
                          .arcache_s            (arcache_m[3:0]),
                          .arprot_s             (arprot_m[2:0]),
                          .arvalid_s            (arvalid_m),
                          .aruser_s             (aruser_m[USER_WIDTH-1:0]),
                          .arregion_s           (arregion_m[3:0]),
                          .rready_s             (rready_m),
                          .awqos_s              (awqos_m[3:0]),
                          .arqos_s              (arqos_m[3:0]),
                          .awready_m            (awready_lite_m),
                          .wready_m             (wready_lite_m),
                          .bvalid_m             (bvalid_lite_m),
                          .bresp_m              (bresp_lite_m[1:0]),
                          .arready_m            (1'b0),//Tie
                          .rvalid_m             (1'b0),//Tie
                          .rdata_m              (32'b0),//Tie
                          .rresp_m              (2'b0));//Tie

axilite2sram #(
    .ARID_WIDTH       (ARID_WIDTH),
    .AWID_WIDTH       (AWID_WIDTH),
    .ADDR_WIDTH       (ADDR_WIDTH),
    .USER_WIDTH       (USER_WIDTH))
u_axilite2sram(/*AUTOINST*/
                            // Outputs
                            .awready_s          (awready_lite_m),
                            .wready_s           (wready_lite_m),
                            .bvalid_s           (bvalid_lite_m),
                            .bresp_s            (bresp_lite_m[1:0]),
                            .sram_cvalid        (sram_cvalid),
                            .sram_cwrite        (sram_cwrite),
                            .sram_caddr         (sram_caddr[31:0]),
                            .sram_cid           (sram_cid[7:0]),
                            .sram_wdata         (sram_wdata[255:0]),
                            .sram_wmask         (sram_wmask[31:0]),
                            // Inputs
                            .aclk               (aclk),
                            .aresetn            (aresetn),
                            .awvalid_s          (awvalid_lite_m),
                            .awaddr_s           (awaddr_lite_m[ADDR_WIDTH-1:0]),
                            .awprot_s           (awprot_lite_m[2:0]),
                            .awuser_s           (awuser_lite_m[USER_WIDTH-1:0]),
                            .wvalid_s           (wvalid_lite_m),
                            .wdata_s            (wdata_lite_m[255:0]),
                            .wstrb_s            (wstrb_lite_m[31:0]),
                            .bready_s           (bready_lite_m),
                            .sram_cready        (sram_cready));



endmodule
