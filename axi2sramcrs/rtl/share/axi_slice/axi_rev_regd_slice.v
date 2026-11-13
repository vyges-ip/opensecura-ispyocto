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

module axi_rev_regd_slice
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
  parameter PAYLD_WIDTH = 1;
  parameter PAYLD_MAX      = PAYLD_WIDTH - 1;
  parameter NUM_SEL_LINES  = (PAYLD_WIDTH + 7) / 8;
  parameter REM_SEL_LINE   = (((PAYLD_WIDTH - 1) % 8) + 1);
  input                 aclk;
  input                 aresetn;
  input [PAYLD_MAX:0]   payload_src;
  output [PAYLD_MAX:0]  payload_dst;
  input                 valid_src;
  output                ready_src;
  output                valid_dst;
  input                 ready_dst;
  reg [PAYLD_MAX:0]     payload_dst;
  reg [PAYLD_MAX:0]     payload_reg;
  wire                  buffer_en;
  wire                  buffer_full_en;
  reg [NUM_SEL_LINES:0] buffer_full;
  assign buffer_en = (valid_src & ~buffer_full[0] & ~ready_dst);
  always @(negedge aresetn or posedge aclk)
  begin : p_buffer_seq
    if (~aresetn)
      payload_reg <= {PAYLD_WIDTH{1'b0}};
    else if (buffer_en)
      payload_reg <= payload_src;
  end
  assign buffer_full_en = (buffer_en | ready_dst);
  always @(negedge aresetn or posedge aclk)
  begin : p_buffer_full_seq
    if (~aresetn)
      buffer_full <= {NUM_SEL_LINES+1{1'b0}};
    else if (buffer_full_en)
      buffer_full <= {NUM_SEL_LINES+1{buffer_en}};
  end
  assign ready_src = ~buffer_full[0];
  assign valid_dst = (valid_src | buffer_full[0]);
  always @(buffer_full or payload_reg or payload_src)
  begin : p_payload_mux
    integer i;
    integer j;
    integer base;
    base = 0;
    for (i=1; i<NUM_SEL_LINES; i=i+1)
    begin
      for (j=base; j<(base+8); j=j+1)
        payload_dst[j] = (buffer_full[i] ? payload_reg[j] : payload_src[j]);
      base = (8 * i);
    end
    for (j=base; j<(base+REM_SEL_LINE); j=j+1)
      payload_dst[j] = (buffer_full[NUM_SEL_LINES] ? payload_reg[j]
                         : payload_src[j]);
  end
endmodule
