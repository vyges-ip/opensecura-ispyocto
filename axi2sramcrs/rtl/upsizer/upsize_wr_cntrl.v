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

module upsize_wr_cntrl
  (
   awfifo_ready, wready_s, merge, merge_clear, data_select, wvalid_m,
   wdata_m, wstrb_m, wlast_m, wuser_m, wid_m,
   aclk, aresetn, awfifo_valid, awfifo_data, wvalid_s, wlast, wuser,
   wid, strb_skid_valid, wdata_merged, wstrb_merged, wready_m
   );
`include "Axi.v"
parameter       ARID_WIDTH=4;
parameter       AWID_WIDTH=4;
parameter       ADDR_WIDTH=32;
parameter       US_DATA_WIDTH=256;
parameter       DS_DATA_WIDTH=128;
parameter       USER_WIDTH=4;
localparam      DS_WSTRB_WIDTH=DS_DATA_WIDTH/8;
localparam      US_WSTRB_WIDTH=US_DATA_WIDTH/8;
localparam      DS_ADDR_AL_WIDTH=$clog2(DS_WSTRB_WIDTH);
localparam      US_ADDR_AL_WIDTH=$clog2(US_WSTRB_WIDTH);
localparam      ARFMT_WIDTH=4+DS_ADDR_AL_WIDTH+US_ADDR_AL_WIDTH+3;
localparam	AWFMT_WIDTH=AWID_WIDTH+1+4+1+DS_ADDR_AL_WIDTH*2+3+1;
localparam      US_AW_WIDTH=4+USER_WIDTH+AWID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam      US_AR_WIDTH=4+USER_WIDTH+ARID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam      US_R_WIDTH=USER_WIDTH+ARID_WIDTH+US_DATA_WIDTH+2+1;
localparam      US_W_WIDTH=USER_WIDTH+AWID_WIDTH+US_DATA_WIDTH+US_WSTRB_WIDTH+1;
localparam      US_B_WIDTH=USER_WIDTH+AWID_WIDTH+2;
localparam      AW_IDB_WIDTH=US_AW_WIDTH+US_ADDR_AL_WIDTH-DS_ADDR_AL_WIDTH;
localparam      AR_IDB_WIDTH=US_AR_WIDTH+ARFMT_WIDTH;
localparam      W_IDB_WIDTH=USER_WIDTH+US_DATA_WIDTH+US_WSTRB_WIDTH+1;
localparam      R_IDB_WIDTH=USER_WIDTH+ARID_WIDTH+US_DATA_WIDTH+2+1+DS_ADDR_AL_WIDTH;
localparam      B_IDB_WIDTH=USER_WIDTH+2+AWID_WIDTH;
localparam	DATA_RATIO=(DS_DATA_WIDTH/US_DATA_WIDTH);
  input                     aclk;
  input                     aresetn;
  output                    awfifo_ready;
  input                     awfifo_valid;
  input [AWFMT_WIDTH-1:0]              awfifo_data;
  input                     wvalid_s;
  output                    wready_s;
  input                     wlast;
  input [USER_WIDTH-1:0]        wuser;
  input [AWID_WIDTH-1:0]        wid;
  output                    merge;
  output                    merge_clear;
  output  [DATA_RATIO-1:0]                data_select;
  input                     strb_skid_valid;
  input [DS_DATA_WIDTH-1:0]             wdata_merged;
  input [DS_WSTRB_WIDTH-1:0]              wstrb_merged;
  output                    wvalid_m;
  input                     wready_m;
  output [DS_DATA_WIDTH-1:0]            wdata_m;
  output [DS_WSTRB_WIDTH-1:0]             wstrb_m;
  output                    wlast_m;
  output [USER_WIDTH-1:0]       wuser_m;
  output [AWID_WIDTH-1:0]       wid_m;
  wire                      slavew_hndshk;
  wire                      wfifo_hndshk;
  wire                      awfifo_hndshk;
  wire                      bypass_in;
  wire [2:0]                write_size;
  wire [DS_ADDR_AL_WIDTH-1:0]                write_addr;
  wire [DS_ADDR_AL_WIDTH-1:0]                write_addr_mask;
  wire [3:0]                write_len_tb;
  wire                      bypass;
  wire [2:0]                a_size;
  wire [DS_ADDR_AL_WIDTH-1:0]                addr_mask;
  wire [DS_ADDR_AL_WIDTH-1:0]                addr_internal;
  wire [3:0]                beat_count;
  wire [DS_ADDR_AL_WIDTH:0]                addr_incr;
  wire [DS_ADDR_AL_WIDTH-1:0]                store_addr;
  wire [3:0]                beat_reg_next;
  wire                      beat_reg_wr_en;
  wire                      wrap_fits_in;
  wire                      wrap_fits;
  wire                      split_wrap;
  wire                      split_wrap_in;
  wire                      split_wrap_reg_en;
  wire                      split_wrap_reg_next;
  wire                      cross_boundary;
  wire                      cross_boundary_sel;
  wire                      idle;
  wire                      insert_extra_wlast;
  wire                      wlast_sel;
  wire                      wfifo_valid_next;
  wire                      wfifo_should_push;
  wire                      busy_reg_next;
  wire                      reg_wr_en;
  wire                      reg_update;
  wire  [AWID_WIDTH-1:0]        wid_in;
  reg [DS_ADDR_AL_WIDTH-1:0]                 addr_reg;
  reg [DS_ADDR_AL_WIDTH-1:0]                 addr_mask_reg;
  reg                       cross_boundary_reg;
  reg [2:0]                 size_reg;
  reg                       bypass_reg;
  reg [3:0]                 beat_reg;
  reg                       split_wrap_reg;
  reg                       wrap_fits_reg;
  reg [6:0]                 size_incr;
  reg [DS_ADDR_AL_WIDTH-1:0]                 addr_reg_nxt;
  wire [DATA_RATIO-1:0]                    data_select;
  reg                       wfifo_valid_reg;
  reg                       busy_reg;
  reg                       merge_clear;
  reg                       wlast_reg;
  reg   [USER_WIDTH-1:0]        wuser_reg;
  reg   [AWID_WIDTH-1:0]        wid_reg;
 assign slavew_hndshk = wvalid_s && wready_s;
 assign wfifo_hndshk  = wvalid_m  &&  wready_m;
 assign awfifo_hndshk = awfifo_valid  &&  awfifo_ready;
 assign merge = slavew_hndshk;
 always @(posedge aclk or negedge aresetn)
   begin : last_clear_p
     if (!aresetn)
        merge_clear <= 1'b0;
     else if (merge || wfifo_hndshk)
        merge_clear <= wfifo_hndshk;
   end
 assign idle = (~awfifo_valid && ~busy_reg);
genvar i;
generate
 for(i=0;i<DATA_RATIO;i=i+1) begin: for_data_select
	assign	data_select[i]=(idle) ? 1'h1 : (addr_internal[DS_ADDR_AL_WIDTH-1:US_ADDR_AL_WIDTH]==i);
 end
endgenerate
 assign wready_s = ~strb_skid_valid & ~wfifo_valid_reg;
 assign awfifo_ready = ~busy_reg;
 assign wfifo_valid_next = ((wvalid_m & ~wready_m) || wfifo_valid_reg) & ~wfifo_hndshk;
 always @(posedge aclk or negedge aresetn)
   begin : wfifo_valid_seq
     if (!aresetn)
        wfifo_valid_reg <= 1'b0;
     else
        wfifo_valid_reg <= wfifo_valid_next;
   end
 assign wfifo_should_push = (bypass || wlast_sel || cross_boundary_sel) & (busy_reg || awfifo_hndshk);
 assign wvalid_m = wfifo_should_push & (wfifo_valid_reg || merge || strb_skid_valid);
 assign reg_update = slavew_hndshk || (busy_reg_next && strb_skid_valid);
 always @(posedge aclk or negedge aresetn)
  begin : wfifo_data_int_seq
    if (!aresetn) begin
       wlast_reg <= 1'b0;
       wuser_reg <= {USER_WIDTH{1'b0}};
    end else if (slavew_hndshk) begin
       wlast_reg <= wlast;
       wuser_reg <= wuser;
    end
  end
  always @(posedge aclk or negedge aresetn)
  begin : cross_boundary_reg_seq
    if (!aresetn) begin
       cross_boundary_reg <= 1'b0;
    end else if (reg_update) begin
       cross_boundary_reg <= cross_boundary;
    end
  end
 assign wlast_sel        = (wready_s) ? (wlast & wvalid_s) : wlast_reg;
 assign cross_boundary_sel = (wfifo_valid_reg) ? cross_boundary_reg : cross_boundary;
 assign busy_reg_next = ((awfifo_hndshk & ~(strb_skid_valid & wfifo_valid_reg) & ~(wlast_sel & wfifo_hndshk))) ? 1'b1 :
                        ((wfifo_hndshk & wlast_sel) ? 1'b0 : busy_reg);
 always @(posedge aclk or negedge aresetn)
   begin : busy_seq
     if (!aresetn)
        busy_reg <= 1'b0;
     else
        busy_reg <= busy_reg_next;
   end
assign	{
	wid_in,
	split_wrap_in,
	write_len_tb,
	wrap_fits_in,
	write_addr_mask,
	write_addr,
	write_size,
	bypass_in
	} = awfifo_data;
 assign wlast_m   = wlast_sel || insert_extra_wlast;
 assign wid_m     = (awfifo_valid ? wid_in : wid_reg);
 assign wuser_m     = (wfifo_valid_reg || strb_skid_valid) ? wuser_reg : wuser;
 assign wdata_m   = wdata_merged;
 assign wstrb_m   = wstrb_merged;
 assign insert_extra_wlast =  (~|beat_count & ~bypass & split_wrap);
 assign beat_reg_next = (|beat_count & wfifo_hndshk) ? beat_count - 4'b1 : beat_count;
 assign beat_reg_wr_en = (wfifo_hndshk || awfifo_hndshk)& split_wrap;
 always @(posedge aclk or negedge aresetn)
     begin : beat_cnt_p
       if (!aresetn)
          beat_reg <= 4'b0;
       else if (beat_reg_wr_en)
          beat_reg <= beat_reg_next;
     end
 assign split_wrap_reg_en = awfifo_hndshk || (insert_extra_wlast & wfifo_hndshk);
 assign split_wrap_reg_next = split_wrap & ~(insert_extra_wlast & wfifo_hndshk);
 always @(posedge aclk or negedge aresetn)
    begin : unaligned_p
      if (!aresetn)
         split_wrap_reg <= 1'b0;
      else if (split_wrap_reg_en)
         split_wrap_reg <= split_wrap_reg_next;
    end
 assign addr_internal = (awfifo_hndshk) ? write_addr : addr_reg;
 assign addr_mask     = (awfifo_hndshk) ? write_addr_mask : addr_mask_reg;
 assign bypass        = (awfifo_hndshk) ? bypass_in : bypass_reg;
 assign a_size        = (awfifo_hndshk) ? write_size :  size_reg;
 assign wrap_fits     = (awfifo_hndshk) ? wrap_fits_in : wrap_fits_reg;
 assign beat_count    = (awfifo_hndshk) ? write_len_tb : beat_reg;
 assign split_wrap    = (awfifo_hndshk) ? split_wrap_in : split_wrap_reg;
 always @(*)
 begin : size_incr_p
    case (a_size)
       `AXI_ASIZE_8    : size_incr = {6'b0, 1'b1};
       `AXI_ASIZE_16   : size_incr = {5'b0, 2'b10};
       `AXI_ASIZE_32   : size_incr = {4'b0, 3'b100};
       `AXI_ASIZE_64   : size_incr = {3'b0, 4'b1000};
       `AXI_ASIZE_128  : size_incr = {2'b0, 5'b10000};
       `AXI_ASIZE_256  : size_incr = {1'b0, 6'b100000};
       `AXI_ASIZE_512  : size_incr = {7'b1000000};
      default         : size_incr = {7'bx};
    endcase
  end
 assign addr_incr = {1'b0, addr_internal} + size_incr[DS_ADDR_AL_WIDTH:0];
 always @(*)
  begin : addr_reg_nxt_p
    integer index_i;
    for (index_i = 0; index_i < DS_ADDR_AL_WIDTH ; index_i = index_i + 1)
    begin
      if (addr_mask[index_i] == 1'b1)
        addr_reg_nxt[index_i] = addr_incr[index_i];
      else
        addr_reg_nxt[index_i] = addr_internal[index_i];
    end
  end
 assign store_addr = (reg_update) ? addr_reg_nxt : addr_internal;
 assign reg_wr_en = merge || awfifo_hndshk;
 always @(posedge aclk or negedge aresetn)
    begin : addr_seq
      if (!aresetn)
          addr_reg <= {DS_ADDR_AL_WIDTH{1'b0}};
      else if (reg_wr_en)
          addr_reg <= store_addr;
    end
 always @(posedge aclk or negedge aresetn)
    begin : store_seq
      if (!aresetn) begin
          addr_mask_reg <= {DS_ADDR_AL_WIDTH{1'b0}};
          wid_reg <= {AWID_WIDTH{1'b0}};
          bypass_reg <= 1'b0;
          size_reg <= 3'b0;
          wrap_fits_reg <= 1'b0;
      end else if (awfifo_hndshk) begin
          addr_mask_reg <= write_addr_mask;
          wid_reg <= wid_in;
          bypass_reg <= bypass_in;
          size_reg <= write_size;
          wrap_fits_reg <= wrap_fits_in;
      end
    end
 assign cross_boundary = (|((addr_incr ^ {1'b0, addr_internal}) & ({1'b1, ~addr_mask} ))) & ~(wrap_fits);
endmodule
`include "Axi_undefs.v"
