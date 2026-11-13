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

module upsize_wr_resp_block
  (
   bchannel_ready, bvalid_s, bready_m, bid_s, bresp_s, buser_s,
   aclk, aresetn, bvalid_m, bready_s, bid_m, bresp_m, buser_m,
   bchannel_valid, bchannel_data
   );
parameter       AWID_WIDTH=4;
parameter       USER_WIDTH=4;
parameter       WR_ISS=8;
localparam      PTR_WIDTH=$clog2(WR_ISS+1);
localparam	BCHAN_WIDTH=AWID_WIDTH+1;
  input                   aclk;
  input                   aresetn;
  output                  bchannel_ready;
  output                  bvalid_s;
  output                  bready_m;
  output [AWID_WIDTH-1:0]            bid_s;
  output [1:0]            bresp_s;
  output  [USER_WIDTH-1:0]      buser_s;
  input                   bvalid_m;
  input                   bready_s;
  input [AWID_WIDTH-1:0]             bid_m;
  input [1:0]             bresp_m;
  input   [USER_WIDTH-1:0]      buser_m;
  input                   bchannel_valid;
  input [BCHAN_WIDTH-1:0]             bchannel_data;
   wire   [WR_ISS-1:0]                match_bus;
   wire   [WR_ISS-1:0]                hazard_bus;
   wire   [WR_ISS-1:0]                valid_bus;
   wire   [WR_ISS-1:0]                valid_bus_zero_lsb;
   wire [PTR_WIDTH-1:0] hazard_bus_one_pos[WR_ISS-1:0];
   wire [PTR_WIDTH-1:0] match_bus_one_pos[WR_ISS-1:0];
   wire                   match;
   wire                   hazard;
   wire                   bready_m_i;
   wire                   bhndshk;
   wire                   push_slice;
   wire                   pop_slice;
   wire                   update;
   wire [AWID_WIDTH-1:0]             awid;
   wire              n_response;
   wire                   next_bchannel_ready;
   wire [1:0]             bresp_out[WR_ISS-1:0];
   wire [WR_ISS-1:0]	const_onehot[WR_ISS-1:0];
   reg  [PTR_WIDTH-1:0]                  hazard_pointer;
   reg  [PTR_WIDTH-1:0]                  match_pointer;
   reg  [WR_ISS-1:0]                  store;
   reg                    bchannel_ready_i;
   reg	[1:0]	bresp_out_or;
   assign {
        awid,
        n_response
        }=bchannel_data;
   assign match = |match_bus;
   assign hazard = |hazard_bus;
   assign next_bchannel_ready = ~(&(valid_bus | (store & {WR_ISS{push_slice}}))) || (pop_slice);
   always @(posedge aclk or negedge aresetn)
    begin : bchannel_seq
      if (!aresetn)
         bchannel_ready_i <= 1'b0;
      else
         bchannel_ready_i <= next_bchannel_ready;
    end
   assign bchannel_ready = bchannel_ready_i;
genvar i;
generate
 for(i=0;i<WR_ISS;i=i+1) begin: for_store
	if(WR_ISS==1) begin: wr_iss_1
		assign	const_onehot[i]=(1'h1<<i);
	end
	else begin: wr_iss_n
		assign	const_onehot[i]=({{(WR_ISS-1){1'h0}},1'h1}<<i);
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
        for(a=0;a<WR_ISS;a=a+1) begin
                hazard_pointer=hazard_pointer | hazard_bus_one_pos[a];
        end
     end
   always @(*)
     begin : match_num_distibution
        integer a;
        match_pointer={PTR_WIDTH{1'h0}};
        for(a=0;a<WR_ISS;a=a+1) begin
                match_pointer=match_pointer | match_bus_one_pos[a];
        end
     end
    assign push_slice = bchannel_ready_i && bchannel_valid;
    assign bhndshk = bvalid_m && bready_m_i;
    assign update = bhndshk;
    assign pop_slice = update && match;
    assign bready_m_i = bvalid_m && (bready_s || ~match);
    assign bready_m   = bready_m_i;
    assign bid_s = bid_m;
    assign buser_s=buser_m;
   always @(*)
     begin:bresp_a
        integer a;
        bresp_out_or={2{1'h0}};
        for(a=0;a<WR_ISS;a=a+1) begin
                bresp_out_or=bresp_out_or | bresp_out[a];
        end
     end
    assign bresp_s = (bresp_m
                      |  bresp_out_or );
    assign bvalid_s = (bvalid_m && match);
generate
for(i=0;i<WR_ISS;i=i+1) begin: resp_cam_slice_inst
     upsize_resp_cam_slice #(
	.ID_WIDTH(AWID_WIDTH),
	.USER_WIDTH(USER_WIDTH),
	.PTR_WIDTH(PTR_WIDTH)
	) u_upsize_resp_cam_slice
     (
        .aresetn              (aresetn),
        .aclk                 (aclk),
        .matchid              (bid_m),
        .hazardid             (awid),
        .store                (store[i]),
        .push_slice           (push_slice),
        .pop_slice            (pop_slice),
        .update               (update),
        .match_pointer        (match_pointer),
        .hazard_in            (hazard),
        .hazard_pointer       (hazard_pointer),
        .n_response           (n_response),
        .bresp_in             (bresp_m),
        .hazard               (hazard_bus[i]),
        .match                (match_bus[i]),
        .valid                (valid_bus[i]),
        .bresp_out            (bresp_out[i])
     );
end
endgenerate
endmodule
