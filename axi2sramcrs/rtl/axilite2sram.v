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

module axilite2sram
 #(
  //id width
  parameter       ARID_WIDTH=4,
  parameter       AWID_WIDTH=4,
  //addr width
  parameter       ADDR_WIDTH=32,
  //user width
  parameter       USER_WIDTH=4 )

(
  input                            aclk,
  input                            aresetn,
  //===========================================
  //==slave port write only
  //===========================================
  input                        awvalid_s,
  output                       awready_s,
  input  [ADDR_WIDTH-1:0]      awaddr_s,
  input  [2:0]                 awprot_s,//N.A
  input  [USER_WIDTH-1:0]      awuser_s,//N.A

  input                        wvalid_s,
  output                       wready_s,
  input     [255:0]            wdata_s,
  input     [31:0]             wstrb_s,

  output    reg                bvalid_s,
  input                        bready_s,
  output      [1:0]            bresp_s,

  output                        sram_cvalid,
  input                         sram_cready,
  output                        sram_cwrite,
  output  [31:0]                sram_caddr,
  output  [7:0]                 sram_cid,
  output  [255:0]               sram_wdata,
  output  [31:0]                sram_wmask
);


reg awvalid_latch;
reg [31:0] awaddr_latch;

assign wready_s  = awvalid_latch & sram_cready;
//assign awready_s = awvalid_latch1'b1;
assign awready_s = ~awvalid_latch;//no more ostd
assign bresp_s = 2'b0;

assign sram_wdata = wdata_s;
assign sram_wmask = wstrb_s;
assign sram_cid = 8'b0;

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      awvalid_latch <= 1'b0;
    else if(awvalid_s&&awready_s)
      awvalid_latch <= 1'b1;
//    else if(bvalid_s&&bready_s)
//      awvalid_latch <= 1'b0;
    else if(wvalid_s&&wready_s)
      awvalid_latch <= 1'b0;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      awaddr_latch <= 32'b0;
    else if(awvalid_s&&awready_s)
      awaddr_latch <= awaddr_s;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      bvalid_s <= 1'b0;
    else if(bvalid_s&bready_s)
      bvalid_s <= 1'b0;
    else if(wvalid_s&&wready_s)
      bvalid_s <= 1'b1;
  end


assign sram_cvalid = awvalid_latch  && wvalid_s;
//assign sram_cvalid = wvalid_s;
assign sram_cwrite = awvalid_latch  && wvalid_s;
//assign sram_cwrite = wvalid_s;
assign sram_caddr  = awaddr_latch;


endmodule
