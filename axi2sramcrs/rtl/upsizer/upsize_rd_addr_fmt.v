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

module upsize_rd_addr_fmt
  (
   ar_lock_hndshk, ar_unlock_hndshk, ardata_valid, ardata_data,
   arready_s, arid_m, araddr_m, arlen_m, arsize_m, arburst_m,
   arcache_m, arprot_m, arlock_m, arvalid_m, aruser_m, arregion_m,
   aclk, aresetn, lock_seq, ardata_ready, arid_s, araddr_s, arlen_s,
   arsize_s, arburst_s, arcache_s, arprot_s, arvalid_s, arlock_s,
   aruser_s, arregion_s, arready_m
   );
`include "Axi.v"
parameter	ARID_WIDTH=4;
parameter	AWID_WIDTH=4;
parameter	ADDR_WIDTH=32;
parameter	US_DATA_WIDTH=128;
parameter	DS_DATA_WIDTH=256;
parameter	USER_WIDTH=4;
parameter	DS_AXI3=1'h1;
localparam	US_AXLEN_WIDTH=8;
localparam	DS_AXLEN_WIDTH=8;
localparam	DS_WSTRB_WIDTH=DS_DATA_WIDTH/8;
localparam	US_WSTRB_WIDTH=US_DATA_WIDTH/8;
localparam	DS_ADDR_AL_WIDTH=$clog2(DS_WSTRB_WIDTH);
localparam	US_ADDR_AL_WIDTH=$clog2(US_WSTRB_WIDTH);
localparam	ARFMT_WIDTH=1+1+ARID_WIDTH+DS_ADDR_AL_WIDTH*3+1+3;
localparam	US_AW_WIDTH=4+USER_WIDTH+AWID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam	US_AR_WIDTH=4+USER_WIDTH+ARID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam	US_R_WIDTH=USER_WIDTH+ARID_WIDTH+US_DATA_WIDTH+2+1;
localparam	US_W_WIDTH=USER_WIDTH+AWID_WIDTH+US_DATA_WIDTH+US_WSTRB_WIDTH+1;
localparam	US_B_WIDTH=USER_WIDTH+AWID_WIDTH+2;
localparam	AW_IDB_WIDTH=US_AW_WIDTH+US_ADDR_AL_WIDTH-DS_ADDR_AL_WIDTH;
localparam	AR_IDB_WIDTH=US_AR_WIDTH+ARFMT_WIDTH;
localparam	W_IDB_WIDTH=USER_WIDTH+US_DATA_WIDTH+US_WSTRB_WIDTH+1;
localparam	R_IDB_WIDTH=USER_WIDTH+ARID_WIDTH+US_DATA_WIDTH+2+1+DS_ADDR_AL_WIDTH;
localparam	B_IDB_WIDTH=USER_WIDTH+2+AWID_WIDTH;
localparam  RDATA_CAM_WIDTH_UP =DS_ADDR_AL_WIDTH-US_ADDR_AL_WIDTH;
localparam  TOTAL_BYTES_WIDTH = US_ADDR_AL_WIDTH+8;
  input                    aclk;
  input                    aresetn;
  input                    lock_seq;
  output                   ar_lock_hndshk;
  output                   ar_unlock_hndshk;
  input                    ardata_ready;
  output                   ardata_valid;
  output [ARFMT_WIDTH-1:0]            ardata_data;
  input [ARID_WIDTH-1:0]              arid_s;
  input [ADDR_WIDTH-1:0]             araddr_s;
  input [US_AXLEN_WIDTH-1:0]              arlen_s;
  input [2:0]              arsize_s;
  input [1:0]              arburst_s;
  input [3:0]              arcache_s;
  input [2:0]              arprot_s;
  input                    arvalid_s;
  input [1:0]                   arlock_s;
  output                   arready_s;
  input  [USER_WIDTH-1:0]	aruser_s;
  input  [3:0]			arregion_s;
  output [ARID_WIDTH-1:0]              arid_m;
  output [ADDR_WIDTH-1:0]             araddr_m;
  output [DS_AXLEN_WIDTH-1:0]              arlen_m;
  output [2:0]              arsize_m;
  output [1:0]              arburst_m;
  output [3:0]              arcache_m;
  output [2:0]              arprot_m;
  output [1:0]                   arlock_m;
  output                    arvalid_m;
  input                     arready_m;
  output  [USER_WIDTH-1:0]	aruser_m;
  output  [3:0]			arregion_m;
  reg [ADDR_WIDTH-1:0]                araddro;              // transaction start address (int)
  reg [7:0]                 arleno;               // transaction length (int)
  reg [2:0]                 arsizeo;              // transaction transfer size (int)
  reg [1:0]                 arbursto;             // transaction burst type (int)
  reg [ARID_WIDTH-1:0]                 arido;
  reg [3:0]                 arcacheo;
  reg [2:0]                 arproto;
  reg [1:0]                      arlocko;
  reg [USER_WIDTH-1:0]		arusero;
  reg [3:0]		arregiono;
  reg                       excl_override_reg;
  reg                       busy_reg;
  reg [TOTAL_BYTES_WIDTH-1:0]                 wrap_bytes_remaining_reg;
  reg [DS_ADDR_AL_WIDTH-1:0]                 align_mask;
  reg [DS_ADDR_AL_WIDTH-1:0]                 read_mask;
  wire                         n_response;
  reg [TOTAL_BYTES_WIDTH-1:0]                 total_bytes;
  reg [TOTAL_BYTES_WIDTH-1:0]                 total_bytes_masked;
  reg [2:0]                 wrapsize;
  reg [2:0]                 wrapfitsize;
  reg [3:0]                 wraplen;
  reg [DS_ADDR_AL_WIDTH:0]                 wrapalignmask;
  reg                       wrap_split_reg;
  reg [2:0]                 incrsize;
  wire                      slave_hndshk;
  wire                      master_hndshk;
  wire                      bypass;
  wire [ADDR_WIDTH-1:0]               araddr_aligned;
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
  wire [7:0]                arlen_1;
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
 assign slave_hndshk = arvalid_s & arready_s;
 assign master_hndshk = arvalid_m & arready_m;
assign	ardata_data = {
		wrap_fits,
		n_response,
		arid_s,
		((arburst_s == `AXI_ABURST_WRAP) & ~wrap_is_incr) ? addr_less_one[DS_ADDR_AL_WIDTH-1:0] & align_mask : final_address[DS_ADDR_AL_WIDTH-1:0] & align_mask,
		read_mask,
		araddr_s[DS_ADDR_AL_WIDTH-1:0] & align_mask,
		bypass,
		arsize_s
		};
 assign ardata_valid = new_transaction;
 always @(*)
  begin : p_new_addr_incr_en_r
    read_mask = {DS_ADDR_AL_WIDTH{1'b0}};
    case (arburst_s)
      `AXI_ABURST_FIXED : read_mask = {DS_ADDR_AL_WIDTH{1'b0}};
      `AXI_ABURST_WRAP  : read_mask = total_bytes[DS_ADDR_AL_WIDTH-1:0];
      `AXI_ABURST_INCR  : read_mask = {DS_ADDR_AL_WIDTH{1'b1}};
      default           : read_mask = {DS_ADDR_AL_WIDTH{1'b0}};
    endcase
  end
 assign n_response = wrap_split;
 assign buffers_ok = ardata_ready;
 assign  trans_complete = ~(wrap_split & ~wrap_split_reg);
 assign trans_in_progress = new_transaction | busy_reg;
 assign new_transaction = new_trans_avail & buffers_ok;
 assign new_trans_avail = arvalid_s & ~busy_reg;
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
 assign excl_override = (new_transaction) ? n_response | (|arleno[7:4]) : excl_override_reg;
 always @(posedge aclk or negedge aresetn)
   begin : excl_override_reg_p
      if (!aresetn) begin
          excl_override_reg <= 1'b0;
      end else if (new_transaction) begin
          excl_override_reg <= excl_override;
      end
    end
 assign arid_m =     arido;
 assign arcache_m =  arcacheo;
 assign arprot_m =   arproto;
 assign arlen_m =    arleno;
 assign arsize_m =   arsizeo;
 assign araddr_m =   araddro;
 assign arburst_m =  arbursto;
 assign arlock_m =   arlocko;
 assign aruser_m =   arusero;
 assign arregion_m = arregiono;
 assign arvalid_m = arvalid_s && trans_in_progress;
 assign arready_s = master_hndshk && trans_complete;
 always @(*) begin
      arleno = incrlen;
      arsizeo = incrsize;
      arbursto = `AXI_ABURST_INCR;
      arido = arid_s;
      arcacheo = arcache_s;
      arproto = arprot_s;
      arusero = aruser_s;
      arregiono = arregion_s;
      araddro = araddr_aligned;
      arlocko = {(arlock_s[1] | (lock_seq & ~trans_complete)),(arlock_s[0] && (~excl_override))};
      if (!wrap_split_reg) begin
         araddro = araddr_s;
         if (wrap_aligned) begin
            arleno = wraplen_i;
            arsizeo = wrapsize;
            arbursto = `AXI_ABURST_WRAP;
         end else if (bypass) begin
            arleno = arlen_s;
            arsizeo = arsize_s;
            arbursto = arburst_s;
         end else if (wrap_fits) begin
            araddro = araddr_aligned;
            arleno = arlen_1;
            arsizeo = wrapfitsize;
            arbursto = `AXI_ABURST_INCR;
         end
      end
  end
 assign wraplen_i = {4'b0000,wraplen};
 assign arlen_1 = {4'b0000,`AXI_ALEN_1};
 assign addr_less_one = araddr_s[TOTAL_BYTES_WIDTH-1:0] - {{TOTAL_BYTES_WIDTH{1'b0}},1'b1};
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
 assign araddr_aligned = {araddr_s[ADDR_WIDTH-1:TOTAL_BYTES_WIDTH],((araddr_s[TOTAL_BYTES_WIDTH-1:0]) & (~total_bytes))};
 assign wrap_split_reg_nxt = wrap_split & ~(wrap_split_reg);
 assign wrap_split_reg_wr_en = master_hndshk;
 always @(posedge aclk or negedge aresetn)
   begin : wrap_split_p
      if (!aresetn)
          wrap_split_reg <= 1'b0;
      else if (wrap_split_reg_wr_en)
          wrap_split_reg <= wrap_split_reg_nxt;
    end
  assign  ar_lock_hndshk = (slave_hndshk & arlock_s[1]);
  assign  ar_unlock_hndshk = (master_hndshk & ~arlock_m[1]);
 assign bypass = (arburst_s == `AXI_ABURST_FIXED ) || ~arcache_s[1] || (arlen_s == `AXI_ALEN_1);

generate

if(TOTAL_BYTES_WIDTH == 10) begin: tb10
always @(*)
  begin : total_bytes_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes = {2'h0, arlen_s};
       `AXI_ASIZE_16   : total_bytes = {1'h0, arlen_s, 1'b1};
       `AXI_ASIZE_32   : total_bytes = {      arlen_s, 2'b11};
       `AXI_ASIZE_64   : total_bytes = {      arlen_s[6:0], 3'b111};
       `AXI_ASIZE_128  : total_bytes = {      arlen_s[5:0], 4'b1111};
       `AXI_ASIZE_256  : total_bytes = {      arlen_s[4:0], 5'b11111};
       `AXI_ASIZE_512  : total_bytes = {      arlen_s[3:0], 6'b111111};
       `AXI_ASIZE_1024 : total_bytes = {2'h0, arlen_s};
       default         : total_bytes = {10'hx};
    endcase
  end
end
else if(TOTAL_BYTES_WIDTH == 11) begin: tb11
always @(*)
  begin : total_bytes_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes = {3'b0, arlen_s};
       `AXI_ASIZE_16   : total_bytes = {2'b0, arlen_s, 1'b1};
       `AXI_ASIZE_32   : total_bytes = {1'b0, arlen_s, 2'b11};
       `AXI_ASIZE_64   : total_bytes = {      arlen_s, 3'b111};
       `AXI_ASIZE_128  : total_bytes = {      arlen_s[6:0], 4'b1111};
       `AXI_ASIZE_256  : total_bytes = {      arlen_s[5:0], 5'b11111};
       `AXI_ASIZE_512  : total_bytes = {      arlen_s[4:0], 6'b111111};
       `AXI_ASIZE_1024 : total_bytes = {3'b0, arlen_s};
       default         : total_bytes = {11'b0};
    endcase
  end

end
else if(TOTAL_BYTES_WIDTH == 12) begin: tb12
always @(*)
  begin : total_bytes_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes = {4'b0, arlen_s};
       `AXI_ASIZE_16   : total_bytes = {3'b0, arlen_s, 1'b1};
       `AXI_ASIZE_32   : total_bytes = {2'b0, arlen_s, 2'b11};
       `AXI_ASIZE_64   : total_bytes = {1'b0, arlen_s, 3'b111};
       `AXI_ASIZE_128  : total_bytes = {      arlen_s, 4'b1111};
       `AXI_ASIZE_256  : total_bytes = {      arlen_s[6:0], 5'b11111};
       `AXI_ASIZE_512  : total_bytes = {      arlen_s[5:0], 6'b111111};
       `AXI_ASIZE_1024 : total_bytes = {4'b0, arlen_s};
       default         : total_bytes = {12'b0};
    endcase
  end

end
else if(TOTAL_BYTES_WIDTH == 13) begin: tb13
always @(*)
  begin : total_bytes_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes = {5'b0, arlen_s};
       `AXI_ASIZE_16   : total_bytes = {4'b0, arlen_s, 1'b1};
       `AXI_ASIZE_32   : total_bytes = {3'b0, arlen_s, 2'b11};
       `AXI_ASIZE_64   : total_bytes = {2'b0, arlen_s, 3'b111};
       `AXI_ASIZE_128  : total_bytes = {1'b0, arlen_s, 4'b1111};
       `AXI_ASIZE_256  : total_bytes = {      arlen_s, 5'b11111};
       `AXI_ASIZE_512  : total_bytes = {      arlen_s[6:0], 6'b111111};
       `AXI_ASIZE_1024 : total_bytes = {5'b0, arlen_s};
       default         : total_bytes = {13'b0};
    endcase
  end

end

else  begin: tb_o

always @(*)
  begin : total_bytes_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes = {6'b0, arlen_s};
       `AXI_ASIZE_16   : total_bytes = {5'b0, arlen_s, 1'b1};
       `AXI_ASIZE_32   : total_bytes = {4'b0, arlen_s, 2'b11};
       `AXI_ASIZE_64   : total_bytes = {3'b0, arlen_s, 3'b111};
       `AXI_ASIZE_128  : total_bytes = {2'b0, arlen_s, 4'b1111};
       `AXI_ASIZE_256  : total_bytes = {1'b0, arlen_s, 5'b11111};
       `AXI_ASIZE_512  : total_bytes = {      arlen_s, 6'b111111};
       `AXI_ASIZE_1024 : total_bytes = {6'b0, arlen_s};
       default         : total_bytes = {14'b0};
    endcase
  end

end

endgenerate


  assign total_bytes_ext = { {RDATA_CAM_WIDTH_UP{1'b0}},total_bytes };


generate

if(DS_DATA_WIDTH==512) begin: wmsk_512

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

if(DS_DATA_WIDTH==256) begin: wmsk_256

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

if(DS_DATA_WIDTH==128) begin: wmsk_128

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
      wrapfitsize = 3'b0;//x;
      wrapsize = 3'b0;//x;
      wraplen = 4'b0;//x;
      wrapalignmask = 7'b0;//x;
    end
  end

end
if(DS_DATA_WIDTH==64) begin: wmsk_64

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

if(DS_DATA_WIDTH==32) begin: wmsk_32

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


 assign working_addr = araddr_s[DS_ADDR_AL_WIDTH:0] & wrapalignmask;
 assign wrap_fits_mask = ({(TOTAL_BYTES_WIDTH-DS_ADDR_AL_WIDTH){1'b1}}<<DS_ADDR_AL_WIDTH);
 assign  wrap_fits = ~|(total_bytes & wrap_fits_mask) & (arburst_s == `AXI_ABURST_WRAP);
 assign  wrap_is_incr = ~|(araddr_s[TOTAL_BYTES_WIDTH-1:0] & total_bytes);
 assign  wrap_aligned = ~|working_addr & (arburst_s == `AXI_ABURST_WRAP) & ~bypass & ~wrap_is_incr & ~wrap_fits ;
 assign  wrap_split = ((|working_addr)) & (arburst_s == `AXI_ABURST_WRAP) & ~bypass & ~wrap_fits;
 assign wrap_boundary_mask = total_bytes;
 assign bytes_to_transfer_wrap1 = ~(araddr_s[TOTAL_BYTES_WIDTH-1:0]) & wrap_boundary_mask;
 assign bytes_to_transfer = (wrap_split_reg) ? wrap_bytes_remaining_reg
                            : ((arburst_s == `AXI_ABURST_WRAP) ? bytes_to_transfer_wrap1
                            : total_bytes_masked);
generate
if(TOTAL_BYTES_WIDTH == 10) begin:tbm10
always @(*)
  begin : total_bytes_masked_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes_masked = { 2'h0, arlen_s};
       `AXI_ASIZE_16   : total_bytes_masked = { 1'h0, arlen_s, ~araddr_s[0]};
       `AXI_ASIZE_32   : total_bytes_masked = {       arlen_s, ~araddr_s[1:0]};
       `AXI_ASIZE_64   : total_bytes_masked = {       arlen_s[6:0], ~araddr_s[2:0]};
       `AXI_ASIZE_128  : total_bytes_masked = {       arlen_s[5:0], ~araddr_s[3:0]};
       `AXI_ASIZE_256  : total_bytes_masked = {       arlen_s[4:0], ~araddr_s[4:0]};
       `AXI_ASIZE_512  : total_bytes_masked = {       arlen_s[3:0], ~araddr_s[5:0]};
       `AXI_ASIZE_1024 : total_bytes_masked = { 2'h0, arlen_s};
       default         : total_bytes_masked = {10{1'b0}};
    endcase
 end
end


else if(TOTAL_BYTES_WIDTH == 11) begin:tbm11
always @(*)
  begin : total_bytes_masked_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes_masked = { 3'h0, arlen_s};
       `AXI_ASIZE_16   : total_bytes_masked = { 2'h0, arlen_s, ~araddr_s[0]};
       `AXI_ASIZE_32   : total_bytes_masked = { 1'h0, arlen_s, ~araddr_s[1:0]};
       `AXI_ASIZE_64   : total_bytes_masked = {       arlen_s, ~araddr_s[2:0]};
       `AXI_ASIZE_128  : total_bytes_masked = {       arlen_s[6:0], ~araddr_s[3:0]};
       `AXI_ASIZE_256  : total_bytes_masked = {       arlen_s[5:0], ~araddr_s[4:0]};
       `AXI_ASIZE_512  : total_bytes_masked = {       arlen_s[4:0], ~araddr_s[5:0]};
       `AXI_ASIZE_1024 : total_bytes_masked = { 3'h0, arlen_s};
       default         : total_bytes_masked = {11{1'b0}};
    endcase
 end
end


else if(TOTAL_BYTES_WIDTH == 12) begin:tbm12
always @(*)
  begin : total_bytes_masked_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes_masked = { 4'h0, arlen_s};
       `AXI_ASIZE_16   : total_bytes_masked = { 3'h0, arlen_s, ~araddr_s[0]};
       `AXI_ASIZE_32   : total_bytes_masked = { 2'h0, arlen_s, ~araddr_s[1:0]};
       `AXI_ASIZE_64   : total_bytes_masked = { 1'b0, arlen_s, ~araddr_s[2:0]};
       `AXI_ASIZE_128  : total_bytes_masked = {       arlen_s, ~araddr_s[3:0]};
       `AXI_ASIZE_256  : total_bytes_masked = {       arlen_s[6:0], ~araddr_s[4:0]};
       `AXI_ASIZE_512  : total_bytes_masked = {       arlen_s[5:0], ~araddr_s[5:0]};
       `AXI_ASIZE_1024 : total_bytes_masked = { 4'h0, arlen_s};
       default         : total_bytes_masked = {12{1'b0}};
    endcase
 end
end


else if(TOTAL_BYTES_WIDTH == 13) begin:tbm13
always @(*)
  begin : total_bytes_masked_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes_masked = { 5'h0, arlen_s};
       `AXI_ASIZE_16   : total_bytes_masked = { 4'h0, arlen_s, ~araddr_s[0]};
       `AXI_ASIZE_32   : total_bytes_masked = { 3'h0, arlen_s, ~araddr_s[1:0]};
       `AXI_ASIZE_64   : total_bytes_masked = { 2'h0, arlen_s, ~araddr_s[2:0]};
       `AXI_ASIZE_128  : total_bytes_masked = { 1'h0, arlen_s, ~araddr_s[3:0]};
       `AXI_ASIZE_256  : total_bytes_masked = {       arlen_s, ~araddr_s[4:0]};
       `AXI_ASIZE_512  : total_bytes_masked = {       arlen_s[6:0], ~araddr_s[5:0]};
       `AXI_ASIZE_1024 : total_bytes_masked = { 5'h0, arlen_s};
       default         : total_bytes_masked = {13{1'b0}};
    endcase
 end
end


else begin:tbm_o
always @(*)
  begin : total_bytes_masked_p
    case (arsize_s)
       `AXI_ASIZE_8    : total_bytes_masked = { 6'h0, arlen_s};
       `AXI_ASIZE_16   : total_bytes_masked = { 5'h0, arlen_s, ~araddr_s[0]};
       `AXI_ASIZE_32   : total_bytes_masked = { 4'h0, arlen_s, ~araddr_s[1:0]};
       `AXI_ASIZE_64   : total_bytes_masked = { 3'h0, arlen_s, ~araddr_s[2:0]};
       `AXI_ASIZE_128  : total_bytes_masked = { 2'h0, arlen_s, ~araddr_s[3:0]};
       `AXI_ASIZE_256  : total_bytes_masked = { 1'h0, arlen_s, ~araddr_s[4:0]};
       `AXI_ASIZE_512  : total_bytes_masked = {       arlen_s, ~araddr_s[5:0]};
       `AXI_ASIZE_1024 : total_bytes_masked = { 6'h0, arlen_s};
       default         : total_bytes_masked = {14{1'b0}};
    endcase
 end
end


endgenerate




 always @(*)
  begin : align_mask_p
    case (arsize_s)
       `AXI_ASIZE_8    : align_mask = {DS_ADDR_AL_WIDTH{1'b1}};
       `AXI_ASIZE_16   : align_mask = {DS_ADDR_AL_WIDTH{1'b1}}<<1;
       `AXI_ASIZE_32   : align_mask = {DS_ADDR_AL_WIDTH{1'b1}}<<2;
       `AXI_ASIZE_64   : align_mask = {DS_ADDR_AL_WIDTH{1'b1}}<<3;
       `AXI_ASIZE_128  : align_mask = {DS_ADDR_AL_WIDTH{1'b1}}<<4;
       `AXI_ASIZE_256  : align_mask = {DS_ADDR_AL_WIDTH{1'b1}}<<5;
       `AXI_ASIZE_512  : align_mask = {DS_ADDR_AL_WIDTH{1'b1}}<<6;
       default         : align_mask = {DS_ADDR_AL_WIDTH{1'b0}};
    endcase
  end
 assign offset_address = (wrap_split_reg) ? araddr_aligned[DS_ADDR_AL_WIDTH-1:0] :
                            araddr_s[DS_ADDR_AL_WIDTH-1:0];
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
 assign  bytes_lt_one_byte   = ~|bytes_to_transfer;
 assign  bytes_lt_two_byte   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1];
 assign  bytes_lt_two_half   = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:1] & ~half_carry;
 assign  bytes_lt_four_half  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~half_carry_double;
 assign  bytes_lt_four_word  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:2] & ~word_carry[2];
 assign  bytes_lt_eight_word = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~word_carry_double;
 assign  bytes_lt_eight_dword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:3] & ~dword_carry[3];
 assign  bytes_lt_sixt_dword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~dword_carry_double;
 assign  bytes_lt_sixt_qword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:4] & ~qword_carry[4];
 assign  bytes_lt_ttwo_qword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~qword_carry_double;
 assign  bytes_lt_ttwo_oword  = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:5] & ~oword_carry[5];
 assign  bytes_lt_sfour_oword = ~|bytes_to_transfer[TOTAL_BYTES_WIDTH-1:6] & ~oword_carry_double;
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
  assign final_address = {1'b0, offset_address} + {1'b0, bytes_to_transfer_large[DS_ADDR_AL_WIDTH-1:0]};
  assign overflow =  final_address[DS_ADDR_AL_WIDTH];
  assign bytes_to_transfer_large = {8'h0, bytes_to_transfer};
  assign incrlenmaxsize =  bytes_to_transfer_large[DS_ADDR_AL_WIDTH+:((DS_AXI3==1) ? 4 : 8)] + 4'b1;
  assign incrlen = (overflow) ? incrlenmaxsize : ((DS_AXI3==1) ? {4'b0000,bytes_to_transfer_large[DS_ADDR_AL_WIDTH+:4]} : bytes_to_transfer_large[DS_ADDR_AL_WIDTH+:8]);

endmodule
`include "Axi_undefs.v"
