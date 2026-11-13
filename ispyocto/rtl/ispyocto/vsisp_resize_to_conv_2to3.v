//****************************************************************************
//
// Copyright 2017-2023 Vivante Corporation
//
// Portions Copyright (c) 2003 Silicon Image GmbH, used with permission
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

module vsisp_resize_to_conv_2to3 (
  clk,
  reset_n,
  soft_rst,
  in_y_val,
  in_y_data,
  in_y_h_end,
  in_y_v_end,
  in_y_cfg_upd,
  in_y_ack,
  in_c_val,
  in_c_data,
  in_c_h_end,
  in_c_v_end,
  in_c_cfg_upd,
  in_c_ack,
  out_y_val,
  out_y_data,
  out_y_h_end,
  out_y_v_end,
  out_y_cfg_update,
  out_y_ack,
  out_cb_val,
  out_cb_data,
  out_cb_h_end,
  out_cb_v_end,
  out_cb_cfg_update,
  out_cb_ack,
  out_cr_val,
  out_cr_data,
  out_cr_h_end,
  out_cr_v_end,
  out_cr_cfg_update,
  out_cr_ack
);
parameter data_width=8;
parameter pack_data_width=11;
input         clk;
input         reset_n;
input         soft_rst;
input         in_y_val;
input   [data_width-1:0] in_y_data;
input         in_y_h_end;
input         in_y_v_end;
input         in_y_cfg_upd;
output        in_y_ack; 
wire          in_y_ack; 
input         in_c_val;
input   [data_width-1:0] in_c_data;
input         in_c_h_end;
input         in_c_v_end;
input         in_c_cfg_upd;
output        in_c_ack;
wire          in_c_ack;
output        out_y_val;
output  [data_width-1:0] out_y_data;
output        out_y_h_end;
output        out_y_v_end;
output        out_y_cfg_update;
input         out_y_ack;
wire          out_y_val;
wire    [data_width-1:0] out_y_data;
wire          out_y_h_end;
wire          out_y_v_end;
wire          out_y_cfg_update;
output        out_cb_val;
output  [data_width-1:0] out_cb_data;
output        out_cb_h_end;
output        out_cb_v_end;
output        out_cb_cfg_update;
input         out_cb_ack;
wire          out_cb_val;
reg     [data_width-1:0] out_cb_data;
wire          out_cb_h_end;
wire          out_cb_v_end;
wire          out_cb_cfg_update;
output        out_cr_val;
output  [data_width-1:0] out_cr_data;
output        out_cr_h_end;
output        out_cr_v_end;
output        out_cr_cfg_update;
input         out_cr_ack;
wire          out_cr_val;
reg     [data_width-1:0] out_cr_data;
wire          out_cr_h_end;
wire          out_cr_v_end;
wire          out_cr_cfg_update;
wire   [pack_data_width-1:0] viv_s0;
wire   [pack_data_width-1:0] viv_s1;
wire          viv_s2;
wire    [data_width-1:0] viv_s3;
wire          viv_s4;
wire          viv_s5;
wire          viv_s6;
wire          viv_s7;
wire [pack_data_width*2-1:0] viv_s8;
wire [pack_data_width*2-1:0] viv_s9;
wire [data_width-1:0]  viv_s10;
wire [data_width-1:0]  viv_s11;
assign viv_s8 = {in_y_data, in_c_data};
assign viv_s10 = viv_s8[data_width*2-1 : data_width];
assign viv_s11 = viv_s8[data_width-1 : 0];
assign  out_y_data        = viv_s10;
assign  out_y_val         = in_y_val;
assign  out_y_h_end       = in_y_h_end;
assign  out_y_v_end       = in_y_v_end;
assign  out_y_cfg_update  = in_y_cfg_upd;          
assign  in_y_ack          = out_y_ack;
assign  viv_s0 = {in_c_cfg_upd, in_c_v_end, in_c_h_end, viv_s11};
vsisp_conv_dpsbe #(pack_data_width) u_c_buf(
  .clk          ( clk           ),
  .reset_n      ( reset_n       ),
  .soft_rst     ( soft_rst      ),
  .dpsbe_data_i ( viv_s0  ),
  .dpsbe_val_i  ( in_c_val      ),
  .dpsbe_ack_o  ( in_c_ack      ),
  .dpsbe_data_o ( viv_s1 ),
  .dpsbe_val_o  ( viv_s2     ),
  .dpsbe_ack_i  ( viv_s7     )
);
assign  viv_s3    = viv_s1[data_width-1:0];
assign  viv_s4   = viv_s1[data_width];
assign  viv_s5   = viv_s1[data_width+1];
assign  viv_s6 = viv_s1[data_width+2];
reg                    viv_s12;          
reg                    viv_s13;          
reg                    viv_s14;        
reg                    viv_s15;     
wire                   viv_s16; 
wire                   viv_s17;
wire                   viv_s18;
reg  viv_s19;  
wire viv_s20;
assign viv_s20  = out_cb_ack & out_cr_ack & viv_s18;
assign viv_s17        = viv_s20;
assign out_cb_val     = viv_s20;
assign out_cb_h_end   = viv_s12;
assign out_cb_v_end   = viv_s13;
assign out_cb_cfg_update = viv_s14;
assign out_cr_val     = viv_s20;
assign out_cr_h_end   = viv_s12;
assign out_cr_v_end   = viv_s13;
assign out_cr_cfg_update = viv_s14;
always @(posedge clk or negedge reset_n) begin
  if (~reset_n) begin
    out_cb_data    <= {data_width{1'b0}};
    out_cr_data    <= {data_width{1'b0}};
    viv_s12      <= 1'b0;
    viv_s13      <= 1'b0;
    viv_s14    <= 1'b0;
    viv_s15 <= 1'b0;
    viv_s19   <= 1'b0;
  end
  else if (soft_rst) begin
    out_cb_data    <= {data_width{1'b0}};
    out_cr_data    <= {data_width{1'b0}};
    viv_s12      <= 1'b0;
    viv_s13      <= 1'b0;
    viv_s14    <= 1'b0;
    viv_s15 <= 1'b0;
    viv_s19   <= 1'b0;
  end
  else begin
    if (viv_s2 & viv_s7) begin
      viv_s19   <= (viv_s4) ? 1'b0 : ~viv_s19;
    end
    if (viv_s16) begin
      viv_s15 <= viv_s2 & viv_s19;
      if (viv_s19) begin
        out_cr_data     <= viv_s3;
      end
      else begin
        out_cb_data     <= viv_s3;
      end
      viv_s14    <= viv_s6;
      viv_s12      <= viv_s4;
      viv_s13      <= viv_s5;
    end
  end
end
assign viv_s16 = viv_s17 | (~viv_s15);
assign viv_s7          = viv_s16;
assign viv_s18            = viv_s15;
endmodule
