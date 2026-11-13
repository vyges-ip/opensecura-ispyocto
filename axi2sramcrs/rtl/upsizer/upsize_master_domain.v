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
module upsize_master_domain
  (
   awid_m, awaddr_m, awlen_m, awsize_m, awburst_m, awlock_m,
   awcache_m, awprot_m, awvalid_m, awvalid_vect_m, awuser_m,
   awregion_m, wdata_m, wstrb_m, wlast_m, wvalid_m, wid_m, wuser_m,
   bready_m, arid_m, araddr_m, arlen_m, arsize_m, arburst_m, arlock_m,
   arcache_m, arprot_m, arvalid_m, arvalid_vect_m, aruser_m,
   arregion_m, rready_m, awqv_m, arqv_m, aw_ready, b_data, b_valid,
   ar_ready, r_data, r_valid, w_ready,
   awready_m, wready_m, bid_m, bresp_m, bvalid_m, buser_m, arready_m,
   rid_m, rdata_m, rresp_m, rlast_m, rvalid_m, ruser_m, aw_data,
   aw_valid, b_ready, ar_data, ar_valid, r_ready, w_data, w_valid,
   aclk, aresetn
   );
parameter       ARID_WIDTH=4;
parameter       AWID_WIDTH=4;
parameter       ADDR_WIDTH=32;
parameter       US_DATA_WIDTH=128;
parameter       DS_DATA_WIDTH=256;
parameter       USER_WIDTH=4;
parameter       RD_ISS=8;
parameter       WR_ISS=8;
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
localparam      R_IDB_WIDTH=USER_WIDTH+ARID_WIDTH+DS_DATA_WIDTH+2+1;
localparam      B_IDB_WIDTH=USER_WIDTH+2+AWID_WIDTH;
  output  [AWID_WIDTH-1:0]       awid_m;
  output  [ADDR_WIDTH-1:0]      awaddr_m;
  output  [7:0]       awlen_m;
  output  [2:0]       awsize_m;
  output  [1:0]       awburst_m;
  output  [1:0]            awlock_m;
  output  [3:0]       awcache_m;
  output  [2:0]       awprot_m;
  output              awvalid_m;
  output              awvalid_vect_m;
  input               awready_m;
  output  [USER_WIDTH-1:0]      awuser_m;
  output  [3:0]                 awregion_m;
  output  [DS_DATA_WIDTH-1:0]     wdata_m;
  output  [DS_WSTRB_WIDTH-1:0]      wstrb_m;
  output              wlast_m;
  output              wvalid_m;
  input               wready_m;
  output  [AWID_WIDTH-1:0]      wid_m;
  output  [USER_WIDTH-1:0]      wuser_m;
  input   [AWID_WIDTH-1:0]       bid_m;
  input   [1:0]       bresp_m;
  input               bvalid_m;
  output              bready_m;
  input   [USER_WIDTH-1:0]      buser_m;
  output  [ARID_WIDTH-1:0]       arid_m;
  output  [ADDR_WIDTH-1:0]      araddr_m;
  output  [7:0]       arlen_m;
  output  [2:0]       arsize_m;
  output  [1:0]       arburst_m;
  output  [1:0]            arlock_m;
  output  [3:0]       arcache_m;
  output  [2:0]       arprot_m;
  output              arvalid_m;
  output              arvalid_vect_m;
  input               arready_m;
  output  [USER_WIDTH-1:0]      aruser_m;
  output  [3:0]                 arregion_m;
  input   [ARID_WIDTH-1:0]       rid_m;
  input   [DS_DATA_WIDTH-1:0]     rdata_m;
  input   [1:0]       rresp_m;
  input               rlast_m;
  input               rvalid_m;
  output              rready_m;
  input   [USER_WIDTH-1:0]      ruser_m;
  output  [3:0]       awqv_m;
  output  [3:0]       arqv_m;
  input   [AW_IDB_WIDTH-1:0]      aw_data;
  input               aw_valid;
  output              aw_ready;
  output  [B_IDB_WIDTH-1:0]       b_data;
  output              b_valid;
  input               b_ready;
  input   [AR_IDB_WIDTH-1:0]      ar_data;
  input               ar_valid;
  output              ar_ready;
  output  [R_IDB_WIDTH-1:0]     r_data;
  output              r_valid;
  input               r_ready;
  input   [W_IDB_WIDTH-1:0]     w_data;
  input               w_valid;
  output              w_ready;
  input               aclk;
  input               aresetn;
  wire                awvalid_master;
  wire                awready_master;
  wire                arvalid_master;
  wire                arready_master;
  wire                bvalid_master;
  wire                bready_master;
  wire                rvalid_master;
  wire                awvalid_vector;
  wire                arvalid_vector;
  wire                wr_cnt_empty;
  wire                mask_w;
  wire                mask_r;
  wire [3:0]          aw_qos_s;
  wire [3:0]          ar_qos_s;
  wire                awvalid_lock;
  wire                arvalid_lock;
  wire                lock_seq;
  assign {
          awregion_m,
          awuser_m,
          awid_m,
          awaddr_m,
          awlen_m,
          awsize_m,
          awburst_m,
          awlock_m,
          awcache_m,
          aw_qos_s,
          awprot_m,
          awvalid_vector} = aw_data;
  assign awvalid_master = aw_valid;
  assign aw_ready = awready_master;
  assign {
          arregion_m,
          aruser_m,
          arid_m,
          araddr_m,
          arlen_m,
          arsize_m,
          arburst_m,
          arlock_m,
          arcache_m,
          ar_qos_s,
          arprot_m,
          arvalid_vector} = ar_data;
  assign arvalid_master= ar_valid;
  assign ar_ready = arready_master;
  assign {
          wid_m,
          wuser_m,
          wdata_m,
          wstrb_m,
          wlast_m} = w_data;
  assign wvalid_m= w_valid;
  assign w_ready = wready_m;
  assign r_data = {
          ruser_m,
          rid_m,
          rdata_m,
          rresp_m,
          rlast_m};
  assign r_valid = rvalid_m;
  assign rready_m= r_ready;
  assign b_data = {
          buser_m,
          bid_m,
          bresp_m};
  assign b_valid = bvalid_master;
  assign bready_master = b_ready;
maskcntl #(
        .RD_ISS(RD_ISS),
        .WR_ISS(WR_ISS)
        ) u_maskcntl (
        .awvalid_m    (awvalid_master),
        .arvalid_m    (arvalid_master),
        .awready_m    (awready_master),
        .arready_m    (arready_master),
        .aw_qos_s     (aw_qos_s),
        .ar_qos_s     (ar_qos_s),
        .bvalid_m     (bvalid_master),
        .bready_m     (bready_master),
        .rvalid_m     (rvalid_master),
        .rready_m     (rready_m),
        .pre_awvalid  (awvalid_master),
        .pre_arvalid  (arvalid_master),
        .awlock       (awlock_m[1]),
        .arlock       (arlock_m[1]),
        .lock_seq     (lock_seq),
        .wr_cnt_empty (wr_cnt_empty),
        .mask_w       (mask_w),
        .mask_r       (mask_r),
        .aw_qos_m     (awqv_m),
        .ar_qos_m     (arqv_m),
        .aclk         (aclk),
        .aresetn      (aresetn)
        );
  assign awvalid_lock = (awvalid_master & awlock_m[1]);
  assign arvalid_lock = (arvalid_master & arlock_m[1]);
  assign awvalid_m = ~mask_w & ((awvalid_master & ~lock_seq) | awvalid_lock);
  assign arvalid_m = ~mask_r & ((arvalid_master & ~lock_seq) | arvalid_lock);
  assign awready_master = (awready_m & (~lock_seq | (awvalid_master & awlock_m[1])) & !mask_w);
  assign arready_master = (arready_m & (~lock_seq | (arvalid_master & arlock_m[1])) & !mask_r);
  assign bvalid_master = (bvalid_m & !wr_cnt_empty);
  assign bready_m = (bready_master & !wr_cnt_empty);
  assign rvalid_master = rvalid_m & rlast_m;
  assign awvalid_vect_m = ({1{awvalid_m}} & awvalid_vector);
  assign arvalid_vect_m = ({1{arvalid_m}} & arvalid_vector);
endmodule
`include "Axi_undefs.v"
