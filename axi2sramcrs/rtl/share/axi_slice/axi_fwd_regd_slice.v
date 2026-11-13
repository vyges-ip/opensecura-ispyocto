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

module axi_fwd_regd_slice
  (
   aresetn,
   aclk,
   valid_src,
   ready_dst,
   payload_src,
   ready_src,
   valid_dst,
   payload_dst
   );
  parameter PAYLD_WIDTH = 2;
  parameter PAYLD_MAX = (PAYLD_WIDTH - 1);
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
  wire                  payload_en;
  wire                  valid_dst_en;
  reg                   ivalid_dst;
  assign valid_dst = ivalid_dst;
  assign ready_src = ready_dst | ~ivalid_dst;
  //end
  always @(posedge aclk or negedge aresetn)
  begin : p_payload_dst
    if (~aresetn)
      payload_dst <= {PAYLD_WIDTH{1'b0}};
    else if (payload_en)
      payload_dst <= payload_src;
  end
  assign payload_en = ((valid_src & ~ivalid_dst) |
                       (valid_src & ivalid_dst & ready_dst));
  assign valid_dst_en = (valid_src | ready_dst);
  always @(posedge aclk or negedge aresetn)
  begin : p_ivalid_dst
    if (~aresetn)
      ivalid_dst <= 1'b0;
    else if (valid_dst_en)
      ivalid_dst <= valid_src;
  end

endmodule
