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

`include "Axi.v"
module upsize_slave_domain
  (
   awready_s, wready_s, bid_s, bresp_s, bvalid_s, buser_s, arready_s,
   rid_s, rdata_s, rresp_s, rlast_s, rvalid_s, ruser_s, aw_data,
   aw_valid, b_ready, ar_data, ar_valid, r_ready, w_data, w_valid,
   awid_s, awaddr_s, awlen_s, awsize_s, awburst_s, awlock_s,
   awcache_s, awprot_s, awvalid_s, awvalid_vect_s, awuser_s,
   awregion_s, wdata_s, wstrb_s, wlast_s, wvalid_s, wid_s, wuser_s,
   bready_s, arid_s, araddr_s, arlen_s, arsize_s, arburst_s, arlock_s,
   arcache_s, arprot_s, arvalid_s, arvalid_vect_s, aruser_s,
   arregion_s, rready_s, awqv_s, arqv_s, aw_ready, b_data, b_valid,
   ar_ready, r_data, r_valid, w_ready, aclk, aresetn
   );
parameter       ARID_WIDTH=4;
parameter       AWID_WIDTH=4;
parameter       ADDR_WIDTH=32;
parameter       US_DATA_WIDTH=128;
parameter       DS_DATA_WIDTH=256;
parameter       USER_WIDTH=4;
parameter       RD_ISS=8;
parameter       WR_ISS=8;
parameter	DS_AXI3=1'h1;
localparam      DS_WSTRB_WIDTH=DS_DATA_WIDTH/8;
localparam      US_WSTRB_WIDTH=US_DATA_WIDTH/8;
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
localparam	DATA_RATIO=(DS_DATA_WIDTH/US_DATA_WIDTH);
localparam	BCHAN_WIDTH=AWID_WIDTH+1;
  input   [AWID_WIDTH-1:0]      awid_s;
  input   [ADDR_WIDTH-1:0]      awaddr_s;
  input   [7:0]       awlen_s;
  input   [2:0]       awsize_s;
  input   [1:0]       awburst_s;
  input   [1:0]       awlock_s;
  input   [3:0]       awcache_s;
  input   [2:0]       awprot_s;
  input               awvalid_s;
  input               awvalid_vect_s;
  output              awready_s;
  input  [USER_WIDTH-1:0]       awuser_s;
  input  [3:0]                  awregion_s;
  input   [US_DATA_WIDTH-1:0]     wdata_s;
  input   [US_WSTRB_WIDTH-1:0]      wstrb_s;
  input               wlast_s;
  input               wvalid_s;
  output              wready_s;
  input  [AWID_WIDTH-1:0]       wid_s;
  input  [USER_WIDTH-1:0]       wuser_s;
  output  [AWID_WIDTH-1:0]       bid_s;
  output  [1:0]       bresp_s;
  output              bvalid_s;
  input               bready_s;
  output  [USER_WIDTH-1:0]      buser_s;
  input   [ARID_WIDTH-1:0]       arid_s;
  input   [ADDR_WIDTH-1:0]      araddr_s;
  input   [7:0]       arlen_s;
  input   [2:0]       arsize_s;
  input   [1:0]       arburst_s;
  input   [1:0]            arlock_s;
  input   [3:0]       arcache_s;
  input   [2:0]       arprot_s;
  input               arvalid_s;
  input               arvalid_vect_s;
  output              arready_s;
  input  [USER_WIDTH-1:0]       aruser_s;
  input  [3:0]                  arregion_s;
  output  [ARID_WIDTH-1:0]       rid_s;
  output  [US_DATA_WIDTH-1:0]     rdata_s;
  output  [1:0]       rresp_s;
  output              rlast_s;
  output              rvalid_s;
  input               rready_s;
  output  [USER_WIDTH-1:0]      ruser_s;
  input   [3:0]       awqv_s;
  input   [3:0]       arqv_s;
  output  [AW_IDB_WIDTH-1:0]      aw_data;
  output              aw_valid;
  input               aw_ready;
  input   [B_IDB_WIDTH-1:0]       b_data;
  input               b_valid;
  output              b_ready;
  output  [AR_IDB_WIDTH-1:0]      ar_data;
  output              ar_valid;
  input               ar_ready;
  input   [R_IDB_WIDTH-1:0]     r_data;
  input               r_valid;
  output              r_ready;
  output  [W_IDB_WIDTH-1:0]     w_data;
  output              w_valid;
  input               w_ready;
  input               aclk;
  input               aresetn;
  wire [W_IDB_WIDTH-1:0]        w_boundary_src_data;
  wire [W_IDB_WIDTH-1:0]        w_boundary_dst_data;
  wire                w_boundary_dst_valid;
  wire                w_boundary_dst_ready;
  wire                w_boundary_src_valid;
  wire                w_boundary_src_ready;
  wire [US_AW_WIDTH-1:0]        aw_slave_port_src_data;
  wire [US_AW_WIDTH-1:0]        aw_slave_port_dst_data;
  wire                aw_slave_port_dst_valid;
  wire                aw_slave_port_dst_ready;
  wire                aw_slave_port_src_valid;
  wire                aw_slave_port_src_ready;
  wire [US_AR_WIDTH-1:0]        ar_slave_port_src_data;
  wire [US_AR_WIDTH-1:0]        ar_slave_port_dst_data;
  wire                ar_slave_port_dst_valid;
  wire                ar_slave_port_dst_ready;
  wire                ar_slave_port_src_valid;
  wire                ar_slave_port_src_ready;
  wire [US_R_WIDTH-1:0]        r_slave_port_src_data;
  wire [US_R_WIDTH-1:0]        r_slave_port_dst_data;
  wire [US_W_WIDTH-1:0]        w_slave_port_src_data;
  wire [US_W_WIDTH-1:0]        w_slave_port_dst_data;
  wire [US_B_WIDTH-1:0]         b_slave_port_src_data;
  wire [US_B_WIDTH-1:0]         b_slave_port_dst_data;
  wire [BCHAN_WIDTH-1:0]         bdata_data;
  wire                bdata_valid;
  wire                bdata_ready;
  wire [AWFMT_WIDTH-1:0]         awdata_data;
  wire                awdata_valid;
  wire                awdata_ready;
  wire                merge;
  wire                merge_clear;
  wire [DATA_RATIO-1:0]          data_select;
  wire                strb_skid_valid;
  wire [DS_DATA_WIDTH-1:0]        wdata_merged;
  wire [DS_WSTRB_WIDTH-1:0]         wstrb_merged;
  wire [ARFMT_WIDTH-1:0]         arfifo_data;
  wire                arfifo_valid;
  wire                arfifo_ready;
  wire  [US_AW_WIDTH-1:0]        aw_fmt_src_data;
  wire  [US_AR_WIDTH-1:0]        ar_fmt_src_data;
  wire  [US_AW_WIDTH-1:0]        aw_fmt_dst_data;
  wire  [US_AR_WIDTH-1:0]        ar_fmt_dst_data;
  wire  [USER_WIDTH-1:0]        awuser_bif;
  wire  [3:0]                   awregion_bif;
  wire [AWID_WIDTH-1:0]          awid_bif;
  wire [ADDR_WIDTH-1:0]         awaddr_bif;
  wire [7:0]          awlen_bif;
  wire [2:0]          awsize_bif;
  wire [1:0]          awburst_bif;
  wire [1:0]          awlock_bif;
  wire [3:0]          awcache_bif;
  wire [2:0]          awprot_bif;
  wire                awvalid_bif;
  wire                awvalid_vect_bif;
  wire                awready_bif;
  wire [3:0]          awqv_bif;
  wire  [USER_WIDTH-1:0]        aruser_bif;
  wire  [3:0]                   arregion_bif;
  wire [ARID_WIDTH-1:0]          arid_bif;
  wire [ADDR_WIDTH-1:0]         araddr_bif;
  wire [7:0]          arlen_bif;
  wire [2:0]          arsize_bif;
  wire [1:0]          arburst_bif;
  wire [1:0]          arlock_bif;
  wire [3:0]          arcache_bif;
  wire [2:0]          arprot_bif;
  wire                arvalid_bif;
  wire                arvalid_vect_bif;
  wire                arready_bif;
  wire [3:0]          arqv_bif;
  wire                lock_seq;
  wire                ar_lock_hndshk;
  wire                ar_unlock_hndshk;
  wire  [USER_WIDTH-1:0] wuser_bif;
  wire  [AWID_WIDTH-1:0] wid_bif;
  wire                wvalid_bif;
  wire                wready_bif;
  wire [DS_DATA_WIDTH-1:0]        wdata_bif;
  wire [DS_WSTRB_WIDTH-1:0]         wstrb_bif;
  wire                wlast_bif;
  wire  [USER_WIDTH-1:0] buser_bif;
  wire [AWID_WIDTH-1:0]         bid_bif;
  wire [1:0]          bresp_bif;
  wire                bvalid_bif;
  wire                bready_bif;
  wire  [USER_WIDTH-1:0] ruser_bif;
  wire [ARID_WIDTH-1:0]         rid_bif;
  wire [1:0]          rresp_bif;
  wire [DS_DATA_WIDTH-1:0]        rdata_bif;
  wire                rlast_bif;
  wire                rvalid_bif;
  wire                rready_bif;
  wire  [USER_WIDTH-1:0]        aruser_fmt;
  wire  [3:0]                   arregion_fmt;
  wire                arvalid_fmt;
  wire                arvalid_vect_fmt;
  wire [ADDR_WIDTH-1:0]         araddr_fmt;
  wire [7:0]          arlen_fmt;
  wire [2:0]          arsize_fmt;
  wire [1:0]          arburst_fmt;
  wire [1:0]          arlock_fmt;
  wire [3:0]          arcache_fmt;
  wire [2:0]          arprot_fmt;
  wire [ARID_WIDTH-1:0]          arid_fmt;
  wire                arready_fmt;
  wire [3:0]          arqv_fmt;
  wire  [USER_WIDTH-1:0]        awuser_fmt;
  wire  [3:0]                   awregion_fmt;
  wire                awvalid_fmt;
  wire                awvalid_vect_fmt;
  wire [ADDR_WIDTH-1:0]         awaddr_fmt;
  wire [7:0]          awlen_fmt;
  wire [2:0]          awsize_fmt;
  wire [1:0]          awburst_fmt;
  wire [1:0]          awlock_fmt;
  wire [3:0]          awcache_fmt;
  wire [2:0]          awprot_fmt;
  wire [AWID_WIDTH-1:0]          awid_fmt;
  wire                awready_fmt;
  wire [3:0]          awqv_fmt;
  wire  [USER_WIDTH-1:0]        aruser_axi_r;
  wire  [3:0]                   arregion_axi_r;
  wire                arvalid_axi_r;
  wire                arvalid_vect_axi_r;
  wire [ADDR_WIDTH-1:0]         araddr_axi_r;
  wire [7:0]          arlen_axi_r;
  wire [2:0]          arsize_axi_r;
  wire [1:0]          arburst_axi_r;
  wire [1:0]          arlock_axi_r;
  wire [3:0]          arcache_axi_r;
  wire [2:0]          arprot_axi_r;
  wire [ARID_WIDTH-1:0]          arid_axi_r;
  wire                arready_axi_r;
  wire [3:0]          arqv_axi_r;
  wire  [USER_WIDTH-1:0]        awuser_axi_r;
  wire  [3:0]                   awregion_axi_r;
  wire                awvalid_axi_r;
  wire                awvalid_vect_axi_r;
  wire [ADDR_WIDTH-1:0]         awaddr_axi_r;
  wire [7:0]          awlen_axi_r;
  wire [2:0]          awsize_axi_r;
  wire [1:0]          awburst_axi_r;
  wire [1:0]          awlock_axi_r;
  wire [3:0]          awcache_axi_r;
  wire [2:0]          awprot_axi_r;
  wire [AWID_WIDTH-1:0]          awid_axi_r;
  wire                awready_axi_r;
  wire [3:0]          awqv_axi_r;
  wire  [USER_WIDTH-1:0] ruser_axi_r;
  wire                rvalid_axi_r;
  wire                rlast_axi_r;
  wire [US_DATA_WIDTH-1:0]        rdata_axi_r;
  wire [1:0]          rresp_axi_r;
  wire [ARID_WIDTH-1:0]         rid_axi_r;
  wire                rready_axi_r;
  wire  [USER_WIDTH-1:0] wuser_axi_r;
  wire  [AWID_WIDTH-1:0] wid_axi_r;
  wire                wvalid_axi_r;
  wire                wlast_axi_r;
  wire [US_DATA_WIDTH-1:0]        wdata_axi_r;
  wire [US_WSTRB_WIDTH-1:0]         wstrb_axi_r;
  wire                wready_axi_r;
  wire  [USER_WIDTH-1:0] buser_axi_r;
  wire                bvalid_axi_r;
  wire [1:0]          bresp_axi_r;
  wire [AWID_WIDTH-1:0]         bid_axi_r;
  wire                bready_axi_r;
  assign aw_fmt_src_data = {
          awregion_axi_r,
          awuser_axi_r,
          awid_axi_r,
          awaddr_axi_r,
          awlen_axi_r,
          awsize_axi_r,
          awburst_axi_r,
          awlock_axi_r,
          awcache_axi_r,
          awqv_axi_r,
          awprot_axi_r,
          awvalid_vect_axi_r};
  assign awvalid_fmt  = awvalid_axi_r;
  assign awready_axi_r = awready_fmt;
  assign aw_fmt_dst_data  = aw_fmt_src_data;
  assign {
          awregion_fmt,
          awuser_fmt,
          awid_fmt,
          awaddr_fmt,
          awlen_fmt,
          awsize_fmt,
          awburst_fmt,
          awlock_fmt,
          awcache_fmt,
          awqv_fmt,
          awprot_fmt,
          awvalid_vect_fmt} = aw_fmt_dst_data;
  upsize_wr_addr_fmt #(
        .ARID_WIDTH(ARID_WIDTH),
        .AWID_WIDTH(AWID_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .US_DATA_WIDTH(US_DATA_WIDTH),
        .DS_DATA_WIDTH(DS_DATA_WIDTH),
        .USER_WIDTH(USER_WIDTH),
	.DS_AXI3(DS_AXI3)
        ) u_axi_write_address_format
  (
    .aresetn                          (aresetn),
    .aclk                             (aclk),
    .lock_seq                         (lock_seq),
    .ar_lock_hndshk                   (ar_lock_hndshk),
    .ar_unlock_hndshk                 (ar_unlock_hndshk),
    .bdata_data                       (bdata_data),
    .bdata_valid                      (bdata_valid),
    .bdata_ready                      (bdata_ready),
    .awfmt_valid                      (awdata_valid),
    .awfmt_ready                      (awdata_ready),
    .awfmt_data                       (awdata_data),
    .awid_s                           (awid_fmt),
    .awaddr_s                         (awaddr_fmt),
    .awlen_s                          (awlen_fmt),
    .awsize_s                         (awsize_fmt),
    .awburst_s                        (awburst_fmt),
    .awvalid_s                        (awvalid_fmt),
    .awready_s                        (awready_fmt),
    .awprot_s                         (awprot_fmt),
    .awcache_s                        (awcache_fmt),
    .awlock_s                         (awlock_fmt),
    .awuser_s                         (awuser_fmt),
    .awregion_s                         (awregion_fmt),
    .awid_m                           (awid_bif),
    .awaddr_m                         (awaddr_bif),
    .awlen_m                          (awlen_bif),
    .awsize_m                         (awsize_bif),
    .awburst_m                        (awburst_bif),
    .awvalid_m                        (awvalid_bif),
    .awready_m                        (awready_bif),
    .awprot_m                         (awprot_bif),
    .awlock_m                         (awlock_bif),
    .awcache_m                        (awcache_bif),
    .awuser_m                        (awuser_bif),
    .awregion_m                        (awregion_bif)
  );
  assign awvalid_vect_bif = awvalid_vect_fmt;
  assign awqv_bif = awqv_fmt;
upsize_wr_cntrl #(
        .ARID_WIDTH(ARID_WIDTH),
        .AWID_WIDTH(AWID_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .US_DATA_WIDTH(US_DATA_WIDTH),
        .DS_DATA_WIDTH(DS_DATA_WIDTH),
        .USER_WIDTH(USER_WIDTH)
        ) u_upsize_axi_write_control
  (
    .aresetn                          (aresetn),
    .aclk                             (aclk),
    .awfifo_valid                     (awdata_valid),
    .awfifo_ready                     (awdata_ready),
    .awfifo_data                      (awdata_data),
    .wvalid_s                         (wvalid_axi_r),
    .wready_s                         (wready_axi_r),
    .wlast                            (wlast_axi_r),
    .wuser                            (wuser_axi_r),
    .wid                            (wid_axi_r),
    .merge                            (merge),
    .merge_clear                      (merge_clear),
    .data_select                      (data_select),
    .strb_skid_valid                  (strb_skid_valid),
    .wdata_merged                     (wdata_merged),
    .wstrb_merged                     (wstrb_merged),
    .wvalid_m                         (wvalid_bif),
    .wready_m                         (wready_bif),
    .wlast_m                          (wlast_bif),
    .wuser_m                          (wuser_bif),
    .wid_m                          (wid_bif),
    .wdata_m                          (wdata_bif),
    .wstrb_m                          (wstrb_bif)
  );
  upsize_wr_merge_buffer #(
        .US_DATA_WIDTH(US_DATA_WIDTH),
	.DS_DATA_WIDTH(DS_DATA_WIDTH)
        ) u_upsize_axi_write_merge_buffer
  (
    .aresetn                          (aresetn),
    .aclk                             (aclk),
    .wdata_out                        (wdata_merged),
    .wstrb_out                        (wstrb_merged),
    .wdata_in                         (wdata_axi_r),
    .wstrb_in                         (wstrb_axi_r),
    .data_select                      (data_select),
    .merge_skid_valid                 (strb_skid_valid),
    .merge                            (merge),
    .merge_clear                      (merge_clear)
  );
  upsize_wr_resp_block #(
        .AWID_WIDTH(AWID_WIDTH),
        .USER_WIDTH(USER_WIDTH),
        .WR_ISS(WR_ISS)
        ) u_upsize_axi_write_response_block
  (
  .aclk                               (aclk),
  .aresetn                            (aresetn),
  .bchannel_ready                     (bdata_ready),
  .bchannel_valid                     (bdata_valid),
  .bchannel_data                      (bdata_data),
  .bready_s                           (bready_axi_r),
  .bvalid_s                           (bvalid_axi_r),
  .bid_s                              (bid_axi_r),
  .buser_s                              (buser_axi_r),
  .bresp_s                            (bresp_axi_r),
  .buser_m                            (buser_bif),
  .bresp_m                            (bresp_bif),
  .bid_m                              (bid_bif),
  .bvalid_m                           (bvalid_bif),
  .bready_m                           (bready_bif)
  );
  assign ar_fmt_src_data = {
          arregion_axi_r,
          aruser_axi_r,
          arid_axi_r,
          araddr_axi_r,
          arlen_axi_r,
          arsize_axi_r,
          arburst_axi_r,
          arlock_axi_r,
          arcache_axi_r,
          arqv_axi_r,
          arprot_axi_r,
          arvalid_vect_axi_r};
  assign arvalid_fmt  = arvalid_axi_r;
  assign arready_axi_r = arready_fmt;
  assign ar_fmt_dst_data  = ar_fmt_src_data;
  assign {
          arregion_fmt,
          aruser_fmt,
          arid_fmt,
          araddr_fmt,
          arlen_fmt,
          arsize_fmt,
          arburst_fmt,
          arlock_fmt,
          arcache_fmt,
          arqv_fmt,
          arprot_fmt,
          arvalid_vect_fmt} = ar_fmt_dst_data;
  upsize_rd_addr_fmt #(
        .ARID_WIDTH(ARID_WIDTH),
        .AWID_WIDTH(AWID_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .US_DATA_WIDTH(US_DATA_WIDTH),
        .DS_DATA_WIDTH(DS_DATA_WIDTH),
        .USER_WIDTH(USER_WIDTH),
	.DS_AXI3(DS_AXI3)
        ) u_axi_read_address_format
  (
    .aresetn                          (aresetn),
    .aclk                             (aclk),
    .lock_seq                         (lock_seq),
    .ar_lock_hndshk                   (ar_lock_hndshk),
    .ar_unlock_hndshk                 (ar_unlock_hndshk),
    .ardata_valid                     (arfifo_valid),
    .ardata_ready                     (arfifo_ready),
    .ardata_data                      (arfifo_data),
    .arid_s                           (arid_fmt),
    .araddr_s                         (araddr_fmt),
    .arlen_s                          (arlen_fmt),
    .arsize_s                         (arsize_fmt),
    .arburst_s                        (arburst_fmt),
    .arvalid_s                        (arvalid_fmt),
    .arready_s                        (arready_fmt),
    .arprot_s                         (arprot_fmt),
    .arcache_s                        (arcache_fmt),
    .arlock_s                         (arlock_fmt),
    .aruser_s                         (aruser_fmt),
    .arregion_s                         (arregion_fmt),
    .arid_m                           (arid_bif),
    .araddr_m                         (araddr_bif),
    .arlen_m                          (arlen_bif),
    .arsize_m                         (arsize_bif),
    .arburst_m                        (arburst_bif),
    .arvalid_m                        (arvalid_bif),
    .arready_m                        (arready_bif),
    .arprot_m                         (arprot_bif),
    .arlock_m                         (arlock_bif),
    .aruser_m                         (aruser_bif),
    .arregion_m                         (arregion_bif),
    .arcache_m                        (arcache_bif)
  );
  assign arvalid_vect_bif = arvalid_vect_fmt;
  assign arqv_bif         = arqv_fmt;
  upsize_rd_chan
    #(
.ARID_WIDTH      (ARID_WIDTH   ),
.AWID_WIDTH      (AWID_WIDTH   ),
.ADDR_WIDTH      (ADDR_WIDTH   ),
.US_DATA_WIDTH   (US_DATA_WIDTH),
.DS_DATA_WIDTH   (DS_DATA_WIDTH),
.USER_WIDTH      (USER_WIDTH   ),
.RD_ISS          (RD_ISS       )
          )
u_upsize_axi_read_channel
  (
  .aresetn                           (aresetn),
  .aclk                              (aclk),
  .archannel_data                    (arfifo_data),
  .archannel_valid                   (arfifo_valid),
  .archannel_ready                   (arfifo_ready),
  .rvalid_s                          (rvalid_axi_r),
  .rdata_s                           (rdata_axi_r),
  .rlast_s                           (rlast_axi_r),
  .rid_s                             (rid_axi_r),
  .rresp_s                           (rresp_axi_r),
  .ruser_s                           (ruser_axi_r),
  .rready_s                          (rready_axi_r),
  .rvalid_m                          (rvalid_bif),
  .rdata_m                           (rdata_bif),
  .rlast_m                           (rlast_bif),
  .rid_m                             (rid_bif),
  .rresp_m                           (rresp_bif),
  .ruser_m                           (ruser_bif),
  .rready_m                          (rready_bif)
  );
  assign aw_data = {
          awregion_bif,
          awuser_bif,
          awid_bif,
          awaddr_bif,
          awlen_bif,
          awsize_bif,
          awburst_bif,
          awlock_bif,
          awcache_bif,
          awqv_bif,
          awprot_bif,
          awvalid_vect_bif};
  assign aw_valid = awvalid_bif;
  assign awready_bif = aw_ready;
  assign ar_data = {
          arregion_bif,
          aruser_bif,
          arid_bif,
          araddr_bif,
          arlen_bif,
          arsize_bif,
          arburst_bif,
          arlock_bif,
          arcache_bif,
          arqv_bif,
          arprot_bif,
          arvalid_vect_bif};
  assign ar_valid = arvalid_bif;
  assign arready_bif = ar_ready;
  assign w_boundary_src_data = {
          wid_bif,
          wuser_bif,
          wdata_bif,
          wstrb_bif,
          wlast_bif};
  assign w_boundary_src_valid = wvalid_bif;
  assign wready_bif = w_boundary_src_ready;
  assign w_data = w_boundary_dst_data;
  assign w_valid = w_boundary_dst_valid;
  assign w_boundary_dst_ready = w_ready;
  assign {
          ruser_bif,
          rid_bif,
          rdata_bif,
          rresp_bif,
          rlast_bif} = r_data;
  assign r_ready = rready_bif;
  assign rvalid_bif = r_valid;
  assign {
          buser_bif,
          bid_bif,
          bresp_bif} = b_data;
  assign b_ready = bready_bif;
  assign bvalid_bif = b_valid;
  assign aw_slave_port_src_data = {
          awregion_s,
          awuser_s,
          awid_s,
          awaddr_s,
          awlen_s,
          awsize_s,
          awburst_s,
          awlock_s,
          awcache_s,
          awqv_s,
          awprot_s,
          awvalid_vect_s};
  assign {
          awregion_axi_r,
          awuser_axi_r,
          awid_axi_r,
          awaddr_axi_r,
          awlen_axi_r,
          awsize_axi_r,
          awburst_axi_r,
          awlock_axi_r,
          awcache_axi_r,
          awqv_axi_r,
          awprot_axi_r,
          awvalid_vect_axi_r} = aw_slave_port_dst_data;
  assign awvalid_axi_r = aw_slave_port_dst_valid;
  assign aw_slave_port_dst_ready = awready_axi_r;
  assign aw_slave_port_src_valid = awvalid_s;
  assign awready_s = aw_slave_port_src_ready;
  assign ar_slave_port_src_data = {
          arregion_s,
          aruser_s,
          arid_s,
          araddr_s,
          arlen_s,
          arsize_s,
          arburst_s,
          arlock_s,
          arcache_s,
          arqv_s,
          arprot_s,
          arvalid_vect_s};
  assign {
          arregion_axi_r,
          aruser_axi_r,
          arid_axi_r,
          araddr_axi_r,
          arlen_axi_r,
          arsize_axi_r,
          arburst_axi_r,
          arlock_axi_r,
          arcache_axi_r,
          arqv_axi_r,
          arprot_axi_r,
          arvalid_vect_axi_r} = ar_slave_port_dst_data;
  assign arvalid_axi_r = ar_slave_port_dst_valid;
  assign ar_slave_port_dst_ready = arready_axi_r;
  assign ar_slave_port_src_valid = arvalid_s;
  assign arready_s = ar_slave_port_src_ready;
  assign r_slave_port_src_data = {
          ruser_axi_r,
          rid_axi_r,
          rdata_axi_r,
          rresp_axi_r,
          rlast_axi_r};
  assign {
          ruser_s,
          rid_s,
          rdata_s,
          rresp_s,
          rlast_s} = r_slave_port_dst_data;
  assign r_slave_port_dst_data = r_slave_port_src_data;
  assign rvalid_s = rvalid_axi_r;
  assign rready_axi_r = rready_s;
  assign w_slave_port_src_data = {
          wid_s,
          wuser_s,
          wdata_s,
          wstrb_s,
          wlast_s};
  assign {
          wid_axi_r,
          wuser_axi_r,
          wdata_axi_r,
          wstrb_axi_r,
          wlast_axi_r} = w_slave_port_dst_data;
  assign w_slave_port_dst_data = w_slave_port_src_data;
  assign wvalid_axi_r = wvalid_s;
  assign wready_s = wready_axi_r;
  assign b_slave_port_src_data = {
          buser_axi_r,
          bid_axi_r,
          bresp_axi_r};
  assign {
          buser_s,
          bid_s,
          bresp_s} = b_slave_port_dst_data;
  assign b_slave_port_dst_data = b_slave_port_src_data;
  assign bvalid_s = bvalid_axi_r;
  assign bready_axi_r = bready_s;
  axi_slice
    #(
      .HNDSHK_MODE (2'h0),
      .PAYLD_WIDTH (W_IDB_WIDTH)
     )
  u_w_boundary_chan_slice
    (
     .aresetn               (aresetn),
     .aclk                  (aclk),
     .src_valid             (w_boundary_src_valid),
     .src_data              (w_boundary_src_data),
     .dst_ready             (w_boundary_dst_ready),
     .src_ready             (w_boundary_src_ready),
     .dst_data              (w_boundary_dst_data),
     .dst_valid             (w_boundary_dst_valid)
     );
  axi_slice
    #(
      .HNDSHK_MODE  (2'h0),
      .PAYLD_WIDTH  (US_AW_WIDTH)
     )
  u_aw_slave_port_chan_slice
    (
     .aresetn               (aresetn),
     .aclk                  (aclk),
     .src_valid             (aw_slave_port_src_valid),
     .src_data              (aw_slave_port_src_data),
     .dst_ready             (aw_slave_port_dst_ready),
     .src_ready             (aw_slave_port_src_ready),
     .dst_data              (aw_slave_port_dst_data),
     .dst_valid             (aw_slave_port_dst_valid)
     );
 axi_slice
    #(
      .HNDSHK_MODE  (2'h0),
      .PAYLD_WIDTH  (US_AR_WIDTH)
     )
  u_ar_slave_port_chan_slice
    (
     .aresetn               (aresetn),
     .aclk                  (aclk),
     .src_valid             (ar_slave_port_src_valid),
     .src_data              (ar_slave_port_src_data),
     .dst_ready             (ar_slave_port_dst_ready),
     .src_ready             (ar_slave_port_src_ready),
     .dst_data              (ar_slave_port_dst_data),
     .dst_valid             (ar_slave_port_dst_valid)
     );
endmodule
`include "Axi_undefs.v"
