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

module axi_ful_regd_slice
  (
   aresetn,
   aclk,
   valid_src,
   ready_dst,
   payload_src,
   valid_dst,
   ready_src,
   payload_dst
   );
  parameter PAYLD_WIDTH = 2;
  parameter PAYLD_MAX = (PAYLD_WIDTH - 1);
  parameter NUM_SEL_LINES  = (PAYLD_WIDTH + 7) / 8;
  parameter REM_SEL_LINE   = (((PAYLD_WIDTH - 1) % 8) + 1);
  input                 aresetn;
  input                 aclk;
  input                 valid_src;
  input                 ready_dst;
  input [PAYLD_MAX:0]   payload_src;
  output                valid_dst;
  output                ready_src;
  output [PAYLD_MAX:0]  payload_dst;
  wire                  aresetn;
  wire                  aclk;
  wire                  valid_src;
  wire                  ready_dst;
  wire [PAYLD_MAX:0]    payload_src;
  wire                  valid_dst;
  wire                  ready_src;
  reg [PAYLD_MAX:0]     payload_dst;
  wire                  enable_a;
  wire                  enable_b;
  wire                  load_sel_en;
  wire                  nxt_valid_a;
  wire                  nxt_valid_b;
  reg [PAYLD_MAX:0]     payload_reg_a;
  reg [PAYLD_MAX:0]     payload_reg_b;
  reg                   valid_a;
  reg                   valid_b;
  wire                  iready_src;
  wire                  ivalid_dst;
  reg                   load_b;
  reg [NUM_SEL_LINES:0] sel_b;
  wire                  sel_b_en;
  assign valid_dst = ivalid_dst;
  assign ready_src = iready_src;
  always @(sel_b or payload_reg_a or payload_reg_b)
  begin : p_payload_mux
    integer i;
    integer j;
    integer base;
    base = 0;
    for (i=1; i<NUM_SEL_LINES; i=i+1)
    begin
      for (j=base; j<(base+8); j=j+1)
        payload_dst[j] = (sel_b[i] ? payload_reg_b[j] : payload_reg_a[j]);
      base = (8 * i);
    end
    for (j=base; j<(base+REM_SEL_LINE); j=j+1)
      payload_dst[j] = (sel_b[NUM_SEL_LINES] ? payload_reg_b[j] : payload_reg_a[j]);
  end
  assign enable_a = ~load_b & valid_src & iready_src;
  assign enable_b = load_b & valid_src & iready_src;
  assign load_sel_en = valid_src & iready_src;
  assign nxt_valid_a = (enable_a ? 1'b1
                      :((~sel_b[0] & ivalid_dst & ready_dst) ? 1'b0
                        : valid_a));
  assign nxt_valid_b = (enable_b ? 1'b1
                      :((sel_b[0] & ivalid_dst & ready_dst) ? 1'b0
                        : valid_b));
  //end
  always @(posedge aclk or negedge aresetn)
  begin : p_payload_reg_a
    if (~aresetn)
      payload_reg_a <= {PAYLD_WIDTH{1'b0}};
    else if (enable_a)
      payload_reg_a <= payload_src;
  end
  //end
  always @(posedge aclk or negedge aresetn)
  begin : p_payload_reg_b
    if (~aresetn)
      payload_reg_b <= {PAYLD_WIDTH{1'b0}};
    else if (enable_b)
      payload_reg_b <= payload_src;
  end
  always @(posedge aclk or negedge aresetn)
  begin : p_valid_a
    if (~aresetn)
      valid_a <= 1'b0;
    else
      valid_a <= nxt_valid_a;
  end
  always @(posedge aclk or negedge aresetn)
  begin : p_valid_b
    if (~aresetn)
      valid_b <= 1'b0;
    else
      valid_b <= nxt_valid_b;
  end
  assign iready_src = ~valid_a | ~valid_b;
  assign ivalid_dst = valid_a | valid_b;
  always @(posedge aclk or negedge aresetn)
  begin : p_load_b
    if (~aresetn)
      load_b <= 1'b0;
    else
      if (load_sel_en)
        load_b <= ~load_b;
  end
  assign sel_b_en = ((~sel_b[0] & nxt_valid_b & (~valid_a | ready_dst)) |
                     ( sel_b[0] & nxt_valid_a & (~valid_b | ready_dst)));

  always @(posedge aclk or negedge aresetn)
  begin : p_sel_b
    if (~aresetn)
      sel_b <= {NUM_SEL_LINES+1{1'b0}};
    else
      if (sel_b_en)
        sel_b <= ~sel_b;
  end
endmodule
