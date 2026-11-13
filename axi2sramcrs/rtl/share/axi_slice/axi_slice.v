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

`include "defs_axi_slice.v"
module axi_slice
  (
   aresetn,
   aclk,
   src_data,
   src_valid,
   src_ready,
   dst_data,
   dst_valid,
   dst_ready
   );
  parameter HNDSHK_MODE = `RS_REV_REG;
  parameter PAYLD_WIDTH = 12;
  parameter PAYLD_MAX   = (PAYLD_WIDTH - 1);
  parameter INT_HNDSHK_MODE = HNDSHK_MODE;

  input                 aresetn;
  input                 aclk;
  input  [PAYLD_MAX:0]  src_data;
  output [PAYLD_MAX:0]  dst_data;
  input                 src_valid;
  output                src_ready;
  output                dst_valid;
  input                 dst_ready;
  wire [PAYLD_MAX:0]    payld_src;
  wire [PAYLD_MAX:0]    payld_regd;
  wire [PAYLD_MAX:0]    payld_fwd_regd;
  wire [PAYLD_MAX:0]    payld_rev_regd;
  wire                  valid_regd;
  wire                  valid_fwd_regd;
  wire                  valid_rev_regd;
  wire                  ready_regd;
  wire                  ready_fwd_regd;
  wire                  ready_rev_regd;
  assign src_ready = ((INT_HNDSHK_MODE == `RS_REGD)         ? ready_regd
                       :((INT_HNDSHK_MODE == `RS_FWD_REG)   ? ready_fwd_regd
                         :((INT_HNDSHK_MODE == `RS_REV_REG) ? ready_rev_regd
                           : dst_ready)));
  assign dst_data = ((INT_HNDSHK_MODE == `RS_REGD)         ? payld_regd
                      :((INT_HNDSHK_MODE == `RS_FWD_REG)   ? payld_fwd_regd
                        :((INT_HNDSHK_MODE == `RS_REV_REG) ? payld_rev_regd
                          : src_data)));
  assign dst_valid = ((INT_HNDSHK_MODE == `RS_REGD)         ? valid_regd
                       :((INT_HNDSHK_MODE == `RS_FWD_REG)   ? valid_fwd_regd
                         :((INT_HNDSHK_MODE == `RS_REV_REG) ? valid_rev_regd
                           : src_valid)));
  assign payld_src = src_data;
  axi_ful_regd_slice #(
          .PAYLD_WIDTH (PAYLD_WIDTH)
          ) u_ful_regd_slice
    (
     .aresetn        (aresetn),
     .aclk           (aclk),
     .valid_src       (src_valid),
     .ready_dst       (dst_ready),
     .payload_src     (payld_src),
     .ready_src       (ready_regd),
     .valid_dst       (valid_regd),
     .payload_dst     (payld_regd)
     );
  axi_fwd_regd_slice #(
          .PAYLD_WIDTH(PAYLD_WIDTH)
          ) u_fwd_regd_slice
    (
     .aresetn        (aresetn),
     .aclk           (aclk),
     .valid_src       (src_valid),
     .ready_dst       (dst_ready),
     .payload_src     (payld_src),
     .ready_src       (ready_fwd_regd),
     .valid_dst       (valid_fwd_regd),
     .payload_dst     (payld_fwd_regd)
     );
  axi_rev_regd_slice #(
          .PAYLD_WIDTH(PAYLD_WIDTH)
          ) u_rev_regd_slice
    (
     .aresetn        (aresetn),
     .aclk           (aclk),
     .valid_src       (src_valid),
     .ready_dst       (dst_ready),
     .payload_src     (payld_src),
     .ready_src       (ready_rev_regd),
     .valid_dst       (valid_rev_regd),
     .payload_dst     (payld_rev_regd)
     );

endmodule
`include "undefs_axi_slice.v"
