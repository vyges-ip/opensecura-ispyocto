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
//=========================================================================
//==maskcntl: mask the incoming transctions to garantee the outgoing outstanding transactions
//====meet the outstanding configs
//=========================================================================
module maskcntl
  (
    // Master Interface address channel handshake signals
    awvalid_m,
    awready_m,
    arvalid_m,
    arready_m,
    // Lock control signals
    pre_awvalid,
    pre_arvalid,
    awlock,
    arlock,
    lock_seq,
    // QoS input signals
    aw_qos_s,
    ar_qos_s,
    // Master Interface return channel handshake signals
    bvalid_m,
    bready_m,
    rvalid_m,
    rready_m,
    // Mask signals
    wr_cnt_empty,
    mask_w,
    mask_r,
    // QoS output signals
    aw_qos_m,
    ar_qos_m,
    // Miscellaneous connections
    aclk,
    aresetn
  );

  // ---------------------------------------------------------------------------
  //  parameters
  // ---------------------------------------------------------------------------
//read outstanding issues
parameter	RD_ISS=8;
//write outstanding issues
parameter	WR_ISS=8;

localparam	RCNT_WIDTH=$clog2(RD_ISS+1);
localparam	WCNT_WIDTH=$clog2(WR_ISS+1);
localparam	COMBCNT_WIDTH=(RCNT_WIDTH>WCNT_WIDTH) ? (RCNT_WIDTH+1) : (WCNT_WIDTH+1);
  // ---------------------------------------------------------------------------
  //  Port definitions
  // ---------------------------------------------------------------------------

  // Master Interface address channel handshake signals
  input             awvalid_m;
  input             awready_m;
  input             arvalid_m;
  input             arready_m;
  // Lock control signals
  input             pre_awvalid;
  input             pre_arvalid;
  input             awlock;
  input             arlock;
  // QoS input signals
  input [3:0]       aw_qos_s;
  input [3:0]       ar_qos_s;
  // Master Interface return channel handshake signals
  input             bvalid_m;
  input             bready_m;
  input             rvalid_m;
  input             rready_m;
  // Mask signals
  output            wr_cnt_empty;
  output            mask_w;
  output            mask_r;
  // QoS output signals
  output [3:0]      aw_qos_m;
  output [3:0]      ar_qos_m;
  // Lock sequence signal
  output            lock_seq;
  // Miscelaneous connections
  input             aclk;
  input             aresetn;

  //------------------------------------------------------------------------------
  // Wires
  //------------------------------------------------------------------------------

  wire              push_rd;         // Read address accepted;
  wire              push_wr;         // Write address accepted
  wire              pop_rd;          // Last read beat accepted
  wire              pop_wr;          // Write transaction accepted
  wire              next_wr_cnt_empty;     // Next Write counter empty
  wire              wr_cnt_en;
  wire              rd_cnt_en;
  wire              comb_cnt_en;
  wire              wr_mask_en;
  wire              rd_mask_en;
  wire  [RCNT_WIDTH-1:0]            next_rd_cnt;     // next outstanding reads count
  wire  [WCNT_WIDTH-1:0]            next_wr_cnt;     // next outstanding writes count
  reg   [COMBCNT_WIDTH-1:0]       next_comb_cnt;      // next outstanding trans count
  reg  [WCNT_WIDTH-1:0]             wr_iss_d;
  reg  [RCNT_WIDTH-1:0]             rd_iss_d;
  reg               next_mask_w;
  reg               next_mask_r;

  wire              nxt_lock_seq;
  wire              lock_seq_en;

  wire [3:0]        aw_qos_s;
  wire [3:0]        ar_qos_s;


  //------------------------------------------------------------------------------
  // Registers
  //------------------------------------------------------------------------------

  reg   [RCNT_WIDTH-1:0]            rd_cnt;          // outstanding reads count
  reg   [WCNT_WIDTH-1:0]            wr_cnt;          // outstanding writes count
  reg   [COMBCNT_WIDTH-1:0]       comb_cnt;        // outstanding trans count
  reg               lock_seq;
  reg               wr_cnt_empty;     // Write counter empty
  reg               reg_mask_w;
  reg               reg_mask_r;

  // ---------------------------------------------------------------------------
  //  start of code
  // ---------------------------------------------------------------------------

  //---------------------------- Drive QoS outputs ----------------------------


  // Pass through input Qos Value
  assign aw_qos_m = aw_qos_s;
  assign ar_qos_m = ar_qos_s;


 //-------------------- Outstanding transaction counters ---------------------

  assign push_rd = arvalid_m & arready_m;
  assign push_wr = awvalid_m & awready_m;

  assign pop_rd = rvalid_m & rready_m;
  assign pop_wr = bvalid_m & bready_m;

  // Determine next outstanding read counter
  assign next_rd_cnt = (push_rd & ~pop_rd) ? rd_cnt + 1'b1
                         : ((~push_rd & pop_rd) ? rd_cnt - 1'b1
                           : rd_cnt);

  // Determine next outstanding write counter
  assign next_wr_cnt = (push_wr & ~pop_wr) ? wr_cnt + 1'b1
                         : ((~push_wr & pop_wr) ? wr_cnt - 1'b1
                           : wr_cnt);

  // Determine next combined outstanding counter
   always @(*)
     begin : p_next_comb
      case({push_wr, push_rd, pop_wr, pop_rd})
        4'b0001,
        4'b0010,
        4'b0111,
        4'b1011  : next_comb_cnt = (comb_cnt - 2'h1);
        4'b0011  : next_comb_cnt = (comb_cnt - 2'h2);
        4'b0100,
        4'b1000,
        4'b1101,
        4'b1110  : next_comb_cnt = (comb_cnt + 2'h1);
        4'b1100  : next_comb_cnt = (comb_cnt + 2'h2);
        default  : next_comb_cnt = comb_cnt;
      endcase
     end // p_next_comb




  assign wr_cnt_en = push_wr ^ pop_wr;
  assign rd_cnt_en = push_rd ^ pop_rd;
  assign comb_cnt_en = push_wr | push_rd | pop_wr | pop_rd;

  assign next_wr_cnt_empty = (next_wr_cnt == 1'b0);

   always @(posedge aclk or negedge aresetn)
     begin : p_wr_cnt_seq
       if (!aresetn)
         begin
           wr_cnt <= {WCNT_WIDTH{1'b0}};
           wr_cnt_empty <= 1'b1;
           rd_cnt <= {RCNT_WIDTH{1'b0}};
           comb_cnt <= {3{1'b0}};
         end
       else
         begin
           if (wr_cnt_en)
           begin
                wr_cnt <= next_wr_cnt;
                wr_cnt_empty <= next_wr_cnt_empty;
           end
           if (rd_cnt_en)
           begin
                rd_cnt <= next_rd_cnt;
           end
           if (comb_cnt_en)
           begin
                comb_cnt <= next_comb_cnt;
           end
         end
     end // p_wr_cnt_seq

  //--------------------------- Mask Generation -------------------------------

  always @(next_wr_cnt or next_rd_cnt)
   begin : p_mask_comb
     wr_iss_d = WR_ISS;
     rd_iss_d = RD_ISS;

     next_mask_w = 1'b0;
     next_mask_r = 1'b0;

     // If the next write count will be reached then
     // mask all the write slave interfaces
     if (next_wr_cnt == wr_iss_d )
        next_mask_w = 1'b1;
     // If the next read count will be reached then
     // mask all the read slave interfaces
     if (next_rd_cnt ==  rd_iss_d )
        next_mask_r = 1'b1;
  end // p_mask_comb



  assign wr_mask_en =push_wr | pop_wr;
  assign rd_mask_en = push_rd | pop_rd;

   always @(posedge aclk or negedge aresetn)
     begin : p_wr_mask_seq
       if (!aresetn)
         begin
           reg_mask_w <= 1'b0;
         end
       else if (wr_mask_en)
         begin
           reg_mask_w <= next_mask_w;
         end
     end // p_wr_mask_seq

  assign mask_w = reg_mask_w;

   always @(posedge aclk or negedge aresetn)
     begin : p_rd_mask_seq
       if (!aresetn)
         begin
           reg_mask_r <= 1'b0;
         end
       else if (rd_mask_en)
         begin
           reg_mask_r <= next_mask_r;
         end
     end // p_rd_mask_seq

  assign mask_r = reg_mask_r;
  //--------------------------- Lock Seq Register -------------------------------

  assign nxt_lock_seq = ((pre_awvalid & awlock) | (pre_arvalid & arlock))
                        ? 1'b1
                        : (((pre_awvalid & ~awlock) | (pre_arvalid & ~arlock)) & ~|comb_cnt
                          ? 1'b0
                          : lock_seq);

  assign lock_seq_en = pre_awvalid || pre_arvalid;

  always @(posedge aclk or negedge aresetn)
     begin : p_lock_seq
       if (!aresetn)
         begin
           lock_seq <= 1'b0;
         end
       else if (lock_seq_en)
         begin
           lock_seq <= nxt_lock_seq;
         end
     end // p_lock_seq

  endmodule
