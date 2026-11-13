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

module axi_upsizer(
   awid_m, awaddr_m, awlen_m, awsize_m, awburst_m, awlock_m,
   awcache_m, awprot_m, awvalid_m, awuser_m, awregion_m, wdata_m,
   wstrb_m, wlast_m, wvalid_m, wid_m, wuser_m, bready_m, arid_m,
   araddr_m, arlen_m, arsize_m, arburst_m, arlock_m, arcache_m,
   arprot_m, arvalid_m, aruser_m, arregion_m, rready_m, awqos_m,
   arqos_m, awready_s, wready_s, bid_s, bresp_s, bvalid_s, buser_s,
   arready_s, rid_s, rdata_s, rresp_s, rlast_s, rvalid_s, ruser_s,
   aclk, aresetn, awready_m, wready_m, bid_m, bresp_m, bvalid_m,
   buser_m, arready_m, rid_m, rdata_m, rresp_m, rlast_m, rvalid_m,
   ruser_m, awid_s, awaddr_s, awlen_s, awsize_s, awburst_s, awlock_s,
   awcache_s, awprot_s, awvalid_s, awuser_s, awregion_s, wdata_s,
   wstrb_s, wlast_s, wvalid_s, wid_s, wuser_s, bready_s, arid_s,
   araddr_s, arlen_s, arsize_s, arburst_s, arlock_s, arcache_s,
   arprot_s, arvalid_s, aruser_s, arregion_s, rready_s, awqos_s,
   arqos_s
   );
parameter       ARID_WIDTH=16;
parameter       AWID_WIDTH=16;
parameter       ADDR_WIDTH=61;
parameter       US_DATA_WIDTH=64;
parameter       DS_DATA_WIDTH=256;
parameter       USER_WIDTH=16;
parameter       IS_AXI3=1'h1;
parameter       RD_ISS=128;
parameter       WR_ISS=128;
parameter      DS_WSTRB_WIDTH=DS_DATA_WIDTH/8;
parameter      US_WSTRB_WIDTH=US_DATA_WIDTH/8;
localparam      AXLEN_WIDTH=(IS_AXI3==1'h1) ? 4 : 8;
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
input   aclk;
input   aresetn;
  output  [AWID_WIDTH-1:0]       awid_m;
  output  [ADDR_WIDTH-1:0]      awaddr_m;
  output  [AXLEN_WIDTH-1:0]       awlen_m;
  output  [2:0]       awsize_m;
  output  [1:0]       awburst_m;
  output  [1:0]       awlock_m;
  output  [3:0]       awcache_m;
  output  [2:0]       awprot_m;
  output              awvalid_m;
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
  output  [AXLEN_WIDTH-1:0]       arlen_m;
  output  [2:0]       arsize_m;
  output  [1:0]       arburst_m;
  output  [1:0]       arlock_m;
  output  [3:0]       arcache_m;
  output  [2:0]       arprot_m;
  output              arvalid_m;
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
  output  [3:0]       awqos_m;
  output  [3:0]       arqos_m;
  input   [AWID_WIDTH-1:0]       awid_s;
  input   [ADDR_WIDTH-1:0]      awaddr_s;
  input   [AXLEN_WIDTH-1:0]       awlen_s;
  input   [2:0]       awsize_s;
  input   [1:0]       awburst_s;
  input   [1:0]       awlock_s;
  input   [3:0]       awcache_s;
  input   [2:0]       awprot_s;
  input               awvalid_s;
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
  input   [AXLEN_WIDTH-1:0]       arlen_s;
  input   [2:0]       arsize_s;
  input   [1:0]       arburst_s;
  input   [1:0]       arlock_s;
  input   [3:0]       arcache_s;
  input   [2:0]       arprot_s;
  input               arvalid_s;
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
  input   [3:0]       awqos_s;
  input   [3:0]       arqos_s;
wire [AR_IDB_WIDTH-1:0]	ar_data;
wire			ar_ready;
wire			ar_valid;
wire [AW_IDB_WIDTH-1:0]	aw_data;
wire			aw_ready;
wire			aw_valid;
wire [B_IDB_WIDTH-1:0]	b_data;
wire			b_ready;
wire			b_valid;
wire [R_IDB_WIDTH-1:0]	r_data;
wire			r_ready;
wire			r_valid;
wire [W_IDB_WIDTH-1:0]	w_data;
wire			w_ready;
wire			w_valid;
wire    [7:0]   arlen_s_ext;
wire    [7:0]   awlen_s_ext;
wire    [7:0]   arlen_m_ext;
wire    [7:0]   awlen_m_ext;
generate
 if(AXLEN_WIDTH==8) begin
        assign  arlen_s_ext=arlen_s;
        assign  awlen_s_ext=awlen_s;
        assign  arlen_m=arlen_m_ext;
        assign  awlen_m=awlen_m_ext;
 end
 else begin
        assign  arlen_s_ext={4'h0,arlen_s};
        assign  awlen_s_ext={4'h0,awlen_s};
        assign  arlen_m=arlen_m_ext[3:0];
        assign  awlen_m=awlen_m_ext[3:0];
 end
endgenerate
upsize_slave_domain #(
		      .ARID_WIDTH	(ARID_WIDTH),
		      .AWID_WIDTH	(AWID_WIDTH),
		      .ADDR_WIDTH	(ADDR_WIDTH),
		      .US_DATA_WIDTH	(US_DATA_WIDTH),
		      .DS_DATA_WIDTH	(DS_DATA_WIDTH),
		      .USER_WIDTH	(USER_WIDTH),
		      .RD_ISS		(RD_ISS),
		      .WR_ISS		(WR_ISS),
		      .DS_AXI3		(DS_AXI3))
                                        u_slave_domain(
                                                       .arqv_s     (arqos_s),
                                                       .awqv_s     (awqos_s),
                                                       .awlen_s    (awlen_s_ext),
                                                       .arlen_s    (arlen_s_ext),
                                                       .awvalid_vect_s(1'h0),
                                                       .arvalid_vect_s(1'h0),
						       .awready_s	(awready_s),
						       .wready_s	(wready_s),
						       .bid_s		(bid_s[AWID_WIDTH-1:0]),
						       .bresp_s		(bresp_s[1:0]),
						       .bvalid_s	(bvalid_s),
						       .buser_s		(buser_s[USER_WIDTH-1:0]),
						       .arready_s	(arready_s),
						       .rid_s		(rid_s[ARID_WIDTH-1:0]),
						       .rdata_s		(rdata_s[US_DATA_WIDTH-1:0]),
						       .rresp_s		(rresp_s[1:0]),
						       .rlast_s		(rlast_s),
						       .rvalid_s	(rvalid_s),
						       .ruser_s		(ruser_s[USER_WIDTH-1:0]),
						       .aw_data		(aw_data[AW_IDB_WIDTH-1:0]),
						       .aw_valid	(aw_valid),
						       .b_ready		(b_ready),
						       .ar_data		(ar_data[AR_IDB_WIDTH-1:0]),
						       .ar_valid	(ar_valid),
						       .r_ready		(r_ready),
						       .w_data		(w_data[W_IDB_WIDTH-1:0]),
						       .w_valid		(w_valid),
						       .awid_s		(awid_s[AWID_WIDTH-1:0]),
						       .awaddr_s	(awaddr_s[ADDR_WIDTH-1:0]),
						       .awsize_s	(awsize_s[2:0]),
						       .awburst_s	(awburst_s[1:0]),
						       .awlock_s	(awlock_s[1:0]),
						       .awcache_s	(awcache_s[3:0]),
						       .awprot_s	(awprot_s[2:0]),
						       .awvalid_s	(awvalid_s),
						       .awuser_s	(awuser_s[USER_WIDTH-1:0]),
						       .awregion_s	(awregion_s[3:0]),
						       .wdata_s		(wdata_s[US_DATA_WIDTH-1:0]),
						       .wstrb_s		(wstrb_s[US_WSTRB_WIDTH-1:0]),
						       .wlast_s		(wlast_s),
						       .wvalid_s	(wvalid_s),
						       .wid_s		(wid_s[AWID_WIDTH-1:0]),
						       .wuser_s		(wuser_s[USER_WIDTH-1:0]),
						       .bready_s	(bready_s),
						       .arid_s		(arid_s[ARID_WIDTH-1:0]),
						       .araddr_s	(araddr_s[ADDR_WIDTH-1:0]),
						       .arsize_s	(arsize_s[2:0]),
						       .arburst_s	(arburst_s[1:0]),
						       .arlock_s	(arlock_s[1:0]),
						       .arcache_s	(arcache_s[3:0]),
						       .arprot_s	(arprot_s[2:0]),
						       .arvalid_s	(arvalid_s),
						       .aruser_s	(aruser_s[USER_WIDTH-1:0]),
						       .arregion_s	(arregion_s[3:0]),
						       .rready_s	(rready_s),
						       .aw_ready	(aw_ready),
						       .b_data		(b_data[B_IDB_WIDTH-1:0]),
						       .b_valid		(b_valid),
						       .ar_ready	(ar_ready),
						       .r_data		(r_data[R_IDB_WIDTH-1:0]),
						       .r_valid		(r_valid),
						       .w_ready		(w_ready),
						       .aclk		(aclk),
						       .aresetn		(aresetn));
upsize_master_domain #(
		       .ARID_WIDTH	(ARID_WIDTH),
		       .AWID_WIDTH	(AWID_WIDTH),
		       .ADDR_WIDTH	(ADDR_WIDTH),
		       .US_DATA_WIDTH	(US_DATA_WIDTH),
		       .DS_DATA_WIDTH	(DS_DATA_WIDTH),
		       .USER_WIDTH	(USER_WIDTH),
		       .RD_ISS		(RD_ISS),
		       .WR_ISS		(WR_ISS)) u_master_domain(
                                                  .awqv_m      (awqos_m),
                                                  .arqv_m      (arqos_m),
                                                  .arlen_m     (arlen_m_ext),
                                                  .awlen_m     (awlen_m_ext),
                                                  .awvalid_vect_m  (),
                                                  .arvalid_vect_m  (),
								  .awid_m		(awid_m[AWID_WIDTH-1:0]),
								  .awaddr_m		(awaddr_m[ADDR_WIDTH-1:0]),
								  .awsize_m		(awsize_m[2:0]),
								  .awburst_m		(awburst_m[1:0]),
								  .awlock_m		(awlock_m[1:0]),
								  .awcache_m		(awcache_m[3:0]),
								  .awprot_m		(awprot_m[2:0]),
								  .awvalid_m		(awvalid_m),
								  .awuser_m		(awuser_m[USER_WIDTH-1:0]),
								  .awregion_m		(awregion_m[3:0]),
								  .wdata_m		(wdata_m[DS_DATA_WIDTH-1:0]),
								  .wstrb_m		(wstrb_m[DS_WSTRB_WIDTH-1:0]),
								  .wlast_m		(wlast_m),
								  .wvalid_m		(wvalid_m),
								  .wid_m		(wid_m[AWID_WIDTH-1:0]),
								  .wuser_m		(wuser_m[USER_WIDTH-1:0]),
								  .bready_m		(bready_m),
								  .arid_m		(arid_m[ARID_WIDTH-1:0]),
								  .araddr_m		(araddr_m[ADDR_WIDTH-1:0]),
								  .arsize_m		(arsize_m[2:0]),
								  .arburst_m		(arburst_m[1:0]),
								  .arlock_m		(arlock_m[1:0]),
								  .arcache_m		(arcache_m[3:0]),
								  .arprot_m		(arprot_m[2:0]),
								  .arvalid_m		(arvalid_m),
								  .aruser_m		(aruser_m[USER_WIDTH-1:0]),
								  .arregion_m		(arregion_m[3:0]),
								  .rready_m		(rready_m),
								  .aw_ready		(aw_ready),
								  .b_data		(b_data[B_IDB_WIDTH-1:0]),
								  .b_valid		(b_valid),
								  .ar_ready		(ar_ready),
								  .r_data		(r_data[R_IDB_WIDTH-1:0]),
								  .r_valid		(r_valid),
								  .w_ready		(w_ready),
								  .awready_m		(awready_m),
								  .wready_m		(wready_m),
								  .bid_m		(bid_m[AWID_WIDTH-1:0]),
								  .bresp_m		(bresp_m[1:0]),
								  .bvalid_m		(bvalid_m),
								  .buser_m		(buser_m[USER_WIDTH-1:0]),
								  .arready_m		(arready_m),
								  .rid_m		(rid_m[ARID_WIDTH-1:0]),
								  .rdata_m		(rdata_m[DS_DATA_WIDTH-1:0]),
								  .rresp_m		(rresp_m[1:0]),
								  .rlast_m		(rlast_m),
								  .rvalid_m		(rvalid_m),
								  .ruser_m		(ruser_m[USER_WIDTH-1:0]),
								  .aw_data		(aw_data[AW_IDB_WIDTH-1:0]),
								  .aw_valid		(aw_valid),
								  .b_ready		(b_ready),
								  .ar_data		(ar_data[AR_IDB_WIDTH-1:0]),
								  .ar_valid		(ar_valid),
								  .r_ready		(r_ready),
								  .w_data		(w_data[W_IDB_WIDTH-1:0]),
								  .w_valid		(w_valid),
								  .aclk			(aclk),
								  .aresetn		(aresetn));
endmodule
