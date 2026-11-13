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

module upsize_rd_cam_slice
  (
    aresetn,
    aclk,
    match_id,
    store,
    push_slice,
    pop_slice,
    update,
    match_pointer,
    hazard_in,
    hazard_pointer,
    archannel_data,
    rlast_in,
    hazard,
    match,
    addr_out,
    last_addr_match,
    valid,
    beat_complete,
    rdata_byte_mask
  );
`include "Axi.v"
parameter       ARID_WIDTH=4;
parameter       US_DATA_WIDTH=128;
parameter       DS_DATA_WIDTH=256;
parameter       RD_ISS=8;
parameter   	ARCHAN_WIDTH=20;
localparam      DS_WSTRB_WIDTH=DS_DATA_WIDTH/8;
localparam      US_WSTRB_WIDTH=US_DATA_WIDTH/8;
localparam      DS_ADDR_AL_WIDTH=$clog2(DS_WSTRB_WIDTH);
localparam      US_ADDR_AL_WIDTH=$clog2(US_WSTRB_WIDTH);
localparam   	PTR_WIDTH=$clog2(RD_ISS+1);
localparam	UPSIZE_WIDTH=DS_ADDR_AL_WIDTH-US_ADDR_AL_WIDTH;
  input                aresetn;
  input                aclk;
  input [ARID_WIDTH-1:0]          match_id;
  input                store;
  input                push_slice;
  input                pop_slice;
  input                update;
  input   [PTR_WIDTH-1:0]             hazard_pointer;
  input   [PTR_WIDTH-1:0]             match_pointer;
  input                hazard_in;
  input [ARCHAN_WIDTH-1:0]         archannel_data;
  input                rlast_in;
  wire                 wrap_fits;
  output               hazard;
  output               valid;
  output               match;
  output  [UPSIZE_WIDTH-1:0]              addr_out;
  output               last_addr_match;
  output               beat_complete;
  output [US_WSTRB_WIDTH-1:0]        rdata_byte_mask;
  reg [ARID_WIDTH-1:0]            id_reg;
  reg [PTR_WIDTH-1:0]                 pointer_reg;
  reg                  hazard_reg;
  reg                  valid_reg;
  reg                  last_reg;
  reg                          n_response_reg;
  reg                  wrap_fits_reg;
  reg [DS_ADDR_AL_WIDTH-1:0]            addr_reg;
  reg [DS_ADDR_AL_WIDTH-1:0]            addr_mask_reg;
  reg [DS_ADDR_AL_WIDTH-1:0]            addr_mask_end_reg;
  reg [2:0]            size_reg;
  reg                  bypass_reg;
  reg [DS_ADDR_AL_WIDTH-1:0]            addr_next;
  reg [7:0]            size_incr;
  wire [ARID_WIDTH-1:0]           next_id_reg;
  wire [PTR_WIDTH-1:0]            next_pointer_reg;
  wire                 next_hazard_reg;
  wire                 next_valid_reg;
  wire                 next_last_reg;
  wire                         next_n_response_reg;
  wire [DS_ADDR_AL_WIDTH-1:0]           next_addr_reg;
  wire                 allowed_to_match;
  wire                 rid_match;
  wire                 arid_match;
  wire                 pointer_match;
  wire                 match_i;
  wire                 last_reg_wr_en;
  wire                 hazard_reg_wr_en;
  wire                 valid_reg_wr_en;
  wire                 n_response_reg_wr_en;
  wire                 default_reg_wr_en;
  wire                 addr_reg_wr;
  wire [2:0]           size_in;
  wire                         n_response;
  wire                 bypass_in;
  wire [DS_ADDR_AL_WIDTH-1:0]           addr;
  wire [DS_ADDR_AL_WIDTH-1:0]           addr_mask;
  wire [DS_ADDR_AL_WIDTH-1:0]           addr_mask_end;
  wire [ARID_WIDTH-1:0]           hazard_id;
  wire                 boundary_cross;
  wire [DS_ADDR_AL_WIDTH:0]           addr_incr;
  wire                 can_complete;
  wire                 last_addr_match_int;
  wire                 beat_complete_i;
assign	{
	wrap_fits,
	n_response,
	hazard_id,
	addr_mask_end,
	addr_mask,
	addr,
	bypass_in,
	size_in
	} = archannel_data;
 assign rid_match = (match_id == id_reg);
 assign arid_match = (hazard_id == id_reg);
 assign allowed_to_match = valid_reg && ~hazard_reg;
 assign match_i = allowed_to_match && rid_match;
 assign match = match_i;
 assign can_complete = match_i && ~|n_response_reg;
 reg  [63:0] size_mask_r;
 wire  [US_WSTRB_WIDTH-1:0] size_mask,byte_mask,byte_mask_r;
 wire [US_WSTRB_WIDTH-1:0] rdata_byte_mask ;
 assign rdata_byte_mask = byte_mask & {US_WSTRB_WIDTH{match_i}};
 always @(size_reg)
  begin : size_mask_p
    case (size_reg)
       3'b000    : size_mask_r = {64'b00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000001};
       3'b001    : size_mask_r = {64'b00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000011};
       3'b010    : size_mask_r = {64'b00000000_00000000_00000000_00000000_00000000_00000000_00000000_00001111};
       3'b011    : size_mask_r = {64'b00000000_00000000_00000000_00000000_00000000_00000000_00000000_11111111};
       3'b100    : size_mask_r = {64'b00000000_00000000_00000000_00000000_00000000_00000000_11111111_11111111};
       3'b101    : size_mask_r = {64'b00000000_00000000_00000000_00000000_11111111_11111111_11111111_11111111};
       3'b110    : size_mask_r = {64'b00000000_00000000_11111111_11111111_11111111_11111111_11111111_11111111};
       3'b111    : size_mask_r = {64'b11111111_11111111_11111111_11111111_11111111_11111111_11111111_11111111};
       default   : size_mask_r = {64'bx};
    endcase
  end
assign size_mask = size_mask_r[US_WSTRB_WIDTH-1:0] ;
assign byte_mask_r = (size_mask << addr_reg[US_ADDR_AL_WIDTH-1:0]) ;//& { {(US_WSTRB_WIDTH-addr_reg){1'b1}}, {addr_reg{1'b0}}};
assign byte_mask = byte_mask_r[US_WSTRB_WIDTH-1:0] ;
 assign hazard = arid_match && last_reg && valid_reg && ~(can_complete && pop_slice);
 assign default_reg_wr_en = (store && push_slice);
 assign next_id_reg = hazard_id;
 always @(posedge aclk)
   begin : id_seq
      if (default_reg_wr_en)
         id_reg <= next_id_reg;
   end
 assign next_pointer_reg = hazard_pointer;
  always @(posedge aclk)
   begin : pointer_seq
      if (default_reg_wr_en)
         pointer_reg <= next_pointer_reg;
   end
 assign next_last_reg = (store) ? 1'b1 :
                        ((arid_match) ? 1'b0 : last_reg);
 assign last_reg_wr_en = (default_reg_wr_en || (arid_match && valid_reg && push_slice));
  always @(posedge aclk)
   begin : last_seq
      if (last_reg_wr_en)
         last_reg <= next_last_reg;
   end
 assign pointer_match = (pointer_reg == match_pointer);
 assign next_hazard_reg = (store) ? hazard_in : 1'b0;
 assign hazard_reg_wr_en = (default_reg_wr_en || (pointer_match && valid_reg && pop_slice && rid_match));
  always @(posedge aclk)
   begin : hazard_seq
      if (hazard_reg_wr_en)
         hazard_reg <= next_hazard_reg;
   end
 assign next_valid_reg = (store && push_slice) || (n_response_reg);
 assign valid_reg_wr_en = default_reg_wr_en || (match_i && pop_slice);
   always @(posedge aclk or negedge aresetn)
   begin : valid_seq
      if (!aresetn)
         valid_reg <= 1'b0;
      else if (valid_reg_wr_en)
         valid_reg <= next_valid_reg;
   end
  assign valid = valid_reg;
  assign next_n_response_reg = (store && push_slice) ? n_response : (n_response_reg - 1'b1);
  assign n_response_reg_wr_en =  (rid_match && ~hazard_reg && rlast_in && update && beat_complete_i) || default_reg_wr_en;
  always @(posedge aclk or negedge aresetn)
   begin : two_resp_seq
     if (!aresetn)
         n_response_reg <= {1{1'b0}};
     else if (n_response_reg_wr_en)
         n_response_reg <= next_n_response_reg;
   end
  assign boundary_cross = |((addr_incr ^ {1'b0, addr_reg}) & {1'b1, ~addr_mask_reg}) & ~wrap_fits_reg;
  always @(*)
  begin : size_incr_p
    case (size_reg)
       `AXI_ASIZE_8    : size_incr = {7'b0, 1'b1};
       `AXI_ASIZE_16   : size_incr = {6'b0, 2'b10};
       `AXI_ASIZE_32   : size_incr = {5'b0, 3'b100};
       `AXI_ASIZE_64   : size_incr = {4'b0, 4'b1000};
       `AXI_ASIZE_128  : size_incr = {3'b0, 5'b10000};
       `AXI_ASIZE_256  : size_incr = {2'b0, 6'b100000};
       `AXI_ASIZE_512  : size_incr = {1'b0, 7'b1000000};
       default         : size_incr = {8'bx};
    endcase
  end
  assign addr_incr = {1'b0, addr_reg} + size_incr[DS_ADDR_AL_WIDTH:0];
  always @(*)
  begin : addr_reg_nxt_p
     integer index_i;
     for (index_i = 0; index_i < DS_ADDR_AL_WIDTH ; index_i = index_i + 1)
     begin
       if ( addr_mask_reg[index_i] == 1'b1)
         addr_next[index_i] = addr_incr[index_i];
       else
         addr_next[index_i] = addr_reg[index_i];
     end
   end
  assign addr_reg_wr = default_reg_wr_en || (match_i && update);
  assign next_addr_reg = (store && push_slice) ? addr : addr_next;
  always @(posedge aclk or negedge aresetn)
   begin : addr_seq
     if (!aresetn)
         addr_reg <= {DS_ADDR_AL_WIDTH{1'b0}};
     else if (addr_reg_wr)
         addr_reg <= next_addr_reg;
   end
  assign addr_out = addr_reg[DS_ADDR_AL_WIDTH-1:US_ADDR_AL_WIDTH] & {UPSIZE_WIDTH{match_i}};
  assign last_addr_match_int = (((addr_reg & addr_mask_reg) == (addr_mask_end_reg & addr_mask_reg)) || bypass_reg) && ~|n_response_reg;
  assign last_addr_match = last_addr_match_int;
  assign beat_complete_i = boundary_cross || bypass_reg;
  assign beat_complete   = beat_complete_i;
  always @(posedge aclk or negedge aresetn)
   begin : ardata_seq
     if (!aresetn) begin
         addr_mask_reg <= {DS_ADDR_AL_WIDTH{1'b0}};
         addr_mask_end_reg <= {DS_ADDR_AL_WIDTH{1'b0}};
         size_reg  <= 3'b0;
         bypass_reg <= 1'b0;
         wrap_fits_reg <= 1'b0;
     end else if (default_reg_wr_en) begin
         addr_mask_reg <= addr_mask;
         addr_mask_end_reg  <= addr_mask_end;
         size_reg <= size_in;
         bypass_reg <= bypass_in;
         wrap_fits_reg <= wrap_fits;
     end
   end
endmodule
`include "Axi_undefs.v"
