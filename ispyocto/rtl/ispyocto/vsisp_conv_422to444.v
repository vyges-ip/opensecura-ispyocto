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

module vsisp_conv_422to444 (
   clk,
   reset_n,
   soft_rst,
   in_y_val,
   in_y_data,
   in_y_h_end,
   in_y_v_end,
   in_y_cfg_upd,
   in_y_ack,
   in_cb_val,
   in_cb_data,
   in_cb_h_end,
   in_cb_v_end,
   in_cb_cfg_upd,
   in_cb_ack,
   in_cr_val,
   in_cr_data,
   in_cr_h_end,
   in_cr_v_end,
   in_cr_cfg_upd,
   in_cr_ack,
   conv422to444_y_val,
   conv422to444_y_data,
   conv422to444_y_h_end,
   conv422to444_y_v_end,
   conv422to444_y_cfg_upd,
   conv422to444_y_ack,
   conv422to444_cb_val,
   conv422to444_cb_data,
   conv422to444_cb_h_end,
   conv422to444_cb_v_end,
   conv422to444_cb_cfg_upd,
   conv422to444_cb_ack,
   conv422to444_cr_val,
   conv422to444_cr_data,
   conv422to444_cr_h_end,
   conv422to444_cr_v_end,
   conv422to444_cr_cfg_upd,
   conv422to444_cr_ack,
   cfg_422noncosited,
   sp_input_format,
   sp_output_format
);
input        clk;      
input        reset_n;  
input        soft_rst; 
input        in_y_val; 
input [7:0]  in_y_data; 
input        in_y_h_end; 
input        in_y_v_end; 
input        in_y_cfg_upd; 
output       in_y_ack; 
input        in_cb_val; 
input [7:0]  in_cb_data; 
input        in_cb_h_end; 
input        in_cb_v_end; 
input        in_cb_cfg_upd; 
output       in_cb_ack; 
input        in_cr_val; 
input [7:0]  in_cr_data; 
input        in_cr_h_end; 
input        in_cr_v_end; 
input        in_cr_cfg_upd; 
output       in_cr_ack; 
output       conv422to444_y_val; 
output [7:0] conv422to444_y_data; 
output       conv422to444_y_h_end; 
output       conv422to444_y_v_end; 
output       conv422to444_y_cfg_upd; 
input        conv422to444_y_ack; 
output       conv422to444_cb_val; 
output [7:0] conv422to444_cb_data; 
output       conv422to444_cb_h_end; 
output       conv422to444_cb_v_end; 
output       conv422to444_cb_cfg_upd; 
input        conv422to444_cb_ack; 
output       conv422to444_cr_val; 
output [7:0] conv422to444_cr_data; 
output       conv422to444_cr_h_end; 
output       conv422to444_cr_v_end; 
output       conv422to444_cr_cfg_upd; 
input        conv422to444_cr_ack; 
input        cfg_422noncosited; 
input [1:0]  sp_input_format;   
input [2:0]  sp_output_format;  
wire [10:0]  viv_s0;
wire [10:0]  viv_s1;
wire         viv_s2;
wire         viv_s3;
wire [10:0]  viv_s4;
wire         viv_s5;
wire         viv_s6;
wire [10:0]  viv_s7;
wire [10:0]  viv_s8;
wire [10:0]  viv_s9;
wire [10:0]  viv_s10;
wire [10:0]  viv_s11;
wire         viv_s12; 
wire [7:0]   viv_s13; 
wire         viv_s14; 
wire         viv_s15; 
wire         viv_s16;
wire         viv_s17; 
wire         viv_s18;
wire [7:0]   viv_s19; 
wire         viv_s20; 
wire         viv_s21; 
wire         viv_s22;
wire         viv_s23; 
wire         viv_s24;
wire         viv_s25;
wire         viv_s26;
wire         viv_s27;
reg          conv422to444_cb_val; 
reg [7:0]    conv422to444_cb_data; 
reg          conv422to444_cb_h_end; 
reg          conv422to444_cb_v_end; 
reg          conv422to444_cb_cfg_upd;
reg          conv422to444_cr_val;
reg [7:0]    conv422to444_cr_data; 
reg          conv422to444_cr_h_end; 
reg          conv422to444_cr_v_end; 
reg          conv422to444_cr_cfg_upd;
reg [7:0]    viv_s28;
reg [7:0]    viv_s29;
wire         viv_s30;
wire         viv_s31;
reg          viv_s32;         
reg          viv_s33;         
reg          viv_s34;
reg          viv_s35;
reg          viv_s36;
reg          viv_s37;
reg          viv_s38;
reg          viv_s39;
wire         viv_s40;
wire         viv_s41;
wire         viv_s42;
wire         viv_s43;
wire         viv_s44;
wire         viv_s45;
wire         viv_s46;
wire         viv_s47;
wire         viv_s48;
wire         viv_s49;
wire         viv_s50;
wire         viv_s51;
wire         viv_s52;
wire         viv_s53;
wire         viv_s54;
wire [7:0]   viv_s55;
wire [7:0]   viv_s56;
wire         viv_s57;
wire         viv_s58;
wire         viv_s59;
wire         viv_s60;
wire         viv_s61;
wire         viv_s62;
wire         viv_s63;
wire         viv_s64;
wire [7:0]   viv_s65;
wire [7:0]   viv_s66;
wire [7:0]   viv_s67;
wire [7:0]   viv_s68;
wire [9:0]   viv_s69;
wire [9:0]   viv_s70;
wire [7:0]   viv_s71;
wire [7:0]   viv_s72;
wire [9:0]   viv_s73;
wire [9:0]   viv_s74;
assign viv_s0 = {in_y_cfg_upd,
                         in_y_v_end,
                         in_y_h_end,
                         in_y_data} ;
vsisp_conv_dpsbe #(11) u1_conv_dpsbe(
  .clk          ( clk      ),
  .reset_n      ( reset_n  ),
  .soft_rst     ( soft_rst ),
  .dpsbe_data_i ( viv_s0 ),
  .dpsbe_val_i  ( in_y_val       ),
  .dpsbe_ack_o  ( in_y_ack       ),
  .dpsbe_data_o ( viv_s1 ),
  .dpsbe_val_o  ( viv_s2    ),
  .dpsbe_ack_i  ( viv_s3  )
);
vsisp_conv_dpsfifo #(11) u1_conv_dpsfifo(
  .clk          ( clk      ),
  .reset_n      ( reset_n  ),
  .soft_rst     ( soft_rst ),
  .fifo_data_i ( viv_s1 ),
  .fifo_val_i  ( viv_s2    ),
  .fifo_ack_o  ( viv_s3  ),
  .fifo_data_o ( viv_s4 ),
  .fifo_val_o  ( viv_s5    ),
  .fifo_ack_i  ( viv_s6  )
);
assign viv_s7 = {in_cb_cfg_upd,
                          in_cb_v_end,
                          in_cb_h_end,
                          in_cb_data} ;
assign {viv_s16,
        viv_s15,
        viv_s14,
        viv_s13    } = viv_s8;
vsisp_conv_dpsbe #(11) u3_conv_dpsbe(
  .clk          ( clk      ),
  .reset_n      ( reset_n  ),
  .soft_rst     ( soft_rst ),
  .dpsbe_data_i ( viv_s7 ),
  .dpsbe_val_i  ( in_cb_val       ),
  .dpsbe_ack_o  ( in_cb_ack       ),
  .dpsbe_data_o ( viv_s8 ),
  .dpsbe_val_o  ( viv_s12    ),
  .dpsbe_ack_i  ( viv_s17    )
);
assign viv_s17  = viv_s26;
assign viv_s9 = {in_cr_cfg_upd,
                          in_cr_v_end,
                          in_cr_h_end,
                          in_cr_data} ;
assign {viv_s22,
        viv_s21,
        viv_s20,
        viv_s19    } = viv_s10;
vsisp_conv_dpsbe #(11) u2_conv_dpsbe(
  .clk          ( clk      ),
  .reset_n      ( reset_n  ),
  .soft_rst     ( soft_rst ),
  .dpsbe_data_i ( viv_s9 ),
  .dpsbe_val_i  ( in_cr_val       ),
  .dpsbe_ack_o  ( in_cr_ack       ),
  .dpsbe_data_o  ( viv_s10 ),
  .dpsbe_val_o   ( viv_s18    ),
  .dpsbe_ack_i   ( viv_s23    )
);
assign viv_s23  = viv_s27;
assign viv_s46     = (sp_input_format     == 2'b10) &&  
                         ((sp_output_format    == 3'b011) |  
                          (sp_output_format[2] == 1'b1));    
assign viv_s30  = viv_s47 && viv_s24;
assign viv_s31  = viv_s48 && viv_s25;
assign viv_s40   = viv_s34 && ~viv_s32;
assign viv_s42 = viv_s36  && ~viv_s32;
assign viv_s44      = viv_s49 && ~viv_s38 && ~viv_s34;
assign viv_s41   = viv_s35 && ~viv_s33;
assign viv_s43 = viv_s37  && ~viv_s33;
assign viv_s45      = viv_s50 && ~viv_s39 && ~viv_s35;
assign viv_s57 = (viv_s46) ? viv_s30 && ~viv_s40 && ~viv_s42  :  viv_s47;
assign viv_s58 = (viv_s46) ? viv_s31 && ~viv_s41 && ~viv_s43  :  viv_s48;
assign viv_s26 = (viv_s46) ? viv_s30 && viv_s32 && ~viv_s44  :  viv_s24;
assign viv_s27 = (viv_s46) ? viv_s31 && viv_s33 && ~viv_s45  :  viv_s25;
assign viv_s59   = (viv_s46)               ? viv_s38  : viv_s49;
assign viv_s63 = (viv_s46 && ~viv_s32) ? 1'b0                : viv_s53;
assign viv_s61   = (viv_s46)               ? viv_s39  : viv_s50;
assign viv_s64 = (viv_s46 && ~viv_s33) ? 1'b0                : viv_s54;
assign viv_s60 = viv_s51;
assign viv_s62 = viv_s52;
always @(posedge clk or negedge reset_n) begin
   if (!reset_n) begin    
      viv_s32          <= 1'b0;
      viv_s33          <= 1'b0;
      viv_s28  <= 8'b0;
      viv_s29  <= 8'b0;
      viv_s38 <= 1'b0;
      viv_s39 <= 1'b0;
      viv_s34           <= 1'b1;
      viv_s35           <= 1'b1;
      viv_s36            <= 1'b0;
      viv_s37            <= 1'b0;
   end 
   else begin
      if (soft_rst) begin 
         viv_s32         <= 1'b0;
         viv_s33         <= 1'b0;
         viv_s34          <= 1'b1;
         viv_s35          <= 1'b1;
         viv_s36           <= 1'b0;
         viv_s37           <= 1'b0;
      end else begin 
        if (viv_s46) begin
          if (viv_s30) begin
            viv_s32            <= ~viv_s32;
            if (viv_s32) begin
              viv_s34           <= viv_s38 && ~viv_s34;
              viv_s28  <= viv_s55;
              viv_s38 <= viv_s49 && ~viv_s38 && ~viv_s34;
              viv_s36            <= viv_s49 && ~viv_s36 && ~viv_s34;
            end
          end
          if (viv_s31) begin
            viv_s33            <= ~viv_s33;
            if (viv_s33) begin
              viv_s35           <= viv_s39 && ~viv_s35;
              viv_s29  <= viv_s56;
              viv_s39 <= viv_s50 && ~viv_s39 && ~viv_s35;
              viv_s37            <= viv_s50 && ~viv_s37 && ~viv_s35;
            end
          end
        end else begin
          viv_s32          <= 1'b0;
          viv_s33          <= 1'b0;
          viv_s28  <= 8'b0;
          viv_s29  <= 8'b0;
          viv_s38 <= 1'b0;
          viv_s39 <= 1'b0;
          viv_s34           <= 1'b1;
          viv_s35           <= 1'b1;
          viv_s36            <= 1'b0;
          viv_s37            <= 1'b0;
        end
      end 
   end 
end 
assign viv_s67  = (~viv_s32 ||  viv_s34) ? viv_s55  : viv_s28;
assign viv_s71  = (~viv_s33 ||  viv_s35) ? viv_s56  : viv_s29;
assign viv_s68 = (~viv_s32 && ~viv_s34) ? viv_s28 : viv_s55;
assign viv_s72 = (~viv_s33 && ~viv_s35) ? viv_s29 : viv_s56;
assign viv_s69  = {1'b0,viv_s68,1'b0} + viv_s68;
assign viv_s73  = {1'b0,viv_s72,1'b0} + viv_s72;
assign viv_s70 = cfg_422noncosited ?           viv_s69  + {1'b0,viv_s67}  : 
                                            {1'b0,viv_s68,1'b0} + {viv_s55,1'b0};
assign viv_s74 = cfg_422noncosited ?           viv_s73  + {1'b0,viv_s71}  :
                                            {1'b0,viv_s72,1'b0} + {viv_s56,1'b0};
assign viv_s65 = viv_s46 ? viv_s70[9:2] : viv_s55;
assign viv_s66 = viv_s46 ? viv_s74[9:2] : viv_s56;
assign viv_s55    = viv_s13;
assign viv_s49   = viv_s14;
assign viv_s51   = viv_s15;
assign viv_s53 = viv_s16;
assign viv_s47     = viv_s12;
assign viv_s56    = viv_s19;
assign viv_s50   = viv_s20;
assign viv_s52   = viv_s21;
assign viv_s54 = viv_s22;
assign viv_s48     = viv_s18;
always @(posedge clk or negedge reset_n) begin
  if (!reset_n) begin    
    conv422to444_cb_data    <= {8'b0};
    conv422to444_cb_h_end   <= 1'b0;
    conv422to444_cb_v_end   <= 1'b0;
    conv422to444_cb_cfg_upd <= 1'b0;
    conv422to444_cr_data    <= {8'b0};
    conv422to444_cr_h_end   <= 1'b0;
    conv422to444_cr_v_end   <= 1'b0;
    conv422to444_cr_cfg_upd <= 1'b0;
    conv422to444_cb_val     <= 1'b0;
    conv422to444_cr_val     <= 1'b0;
  end else if (soft_rst) begin    
    conv422to444_cb_val     <= 1'b0;
    conv422to444_cr_val     <= 1'b0;
  end else begin 
    if (viv_s24) begin
      conv422to444_cb_val      <= viv_s57;
      conv422to444_cb_data     <= viv_s65;
      conv422to444_cb_h_end    <= viv_s59; 
      conv422to444_cb_v_end    <= viv_s60; 
      conv422to444_cb_cfg_upd  <= viv_s63;
    end
    if (viv_s25) begin
      conv422to444_cr_val      <= viv_s58;
      conv422to444_cr_data     <= viv_s66;
      conv422to444_cr_h_end    <= viv_s61; 
      conv422to444_cr_v_end    <= viv_s62; 
      conv422to444_cr_cfg_upd  <= viv_s64;
    end
  end 
end 
assign viv_s24 = conv422to444_cb_ack | (~conv422to444_cb_val);
assign viv_s25 = conv422to444_cr_ack | (~conv422to444_cr_val);
assign {conv422to444_y_cfg_upd,
        conv422to444_y_v_end,
        conv422to444_y_h_end,
        conv422to444_y_data    } = viv_s11;
vsisp_conv_dpsfe #(11) u1_conv_dpsfe(
  .clk          ( clk      ),
  .reset_n      ( reset_n  ),
  .soft_rst     ( soft_rst ),
  .dpsfe_data_i ( viv_s4 ),
  .dpsfe_val_i  ( viv_s5    ),
  .dpsfe_ack_o  ( viv_s6  ),
  .dpsfe_data_o ( viv_s11     ),
  .dpsfe_val_o  ( conv422to444_y_val ),
  .dpsfe_ack_i  ( conv422to444_y_ack )
);
endmodule
