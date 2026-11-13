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

module axi2axilite
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
  //==slave port
  //===========================================

  input   [AWID_WIDTH-1:0]         awid_s,
  input   [ADDR_WIDTH-1:0]         awaddr_s,
  input   [7:0]                    awlen_s,
  input   [2:0]                    awsize_s,
  input   [1:0]                    awburst_s,
  input   [1:0]                    awlock_s,
  input   [3:0]                    awcache_s,
  input   [2:0]                    awprot_s,
  input                            awvalid_s,
  output reg                       awready_s,
  input  [USER_WIDTH-1:0]          awuser_s,
  input  [3:0]                     awregion_s,

  input   [AWID_WIDTH-1:0]         wid_s,
  input   [255:0]                   wdata_s,
  input   [31:0]                    wstrb_s,
  input                            wlast_s,
  input                            wvalid_s,
  output                           wready_s,
  input  [USER_WIDTH-1:0]          wuser_s,


  output reg [AWID_WIDTH-1:0]      bid_s,
  output reg [1:0]                 bresp_s,
  output reg                       bvalid_s,
  input                            bready_s,
  output reg [USER_WIDTH-1:0]      buser_s,


  input   [ARID_WIDTH-1:0]         arid_s,
  input   [ADDR_WIDTH-1:0]         araddr_s,
  input   [7:0]                    arlen_s,
  input   [2:0]                    arsize_s,
  input   [1:0]                    arburst_s,
  input   [1:0]                    arlock_s,
  input   [3:0]                    arcache_s,
  input   [2:0]                    arprot_s,
  input                            arvalid_s,
  output reg                       arready_s,
  input  [USER_WIDTH-1:0]          aruser_s,
  input  [3:0]                     arregion_s,


  output reg [ARID_WIDTH-1:0]      rid_s,
  output     [31:0]                rdata_s,
  output     [1:0]                 rresp_s,
  output reg                       rlast_s,
  output                           rvalid_s,
  input                            rready_s,
  output reg [USER_WIDTH-1:0]      ruser_s,


  input   [3:0]                    awqos_s,
  input   [3:0]                    arqos_s,

  //===========================================
  //==master port
  //===========================================
  output reg                       awvalid_m,
  input                            awready_m,
  output reg [ADDR_WIDTH-1:0]      awaddr_m,
  output reg [2:0]                 awprot_m,
  output reg [USER_WIDTH-1:0]      awuser_m,

  output                           wvalid_m,
  input                            wready_m,
  output     [255:0]                wdata_m,
  output     [31:0]                 wstrb_m,

  input                            bvalid_m,
  output                           bready_m,
  input      [1:0]                 bresp_m,

  output reg                       arvalid_m,
  input                            arready_m,
  output reg [ADDR_WIDTH-1:0]      araddr_m,
  output reg [2:0]                 arprot_m,
  output reg [USER_WIDTH-1:0]      aruser_m,

  input                            rvalid_m,
  output                           rready_m,
  input      [31:0]                rdata_m,
  input      [1:0]                 rresp_m
  );

localparam      R_SLICE_TYPE_S=2'h0;
localparam      W_SLICE_TYPE_S=2'h0;
localparam      R_DATA_WIDTH_S=(32+2);
localparam      W_DATA_WIDTH_S=(256+32);

//===========================================
//==wire and reg declaration
//===========================================

wire    [W_DATA_WIDTH_S-1:0]  src_data_w_sm , dst_data_w_sm;
wire    [R_DATA_WIDTH_S-1:0]  src_data_r_ms , dst_data_r_ms;
wire                          wready_s_l,rvalid_s_l;
wire    [1:0]                 rresp_s_l;
wire    [31:0]                rdata_s_l;
wire                          illegal_w,illegal_r;
reg                           illegal_wr,illegal_rr;
reg     [7:0]                 awlen_s_r,arlen_s_r,awaddr_cnt,araddr_cnt,bresp_cnt,rdata_cnt;
reg     [1:0]                 awburst_s_r,arburst_s_r;
reg                           now_in_wr;
reg     [1:0]                 bresp_m_r;

//===========================================
// --------------------------------------------------------------------
// invalid cmd from SI will be block:
//   1. data_width != 256
//non-bufferable not merge
//assign illegal_w = ((awsize_s != 3'b101)&&awvalid_s&&awready_s)?1'b1:1'b0;
assign illegal_w = 1'b0;
assign illegal_r = ((arsize_s != 3'b101)&&arvalid_s&&arready_s)?1'b1:1'b0;


always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      illegal_wr <= 1'b0;
    else if(wlast_s&&wvalid_s&&wready_s)
      illegal_wr <= 1'b0;
    else if(illegal_w)
      illegal_wr <= 1'b1;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      illegal_rr <= 1'b0;
    else if(rlast_s&&rvalid_s&&rready_s)
      illegal_rr <= 1'b0;
    else if(illegal_r)
      illegal_rr <= 1'b1;
  end

assign wready_s = illegal_wr || (wready_s_l&&now_in_wr) ; //always wready_s when illegal
assign rvalid_s = illegal_rr || rvalid_s_l ; //always vvalid_s when illegal
assign rresp_s  = illegal_rr ? 2'b10 : rresp_s_l ; //ERROR when illegal wr
assign rdata_s  = illegal_rr ? 32'h0 : rdata_s_l ; //read data all-0 when illegal rd


//===========================================
// aw channel
//===========================================

//axi-port
always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      awready_s <= 1'b1;
    else if(bvalid_s&&bready_s)
      awready_s <= 1'b1;
    else if(awvalid_s&&awready_s)
      awready_s <= 1'b0;
  end

//axilite-port
always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      awvalid_m <= 1'b0;
    else if(awvalid_s&&awready_s&&(~illegal_w))
      awvalid_m <= 1'b1;
    else if(awvalid_m&&awready_m&&((awaddr_cnt==awlen_s_r)))
      awvalid_m <= 1'b0;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      awaddr_m <= {ADDR_WIDTH{1'b0}};
    else if(awvalid_s&&awready_s&&(~illegal_w))
      awaddr_m <= {awaddr_s[ADDR_WIDTH-1:5],5'b00};//address not change in 32B
     else if(awvalid_m&&awready_m&&(awaddr_cnt!=awlen_s_r))
       begin
         if(awburst_s_r==2'b01)//INCR: Updated
           awaddr_m <= awaddr_m + {{(ADDR_WIDTH-4){1'b0}},4'd8};
         else if(awburst_s_r == 2'b10)//WRAP: dont touched
           begin
             if(awlen_s_r[7])
               awaddr_m <= {awaddr_m[ADDR_WIDTH-1:10],(awaddr_m[9:0] + 10'h4)};
             else if(awlen_s_r[6])
               awaddr_m <= {awaddr_m[ADDR_WIDTH-1:9],(awaddr_m[8:0] + 9'h4)};
             else if(awlen_s_r[5])
               awaddr_m <= {awaddr_m[ADDR_WIDTH-1:8],(awaddr_m[7:0] + 8'h4)};
             else if(awlen_s_r[4])
               awaddr_m <= {awaddr_m[ADDR_WIDTH-1:7],(awaddr_m[6:0] + 7'h4)};
             else if(awlen_s_r[3])
               awaddr_m <= {awaddr_m[ADDR_WIDTH-1:6],(awaddr_m[5:0] + 6'h4)};
             else if(awlen_s_r[2])
               awaddr_m <= {awaddr_m[ADDR_WIDTH-1:5],(awaddr_m[4:0] + 5'h4)};
             else if(awlen_s_r[1])
               awaddr_m <= {awaddr_m[ADDR_WIDTH-1:4],(awaddr_m[3:0] + 4'h4)};
             else if(awlen_s_r[0])
               awaddr_m <= {awaddr_m[ADDR_WIDTH-1:3],(awaddr_m[2:0] + 3'h4)};
           end
      end
  end


always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      begin
        awprot_m <= 3'h0;
        awuser_m <= {USER_WIDTH{1'b0}};
      end
    else if(awvalid_s&&awready_s)
      begin
        awprot_m <= awprot_s;
        awuser_m <= awuser_s;
      end
 end

//local signal
always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      awaddr_cnt  <= 8'h0;
    else if(awvalid_s&&awready_s)
      awaddr_cnt  <= 8'h0;
    else if(awvalid_m&&awready_m&&(awaddr_cnt!=awlen_s_r))
      awaddr_cnt <= awaddr_cnt + 8'h1;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      begin
        awlen_s_r   <= 8'h0;
        awburst_s_r <= 2'h0;
      end
    else if(awvalid_s&&awready_s)
      begin
        awlen_s_r   <= awlen_s;
        awburst_s_r <= awburst_s;
      end
  end



//===========================================
// wdata channel
//===========================================

assign src_data_w_sm={
wstrb_s,
wdata_s
};
assign  {
wstrb_m,
wdata_m
}=dst_data_w_sm;
axi_slice #(
    .HNDSHK_MODE(W_SLICE_TYPE_S),
    .PAYLD_WIDTH(W_DATA_WIDTH_S))
    u_axi_w_sm(
               // Outputs
               .dst_data                (dst_data_w_sm),         // Templated
               .src_ready               (wready_s_l),              // Templated
               .dst_valid               (wvalid_m),              // Templated
               // Inputs
               .aresetn                 (aresetn),
               .aclk                    (aclk),
               .src_data                (src_data_w_sm),         // Templated
               .src_valid               (wvalid_s&&(~illegal_wr)&&now_in_wr), // Templated
               .dst_ready               (wready_m));             // Templated


always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      now_in_wr <= 1'b0;
    else if(wlast_s&&wvalid_s&&wready_s)
      now_in_wr <= 1'b0;
    else if(awvalid_s&&awready_s)
      now_in_wr <= 1'b1;
  end

//===========================================
//b channel
//===========================================

//axi-port
always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      bresp_s <= 2'h0;
    else if(bvalid_s&&bready_s)
      bresp_s <= 2'h0;
    else if((bresp_cnt == awlen_s_r)&&illegal_wr&&wvalid_s&&wready_s)
      bresp_s <= 2'b10;
    else if((bresp_cnt == awlen_s_r)&&bvalid_m&&bready_m)
      begin
        if(bresp_m_r != 2'h0)
          bresp_s <= bresp_m_r;
        else
          bresp_s <= bresp_m;
      end
  end


always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      bresp_m_r <= 2'h0;
    else if(bvalid_s&&bready_s)
      bresp_m_r <= 2'h0;
    else if((bresp_m_r == 2'h0)&&(bresp_m != 2'h0)&&bvalid_m&&bready_m)//store 1st ERROR
      bresp_m_r <= bresp_m;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      bvalid_s <= 1'b0;
    else if(bvalid_s&&bready_s)
      bvalid_s <= 1'b0;
    else if(wlast_s&&wvalid_s&&wready_s&&illegal_wr)//illegal bresp
      bvalid_s <= 1'b1;
    else if((bresp_cnt == awlen_s_r)&&bvalid_m&&bready_m)
      bvalid_s <= 1'b1;
  end

always @(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      bid_s <= {ARID_WIDTH{1'b0}};
    else if(awvalid_s&&awready_s)
      bid_s <= awid_s;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      buser_s <= {USER_WIDTH{1'b0}};
    else if(awvalid_s&&awready_s)
      buser_s <= awuser_s;
  end

//axilite-port
assign bready_m = 1'b1;

//local signals
always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      bresp_cnt <= 8'h0;
    else if(bvalid_s&&bready_s)
      bresp_cnt <= 8'h0;
    else if(illegal_wr&&wvalid_s&&wready_s)
      bresp_cnt <= bresp_cnt + 8'h1;
    else if(bvalid_m&&bready_m)
      bresp_cnt <= bresp_cnt + 8'h1;
  end

//===========================================
// ar channel
//===========================================

//axi-port
always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      arready_s <= 1'b1;
    else if(rvalid_s&&rready_s&&rlast_s)
      arready_s <= 1'b1;
    else if(arvalid_s&&arready_s)
      arready_s <= 1'b0;
  end

//axilite-port

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      arvalid_m <= 1'b0;
    else if(arvalid_s&&arready_s&&(~illegal_r))
      arvalid_m <= 1'b1;
    else if(arvalid_m&&arready_m&&((araddr_cnt==arlen_s_r)))
      arvalid_m <= 1'b0;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      araddr_m <= {ADDR_WIDTH{1'b0}};
    else if(arvalid_s&&arready_s&&(~illegal_r))
      araddr_m <= {araddr_s[ADDR_WIDTH-1:2],2'b00}; //if unalign
    else if(arvalid_m&&arready_m&&(araddr_cnt!=arlen_s_r))
      begin
        if(arburst_s_r==2'b01)//INCR
          araddr_m <= araddr_m + {{(ADDR_WIDTH-3){1'b0}},3'h4};
        else if(arburst_s_r == 2'b10)//WRAP
          begin
            if(arlen_s_r[7])
              araddr_m <= {araddr_m[ADDR_WIDTH-1:10],(araddr_m[9:0] + 10'h4)};
            else if(arlen_s_r[6])
              araddr_m <= {araddr_m[ADDR_WIDTH-1:9],(araddr_m[8:0] + 9'h4)};
            else if(arlen_s_r[5])
              araddr_m <= {araddr_m[ADDR_WIDTH-1:8],(araddr_m[7:0] + 8'h4)};
            else if(arlen_s_r[4])
              araddr_m <= {araddr_m[ADDR_WIDTH-1:7],(araddr_m[6:0] + 7'h4)};
            else if(arlen_s_r[3])
              araddr_m <= {araddr_m[ADDR_WIDTH-1:6],(araddr_m[5:0] + 6'h4)};
            else if(arlen_s_r[2])
              araddr_m <= {araddr_m[ADDR_WIDTH-1:5],(araddr_m[4:0] + 5'h4)};
            else if(arlen_s_r[1])
              araddr_m <= {araddr_m[ADDR_WIDTH-1:4],(araddr_m[3:0] + 4'h4)};
            else if(arlen_s_r[0])
              araddr_m <= {araddr_m[ADDR_WIDTH-1:3],(araddr_m[2:0] + 3'h4)};
          end
      end
  end


always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      begin
        arprot_m <= 3'h0;
        aruser_m <= {USER_WIDTH{1'b0}};
      end
    else if(arvalid_s&&arready_s&&(~illegal_r))
      begin
        arprot_m <= arprot_s;
        aruser_m <= aruser_s;
      end
 end

//local signals
always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      begin
        araddr_cnt  <= 8'h0;
        arlen_s_r   <= 8'h0;
        arburst_s_r <= 2'h0;
      end
    else if(arvalid_s&&arready_s)
      begin
        araddr_cnt  <= 8'h0;
        arlen_s_r   <= arlen_s;
        arburst_s_r <= arburst_s;
      end
    else if(arvalid_m&&arready_m&&(araddr_cnt!=arlen_s_r))
      araddr_cnt <= araddr_cnt + 8'h1;
  end


//===========================================
// rdata channel
//===========================================

assign src_data_r_ms={
rresp_m,
rdata_m
};
assign  {
rresp_s_l,
rdata_s_l
}=dst_data_r_ms;
axi_slice #(
    .HNDSHK_MODE(R_SLICE_TYPE_S),
    .PAYLD_WIDTH(R_DATA_WIDTH_S))
    u_axi_r_ms(
               // Outputs
               .dst_data                (dst_data_r_ms),         // Templated
               .src_ready               (rready_m),              // Templated
               .dst_valid               (rvalid_s_l),              // Templated
               // Inputs
               .aresetn                 (aresetn),
               .aclk                    (aclk),
               .src_data                (src_data_r_ms),         // Templated
               .src_valid               (rvalid_m),              // Templated
               .dst_ready               (rready_s));             // Templated

//axi-port
always @(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      begin
        rid_s <= {ARID_WIDTH{1'b0}};
        ruser_s <= {USER_WIDTH{1'b0}};
      end
    else if(arvalid_s&&arready_s)
      begin
        rid_s <= arid_s;
        ruser_s <= aruser_s;
      end
  end


//local signals
always @(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      rdata_cnt <= 8'h0;
    else if(rlast_s)
      rdata_cnt <= 8'h0;
    else if(rvalid_s&&rready_s)
      rdata_cnt <= rdata_cnt + 8'h1;
  end

always@(posedge aclk or negedge aresetn)
  begin
    if(~aresetn)
      rlast_s <= 1'b0;
    else if(rlast_s&&rvalid_s&&rready_s)
      rlast_s <= 1'b0;
    else if((arlen_s == 8'h0)&&arvalid_s&&arready_s)
      rlast_s <= 1'b1;
    else if((rdata_cnt == (arlen_s_r - 8'h1))&&rvalid_s&&rready_s)
      rlast_s <= 1'b1;
  end

endmodule
