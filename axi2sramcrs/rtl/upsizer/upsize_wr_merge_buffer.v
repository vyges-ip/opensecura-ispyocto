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

module upsize_wr_merge_buffer
  (
  wdata_out,
  wstrb_out,
  merge_skid_valid,
  wdata_in,
  wstrb_in,
  data_select,
  merge,
  merge_clear,
  aclk,
  aresetn
  );
parameter       US_DATA_WIDTH=128;
parameter       DS_DATA_WIDTH=256;
localparam      US_WSTRB_WIDTH=US_DATA_WIDTH/8;
localparam      DS_WSTRB_WIDTH=DS_DATA_WIDTH/8;
localparam	DATA_RATIO=(DS_DATA_WIDTH/US_DATA_WIDTH);
  input                                 aclk;
  input                                 aresetn;
  output [DS_DATA_WIDTH-1:0]                        wdata_out;
  output [DS_WSTRB_WIDTH-1:0]                         wstrb_out;
  output                                merge_skid_valid;
  input  [US_DATA_WIDTH-1:0]                        wdata_in;
  input  [US_WSTRB_WIDTH-1:0]                         wstrb_in;
  input  [DATA_RATIO-1:0]                          data_select;
  input                                 merge;
  input                                 merge_clear;
   wire  [DS_DATA_WIDTH-1:0]                        wide_wdata_in;
   wire  [DS_WSTRB_WIDTH-1:0]                         wide_wstrb_in;
   wire  [DS_WSTRB_WIDTH-1:0]                         wide_wstrb_masked;
   wire  [DS_WSTRB_WIDTH-1:0]                         wstrb_out_i;
   wire                                 update_strb;
   wire                                 strb_skid_valid_wr;
   wire                                 strb_skid_valid_nxt;
   wire                                 all_bytes;
   wire [DS_WSTRB_WIDTH-1:0]    merge_byte,merge_strb,next_strb;
   reg                                  strb_skid_valid;
   reg  [7:0]   merged_byte[DS_WSTRB_WIDTH-1:0];
   reg          merged_strb[DS_WSTRB_WIDTH-1:0];
   assign wide_wdata_in     = {DATA_RATIO{wdata_in}};
   assign wide_wstrb_masked = {DATA_RATIO{wstrb_in}} | {DS_WSTRB_WIDTH{all_bytes}};
   assign wide_wstrb_in     = {DATA_RATIO{wstrb_in}};
   assign all_bytes = data_select == {DATA_RATIO{1'b1}};
   assign update_strb = merge_clear || (merge && all_bytes)
                        || (~all_bytes && strb_skid_valid);
   assign strb_skid_valid_wr = (merge && all_bytes) || update_strb;
   assign strb_skid_valid_nxt = merge && all_bytes;
   always @(posedge aclk or negedge aresetn)
     begin : strb_skid_valid_p
        if (!aresetn)
           strb_skid_valid <= 1'b0;
        else if (strb_skid_valid_wr)
           strb_skid_valid <= strb_skid_valid_nxt;
     end
   assign merge_skid_valid = strb_skid_valid;
genvar i;
generate
 for(i=0;i<DS_WSTRB_WIDTH;i=i+1) begin:merge_byte_g
 assign merge_byte[i]=merge && data_select[i/US_WSTRB_WIDTH] && wide_wstrb_masked[i];
 assign wdata_out[i*8+:8]=merge_byte[i] ? wide_wdata_in[i*8+:8] : merged_byte[i];
 assign merge_strb[i]=merge_byte[i] | update_strb;
 assign wstrb_out_i[i] = merge_byte[i] ? wide_wstrb_in[i] :
                           (((strb_skid_valid && data_select[i/US_WSTRB_WIDTH]) || (~strb_skid_valid && ~update_strb)) ? merged_strb[i] : 1'b0);
 assign wstrb_out[i] = wstrb_out_i[i];
 assign next_strb[i] = wstrb_out_i[i];
 always @(posedge aclk)
     begin : byte_seq
       if (merge_byte[i])
          merged_byte[i] <= wide_wdata_in[i*8+:8];
     end
 always @(posedge aclk or negedge aresetn)
     begin : byte_strb_seq
       if (!aresetn)
          merged_strb[i] <= 1'b0;
       else if (merge_strb[i])
          merged_strb[i] <= next_strb[i];
     end
 end
endgenerate
endmodule
