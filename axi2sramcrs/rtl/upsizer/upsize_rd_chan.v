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

module upsize_rd_chan
  (
   archannel_ready, rready_m, rvalid_s, rdata_s, rid_s, rresp_s,
   rlast_s, ruser_s,
   aclk, aresetn, archannel_valid, archannel_data, rvalid_m, rdata_m,
   rid_m, rresp_m, rlast_m, ruser_m, rready_s
   );
parameter       ARID_WIDTH=4;
parameter       AWID_WIDTH=4;
parameter       ADDR_WIDTH=32;
parameter       US_DATA_WIDTH=128;
parameter       DS_DATA_WIDTH=256;
parameter       USER_WIDTH=4;
parameter       RD_ISS=8;
localparam      DS_WSTRB_WIDTH=DS_DATA_WIDTH/8;
localparam      US_WSTRB_WIDTH=US_DATA_WIDTH/8;
localparam      DS_ADDR_AL_WIDTH=$clog2(DS_WSTRB_WIDTH);
localparam      US_ADDR_AL_WIDTH=$clog2(US_WSTRB_WIDTH);
localparam	ARFMT_WIDTH=1+1+ARID_WIDTH+DS_ADDR_AL_WIDTH*3+1+3;
localparam      AWFMT_WIDTH=1+US_ADDR_AL_WIDTH*2+3+1;
localparam      US_AW_WIDTH=4+USER_WIDTH+AWID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam      US_AR_WIDTH=4+USER_WIDTH+ARID_WIDTH+ADDR_WIDTH+8+3+2+2+4+4+3+1;
localparam      US_R_WIDTH=USER_WIDTH+ARID_WIDTH+US_DATA_WIDTH+2+1;
localparam      US_W_WIDTH=USER_WIDTH+AWID_WIDTH+US_DATA_WIDTH+US_WSTRB_WIDTH+1;
localparam      US_B_WIDTH=USER_WIDTH+AWID_WIDTH+2;
localparam      PTR_WIDTH=$clog2(RD_ISS+1);
localparam	UPSIZE_WIDTH=DS_ADDR_AL_WIDTH-US_ADDR_AL_WIDTH;
localparam	DATA_RATIO=(DS_DATA_WIDTH/US_DATA_WIDTH);
  input                     aclk;
  input                     aresetn;
  input                     archannel_valid;
  output                    archannel_ready;
  input [ARFMT_WIDTH-1:0]              archannel_data;
  input                     rvalid_m;
  output                    rready_m;
  input [DS_DATA_WIDTH-1:0]             rdata_m;
  input [ARID_WIDTH-1:0]               rid_m;
  input [1:0]               rresp_m;
  input                     rlast_m;
  input   [USER_WIDTH-1:0]      ruser_m;
  input                     rready_s;
  output                    rvalid_s;
  output [US_DATA_WIDTH-1:0]            rdata_s;
  output [ARID_WIDTH-1:0]              rid_s;
  output [1:0]              rresp_s;
  output                    rlast_s;
  output  [USER_WIDTH-1:0]      ruser_s;
   wire                                                archannel_ready_i;
   wire   [RD_ISS-1:0]                  match_bus;
   wire   [RD_ISS-1:0]                  hazard_bus;
   wire   [RD_ISS-1:0]                  valid_bus;
   wire   [RD_ISS-1:0]                  last_addr_match_bus;
   wire   [RD_ISS-1:0]                  beat_complete_slice_bus;
   wire                     hazard;
   wire                     last_addr_match;
   wire                     beat_complete_slice;
   wire                     archannel_hndshk;
   wire                     rchannel_hndshk;
   wire                     push_slice;
   wire                     pop_slice;
   wire                     update;
   wire                     beat_complete;
   wire  [UPSIZE_WIDTH-1:0]                   data_select;
   reg  [UPSIZE_WIDTH-1:0]                   addr;
   wire [ARID_WIDTH-1:0]               rid_m;
   wire [DS_DATA_WIDTH-1:0]             rdata;
   wire                     rlast_in;
   wire                     rlast_s_i;
   wire [1:0]               rresp_s;
   wire [UPSIZE_WIDTH-1:0]                    addr_out[RD_ISS-1:0];
   wire [US_WSTRB_WIDTH-1:0]                  rdata_byte_mask[RD_ISS-1:0];
   wire [RD_ISS-1:0]    const_onehot[RD_ISS-1:0];
   wire   [RD_ISS-1:0]                valid_bus_zero_lsb;
   wire [PTR_WIDTH-1:0] hazard_bus_one_pos[RD_ISS-1:0];
   wire [PTR_WIDTH-1:0] match_bus_one_pos[RD_ISS-1:0];
   reg  [US_DATA_WIDTH-1:0]             rdata_beat_mask;
   reg [US_DATA_WIDTH-1:0]               rdata_s_demux;
   reg [PTR_WIDTH-1:0]                     hazard_pointer;
   reg [PTR_WIDTH-1:0]                     match_pointer;
   reg [RD_ISS-1:0]                     store;
   assign rid_s = rid_m;
   assign rlast_in = rlast_m;
   assign rresp_s = rresp_m;
   assign ruser_s = ruser_m;
   assign rdata = rdata_m;
   assign hazard = |hazard_bus;
   assign last_addr_match = |(last_addr_match_bus & match_bus);
   assign beat_complete_slice = |(beat_complete_slice_bus & match_bus);
always @(*)
begin:for_addr
  integer i,j;
  addr = {UPSIZE_WIDTH{1'h0}};
  for(i=0;i<UPSIZE_WIDTH;i=i+1)
    begin: for_addr_i
      for(j=0;j<RD_ISS;j=j+1)
        begin: for_addr_j
          addr[i] = addr[i]|addr_out[j][i];
        end
    end
end
reg [US_WSTRB_WIDTH-1:0]  rdata_byte_mask_i;
always @(*)
begin:for_rdata_beat
  integer i,j;
  rdata_beat_mask = {US_DATA_WIDTH{1'b0}};
  for(i=0;i<US_WSTRB_WIDTH;i=i+1)
    for(j=0;j<8;j=j+1)
      rdata_beat_mask[i*8+j] = rdata_byte_mask_i[i];
end
always @(*)
begin:for_rdata_byte
  integer i,j;
  rdata_byte_mask_i = {US_WSTRB_WIDTH{1'b0}};
  for(i=0;i<US_WSTRB_WIDTH;i=i+1)
    for(j=0;j<RD_ISS;j=j+1)
      begin
        rdata_byte_mask_i[i] = rdata_byte_mask_i[i] | rdata_byte_mask[j][i] ;
      end
end
   assign data_select = addr;
/*
always@(*)
begin:rdata_s_demux_a
 integer i;
  for(i=0;i<DATA_RATIO;i=i+1)
    begin
      if(data_select == i)
        begin
          rdata_s_demux = rdata[US_DATA_WIDTH*i+:US_DATA_WIDTH];//[(US_DATA_WIDTH*(i+1)-1):US_DATA_WIDTH*i];
        end
    end
end
*/
generate
  if(DATA_RATIO==2)
    begin:demux_D2
      always@(*)
        begin
          case(data_select)
            0:rdata_s_demux=rdata[US_DATA_WIDTH-1:0];
            1:rdata_s_demux=rdata[US_DATA_WIDTH*2-1:US_DATA_WIDTH];
            default:rdata_s_demux= {US_DATA_WIDTH{1'b0}};
          endcase
        end
    end
  else if(DATA_RATIO==4)
    begin:demux_D4
      always@(*)
        begin
          case(data_select)
            0:rdata_s_demux=rdata[US_DATA_WIDTH-1:0];
            1:rdata_s_demux=rdata[US_DATA_WIDTH*2-1:US_DATA_WIDTH];
            2:rdata_s_demux=rdata[US_DATA_WIDTH*3-1:US_DATA_WIDTH*2];
            3:rdata_s_demux=rdata[US_DATA_WIDTH*4-1:US_DATA_WIDTH*3];
            default:rdata_s_demux={US_DATA_WIDTH{1'b0}};
          endcase
        end
    end
  else if(DATA_RATIO==8)
    begin:demux_D8
      always@(*)
        begin
          case(data_select)
            0:rdata_s_demux=rdata[US_DATA_WIDTH-1:0];
            1:rdata_s_demux=rdata[US_DATA_WIDTH*2-1:US_DATA_WIDTH];
            2:rdata_s_demux=rdata[US_DATA_WIDTH*3-1:US_DATA_WIDTH*2];
            3:rdata_s_demux=rdata[US_DATA_WIDTH*4-1:US_DATA_WIDTH*3];
            4:rdata_s_demux=rdata[US_DATA_WIDTH*5-1:US_DATA_WIDTH*4];
            5:rdata_s_demux=rdata[US_DATA_WIDTH*6-1:US_DATA_WIDTH*5];
            6:rdata_s_demux=rdata[US_DATA_WIDTH*7-1:US_DATA_WIDTH*6];
            7:rdata_s_demux=rdata[US_DATA_WIDTH*8-1:US_DATA_WIDTH*7];
            default:rdata_s_demux={US_DATA_WIDTH{1'b0}};
          endcase
        end
    end
endgenerate
assign rdata_s = rdata_s_demux & rdata_beat_mask;
   assign rlast_s_i = last_addr_match  && rlast_in;
   assign rlast_s   = rlast_s_i;
   assign archannel_ready_i = ~&valid_bus;
   assign archannel_ready   = archannel_ready_i;
   assign archannel_hndshk = archannel_ready_i && archannel_valid;
   assign push_slice = archannel_hndshk;
genvar i;
generate
 for(i=0;i<RD_ISS;i=i+1) begin:const_onehot_g
        if(RD_ISS==1) begin: rd_iss_1
                assign  const_onehot[i]=(1'h1<<i);
        end
        else begin: rd_iss_n
                assign  const_onehot[i]=({{(RD_ISS-1){1'h0}},1'h1}<<i);
        end
        assign  valid_bus_zero_lsb[i]=((~valid_bus[i:0])==const_onehot[i][i:0]);
        assign  hazard_bus_one_pos[i]={PTR_WIDTH{hazard_bus[i]}}&i;
        assign  match_bus_one_pos[i]={PTR_WIDTH{match_bus[i]}}&i;
   always @(*)
     begin : store_decode
        if (&valid_bus)
           store[i] = match_bus[i];
        else
            store[i] = valid_bus_zero_lsb[i];
      end
 end
endgenerate
   always @(*)
     begin : hazard_num_distibution
        integer a;
        hazard_pointer={PTR_WIDTH{1'h0}};
        for(a=0;a<RD_ISS;a=a+1) begin
                hazard_pointer=hazard_pointer | hazard_bus_one_pos[a];
        end
     end
   always @(*)
     begin : match_num_distibution
        integer a;
        match_pointer={PTR_WIDTH{1'h0}};
        for(a=0;a<RD_ISS;a=a+1) begin
                match_pointer=match_pointer | match_bus_one_pos[a];
        end
     end
   assign beat_complete = (rlast_s_i | beat_complete_slice) && update;
   assign rready_m = beat_complete && rvalid_m;
   assign rvalid_s = rvalid_m;
   assign rchannel_hndshk = rvalid_s && rready_s;
   assign update = rchannel_hndshk;
   assign pop_slice = update && rlast_s_i;
generate
for(i=0;i<RD_ISS;i=i+1) begin: rd_cam_slice_inst
     upsize_rd_cam_slice #(
	.ARID_WIDTH(ARID_WIDTH),
    .US_DATA_WIDTH(US_DATA_WIDTH),
	.DS_DATA_WIDTH(DS_DATA_WIDTH),
	.RD_ISS(RD_ISS),
	.ARCHAN_WIDTH(ARFMT_WIDTH)
	) u_upsize_rd_cam_slice
     (
        .aresetn              (aresetn),
        .aclk                 (aclk),
        .match_id              (rid_m),
        .store                (store[i]),
        .push_slice           (push_slice),
        .pop_slice            (pop_slice),
        .update               (update),
        .match_pointer        (match_pointer),
        .archannel_data       (archannel_data),
        .rlast_in             (rlast_in),
        .hazard_in            (hazard),
        .hazard_pointer       (hazard_pointer),
        .hazard               (hazard_bus[i]),
        .match                (match_bus[i]),
        .valid                (valid_bus[i]),
        .addr_out             (addr_out[i]),
        .last_addr_match      (last_addr_match_bus[i]),
        .beat_complete        (beat_complete_slice_bus[i]),
	.rdata_byte_mask      (rdata_byte_mask[i])
     );
end
endgenerate
endmodule
