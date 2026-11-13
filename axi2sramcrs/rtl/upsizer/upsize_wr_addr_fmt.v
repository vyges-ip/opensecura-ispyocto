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

module upsize_wr_addr_fmt
  (
   lock_seq, bdata_data, bdata_valid, awfmt_valid, awfmt_data,
   awready_s, awid_m, awaddr_m, awlen_m, awsize_m, awburst_m,
   awcache_m, awprot_m, awlock_m, awvalid_m, awuser_m, awregion_m,
   aclk, aresetn, ar_lock_hndshk, ar_unlock_hndshk, bdata_ready,
   awfmt_ready, awid_s, awaddr_s, awlen_s, awsize_s, awburst_s,
   awcache_s, awprot_s, awvalid_s, awlock_s, awuser_s, awregion_s,
   awready_m
   );
`include "Axi.v"
parameter	ARID_WIDTH=4;
parameter	AWID_WIDTH=4;
parameter	ADDR_WIDTH=32;
parameter	US_DATA_WIDTH=128;
parameter	DS_DATA_WIDTH=256;
parameter	USER_WIDTH=4;
parameter	DS_AXI3=1'h1;
localparam	DS_WSTRB_WIDTH=DS_DATA_WIDTH/8;
localparam	US_WSTRB_WIDTH=US_DATA_WIDTH/8;
localparam	DS_ADDR_AL_WIDTH=$clog2(DS_WSTRB_WIDTH);
localparam	US_ADDR_AL_WIDTH=$clog2(US_WSTRB_WIDTH);
localparam	AWFMT_WIDTH=AWID_WIDTH+1+4+1+DS_ADDR_AL_WIDTH*2+3+1;
localparam	US_AW_WIDTH=4+USER_WIDTH+AWID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam	US_AR_WIDTH=4+USER_WIDTH+ARID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam	US_R_WIDTH=USER_WIDTH+ARID_WIDTH+US_DATA_WIDTH+2+1;
localparam	US_W_WIDTH=USER_WIDTH+AWID_WIDTH+US_DATA_WIDTH+US_WSTRB_WIDTH+1;
localparam	US_B_WIDTH=USER_WIDTH+AWID_WIDTH+2;
localparam	AW_IDB_WIDTH=US_AW_WIDTH;
localparam	W_IDB_WIDTH=USER_WIDTH+US_DATA_WIDTH+US_WSTRB_WIDTH+1;
localparam	B_IDB_WIDTH=USER_WIDTH+2+AWID_WIDTH;
localparam	BCHAN_WIDTH=AWID_WIDTH+1;
localparam  WDATA_CAM_WIDTH_UP =DS_ADDR_AL_WIDTH-US_ADDR_AL_WIDTH;
localparam  TOTAL_BYTES_WIDTH = US_ADDR_AL_WIDTH+8;
  input                    aclk;
  input                    aresetn;
  input                    ar_lock_hndshk;
  input                    ar_unlock_hndshk;
  output                   lock_seq;
  output [BCHAN_WIDTH-1:0]             bdata_data;
  output                   bdata_valid;
  input                    bdata_ready;
  input                    awfmt_ready;
  output                   awfmt_valid;
  output [AWFMT_WIDTH-1:0]            awfmt_data;
  input [AWID_WIDTH-1:0]              awid_s;
  input [ADDR_WIDTH-1:0]             awaddr_s;
  input [7:0]              awlen_s;
  input [2:0]              awsize_s;
  input [1:0]              awburst_s;
  input [3:0]              awcache_s;
  input [2:0]              awprot_s;
  input                    awvalid_s;
  input [1:0]                   awlock_s;
  output                   awready_s;
  input  [USER_WIDTH-1:0]	awuser_s;
  input  [3:0]			awregion_s;
  output [AWID_WIDTH-1:0]              awid_m;
  output [ADDR_WIDTH-1:0]             awaddr_m;
  output [7:0]              awlen_m;
  output [2:0]              awsize_m;
  output [1:0]              awburst_m;
  output [3:0]              awcache_m;
  output [2:0]              awprot_m;
  output [1:0]                   awlock_m;
  output                    awvalid_m;
  input                     awready_m;
  output  [USER_WIDTH-1:0]	awuser_m;
  output  [3:0]			awregion_m;
  reg [ADDR_WIDTH-1:0]                awaddro;              // transaction start address (int)
  reg [7:0]                 awleno;               // transaction length (int)
  reg [2:0]                 awsizeo;              // transaction transfer size (int)
  reg [1:0]                 awbursto;             // transaction burst type (int)
  reg [AWID_WIDTH-1:0]                 awido;
  reg [3:0]                 awcacheo;
  reg [2:0]                 awproto;
  reg [1:0]                      awlocko;
  reg  [USER_WIDTH-1:0]	awusero;
  reg  [3:0]			awregiono;
  reg                       excl_override_reg;
  reg                       busy_reg;
  reg [TOTAL_BYTES_WIDTH-1:0]                 wrap_bytes_remaining_reg;
  reg [DS_ADDR_AL_WIDTH-1:0]                 write_mask;
  wire                         n_response;
  reg [TOTAL_BYTES_WIDTH-1:0]                 total_bytes;
  reg [TOTAL_BYTES_WIDTH-1:0]                 total_bytes_masked;
  reg [2:0]                 wrapsize;
  reg [2:0]                 wrapfitsize;
  reg [3:0]                 wraplen;
  reg [DS_ADDR_AL_WIDTH:0]                 wrapalignmask;
  reg                       wrap_split_reg;
  reg [2:0]                 incrsize;
  reg                       lock_seq;
  wire                      slave_hndshk;
  wire                      master_hndshk;
  wire                      bypass;
  wire [ADDR_WIDTH-1:0]               awaddr_aligned;
  wire [DS_ADDR_AL_WIDTH+8-1:0]                total_bytes_ext;
  wire [TOTAL_BYTES_WIDTH-1:0]                wrap_boundary_mask;
  wire                      wrap_aligned;
  wire                      wrap_is_incr;
  wire                      wrap_split;
  wire                      wrap_fits;
  wire [TOTAL_BYTES_WIDTH-1:0]                wrap_fits_mask;
  wire [DS_ADDR_AL_WIDTH:0]                working_addr;
  wire                      wrap_split_reg_nxt;
  wire                      wrap_split_reg_wr_en;
  wire                      wrap_info_write_en;
  wire [TOTAL_BYTES_WIDTH-1:0]                next_wrap_bytes_remaining_reg;
  wire [TOTAL_BYTES_WIDTH-1:0]                addr_less_one;
  wire [7:0]                wraplen_i;
  wire [7:0]                awlen_1;
  wire [7:0]                incrlen;
  wire [TOTAL_BYTES_WIDTH-1:0]                bytes_to_transfer;
  wire [TOTAL_BYTES_WIDTH+8-1:0]              bytes_to_transfer_large;
  wire [TOTAL_BYTES_WIDTH-1:0]                bytes_to_transfer_wrap1;
  wire [DS_ADDR_AL_WIDTH-1:0]                offset_address;
  wire [7:0]                incrlenmaxsize;
  wire [DS_ADDR_AL_WIDTH:0]                final_address;
  wire                      overflow;
  wire                      bytes_lt_one_byte;
  wire                      bytes_lt_two_byte;
  wire                      bytes_lt_two_half;
  wire                      bytes_lt_four_half;
  wire                      half_carry;
  wire                      half_carry_double;
  wire                      bytes_lt_four_word;
  wire                      bytes_lt_eight_word;
  wire [2:0]                word_carry;
  wire                      word_carry_double;
  wire                      bytes_lt_eight_dword;
  wire                      bytes_lt_sixt_dword;
  wire [3:0]                dword_carry;
  wire                      dword_carry_double;
  wire                      bytes_lt_sixt_qword;
  wire                      bytes_lt_ttwo_qword;
  wire [4:0]                qword_carry;
  wire                      qword_carry_double;
  wire                      bytes_lt_ttwo_oword;
  wire                      bytes_lt_sfour_oword;
  wire [5:0]                oword_carry;
  wire                      oword_carry_double;
  wire                      buffers_ok;
  wire                      new_transaction;
  wire                      trans_in_progress;
  wire                      new_trans_avail;
  wire                      trans_complete;
  wire                      next_busy_reg;
  wire                      busy_reg_wr_en;
  wire                      excl_override;
 assign slave_hndshk = awvalid_s & awready_s;
 assign master_hndshk = awvalid_m & awready_m;
assign	awfmt_data = {
	awid_s,
	wrap_split,
	awleno[3:0],
	wrap_fits,
	write_mask,
	awaddr_s[DS_ADDR_AL_WIDTH-1:0],
	awsize_s,
	bypass || (awburst_s == `AXI_ABURST_FIXED)
	};
 assign awfmt_valid = new_transaction;
 always @(*)
  begin : p_new_addr_incr_en_w
    write_mask = {DS_ADDR_AL_WIDTH{1'b0}};
    case (awburst_s)
      `AXI_ABURST_FIXED : write_mask = {DS_ADDR_AL_WIDTH{1'b0}};
      `AXI_ABURST_WRAP  : write_mask = total_bytes[DS_ADDR_AL_WIDTH-1:0];
      `AXI_ABURST_INCR  : write_mask = {DS_ADDR_AL_WIDTH{1'b1}};
      default           : write_mask = {DS_ADDR_AL_WIDTH{1'b0}};
    endcase
  end
 assign bdata_data = {awid_s, n_response};
 assign bdata_valid = new_transaction;
 assign n_response = wrap_split;
 assign buffers_ok = bdata_ready & awfmt_ready;
 assign  trans_complete = ~((wrap_split & ~wrap_split_reg) );
 assign trans_in_progress = new_transaction | busy_reg;
 assign new_transaction = new_trans_avail & buffers_ok;
 assign new_trans_avail = awvalid_s & ~busy_reg;
 assign next_busy_reg = (trans_complete & slave_hndshk)  ? 1'b0 :
                        ((new_transaction & ~slave_hndshk) ? 1'b1 : busy_reg);
 assign busy_reg_wr_en = busy_reg ^ next_busy_reg;
 always @(posedge aclk or negedge aresetn)
   begin : busy_reg_p
      if (!aresetn) begin
          busy_reg <= 1'b0;
      end else if (busy_reg_wr_en) begin
          busy_reg <= next_busy_reg;
      end
    end
 assign excl_override = (new_transaction) ? n_response | (|awleno[7:4]) : excl_override_reg;
 always @(posedge aclk or negedge aresetn)
   begin : excl_override_reg_p
      if (!aresetn) begin
          excl_override_reg <= 1'b0;
      end else if (new_transaction) begin
          excl_override_reg <= excl_override;
      end
    end
 assign awregion_m =     awregiono;
 assign awuser_m =     awusero;
 assign awid_m =     awido;
 assign awcache_m =  awcacheo;
 assign awprot_m =   awproto;
 assign awlen_m =    awleno;
 assign awsize_m =   awsizeo;
 assign awaddr_m =   awaddro;
 assign awburst_m =  awbursto;
 assign awlock_m =   awlocko;
 assign awvalid_m = awvalid_s && trans_in_progress;
 assign awready_s = master_hndshk && trans_complete;
 always @(*) begin
      awleno = incrlen;
      awsizeo = incrsize;
      awbursto = `AXI_ABURST_INCR;
      awido = awid_s;
      awusero = awuser_s;
      awregiono = awregion_s;
      awcacheo = awcache_s;
      awproto = awprot_s;
      awaddro = awaddr_aligned;
      awlocko = {(awlock_s[1] | (lock_seq & ~trans_complete)),(awlock_s[0] && (~excl_override))};
      if (!wrap_split_reg) begin
         awaddro = awaddr_s;
         if (wrap_aligned) begin
            awleno = wraplen_i;
            awsizeo = wrapsize;
            awbursto = `AXI_ABURST_WRAP;
         end else if (bypass) begin
            awleno = awlen_s;
            awsizeo = awsize_s;
            awbursto = awburst_s;
         end else if (wrap_fits) begin
            awaddro = awaddr_aligned;
            awleno = awlen_1;
            awsizeo = wrapfitsize;
            awbursto = `AXI_ABURST_INCR;
         end
      end
  end
 assign wraplen_i = {4'b0000,wraplen};
 assign awlen_1 = {4'b0000,`AXI_ALEN_1};
 assign addr_less_one = awaddr_s[TOTAL_BYTES_WIDTH-1:0] - {{TOTAL_BYTES_WIDTH{1'b0}},1'b1};
 assign next_wrap_bytes_remaining_reg = (addr_less_one & total_bytes);
 assign wrap_info_write_en = wrap_split & master_hndshk;
 always @(posedge aclk or negedge aresetn)
   begin : wrap_bytes_remaining_reg_p
      if (!aresetn) begin
          wrap_bytes_remaining_reg <= {TOTAL_BYTES_WIDTH{1'b0}};
      end else if (wrap_info_write_en) begin
          wrap_bytes_remaining_reg <= next_wrap_bytes_remaining_reg;
      end
    end
 assign awaddr_aligned = {awaddr_s[ADDR_WIDTH-1:TOTAL_BYTES_WIDTH],((awaddr_s[TOTAL_BYTES_WIDTH-1:0]) & (~total_bytes))};
 assign wrap_split_reg_nxt = wrap_split & ~(wrap_split_reg);
 assign wrap_split_reg_wr_en = master_hndshk;
 always @(posedge aclk or negedge aresetn)
   begin : wrap_split_p
      if (!aresetn)
          wrap_split_reg <= 1'b0;
      else if (wrap_split_reg_wr_en)
          wrap_split_reg <= wrap_split_reg_nxt;
    end
 assign next_lock_seq = (ar_lock_hndshk | (slave_hndshk & awlock_s[1])) ?
                        1'b1 : ((ar_unlock_hndshk | (master_hndshk & ~awlock_m[1])) ?
                        1'b0 : lock_seq);
 always @(posedge aclk or negedge aresetn)
   begin : locked_sequence_reg
      if (!aresetn)
          lock_seq <= 1'b0;
      else if (master_hndshk || slave_hndshk || ar_lock_hndshk || ar_unlock_hndshk)
          lock_seq <= next_lock_seq;
    end
 assign bypass = (awburst_s == `AXI_ABURST_FIXED ) || ~awcache_s[1] || (awlen_s == `AXI_ALEN_1);
generate
  if( US_DATA_WIDTH == 32 )
    begin
       always @(*)
         begin : total_bytes_p32
           case (awsize_s)
              `AXI_ASIZE_8    :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
              `AXI_ASIZE_16   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}}, awlen_s, 1'b1};
              `AXI_ASIZE_32   :
                               total_bytes = {                                  awlen_s, 2'b11};
               default         :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
           endcase
         end
    end
  else if( US_DATA_WIDTH == 64 )
    begin
       always @(*)
         begin : total_bytes_p64
           case (awsize_s)
              `AXI_ASIZE_8    :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
              `AXI_ASIZE_16   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}}, awlen_s, 1'b1};
              `AXI_ASIZE_32   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}}, awlen_s, 2'b11};
              `AXI_ASIZE_64   :
                              total_bytes = {                                   awlen_s, 3'b111};
               default         :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
           endcase
         end
    end
  else if( US_DATA_WIDTH == 128 )
    begin
       always @(*)
         begin : total_bytes_p128
           case (awsize_s)
              `AXI_ASIZE_8    :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
              `AXI_ASIZE_16   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}}, awlen_s, 1'b1};
              `AXI_ASIZE_32   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}}, awlen_s, 2'b11};
              `AXI_ASIZE_64   :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-3){1'b0}}, awlen_s, 3'b111};
              `AXI_ASIZE_128  :
                              total_bytes = {                                  awlen_s, 4'b1111};
               default        :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
           endcase
         end
    end
  else if( US_DATA_WIDTH == 256 )
    begin
       always @(*)
         begin : total_bytes_p256
           case (awsize_s)
              `AXI_ASIZE_8    :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
              `AXI_ASIZE_16   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}}, awlen_s, 1'b1};
              `AXI_ASIZE_32   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}}, awlen_s, 2'b11};
              `AXI_ASIZE_64   :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-3){1'b0}}, awlen_s, 3'b111};
              `AXI_ASIZE_128  :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-4){1'b0}}, awlen_s, 4'b1111};
              `AXI_ASIZE_256  :
                              total_bytes = {                                  awlen_s, 5'b11111};
               default        :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
           endcase
         end
    end
  else if( US_DATA_WIDTH == 512 )
    begin
       always @(*)
         begin : total_bytes_p512
           case (awsize_s)
              `AXI_ASIZE_8    :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
              `AXI_ASIZE_16   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}}, awlen_s, 1'b1};
              `AXI_ASIZE_32   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}}, awlen_s, 2'b11};
              `AXI_ASIZE_64   :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-3){1'b0}}, awlen_s, 3'b111};
              `AXI_ASIZE_128  :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-4){1'b0}}, awlen_s, 4'b1111};
              `AXI_ASIZE_256  :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-5){1'b0}}, awlen_s, 5'b11111};
              `AXI_ASIZE_512  :
                              total_bytes = {                                  awlen_s, 6'b111111};
               default        :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
           endcase
         end
    end
  else
    begin
       always @(*)
         begin : total_bytes_p_others
           case (awsize_s)
              `AXI_ASIZE_8    :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
              `AXI_ASIZE_16   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}}, awlen_s, 1'b1};
              `AXI_ASIZE_32   :
                               total_bytes = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}}, awlen_s, 2'b11};
              `AXI_ASIZE_64   :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-3){1'b0}}, awlen_s, 3'b111};
              `AXI_ASIZE_128  :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-4){1'b0}}, awlen_s, 4'b1111};
              `AXI_ASIZE_256  :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8-5){1'b0}}, awlen_s, 5'b11111};
              `AXI_ASIZE_512  :
                              total_bytes = {                                  awlen_s, 6'b111111};
               default        :
                              total_bytes = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
           endcase
         end
    end
endgenerate

  assign total_bytes_ext = { {WDATA_CAM_WIDTH_UP{1'b0}},total_bytes };


generate


if(DS_DATA_WIDTH==512) begin:wrmsk512
   always @(*)
     begin : wrap_size_len

     if (total_bytes_ext[6]&&(DS_DATA_WIDTH>=512)) begin
       wrapfitsize = `AXI_ASIZE_1024;
       wrapsize = `AXI_ASIZE_512;
       wraplen = total_bytes_ext[9:6];
       wrapalignmask = {1'b0, 6'b111111};
     end else if (total_bytes_ext[5]&&(DS_DATA_WIDTH>=256)) begin
       wrapfitsize = `AXI_ASIZE_512;
       wrapsize = `AXI_ASIZE_256;
       wraplen = total_bytes_ext[8:5];
       wrapalignmask = {2'b0, 5'b11111};
     end else if (total_bytes_ext[4]&&(DS_DATA_WIDTH>=128)) begin
       wrapfitsize = `AXI_ASIZE_256;
       wrapsize = `AXI_ASIZE_128;
       wraplen = total_bytes_ext[7:4];
       wrapalignmask = {3'b0, 4'b1111};
     end else if (total_bytes_ext[3]&&(DS_DATA_WIDTH>=64)) begin
       wrapfitsize = `AXI_ASIZE_128;
       wrapsize = `AXI_ASIZE_64;
       wraplen = total_bytes_ext[6:3];
       wrapalignmask = {4'b0, 3'b111};
     end else if (total_bytes_ext[2]&&(DS_DATA_WIDTH>=32)) begin
       wrapfitsize = `AXI_ASIZE_64;
       wrapsize = `AXI_ASIZE_32;
       wraplen = total_bytes_ext[5:2];
       wrapalignmask = {5'b0, 2'b11};
     end else if (total_bytes_ext[1]&&(DS_DATA_WIDTH>=16)) begin
       wrapfitsize = `AXI_ASIZE_32;
       wrapsize = `AXI_ASIZE_16;
       wraplen = total_bytes_ext[4:1];
       wrapalignmask = {6'b0, 1'b1};
     end else if (total_bytes_ext[0]&&(DS_DATA_WIDTH>=8))begin
       wrapfitsize = `AXI_ASIZE_16;
       wrapsize = `AXI_ASIZE_8;
       wraplen = total_bytes_ext[3:0];
       wrapalignmask = 7'b0;
     end else begin
       wrapfitsize = 3'b0;
       wrapsize = 3'b0;
       wraplen = 4'b0;
       wrapalignmask = 7'b0;
     end
   end
 end


if(DS_DATA_WIDTH==256) begin:wrmsk256
   always @(*)
     begin : wrap_size_len

     if (total_bytes_ext[5]&&(DS_DATA_WIDTH>=256)) begin
       wrapfitsize = `AXI_ASIZE_512;
       wrapsize = `AXI_ASIZE_256;
       wraplen = total_bytes_ext[8:5];
       wrapalignmask = {2'b0, 5'b11111};
     end else if (total_bytes_ext[4]&&(DS_DATA_WIDTH>=128)) begin
       wrapfitsize = `AXI_ASIZE_256;
       wrapsize = `AXI_ASIZE_128;
       wraplen = total_bytes_ext[7:4];
       wrapalignmask = {3'b0, 4'b1111};
     end else if (total_bytes_ext[3]&&(DS_DATA_WIDTH>=64)) begin
       wrapfitsize = `AXI_ASIZE_128;
       wrapsize = `AXI_ASIZE_64;
       wraplen = total_bytes_ext[6:3];
       wrapalignmask = {4'b0, 3'b111};
     end else if (total_bytes_ext[2]&&(DS_DATA_WIDTH>=32)) begin
       wrapfitsize = `AXI_ASIZE_64;
       wrapsize = `AXI_ASIZE_32;
       wraplen = total_bytes_ext[5:2];
       wrapalignmask = {5'b0, 2'b11};
     end else if (total_bytes_ext[1]&&(DS_DATA_WIDTH>=16)) begin
       wrapfitsize = `AXI_ASIZE_32;
       wrapsize = `AXI_ASIZE_16;
       wraplen = total_bytes_ext[4:1];
       wrapalignmask = {6'b0, 1'b1};
     end else if (total_bytes_ext[0]&&(DS_DATA_WIDTH>=8))begin
       wrapfitsize = `AXI_ASIZE_16;
       wrapsize = `AXI_ASIZE_8;
       wraplen = total_bytes_ext[3:0];
       wrapalignmask = 7'b0;
     end else begin
       wrapfitsize = 3'b0;//x;
       wrapsize = 3'b0;//x;
       wraplen = 4'b0;//x;
       wrapalignmask = 7'b0;//x;
     end
   end
 end


if(DS_DATA_WIDTH==128) begin:wrmsk128
   always @(*)
     begin : wrap_size_len

     if (total_bytes_ext[4]&&(DS_DATA_WIDTH>=128)) begin
       wrapfitsize = `AXI_ASIZE_256;
       wrapsize = `AXI_ASIZE_128;
       wraplen = total_bytes_ext[7:4];
       wrapalignmask = {3'b0, 4'b1111};
     end else if (total_bytes_ext[3]&&(DS_DATA_WIDTH>=64)) begin
       wrapfitsize = `AXI_ASIZE_128;
       wrapsize = `AXI_ASIZE_64;
       wraplen = total_bytes_ext[6:3];
       wrapalignmask = {4'b0, 3'b111};
     end else if (total_bytes_ext[2]&&(DS_DATA_WIDTH>=32)) begin
       wrapfitsize = `AXI_ASIZE_64;
       wrapsize = `AXI_ASIZE_32;
       wraplen = total_bytes_ext[5:2];
       wrapalignmask = {5'b0, 2'b11};
     end else if (total_bytes_ext[1]&&(DS_DATA_WIDTH>=16)) begin
       wrapfitsize = `AXI_ASIZE_32;
       wrapsize = `AXI_ASIZE_16;
       wraplen = total_bytes_ext[4:1];
       wrapalignmask = {6'b0, 1'b1};
     end else if (total_bytes_ext[0]&&(DS_DATA_WIDTH>=8))begin
       wrapfitsize = `AXI_ASIZE_16;
       wrapsize = `AXI_ASIZE_8;
       wraplen = total_bytes_ext[3:0];
       wrapalignmask = 7'b0;
     end else begin
       wrapfitsize = 3'b0;
       wrapsize = 3'b0;
       wraplen = 4'b0;
       wrapalignmask = 7'b0;
     end
   end
 end



if(DS_DATA_WIDTH==64) begin:wrmsk64
   always @(*)
     begin : wrap_size_len

   if (total_bytes_ext[3]&&(DS_DATA_WIDTH>=64)) begin
       wrapfitsize = `AXI_ASIZE_128;
       wrapsize = `AXI_ASIZE_64;
       wraplen = total_bytes_ext[6:3];
       wrapalignmask = {4'b0, 3'b111};
     end else if (total_bytes_ext[2]&&(DS_DATA_WIDTH>=32)) begin
       wrapfitsize = `AXI_ASIZE_64;
       wrapsize = `AXI_ASIZE_32;
       wraplen = total_bytes_ext[5:2];
       wrapalignmask = {5'b0, 2'b11};
     end else if (total_bytes_ext[1]&&(DS_DATA_WIDTH>=16)) begin
       wrapfitsize = `AXI_ASIZE_32;
       wrapsize = `AXI_ASIZE_16;
       wraplen = total_bytes_ext[4:1];
       wrapalignmask = {6'b0, 1'b1};
     end else if (total_bytes_ext[0]&&(DS_DATA_WIDTH>=8))begin
       wrapfitsize = `AXI_ASIZE_16;
       wrapsize = `AXI_ASIZE_8;
       wraplen = total_bytes_ext[3:0];
       wrapalignmask = 7'b0;
     end else begin
       wrapfitsize = 3'b0;
       wrapsize = 3'b0;
       wraplen = 4'b0;
       wrapalignmask = 7'b0;
     end
   end
 end



if(DS_DATA_WIDTH==32) begin:wrmsk32
   always @(*)
     begin : wrap_size_len
     if (total_bytes_ext[2]&&(DS_DATA_WIDTH>=32)) begin
       wrapfitsize = `AXI_ASIZE_64;
       wrapsize = `AXI_ASIZE_32;
       wraplen = total_bytes_ext[5:2];
       wrapalignmask = {5'b0, 2'b11};
     end else if (total_bytes_ext[1]&&(DS_DATA_WIDTH>=16)) begin
       wrapfitsize = `AXI_ASIZE_32;
       wrapsize = `AXI_ASIZE_16;
       wraplen = total_bytes_ext[4:1];
       wrapalignmask = {6'b0, 1'b1};
     end else if (total_bytes_ext[0]&&(DS_DATA_WIDTH>=8))begin
       wrapfitsize = `AXI_ASIZE_16;
       wrapsize = `AXI_ASIZE_8;
       wraplen = total_bytes_ext[3:0];
       wrapalignmask = 7'b0;
     end else begin
       wrapfitsize = 3'b0;
       wrapsize = 3'b0;
       wraplen = 4'b0;
       wrapalignmask = 7'b0;
     end
   end
 end

endgenerate



/*

   always @(*)
       begin : wrap_size_len
   if (total_bytes_ext[6]&&(DS_DATA_WIDTH>=512)) begin
            wrapfitsize = `AXI_ASIZE_1024;
            wrapsize = `AXI_ASIZE_512;
            wraplen = total_bytes_ext[9:6];
            wrapalignmask = {1'b0, 6'b111111};
  end else
          if (total_bytes_ext[5]&&(DS_DATA_WIDTH>=256)) begin
                    wrapfitsize = `AXI_ASIZE_512;
                    wrapsize = `AXI_ASIZE_256;
                    wraplen = total_bytes_ext[8:5];
                    wrapalignmask = {2'b0, 5'b11111};
          end else if (total_bytes_ext[4]&&(DS_DATA_WIDTH>=128)) begin
                    wrapfitsize = `AXI_ASIZE_256;
                    wrapsize = `AXI_ASIZE_128;
                    wraplen = total_bytes_ext[7:4];
                    wrapalignmask = {3'b0, 4'b1111};
          end else if (total_bytes_ext[3]&&(DS_DATA_WIDTH>=64)) begin
                    wrapfitsize = `AXI_ASIZE_128;
                    wrapsize = `AXI_ASIZE_64;
            wraplen = total_bytes_ext[6:3];
                    wrapalignmask = {4'b0, 3'b111};
  end else if (total_bytes_ext[2]&&(DS_DATA_WIDTH>=32)) begin
            wrapfitsize = `AXI_ASIZE_64;
            wrapsize = `AXI_ASIZE_32;
            wraplen = total_bytes_ext[5:2];
                    wrapalignmask = {5'b0, 2'b11};
  end else if (total_bytes_ext[1]&&(DS_DATA_WIDTH>=16)) begin
            wrapfitsize = `AXI_ASIZE_32;
            wrapsize = `AXI_ASIZE_16;
            wraplen = total_bytes_ext[4:1];
                    wrapalignmask = {6'b0, 1'b1};
  end else if (total_bytes_ext[0]&&(DS_DATA_WIDTH>=8))begin
            wrapfitsize = `AXI_ASIZE_16;
            wrapsize = `AXI_ASIZE_8;
            wraplen = total_bytes_ext[3:0];
                    wrapalignmask = 7'b0;
  end else begin
            wrapfitsize = 3'b0;
            wrapsize = 3'b0;
            wraplen = 4'b0;
                    wrapalignmask = 7'b0;
                end
          end

*/

 assign working_addr = awaddr_s[DS_ADDR_AL_WIDTH:0] & wrapalignmask[DS_ADDR_AL_WIDTH:0];
 assign wrap_fits_mask = {{(TOTAL_BYTES_WIDTH-DS_ADDR_AL_WIDTH){1'b1}}, {DS_ADDR_AL_WIDTH{1'b0}}};
 assign  wrap_fits = ~|(total_bytes & wrap_fits_mask) & (awburst_s == `AXI_ABURST_WRAP);
 assign  wrap_is_incr = ~|(awaddr_s[TOTAL_BYTES_WIDTH-1:0] & total_bytes);
 assign  wrap_aligned = ~|working_addr & (awburst_s == `AXI_ABURST_WRAP) & ~bypass & ~wrap_is_incr & ~wrap_fits ;
 assign  wrap_split = ((|working_addr)) & (awburst_s == `AXI_ABURST_WRAP) & ~bypass & ~wrap_fits;
 assign wrap_boundary_mask = total_bytes;
 assign bytes_to_transfer_wrap1 = ~(awaddr_s[TOTAL_BYTES_WIDTH-1:0]) & wrap_boundary_mask;
 assign bytes_to_transfer = (wrap_split_reg) ? wrap_bytes_remaining_reg
                            : ((awburst_s == `AXI_ABURST_WRAP) ? bytes_to_transfer_wrap1
                            : total_bytes_masked);
generate
  if(US_DATA_WIDTH == 32)
    begin
      always @(*)
        begin : total_bytes_masked_p32
          case (awsize_s)
             `AXI_ASIZE_8    :
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
             `AXI_ASIZE_16   : //total_bytes_masked = {5'h0, awlen_s, ~awaddr_s[0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}}, awlen_s, ~awaddr_s[0]};
             `AXI_ASIZE_32   : //total_bytes_masked = {4'h0, awlen_s, ~awaddr_s[1:0]};
                               total_bytes_masked = {                                  awlen_s, ~awaddr_s[1:0]};
              default         :
                               total_bytes_masked =  {TOTAL_BYTES_WIDTH{1'b0}};
           endcase
        end
    end
  else if(US_DATA_WIDTH == 64)
    begin
      always @(*)
        begin : total_bytes_masked_p64
          case (awsize_s)
             `AXI_ASIZE_8    :
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
             `AXI_ASIZE_16   : //total_bytes_masked = {5'h0, awlen_s, ~awaddr_s[0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}} , awlen_s, ~awaddr_s[0]};
             `AXI_ASIZE_32   : //total_bytes_masked = {4'h0, awlen_s, ~awaddr_s[1:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}} , awlen_s, ~awaddr_s[1:0]};
             `AXI_ASIZE_64   : //total_bytes_masked = {3'h0, awlen_s, ~awaddr_s[2:0]};
                               total_bytes_masked = {                                   awlen_s, ~awaddr_s[2:0]};
              default         :
                               total_bytes_masked =  {TOTAL_BYTES_WIDTH{1'b0}};
           endcase
        end
    end
  else if(US_DATA_WIDTH == 128)
    begin
      always @(*)
        begin : total_bytes_masked_p128
          case (awsize_s)
             `AXI_ASIZE_8    :
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
             `AXI_ASIZE_16   : //total_bytes_masked = {5'h0, awlen_s, ~awaddr_s[0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}} , awlen_s, ~awaddr_s[0]};
             `AXI_ASIZE_32   : //total_bytes_masked = {4'h0, awlen_s, ~awaddr_s[1:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}} , awlen_s, ~awaddr_s[1:0]};
             `AXI_ASIZE_64   : //total_bytes_masked = {3'h0, awlen_s, ~awaddr_s[2:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-3){1'b0}} , awlen_s, ~awaddr_s[2:0]};
             `AXI_ASIZE_128  : //total_bytes_masked = {2'h0, awlen_s, ~awaddr_s[3:0]};
                               total_bytes_masked = {  awlen_s, ~awaddr_s[3:0]};
              default         :
                               total_bytes_masked =  {TOTAL_BYTES_WIDTH{1'b0}};
           endcase
        end
    end
  else if(US_DATA_WIDTH == 256)
    begin
      always @(*)
        begin : total_bytes_masked_p256
          case (awsize_s)
             `AXI_ASIZE_8    :
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
             `AXI_ASIZE_16   : //total_bytes_masked = {5'h0, awlen_s, ~awaddr_s[0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}},  awlen_s, ~awaddr_s[0]};
             `AXI_ASIZE_32   : //total_bytes_masked = {4'h0, awlen_s, ~awaddr_s[1:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}},  awlen_s, ~awaddr_s[1:0]};
             `AXI_ASIZE_64   : //total_bytes_masked = {3'h0, awlen_s, ~awaddr_s[2:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-3){1'b0}},  awlen_s, ~awaddr_s[2:0]};
             `AXI_ASIZE_128  : //total_bytes_masked = {2'h0, awlen_s, ~awaddr_s[3:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-4){1'b0}},  awlen_s, ~awaddr_s[3:0]};
              `AXI_ASIZE_256  : //total_bytes_masked = {1'h0, awlen_s, ~awaddr_s[4:0]};
                               total_bytes_masked = {                                   awlen_s, ~awaddr_s[4:0]};
              default         :
                               total_bytes_masked =  {TOTAL_BYTES_WIDTH{1'b0}};
           endcase
        end
    end
  else if(US_DATA_WIDTH == 512)
    begin
      always @(*)
        begin : total_bytes_masked_p512
          case (awsize_s)
             `AXI_ASIZE_8    :
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
             `AXI_ASIZE_16   : //total_bytes_masked = {5'h0, awlen_s, ~awaddr_s[0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}},  awlen_s, ~awaddr_s[0]};
             `AXI_ASIZE_32   : //total_bytes_masked = {4'h0, awlen_s, ~awaddr_s[1:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}},  awlen_s, ~awaddr_s[1:0]};
             `AXI_ASIZE_64   : //total_bytes_masked = {3'h0, awlen_s, ~awaddr_s[2:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-3){1'b0}},  awlen_s, ~awaddr_s[2:0]};
             `AXI_ASIZE_128  : //total_bytes_masked = {2'h0, awlen_s, ~awaddr_s[3:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-4){1'b0}},  awlen_s, ~awaddr_s[3:0]};
             `AXI_ASIZE_256  : //total_bytes_masked = {1'h0, awlen_s, ~awaddr_s[4:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-5){1'b0}},  awlen_s, ~awaddr_s[4:0]};
             `AXI_ASIZE_512  : total_bytes_masked = {      awlen_s, ~awaddr_s[5:0]};
              default         :
                               total_bytes_masked =  {TOTAL_BYTES_WIDTH{1'b0}};
           endcase
        end
    end
  else
    begin
      always @(*)
        begin : total_bytes_masked_pothers
          case (awsize_s)
             `AXI_ASIZE_8    :
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8){1'b0}}, awlen_s};
             `AXI_ASIZE_16   : //total_bytes_masked = {5'h0, awlen_s, ~awaddr_s[0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-1){1'b0}},  awlen_s, ~awaddr_s[0]};
             `AXI_ASIZE_32   : //total_bytes_masked = {4'h0, awlen_s, ~awaddr_s[1:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-2){1'b0}},  awlen_s, ~awaddr_s[1:0]};
             `AXI_ASIZE_64   : //total_bytes_masked = {3'h0, awlen_s, ~awaddr_s[2:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-3){1'b0}},  awlen_s, ~awaddr_s[2:0]};
             `AXI_ASIZE_128  : //total_bytes_masked = {2'h0, awlen_s, ~awaddr_s[3:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-4){1'b0}},  awlen_s, ~awaddr_s[3:0]};
             `AXI_ASIZE_256  : //total_bytes_masked = {1'h0, awlen_s, ~awaddr_s[4:0]};
                               total_bytes_masked = { {(TOTAL_BYTES_WIDTH-8-5){1'b0}},  awlen_s, ~awaddr_s[4:0]};
             `AXI_ASIZE_512  : total_bytes_masked = {      awlen_s, ~awaddr_s[5:0]};
              default         :
                               total_bytes_masked =  {TOTAL_BYTES_WIDTH{1'b0}};
           endcase
        end
    end
endgenerate

 assign offset_address = (wrap_split_reg) ? awaddr_aligned[DS_ADDR_AL_WIDTH-1:0] :
                            awaddr_s[DS_ADDR_AL_WIDTH-1:0];
 assign  half_carry =  bytes_to_transfer[0] & offset_address[0];
 assign  half_carry_double = half_carry & bytes_to_transfer[1];
 assign  word_carry =  {1'b0, bytes_to_transfer[1:0]} + {1'b0, offset_address[1:0]};
 assign  word_carry_double = word_carry[2] & bytes_to_transfer[2];
 generate
 if(DS_DATA_WIDTH>=64) begin: dword_carry_64
 	assign  dword_carry =  {1'b0, bytes_to_transfer[2:0]} + {1'b0, offset_address[2:0]};
 	assign  dword_carry_double = dword_carry[3] & bytes_to_transfer[3];
 end
 else begin: dword_carry_useless
	assign	dword_carry=4'h0;
	assign	dword_carry_double=1'h0;
 end
endgenerate
generate
 if(DS_DATA_WIDTH>=128) begin: qword_carry_128
 	assign  qword_carry =  {1'b0, bytes_to_transfer[3:0]} + {1'b0, offset_address[3:0]};
 	assign  qword_carry_double = qword_carry[4] & bytes_to_transfer[4];
 end
 else begin: qword_carry_useless
	assign	qword_carry=5'h0;
	assign	qword_carry_double=1'h0;
 end
endgenerate
generate
 if(DS_DATA_WIDTH>=256) begin: oword_carry_256
 	assign  oword_carry =  {1'b0, bytes_to_transfer[4:0]} + {1'b0, offset_address[4:0]};
 	assign  oword_carry_double = oword_carry[5] & bytes_to_transfer[5];
 end
 else begin: oword_carry_useless
	assign	oword_carry=6'h0;
	assign	oword_carry_double=1'h0;
 end
endgenerate

generate
  if(DS_DATA_WIDTH == 32)
    begin:bytes_lt_32
      assign  bytes_lt_one_byte    = ~|bytes_to_transfer;
      assign  bytes_lt_two_byte    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1];
      assign  bytes_lt_two_half    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1] & ~half_carry;
      assign  bytes_lt_four_half   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~half_carry_double;
      assign  bytes_lt_four_word   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~word_carry[2];
    end
  else if(DS_DATA_WIDTH == 64)
    begin:bytes_lt_64
      assign  bytes_lt_one_byte    = ~|bytes_to_transfer;
      assign  bytes_lt_two_byte    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1];
      assign  bytes_lt_two_half    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1] & ~half_carry;
      assign  bytes_lt_four_half   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~half_carry_double;
      assign  bytes_lt_four_word   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~word_carry[2];
      assign  bytes_lt_eight_word  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~word_carry_double;
      assign  bytes_lt_eight_dword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~dword_carry[3];
      assign  bytes_lt_sixt_dword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~dword_carry_double;
    end
  else if(DS_DATA_WIDTH == 128)
    begin:bytes_lt_128
      assign  bytes_lt_one_byte    = ~|bytes_to_transfer;
      assign  bytes_lt_two_byte    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1];
      assign  bytes_lt_two_half    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1] & ~half_carry;
      assign  bytes_lt_four_half   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~half_carry_double;
      assign  bytes_lt_four_word   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~word_carry[2];
      assign  bytes_lt_eight_word  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~word_carry_double;
      assign  bytes_lt_eight_dword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~dword_carry[3];
      assign  bytes_lt_sixt_dword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~dword_carry_double;
      assign  bytes_lt_sixt_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~qword_carry[4];
      assign  bytes_lt_ttwo_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~qword_carry_double;
    end
  else if(DS_DATA_WIDTH == 256)
    begin:bytes_lt_256
      assign  bytes_lt_one_byte    = ~|bytes_to_transfer;
      assign  bytes_lt_two_byte    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1];
      assign  bytes_lt_two_half    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1] & ~half_carry;
      assign  bytes_lt_four_half   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~half_carry_double;
      assign  bytes_lt_four_word   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~word_carry[2];
      assign  bytes_lt_eight_word  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~word_carry_double;
      assign  bytes_lt_eight_dword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~dword_carry[3];
      assign  bytes_lt_sixt_dword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~dword_carry_double;
      assign  bytes_lt_sixt_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~qword_carry[4];
      assign  bytes_lt_ttwo_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~qword_carry_double;
      assign  bytes_lt_ttwo_oword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~oword_carry[5];
      assign  bytes_lt_sfour_oword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:6] & ~oword_carry_double;
    end
  else if(DS_DATA_WIDTH == 512)
    begin:bytes_lt_512
      assign  bytes_lt_one_byte    = ~|bytes_to_transfer;
      assign  bytes_lt_two_byte    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1];
      assign  bytes_lt_two_half    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1] & ~half_carry;
      assign  bytes_lt_four_half   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~half_carry_double;
      assign  bytes_lt_four_word   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~word_carry[2];
      assign  bytes_lt_eight_word  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~word_carry_double;
      assign  bytes_lt_eight_dword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~dword_carry[3];
      assign  bytes_lt_sixt_dword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~dword_carry_double;
      assign  bytes_lt_sixt_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~qword_carry[4];
      assign  bytes_lt_ttwo_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~qword_carry_double;
      assign  bytes_lt_ttwo_oword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~oword_carry[5];
      assign  bytes_lt_sfour_oword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:6] & ~oword_carry_double;
    end
  else
    begin:bytes_lt_others
      assign  bytes_lt_one_byte    = ~|bytes_to_transfer;
      assign  bytes_lt_two_byte    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1];
      assign  bytes_lt_two_half    = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1] & ~half_carry;
      assign  bytes_lt_four_half   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~half_carry_double;
      assign  bytes_lt_four_word   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~word_carry[2];
      assign  bytes_lt_eight_word  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~word_carry_double;
      assign  bytes_lt_eight_dword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~dword_carry[3];
      assign  bytes_lt_sixt_dword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~dword_carry_double;
      assign  bytes_lt_sixt_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~qword_carry[4];
      assign  bytes_lt_ttwo_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~qword_carry_double;
      assign  bytes_lt_ttwo_oword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~oword_carry[5];
      assign  bytes_lt_sfour_oword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:6] & ~oword_carry_double;
    end
endgenerate
generate
  if(DS_DATA_WIDTH == 32)
    begin:incrsize_32
      always @(*)
       begin : size_lookup
             incrsize = DS_ADDR_AL_WIDTH;
             if ((bytes_lt_one_byte || (bytes_lt_two_byte && (&offset_address[DS_ADDR_AL_WIDTH-1:0])))&&(DS_DATA_WIDTH>=16)) begin
                 incrsize = `AXI_ASIZE_8;
             end else if ((bytes_lt_two_half || (bytes_lt_four_half && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=2) ? 1:0)])))&&(DS_DATA_WIDTH>=32)) begin
                 incrsize = `AXI_ASIZE_16;
             end else if ((bytes_lt_four_word || (bytes_lt_eight_word && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=3) ? 2:0)])))&&(DS_DATA_WIDTH>=64)) begin
                 incrsize = `AXI_ASIZE_32;
                end
       end
    end
  else if(DS_DATA_WIDTH == 64)
    begin:incrsize_64
 always @(*)
  begin : size_lookup
        incrsize = DS_ADDR_AL_WIDTH;
        if ((bytes_lt_one_byte || (bytes_lt_two_byte && (&offset_address[DS_ADDR_AL_WIDTH-1:0])))&&(DS_DATA_WIDTH>=16)) begin
            incrsize = `AXI_ASIZE_8;
        end else if ((bytes_lt_two_half || (bytes_lt_four_half && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=2) ? 1:0)])))&&(DS_DATA_WIDTH>=32)) begin
            incrsize = `AXI_ASIZE_16;
        end else if ((bytes_lt_four_word || (bytes_lt_eight_word && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=3) ? 2:0)])))&&(DS_DATA_WIDTH>=64)) begin
            incrsize = `AXI_ASIZE_32;
        end else if ((bytes_lt_eight_dword || (bytes_lt_sixt_dword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=4) ? 3:0)])))&&(DS_DATA_WIDTH>=128)) begin
            incrsize = `AXI_ASIZE_64;
        end
  end
    end
  else if(DS_DATA_WIDTH == 128)
    begin:incrsize_128
 always @(*)
  begin : size_lookup
        incrsize = DS_ADDR_AL_WIDTH;
        if ((bytes_lt_one_byte || (bytes_lt_two_byte && (&offset_address[DS_ADDR_AL_WIDTH-1:0])))&&(DS_DATA_WIDTH>=16)) begin
            incrsize = `AXI_ASIZE_8;
        end else if ((bytes_lt_two_half || (bytes_lt_four_half && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=2) ? 1:0)])))&&(DS_DATA_WIDTH>=32)) begin
            incrsize = `AXI_ASIZE_16;
        end else if ((bytes_lt_four_word || (bytes_lt_eight_word && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=3) ? 2:0)])))&&(DS_DATA_WIDTH>=64)) begin
            incrsize = `AXI_ASIZE_32;
        end else if ((bytes_lt_eight_dword || (bytes_lt_sixt_dword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=4) ? 3:0)])))&&(DS_DATA_WIDTH>=128)) begin
            incrsize = `AXI_ASIZE_64;
        end else if ((bytes_lt_sixt_qword || (bytes_lt_ttwo_qword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=5) ? 4:0)])))&&(DS_DATA_WIDTH>=256)) begin
            incrsize = `AXI_ASIZE_128;
        end
  end
    end
  else if(DS_DATA_WIDTH == 256)
    begin:incrsize_256
 always @(*)
  begin : size_lookup
        incrsize = DS_ADDR_AL_WIDTH;
        if ((bytes_lt_one_byte || (bytes_lt_two_byte && (&offset_address[DS_ADDR_AL_WIDTH-1:0])))&&(DS_DATA_WIDTH>=16)) begin
            incrsize = `AXI_ASIZE_8;
        end else if ((bytes_lt_two_half || (bytes_lt_four_half && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=2) ? 1:0)])))&&(DS_DATA_WIDTH>=32)) begin
            incrsize = `AXI_ASIZE_16;
        end else if ((bytes_lt_four_word || (bytes_lt_eight_word && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=3) ? 2:0)])))&&(DS_DATA_WIDTH>=64)) begin
            incrsize = `AXI_ASIZE_32;
        end else if ((bytes_lt_eight_dword || (bytes_lt_sixt_dword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=4) ? 3:0)])))&&(DS_DATA_WIDTH>=128)) begin
            incrsize = `AXI_ASIZE_64;
        end else if ((bytes_lt_sixt_qword || (bytes_lt_ttwo_qword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=5) ? 4:0)])))&&(DS_DATA_WIDTH>=256)) begin
            incrsize = `AXI_ASIZE_128;
        end else if ((bytes_lt_ttwo_oword || (bytes_lt_sfour_oword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=6) ? 4:0)])))&&(DS_DATA_WIDTH>=512)) begin
            incrsize = `AXI_ASIZE_256;
        end
  end
    end
  else if(DS_DATA_WIDTH == 512)
    begin:incrsize_512
 always @(*)
  begin : size_lookup
        incrsize = DS_ADDR_AL_WIDTH;
        if ((bytes_lt_one_byte || (bytes_lt_two_byte && (&offset_address[DS_ADDR_AL_WIDTH-1:0])))&&(DS_DATA_WIDTH>=16)) begin
            incrsize = `AXI_ASIZE_8;
        end else if ((bytes_lt_two_half || (bytes_lt_four_half && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=2) ? 1:0)])))&&(DS_DATA_WIDTH>=32)) begin
            incrsize = `AXI_ASIZE_16;
        end else if ((bytes_lt_four_word || (bytes_lt_eight_word && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=3) ? 2:0)])))&&(DS_DATA_WIDTH>=64)) begin
            incrsize = `AXI_ASIZE_32;
        end else if ((bytes_lt_eight_dword || (bytes_lt_sixt_dword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=4) ? 3:0)])))&&(DS_DATA_WIDTH>=128)) begin
            incrsize = `AXI_ASIZE_64;
        end else if ((bytes_lt_sixt_qword || (bytes_lt_ttwo_qword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=5) ? 4:0)])))&&(DS_DATA_WIDTH>=256)) begin
            incrsize = `AXI_ASIZE_128;
        end else if ((bytes_lt_ttwo_oword || (bytes_lt_sfour_oword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=6) ? 5:0)])))&&(DS_DATA_WIDTH>=512)) begin
            incrsize = `AXI_ASIZE_256;
        end
  end
    end
  else
    begin:incrsize_others
 always @(*)
  begin : size_lookup
        incrsize = DS_ADDR_AL_WIDTH;
        if ((bytes_lt_one_byte || (bytes_lt_two_byte && (&offset_address[DS_ADDR_AL_WIDTH-1:0])))&&(DS_DATA_WIDTH>=16)) begin
            incrsize = `AXI_ASIZE_8;
        end else if ((bytes_lt_two_half || (bytes_lt_four_half && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=2) ? 1:0)])))&&(DS_DATA_WIDTH>=32)) begin
            incrsize = `AXI_ASIZE_16;
        end else if ((bytes_lt_four_word || (bytes_lt_eight_word && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=3) ? 2:0)])))&&(DS_DATA_WIDTH>=64)) begin
            incrsize = `AXI_ASIZE_32;
        end else if ((bytes_lt_eight_dword || (bytes_lt_sixt_dword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=4) ? 3:0)])))&&(DS_DATA_WIDTH>=128)) begin
            incrsize = `AXI_ASIZE_64;
        end else if ((bytes_lt_sixt_qword || (bytes_lt_ttwo_qword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=5) ? 4:0)])))&&(DS_DATA_WIDTH>=256)) begin
            incrsize = `AXI_ASIZE_128;
        end else if ((bytes_lt_ttwo_oword || (bytes_lt_sfour_oword && (&offset_address[DS_ADDR_AL_WIDTH-1:((DS_ADDR_AL_WIDTH>=6) ? 4:0)])))&&(DS_DATA_WIDTH>=512)) begin
            incrsize = `AXI_ASIZE_256;
        end
  end
    end
endgenerate
  assign final_address = {1'b0, offset_address} + {1'b0, bytes_to_transfer_large[DS_ADDR_AL_WIDTH-1:0]};
  assign overflow =  final_address[DS_ADDR_AL_WIDTH];
  assign bytes_to_transfer_large = {8'h0, bytes_to_transfer};
  assign incrlenmaxsize =  bytes_to_transfer_large[DS_ADDR_AL_WIDTH+:((DS_AXI3==1) ? 4 : 8)] + 4'b1;
  assign incrlen = (overflow) ? incrlenmaxsize : ((DS_AXI3==1) ? {4'b0000,bytes_to_transfer_large[DS_ADDR_AL_WIDTH+:4]}:bytes_to_transfer_large[DS_ADDR_AL_WIDTH+:8]);

endmodule
`include "Axi_undefs.v"
