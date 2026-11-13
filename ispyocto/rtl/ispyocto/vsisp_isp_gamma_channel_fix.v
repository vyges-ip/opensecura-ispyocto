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

module  vsisp_isp_gamma_channel_fix (
                        clk,
                        reset_n,
                        soft_rst,
                        enable,
                        equ_segm,
                        y0,
                        y1,
                        y2,
                        y3,
                        y4,
                        y5,
                        y6,
                        y7,
                        y8,
                        y9,
                        y10,
                        y11,
                        y12,
                        y13,
                        y14,
                        y15,
                        y16,
                        in_data,
                        in_h_end,
                        in_v_end,
                        in_val,
                        in_ack,
                        out_data,
                        out_h_end,
                        out_v_end,
                        out_val,
                        out_ack
                        );
`include "vsisp_isp.vh"   
input           clk;      
input           reset_n;  
input           soft_rst; 
input           enable;   
input           equ_segm; 
input  [c_dw_do-1:0]   y0;   
input  [c_dw_do-1:0]   y1;   
input  [c_dw_do-1:0]   y2;   
input  [c_dw_do-1:0]   y3;   
input  [c_dw_do-1:0]   y4;   
input  [c_dw_do-1:0]   y5;   
input  [c_dw_do-1:0]   y6;   
input  [c_dw_do-1:0]   y7;   
input  [c_dw_do-1:0]   y8;   
input  [c_dw_do-1:0]   y9;   
input  [c_dw_do-1:0]   y10;  
input  [c_dw_do-1:0]   y11;  
input  [c_dw_do-1:0]   y12;  
input  [c_dw_do-1:0]   y13;  
input  [c_dw_do-1:0]   y14;  
input  [c_dw_do-1:0]   y15;  
input  [c_dw_do-1:0]   y16;  
input  [c_dw_si-1:0]   in_data;  
input                  in_h_end; 
input                  in_v_end; 
input                  in_val;   
output                 in_ack;   
output [c_dw_do-1:0]   out_data; 
output                 out_h_end;
output                 out_v_end;
output                 out_val;  
input                  out_ack;  
reg     [c_dw_do-1:0]  out_data;    
reg                    out_val;
reg                    out_h_end;
reg                    out_v_end;
reg  [3:0]                 viv_s0;   
reg  [1:0]                 viv_s1;     
reg  [1:0]                 viv_s2; 
reg  [c_dw_do:0]           viv_s3;     
wire [c_dw_do:0]           viv_s4;   
wire [c_dw_do:0]           viv_s5;        
reg  [c_dw_do:0]           viv_s6;
reg  [7:0]                 viv_s7;       
wire [c_dw_si:0]           viv_s8;    
wire [c_dw_si-4:0]         viv_s9;   
reg  [c_dw_si-4:0]         viv_s10;
reg  [c_dw_do-1:0]         viv_s11;    
reg  [c_dw_do-1:0]         viv_s12;
wire [c_dw_si+c_dw_do-3:0] viv_s13;    
wire [c_dw_si+c_dw_do:0]   viv_s14;   
wire [c_dw_do+2:0]         viv_s15;     
wire [c_dw_do-1:0]         viv_s16;     
wire signed [c_dw_do:0]           viv_s17;
wire signed [c_dw_si-3:0]         viv_s18;
wire signed [c_dw_si+c_dw_do-3:0] viv_s19;
wire                in_ack;
wire                viv_s20;
reg                 viv_s21;
reg                 viv_s22;
reg                 viv_s23;
assign in_ack  = (~viv_s21 & enable) | viv_s20;
assign viv_s20 = ~out_val | out_ack;
always @(*)  
  begin
    if (equ_segm)        viv_s0 = in_data[c_dw_si-1:c_dw_si-4];   
    else if (in_data[c_dw_si-1:c_dw_si-3] == 3'd0) begin           
       if      (in_data[c_dw_si-4:c_dw_si-6] == 3'd0) viv_s0=0;   
       else if (in_data[c_dw_si-4:c_dw_si-6] == 3'd1) viv_s0=1;   
       else if (in_data[c_dw_si-4:c_dw_si-6] == 3'd2) viv_s0=2;   
       else if (in_data[c_dw_si-4:c_dw_si-5] == 2'd1) viv_s0=3;   
       else if (in_data[c_dw_si-4:c_dw_si-5] == 2'd2) viv_s0=4;   
       else                                           viv_s0=5;   
    end else if (in_data[c_dw_si-1] == 1'd0) begin
       if      (in_data[c_dw_si-2:c_dw_si-5] == 4'd4) viv_s0=6;   
       else if (in_data[c_dw_si-2:c_dw_si-4] == 3'd2) viv_s0=7;   
       else if (in_data[c_dw_si-2:c_dw_si-4] == 3'd3) viv_s0=8;   
       else if (in_data[c_dw_si-2:c_dw_si-4] == 3'd4) viv_s0=9;   
       else if (in_data[c_dw_si-2:c_dw_si-3] == 2'd2) viv_s0=10;  
       else                                           viv_s0=11;  
    end else begin
       case    (in_data[c_dw_si-2:c_dw_si-3])
                                               2'd0 : viv_s0=12;  
                                               2'd1 : viv_s0=13;  
                                               2'd2 : viv_s0=14;  
                                            default : viv_s0=15;  
       endcase
    end
  end
always @(viv_s0 or equ_segm)
  begin
    if (equ_segm) viv_s7 = {viv_s0,4'd0}; 
    else              
      case (viv_s0)
        4'd0 : viv_s7 = 8'd0;    
        4'd1 : viv_s7 = 8'd4;    
        4'd2 : viv_s7 = 8'd8;    
        4'd3 : viv_s7 = 8'd12;   
        4'd4 : viv_s7 = 8'd16;   
        4'd5 : viv_s7 = 8'd24;   
        4'd6 : viv_s7 = 8'd32;   
        4'd7 : viv_s7 = 8'd40;   
        4'd8 : viv_s7 = 8'd48;   
        4'd9 : viv_s7 = 8'd64;   
        4'd10: viv_s7 = 8'd80;   
        4'd11: viv_s7 = 8'd96;   
        4'd12: viv_s7 = 8'd128;  
        4'd13: viv_s7 = 8'd160;  
        4'd14: viv_s7 = 8'd192;  
      default: viv_s7 = 8'd224;  
      endcase                 
end                     
always @(viv_s0 or equ_segm)
  begin
    if (equ_segm) viv_s1 = 2'd2;   
    else              
    case(viv_s0)
      4'd0 : viv_s1 = 2'd0;
      4'd1 : viv_s1 = 2'd0;
      4'd2 : viv_s1 = 2'd0;
      4'd3 : viv_s1 = 2'd0;
      4'd4 : viv_s1 = 2'd1;
      4'd5 : viv_s1 = 2'd1;
      4'd6 : viv_s1 = 2'd1;
      4'd7 : viv_s1 = 2'd1;
      4'd8 : viv_s1 = 2'd2;
      4'd9 : viv_s1 = 2'd2;
      4'd10  : viv_s1 = 2'd2;
      default: viv_s1 = 2'd3;
    endcase                        
end
always @(viv_s0 or
         y0 or y1 or y2 or y3 or y4 or y5 or y6 or y7 or y8 or
         y9 or y10 or y11 or y12 or y13 or y14 or y15)
  begin
    case(viv_s0)
      4'd0   : viv_s11 = y0 ;
      4'd1   : viv_s11 = y1 ;
      4'd2   : viv_s11 = y2 ;
      4'd3   : viv_s11 = y3 ;
      4'd4   : viv_s11 = y4 ;
      4'd5   : viv_s11 = y5 ;
      4'd6   : viv_s11 = y6 ;
      4'd7   : viv_s11 = y7 ;
      4'd8   : viv_s11 = y8 ;
      4'd9   : viv_s11 = y9 ;
      4'd10  : viv_s11 = y10;
      4'd11  : viv_s11 = y11;
      4'd12  : viv_s11 = y12;
      4'd13  : viv_s11 = y13;
      4'd14  : viv_s11 = y14;
      default: viv_s11 = y15;
    endcase                        
end
assign viv_s4 = &y16[c_dw_do-1:c_dw_do-8] ? {1'b1,{c_dw_do{1'b0}}} : {1'b0,y16};
always @(viv_s0 or y1 or y2 or y3 or y4 or y5 or y6 or y7 or y8 or
         y9 or y10 or y11 or y12 or y13 or y14 or y15 or viv_s4)
  begin
    case(viv_s0)
      4'd0   : viv_s3 = {1'b0,y1} ;
      4'd1   : viv_s3 = {1'b0,y2} ;
      4'd2   : viv_s3 = {1'b0,y3} ;
      4'd3   : viv_s3 = {1'b0,y4} ;
      4'd4   : viv_s3 = {1'b0,y5} ;
      4'd5   : viv_s3 = {1'b0,y6} ;
      4'd6   : viv_s3 = {1'b0,y7} ;
      4'd7   : viv_s3 = {1'b0,y8} ;
      4'd8   : viv_s3 = {1'b0,y9} ;
      4'd9   : viv_s3 = {1'b0,y10};
      4'd10  : viv_s3 = {1'b0,y11};
      4'd11  : viv_s3 = {1'b0,y12};
      4'd12  : viv_s3 = {1'b0,y13};
      4'd13  : viv_s3 = {1'b0,y14};
      4'd14  : viv_s3 = {1'b0,y15};
      default: viv_s3 = viv_s4;
    endcase                        
end
assign viv_s5 = viv_s3 - {1'b0,viv_s11};
assign viv_s8 = {1'b0,in_data} - {viv_s7,{c_dw_si-8{1'b0}}};
assign viv_s9 = viv_s8[c_dw_si-4:0];
assign viv_s17  = viv_s6;
assign viv_s18  = {1'b0, viv_s10};   
assign viv_s19 = viv_s17 * viv_s18;
assign viv_s13  = viv_s19;
assign viv_s14 = ({{3{viv_s13[c_dw_si+c_dw_do-3]}},viv_s13} >>(c_dw_si-8))>> viv_s2;
assign viv_s15 = viv_s14[c_dw_do+3:1] + {1'b0,viv_s12,1'b1};
assign viv_s16 = viv_s15[c_dw_do:1];
always @ (posedge clk or negedge reset_n) begin
  if(~reset_n) begin      
    viv_s21     <= 1'b0;
    viv_s10 <= {c_dw_si-3{1'b0}};
    viv_s6      <= {c_dw_do+1{1'b0}};
    viv_s2   <= 2'b0;
    viv_s12  <= {c_dw_do{1'b0}};
    viv_s22   <= 1'b0;
    viv_s23   <= 1'b0;
  end else begin          
    if(soft_rst) begin    
      viv_s21   <= 1'b0;
      viv_s22 <= 1'b0;
      viv_s23 <= 1'b0;
    end else if (in_ack) begin
      viv_s10 <= viv_s9;
      viv_s6      <= viv_s5;
      viv_s2   <= viv_s1;
      viv_s12  <= viv_s11;
      viv_s21     <= in_val;
      viv_s22   <= in_h_end;
      viv_s23   <= in_v_end;
    end 
  end 
end 
always @ (posedge clk or negedge reset_n) begin
  if(~reset_n) begin      
    out_val   <= 1'b0;
    out_data  <= {c_dw_do{1'b0}};
    out_h_end <= 1'b0;
    out_v_end <= 1'b0;
  end else begin          
    if(soft_rst) begin    
      out_val   <= 1'b0;
      out_h_end <= 1'b0;
      out_v_end <= 1'b0;
    end else if (viv_s20) begin
      if(enable) begin
        out_data  <= (viv_s15[c_dw_do+1]) ? {c_dw_do{1'b1}} : viv_s16;
        out_val   <= viv_s21;
        out_h_end <= viv_s22;
        out_v_end <= viv_s23;
      end else begin  
        out_data  <= in_data[c_dw_si-1:c_dw_si-c_dw_do];
        out_val   <= in_val;
        out_h_end <= in_h_end;
        out_v_end <= in_v_end;
      end 
    end 
  end 
end 
endmodule
