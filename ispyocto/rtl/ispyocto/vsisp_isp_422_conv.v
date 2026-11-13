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

module vsisp_isp_422_conv (
                      clk,
                      reset_n,
                      soft_rst,
                      in_data,
                      in_h_end,
                      in_v_end,
                      in_val,
                      in_ack,
                      out_data,
                      out_h_end,
                      out_v_end,
                      out_val,
                      out_ack,
                      cb_cr_swap,
                      regs_method                    
                    );
`include "vsisp_isp.vh"   
input                    clk;         
input                    reset_n;     
input                    soft_rst;    
input [(3*c_dw_do)-1:0]  in_data;     
input                    in_h_end;    
input                    in_v_end;    
input                    in_val;      
output                   in_ack;      
output [(2*c_dw_do)-1:0] out_data;    
output                   out_h_end;   
output                   out_v_end;   
output                   out_val;     
input                    out_ack;     
input                    cb_cr_swap;  
input  [1:0]             regs_method; 
reg [(3*c_dw_do)-1:0] viv_s0;    
reg                   viv_s1;   
reg                   viv_s2;   
reg                   viv_s3;   
reg                   viv_s4;   
reg [c_dw_do-1:0]     viv_s5;       
reg [c_dw_do-1:0]     viv_s6;       
reg                   viv_s7;      
reg                   viv_s8;      
reg                   viv_s9;        
wire                  viv_s10; 
wire                  viv_s11;     
reg                   viv_s12;
reg                   viv_s13;
reg                   viv_s14;
wire                  viv_s15;
wire                  viv_s16;
wire                  viv_s17;
wire                  viv_s18;
wire                  viv_s19;
wire                  viv_s20;
wire                  viv_s21;
wire                  viv_s22;
wire                  viv_s23;
wire               in_ack;
wire               viv_s24;
wire [c_dw_do-1:0] viv_s25;
wire [c_dw_do-1:0] viv_s26;
wire [c_dw_do-1:0] viv_s27;
wire [c_dw_do-1:0] viv_s28;
wire [c_dw_do-1:0] viv_s29;
wire [c_dw_do-1:0] viv_s30;
wire [c_dw_do-1:0] viv_s31;
reg  [c_dw_do-1:0] viv_s32;
reg  [c_dw_do-1:0] viv_s33;
reg  [c_dw_do-1:0] viv_s34;
wire [c_dw_do+2:0] viv_s35;
wire [c_dw_do-1:0] viv_s36;
reg [c_dw_do:0]    viv_s37;
reg [c_dw_do+1:0]  viv_s38;
reg [c_dw_do:0]    viv_s39;
assign viv_s25 = in_data[(2*c_dw_do)-1:c_dw_do];
assign viv_s26 = in_data[c_dw_do-1:0];
assign viv_s27  = viv_s0[(3*c_dw_do)-1:2*c_dw_do];
assign viv_s28 = viv_s0[(2*c_dw_do)-1:c_dw_do];
assign viv_s30 = viv_s0[c_dw_do-1:0];
assign viv_s29 = viv_s33;  
assign viv_s31 = viv_s33;  
assign viv_s15 =               (viv_s11 | viv_s1);
assign viv_s16 = viv_s15 & (viv_s12 | viv_s3);
assign viv_s19   = !viv_s12 | (viv_s24 & viv_s15);
assign viv_s20   = !viv_s13 | (out_ack    & viv_s16);
assign viv_s24  = !viv_s13 | out_ack;
assign in_ack      = (!viv_s12 | viv_s24) & viv_s9;
assign viv_s35  = viv_s37 + {1'b0, viv_s38} + viv_s39;
assign viv_s36 = viv_s35[c_dw_do+2:3];
assign viv_s11     = in_val & viv_s9;
assign viv_s21  = (!viv_s12 | viv_s24) & viv_s11;
assign viv_s22  = in_h_end & in_val & in_ack;
assign viv_s23 = viv_s3 & viv_s18 & out_ack;
 always @(*) begin
     case (regs_method)
     2'b01: begin     
              viv_s32 = viv_s28;
              if (viv_s8) begin  
                viv_s37                    = {viv_s25, 1'b1};
                viv_s38                    = {viv_s28, 2'b10};
                if (viv_s13)    viv_s39 = {viv_s29, 1'b1};
                else               viv_s39 = {viv_s28, 1'b1};
              end else begin        
                if (~viv_s1) viv_s37 = {viv_s26, 1'b1};
                else               viv_s37 = {viv_s30, 1'b1};
                viv_s38                    = {viv_s30, 2'b10};
                if (viv_s13)    viv_s39 = {viv_s34, 1'b1};
                else               viv_s39 = {viv_s30, 1'b1};
              end
            end
     2'b10: begin     
              viv_s32 = viv_s28;   
              if (viv_s8) begin     
                viv_s37   = {viv_s25, 1'b1};
                viv_s38   = {viv_s28, 2'b10};
                viv_s39   = {viv_s25, 1'b1};
              end else begin           
                viv_s37   = {viv_s34, 1'b1};
                viv_s38   = {viv_s30, 2'b10};
                viv_s39   = {viv_s34, 1'b1};
              end
            end
     default: begin   
              if (viv_s8) begin 
                if (viv_s13) 
                  viv_s32 = viv_s34;
                else
                  viv_s32 = viv_s30;
                viv_s37                  = {viv_s25, 1'b1};
                viv_s38                  = {viv_s28, 2'b10};
                if (viv_s13) viv_s39  = {viv_s29, 1'b1};
                else            viv_s39  = {viv_s28, 1'b1};
              end else begin       
                viv_s32 = viv_s28;
                viv_s37     = {viv_s30, 1'b1};
                if (viv_s13) 
                  viv_s38   = {viv_s34, 2'b10};
                else            
                  viv_s38   = {viv_s30, 2'b10};
                if (viv_s14)
                  viv_s39  = {viv_s31, 1'b1};
                else if (viv_s13)
                  viv_s39  = {viv_s34, 1'b1};
                else
                  viv_s39  = {viv_s30, 1'b1};
              end
            end
     endcase
 end
assign viv_s10 = !viv_s7 & !in_h_end;
always @(posedge clk or negedge reset_n) begin
  if (reset_n == 1'b0) begin
    viv_s12     <= 1'b0;
    viv_s13     <= 1'b0;
    viv_s14     <= 1'b0;
    viv_s7      <= 1'b0;
    viv_s8      <= 1'b0;
    viv_s9        <= 1'b1;
    viv_s0    <= {3*c_dw_do{1'b0}};
    viv_s1   <= 1'b0;
    viv_s2   <= 1'b0;
    viv_s33    <= {c_dw_do{1'b0}};
    viv_s34      <= {c_dw_do{1'b0}};
    viv_s5       <= {c_dw_do{1'b0}};
    viv_s6       <= {c_dw_do{1'b0}};
    viv_s3   <= 1'b0;
    viv_s4   <= 1'b0;
  end else begin
    if (soft_rst) begin
      viv_s12   <= 1'b0;
      viv_s13   <= 1'b0;
      viv_s14   <= 1'b0;
      viv_s7    <= 1'b0;
      viv_s8    <= 1'b0;
      viv_s9      <= 1'b1;
    end else begin
      if (viv_s19)            viv_s12 <= viv_s11;
      if (viv_s20)            viv_s13 <= viv_s17;
      if (viv_s20)            viv_s14 <= viv_s13;
      if (in_ack & in_val)      viv_s7  <= viv_s10;
      if (in_ack & in_val)      viv_s8  <= viv_s10 ^ cb_cr_swap;
      if      (viv_s22)  viv_s9    <= 1'b0;
      else if (viv_s23) viv_s9    <= 1'b1;
    end
    if (viv_s21) begin 
      viv_s0  <= in_data;
      viv_s1 <= in_h_end;
      viv_s2 <= in_v_end;
    end
    if (viv_s20) begin 
      viv_s33  <= viv_s32;
      viv_s34    <= viv_s30;
      viv_s5     <= viv_s27;
      viv_s6     <= viv_s36;
      viv_s3 <= viv_s1;
      viv_s4 <= viv_s2;
    end
  end
end
assign viv_s17 = viv_s12 & (viv_s11     | viv_s1);
assign viv_s18 = viv_s13 & (viv_s17 | viv_s3);
assign out_h_end = viv_s3 & viv_s18;
assign out_v_end = viv_s4 & viv_s18;
assign out_data  = {viv_s5, viv_s6};
assign out_val   = viv_s18;
endmodule
