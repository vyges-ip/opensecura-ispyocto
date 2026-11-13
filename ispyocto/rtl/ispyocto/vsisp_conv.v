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

module vsisp_conv( 
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
  out_y_r_val,
  out_y_r_data,
  out_y_r_h_end,
  out_y_r_v_end,
  out_y_r_cfg_upd,
  out_y_r_ack,
  out_cb_g_val,
  out_cb_g_data,
  out_cb_g_h_end,
  out_cb_g_v_end,
  out_cb_g_cfg_upd,
  out_cb_g_ack,
  out_cr_b_val,
  out_cr_b_data,
  out_cr_b_h_end,
  out_cr_b_v_end,
  out_cr_b_cfg_upd,
  out_cr_b_ack,
  sp_input_format,
  cfg_y_full,
  cfg_crcb_full,
  cfg_422noncosited,
  sp_output_format,
  out_y_r_frame_start,
  out_y_r_frame_end,
  out_y_r_line_start,
  out_y_r_line_end,
  out_cb_g_frame_start,
  out_cb_g_frame_end,
  out_cb_g_line_start,
  out_cb_g_line_end,
  out_cr_b_frame_start,
  out_cr_b_frame_end,
  out_cr_b_line_start,
  out_cr_b_line_end,
  out_y_r_val_stream,
  out_cb_g_val_stream,
  out_cr_b_val_stream
);
`include "vsisp_self_resize.vh"
parameter c_dither_enable = 1'b1;
parameter fifo_addr_width=4;
localparam fifo_depth = 2**(fifo_addr_width-1);
input          clk;              
input          reset_n;          
input          soft_rst;         
input          in_y_val;         
input  [ 8-1: 0] in_y_data;        
input          in_y_h_end;       
input          in_y_v_end;       
input          in_y_cfg_upd;     
output         in_y_ack;         
input          in_cb_val;        
input  [ 8-1: 0] in_cb_data;       
input          in_cb_h_end;      
input          in_cb_v_end;      
input          in_cb_cfg_upd;    
output         in_cb_ack;        
input          in_cr_val;        
input  [ 8-1: 0] in_cr_data;       
input          in_cr_h_end;      
input          in_cr_v_end;      
input          in_cr_cfg_upd;    
output         in_cr_ack;        
output         out_y_r_val;      
output [ 7: 0] out_y_r_data;     
output         out_y_r_h_end;    
output         out_y_r_v_end;    
output         out_y_r_cfg_upd;  
input          out_y_r_ack;      
output         out_cb_g_val;     
output [ 7: 0] out_cb_g_data;    
output         out_cb_g_h_end;   
output         out_cb_g_v_end;   
output         out_cb_g_cfg_upd; 
input          out_cb_g_ack;     
output         out_cr_b_val;     
output [ 7: 0] out_cr_b_data;    
output         out_cr_b_h_end;   
output         out_cr_b_v_end;   
output         out_cr_b_cfg_upd; 
input          out_cr_b_ack;     
input  [ 1: 0] sp_input_format;  
input          cfg_y_full;       
input          cfg_crcb_full;    
input          cfg_422noncosited;
input  [ 2: 0] sp_output_format; 
output  out_y_r_frame_start;
output  out_y_r_frame_end;
output  out_y_r_line_start;
output  out_y_r_line_end;
output  out_cb_g_frame_start;
output  out_cb_g_frame_end;
output  out_cb_g_line_start;
output  out_cb_g_line_end;
output  out_cr_b_frame_start;
output  out_cr_b_frame_end;
output  out_cr_b_line_start;
output  out_cr_b_line_end;
output         out_y_r_val_stream;      
output         out_cb_g_val_stream;     
output         out_cr_b_val_stream;     
wire [8-1:0]       viv_s0;          
wire             viv_s1;         
wire             viv_s2;   
wire             viv_s3; 
wire             viv_s4;     
wire             viv_s5;
wire [8-1:0]       viv_s6;    
wire             viv_s7;   
wire             viv_s8;   
wire             viv_s9; 
wire             viv_s10;     
wire             viv_s11;
reg              viv_s12; 
reg              viv_s13; 
wire [8-1:0]       viv_s14;      
wire             viv_s15;     
wire             viv_s16;     
wire             viv_s17;
wire             viv_s18;
wire             viv_s19;
wire             viv_s20;
wire             viv_s21;
wire             viv_s22;
wire             viv_s23;       
wire             viv_s24;
wire             viv_s25;
wire             viv_s26;
wire             viv_s27;
wire [8-1:0]       viv_s28;          
wire             viv_s29;         
wire             viv_s30;   
wire             viv_s31; 
wire             viv_s32;     
wire             viv_s33;
wire [8-1:0]       viv_s34;    
wire             viv_s35;   
wire             viv_s36;   
wire             viv_s37; 
wire             viv_s38;     
wire             viv_s39;   
wire [8-1:0]       viv_s40;      
wire             viv_s41;     
wire             viv_s42;     
wire             viv_s43;
wire             viv_s44;       
wire             viv_s45;
wire [8+3-1:0]      viv_s46;  
wire [8+3-1:0]      viv_s47;  
wire [8+3-1:0]      viv_s48;  
wire [8+3-1:0]      viv_s49;
wire [8+3-1:0]      viv_s50;
wire [8+3-1:0]      viv_s51;
reg  [8+3-1:0]      viv_s52;  
reg  [8+3-1:0]      viv_s53;  
reg  [8+3-1:0]      viv_s54;  
reg              viv_s55;     
reg              viv_s56;     
reg              viv_s57;       
wire             viv_s58;
wire             viv_s59;   
wire             viv_s60;
wire [7: 0]     viv_s61;     
wire [7: 0]     viv_s62;     
wire [7: 0]     viv_s63;     
reg [ 8-1: 0]      viv_s64;     
reg [ 8-1: 0]      viv_s65;     
reg [ 8-1: 0]      viv_s66;      
reg              viv_s67;
reg              viv_s68;
reg              viv_s69;
wire  [1:0] viv_s70; 
reg   [1:0] viv_s71;  
reg   [1:0] viv_s72; 
reg   [1:0] viv_s73;  
reg   [2:0] viv_s74; 
vsisp_conv_422to444 u_conv422to444 (
  .clk           (clk),
  .reset_n       (reset_n),
  .soft_rst      (soft_rst),
  .in_y_val      (in_y_val),
  .in_y_data     (in_y_data),
  .in_y_h_end    (in_y_h_end),
  .in_y_v_end    (in_y_v_end),
  .in_y_cfg_upd  (in_y_cfg_upd),
  .in_y_ack      (in_y_ack),
  .in_cb_val     (in_cb_val),
  .in_cb_data    (in_cb_data),
  .in_cb_h_end   (in_cb_h_end),
  .in_cb_v_end   (in_cb_v_end),
  .in_cb_cfg_upd (in_cb_cfg_upd),
  .in_cb_ack     (in_cb_ack),
  .in_cr_val     (in_cr_val),
  .in_cr_data    (in_cr_data),
  .in_cr_h_end   (in_cr_h_end),
  .in_cr_v_end   (in_cr_v_end),
  .in_cr_cfg_upd (in_cr_cfg_upd),
  .in_cr_ack     (in_cr_ack),
  .conv422to444_y_val     (viv_s18),
  .conv422to444_y_data    (viv_s14),
  .conv422to444_y_h_end   (viv_s15),
  .conv422to444_y_v_end   (viv_s16),
  .conv422to444_y_cfg_upd (viv_s17),
  .conv422to444_y_ack     (viv_s19),
  .conv422to444_cb_val    (viv_s10),
  .conv422to444_cb_data   (viv_s6),
  .conv422to444_cb_h_end  (viv_s7),
  .conv422to444_cb_v_end  (viv_s8),
  .conv422to444_cb_cfg_upd(viv_s9),
  .conv422to444_cb_ack    (viv_s11),
  .conv422to444_cr_val    (viv_s4),
  .conv422to444_cr_data   (viv_s0),
  .conv422to444_cr_h_end  (viv_s1),
  .conv422to444_cr_v_end  (viv_s2),
  .conv422to444_cr_cfg_upd(viv_s3),
  .conv422to444_cr_ack    (viv_s5),
  .cfg_422noncosited(viv_s69),
  .sp_input_format(sp_input_format),
  .sp_output_format(sp_output_format)
);
assign viv_s20         = (sp_output_format[2] == 1'b1);   
assign viv_s21      = (sp_output_format    == 3'b100); 
assign viv_s22           = (sp_output_format    == 3'b011); 
assign viv_s23        = viv_s18 && viv_s10 && viv_s4;
assign viv_s24        = viv_s45      && viv_s39      && viv_s33;
assign viv_s25          = viv_s45      && viv_s39;
assign viv_s26     = viv_s23 && viv_s24;
assign viv_s27  = viv_s23 && viv_s25;
assign viv_s44    = (viv_s21) ? viv_s27     :
                          (viv_s20) ? viv_s26        : 
                                          viv_s18;   
assign viv_s38    = (viv_s21) ? viv_s27     :
                          (viv_s20) ? viv_s26        : 
                                          viv_s10;   
assign viv_s32    = (viv_s21) ? 1'b0     :
                          (viv_s20) ? viv_s26        : 
                                          viv_s4;   
assign viv_s19  = (viv_s21) ? viv_s27 : 
                             (viv_s20) ? viv_s26    : 
                                             viv_s45;    
assign viv_s11  = (viv_s21) ? viv_s27 : 
                             (viv_s20) ? viv_s26    : 
                                             viv_s39;    
assign viv_s5  = (viv_s21) ? viv_s27 : 
                             (viv_s20) ? viv_s26    : 
                                             viv_s33;    
assign viv_s35   = (viv_s20) ? viv_s15   : viv_s7   ;
assign viv_s36   = (viv_s20) ? viv_s16   : viv_s8   ;
assign viv_s37 = (viv_s20) ? viv_s17 : viv_s9 ;
assign viv_s29   = (viv_s20) ? viv_s15   : viv_s1   ;                      
assign viv_s30   = (viv_s20) ? viv_s16   : viv_s2   ;                      
assign viv_s31 = (viv_s20) ? viv_s17 : viv_s3 ;   
assign viv_s34    = viv_s6;
assign viv_s28    = viv_s0;
assign viv_s40     = viv_s14;
assign viv_s41    = viv_s15;
assign viv_s42    = viv_s16;
assign viv_s43  = viv_s17;
always @(posedge clk or negedge reset_n) begin
  if (!reset_n) begin    
    viv_s67        <= 1'b0;
    viv_s68     <= 1'b0;
    viv_s69 <= 1'b0;
  end else begin
    viv_s67        <= cfg_y_full; 
    viv_s68     <= cfg_crcb_full; 
    viv_s69 <= cfg_422noncosited; 
  end
end
always @(posedge clk or negedge reset_n) begin
  if (reset_n == 1'b0) begin
     viv_s12       <= 0;
     viv_s13       <= 0;
  end else begin
  if(soft_rst) begin
     viv_s12       <= 0;
     viv_s13       <= 0;    
  end else begin
    if (viv_s18 && viv_s19) begin
      if (viv_s15) begin
        viv_s12    <= 0;
        if (viv_s16) begin
          viv_s13  <= 0;
        end else begin
          viv_s13  <= ~viv_s13; 
        end
      end else begin
        viv_s12    <= ~viv_s12; 
      end
    end
  end
  end
end
assign viv_s70 = {viv_s13, viv_s12};
always @(*) begin
  case (viv_s70)
    2'b00   : viv_s71 = 2'd0;
    2'b01   : viv_s71 = 2'd2;
    2'b10   : viv_s71 = 2'd3;
    default : viv_s71 = 2'd1;
  endcase
end
always @(*) begin
  case (viv_s70) 
    2'b00   : viv_s72 = 2'd3;
    2'b01   : viv_s72 = 2'd1;
    2'b10   : viv_s72 = 2'd0;
    default : viv_s72 = 2'd2;
  endcase
end
always @(*) begin
  if (c_dither_enable && (sp_output_format == 3'b101)) begin  
    viv_s73   =  viv_s71;
    viv_s74  = {1'b0, viv_s72};
  end else if (c_dither_enable && viv_s21) begin          
    viv_s73   =  viv_s71;
    viv_s74  = {viv_s72, 1'b0};  
  end else begin
    viv_s73   = 2'b00;
    viv_s74  = 3'b000;
  end 
end
vsisp_conv_yuv2rgb u1_conv_yuv2rgb( 
  .cfg_y_full   (viv_s67),
  .cfg_crcb_full(viv_s68),
  .dith_offs_g  (viv_s73     ),
  .dith_offs_rb (viv_s74    ),
  .y            (viv_s40  ),
  .cb           (viv_s34 ),
  .cr           (viv_s28 ),
  .r            (viv_s61 ),
  .g            (viv_s62 ),
  .b            (viv_s63 )
);
always @(   viv_s40 or 
            viv_s34 or
            viv_s28 or 
          viv_s61 or viv_s63 or viv_s62 or
          sp_output_format) begin
  if (sp_output_format[2] == 1'b1) begin 
    if (sp_output_format[1:0]== 2'b01) begin
      viv_s66   = {2'b00, viv_s61[7:2]};
      viv_s65  = {2'b00, viv_s62[7:2]};
      viv_s64  = {2'b00, viv_s63[7:2]};
    end 
    else if (sp_output_format[1:0]== 2'b00) begin
      viv_s66   = {viv_s61[7:3], viv_s62[7:5]}; 
      viv_s65  = {viv_s62[4:2], viv_s63[7:3]}; 
      viv_s64  = 8'h0;
    end
    else begin
      viv_s66   = viv_s61;
      viv_s65  = viv_s62;
      viv_s64  = viv_s63;
    end 
  end
  else begin 
    viv_s66     = viv_s40;
    viv_s65    = viv_s34;
    viv_s64    = viv_s28;
  end 
end
assign viv_s48  = {viv_s43,  viv_s42,
                               viv_s41,  viv_s66};
assign viv_s47 = {viv_s37, viv_s36,
                               viv_s35, viv_s65};
assign viv_s46 = {viv_s31, viv_s30,
                               viv_s29, viv_s64};
always @(posedge clk or negedge reset_n) begin
  if (!reset_n) begin    
    viv_s54  <= {8+3{1'b0}};
    viv_s53 <= {8+3{1'b0}};
    viv_s52 <= {8+3{1'b0}};
    viv_s57      <= 1'b0;
    viv_s56     <= 1'b0;
    viv_s55     <= 1'b0;
  end else if (soft_rst) begin    
    viv_s57      <= 1'b0;
    viv_s56     <= 1'b0;
    viv_s55     <= 1'b0;
  end else begin 
    if (viv_s45) begin
      viv_s57     <= viv_s44;
      viv_s54 <= viv_s48;
    end
    if (viv_s39) begin
      viv_s56     <= viv_s38;
      viv_s53 <= viv_s47;
    end
    if (viv_s33) begin
      viv_s55     <= viv_s32;
      viv_s52 <= viv_s46;
    end
  end 
end 
assign   viv_s45  = viv_s60  | (~viv_s57);
assign   viv_s39 = viv_s59 | (~viv_s56);
assign   viv_s33 = viv_s58 | (~viv_s55);
wire viv_s75;
vsisp_conv_dpsbe #(.c_dpsbe_data_width(8+3)) u_y_conv_dpsbe(
  .clk          ( clk               ),
  .reset_n      ( reset_n           ),
  .soft_rst     ( soft_rst          ),
  .dpsbe_data_i ( viv_s54 ),
  .dpsbe_val_i  ( viv_s57     ),
  .dpsbe_ack_o  ( viv_s60     ),
  .dpsbe_data_o ( viv_s49   ),
  .dpsbe_val_o  ( viv_s75       ),
  .dpsbe_ack_i  ( out_y_r_ack      )
);
assign out_y_r_data    = viv_s49[8-1:0];
assign out_y_r_h_end   = viv_s49[8];
assign out_y_r_v_end   = viv_s49[8+1];
assign out_y_r_cfg_upd = viv_s49[8+2];
vsisp_conv_gen_streaming_interface u_y_r_conv_gen_streaming_interface(
  .clk         (clk),
  .reset_n     (reset_n),
  .soft_rst    (soft_rst),
  .val         (out_y_r_val),
  .ack         (out_y_r_ack),
  .h_end       (out_y_r_h_end),
  .v_end       (out_y_r_v_end),
  .frame_start (out_y_r_frame_start),
  .frame_end   (out_y_r_frame_end),
  .line_start  (out_y_r_line_start),
  .line_end    (out_y_r_line_end)
);
wire viv_s76;
vsisp_conv_dpsbe #(.c_dpsbe_data_width(8+3)) u_cb_conv_dpsbe(
  .clk          ( clk               ),
  .reset_n      ( reset_n           ),
  .soft_rst     ( soft_rst          ),
  .dpsbe_data_i ( viv_s53 ),
  .dpsbe_val_i  ( viv_s56     ),
  .dpsbe_ack_o  ( viv_s59     ),
  .dpsbe_data_o ( viv_s51   ),
  .dpsbe_val_o  ( viv_s76       ),
  .dpsbe_ack_i  ( out_cb_g_ack      )
);
assign out_cb_g_data    = viv_s51[8-1:0];
assign out_cb_g_h_end   = viv_s51[8];
assign out_cb_g_v_end   = viv_s51[8+1];
assign out_cb_g_cfg_upd = viv_s51[8+2];
vsisp_conv_gen_streaming_interface u_cb_g_conv_gen_streaming_interface(
  .clk         (clk),
  .reset_n     (reset_n),
  .soft_rst    (soft_rst),
  .val         (out_cb_g_val),
  .ack         (out_cb_g_ack),
  .h_end       (out_cb_g_h_end),
  .v_end       (out_cb_g_v_end),
  .frame_start (out_cb_g_frame_start),
  .frame_end   (out_cb_g_frame_end),
  .line_start  (out_cb_g_line_start),
  .line_end    (out_cb_g_line_end)
);
wire viv_s77;
vsisp_conv_dpsbe #(.c_dpsbe_data_width(8+3)) u_cr_conv_dpsbe(
  .clk          ( clk               ),
  .reset_n      ( reset_n           ),
  .soft_rst     ( soft_rst          ),
  .dpsbe_data_i ( viv_s52 ),
  .dpsbe_val_i  ( viv_s55     ),
  .dpsbe_ack_o  ( viv_s58     ),
  .dpsbe_data_o ( viv_s50   ),
  .dpsbe_val_o  ( viv_s77       ),
  .dpsbe_ack_i  ( out_cr_b_ack       )
);
assign out_cr_b_data    = viv_s50[8-1:0];
assign out_cr_b_h_end   = viv_s50[8];
assign out_cr_b_v_end   = viv_s50[8+1];
assign out_cr_b_cfg_upd = viv_s50[8+2];
vsisp_conv_gen_streaming_interface u_cr_b_conv_gen_streaming_interface(
  .clk         (clk),
  .reset_n     (reset_n),
  .soft_rst    (soft_rst),
  .val         (out_cr_b_val),
  .ack         (out_cr_b_ack),
  .h_end       (out_cr_b_h_end),
  .v_end       (out_cr_b_v_end),
  .frame_start (out_cr_b_frame_start),
  .frame_end   (out_cr_b_frame_end),
  .line_start  (out_cr_b_line_start),
  .line_end    (out_cr_b_line_end)
);
wire viv_s78;
wire viv_s79;
wire viv_s80;
wire viv_s81;
wire viv_s82;
wire out_y_r_val = viv_s75 & out_y_r_ack;
wire out_cb_g_val = viv_s76 & out_cb_g_ack;
wire out_cr_b_val = viv_s77 & out_cr_b_ack;
wire out_y_r_val_stream = out_y_r_val;
wire out_cb_g_val_stream = out_cb_g_val;
wire out_cr_b_val_stream = out_cr_b_val;
endmodule
