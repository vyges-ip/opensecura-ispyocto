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

module vsisp_isp_digi_gain (
                     clk,
                     reset_n,
                     soft_rst,
                     regs_bayer_pat,
                     in_data,
                     in_h_end,
                     in_v_end,
                     in_val,
                     in_ack,
                     in_vsync,
                     out_data,
                     out_h_st,
                     out_h_end,
                     out_v_end,
                     out_v_st,
                     out_vsync,
                     out_val,
                     out_ack,
                     out_bayer_ptn,
                     gain_r,
                     gain_gr,
                     gain_gb,
                     gain_b,
                     regs_dgain_enable);
`include "vsisp_isp.vh" 
   input                clk;                
   input                reset_n;            
   input                soft_rst;           
   input  [1:0]         regs_bayer_pat;     
   input  [c_dw_si-1:0] in_data;            
   input                in_h_end;           
   input                in_v_end;           
   input                in_val;             
   input                in_vsync;           
   output               in_ack;             
   output [c_dw_si-1:0] out_data;           
   output               out_h_end;          
   output               out_h_st;          
   output               out_v_st;          
   output               out_v_end;          
   output               out_val;            
   output               out_vsync;            
   output [1:0]         out_bayer_ptn;
   input                out_ack;            
   input [15:0]          gain_r;             
   input [15:0]          gain_gr;            
   input [15:0]          gain_gb;            
   input [15:0]          gain_b;             
   input                regs_dgain_enable;    
   reg  [15:0]           viv_s0;
   wire [c_dw_si+16:0]  viv_s1;
   wire [c_dw_si+8:0]   viv_s2;
   wire [c_dw_si-1:0]   viv_s3;
   wire [c_dw_si-1:0]   viv_s4;
   wire                 in_val;
   wire                 in_ack;
   wire                 viv_s5;
   reg                  viv_s6;
   reg                  viv_s7;
   reg [c_dw_si-1:0]    out_data;
   reg                  out_h_end;
   reg                  out_v_end;
   reg                  out_val;
   reg                  viv_s8;
   reg [12:0] viv_s9;
   reg [12:0] viv_s10;
assign viv_s5 = in_val && in_ack;
   reg     [1:0]        viv_s11;
   reg     [1:0]        viv_s12;
   assign out_bayer_ptn = regs_bayer_pat;
always @ (posedge clk or negedge reset_n) begin
  if (~reset_n) begin      
    viv_s6  <= 1'b0;
    viv_s11    <= 2'b00;
    viv_s12             <= 2'b00;
    viv_s7         <= 1'b0;
  end else begin          
    if (soft_rst) begin      
      viv_s6  <= 1'b0;
      viv_s12             <=  viv_s11;
    end else begin
      if (out_v_end && out_h_end && out_val) begin  
        viv_s6  <= 1'b0;
      end else if (viv_s5) begin               
        viv_s6  <= 1'b1;
      end
      if (~viv_s6) begin
        case (regs_bayer_pat)
           2'b00  : viv_s11 <= 2'b00; 
           2'b01  : viv_s11 <= 2'b11; 
           2'b10  : viv_s11 <= 2'b10; 
           default: viv_s11 <= 2'b01; 
        endcase
      end
      if (~viv_s5 && ~viv_s6)  begin           
          viv_s12     <= viv_s11;
          viv_s7 <= ~viv_s11[1];
      end else if(viv_s5)  begin           
        if (in_v_end && in_h_end) begin
          viv_s12     <= viv_s11;
          viv_s7 <= ~viv_s11[1];
        end else if (in_h_end) begin
          viv_s12     <= {viv_s7,viv_s11[0]}; 
          viv_s7 <= ~viv_s7;
        end else begin
          viv_s12 <= ~viv_s12; 
        end
      end
    end 
  end 
end 
always @ (*) 
begin   
  if(regs_dgain_enable) begin
    case (viv_s12)
       2'b00 : viv_s0  = gain_r;
       2'b01 : viv_s0  = gain_b;
       2'b10 : viv_s0  = gain_gb;
       default:viv_s0  = gain_gr;
    endcase
  end else begin
     viv_s0  = 16'h0;
  end
end 
always @ (posedge clk or negedge reset_n) begin
  if (~reset_n) begin 
       viv_s9 <= 13'b0;
       viv_s10 <= 13'b0;
  end
  else if(soft_rst|in_vsync)begin
       viv_s9 <= 13'b0;
       viv_s10 <= 13'b0;
  end
  else if(out_h_end)begin
       viv_s9 <= 13'b0;
       viv_s10 <= viv_s10 + 1'b1;
  end
  else if(viv_s5)
       viv_s9 <= viv_s9 + 1'b1;
end  
wire out_vsync;
reg viv_s13;
always @ (posedge clk or negedge reset_n) begin
  if (~reset_n)
       viv_s13 <= 1'b0;
  else
       viv_s13 <= in_vsync;
end
assign out_vsync = ~in_vsync&viv_s13;
wire viv_s14 = (~|viv_s9) && viv_s5;
wire viv_s15 = (~|viv_s10) && viv_s14;
   assign viv_s1   = viv_s0 * in_data + {{c_dw_si+1{1'b0}},{10'd128}}; 
   assign viv_s2 = viv_s1[c_dw_si+16:8];                               
   assign viv_s3    = (|viv_s2[c_dw_si+8:c_dw_si]) ? {c_dw_si{1'b1}} : viv_s2[c_dw_si-1:0];
   assign viv_s4 = regs_dgain_enable    ?  viv_s3      : in_data;
   assign in_ack  = (~out_val || out_ack) && viv_s8;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         out_h_end    <= 1'b0;
         out_v_end    <= 1'b0;
         out_data     <= {c_dw_si{1'b0}};
         out_val      <= 1'b0;
         viv_s8      <= 1'b0;
      end else begin
         if (soft_rst == 1'b1) begin
            out_h_end <= 1'b0;
            out_v_end <= 1'b0;
            out_val   <= 1'b0;
            viv_s8   <= 1'b0;
         end else begin
            viv_s8  <= 1'b1;
            if (~out_val || out_ack) begin
               out_h_end    <= in_h_end;
               out_v_end    <= in_v_end;
               out_data     <= viv_s4;
               out_val      <= in_val;
            end
         end
      end
   end
reg viv_s16;
always @(posedge clk or negedge reset_n)
  if(!reset_n)
    viv_s16<= 1'b1;
  else if(soft_rst)
    viv_s16<= 1'b1;
  else if(out_h_end&&out_v_end&&out_val&&out_ack)
    viv_s16<= 1'b1;
  else if(out_val&&out_ack)
    viv_s16<= 1'b0;
assign out_v_st=viv_s16&&out_val;
reg viv_s17;
always @(posedge clk or negedge reset_n)
  if(!reset_n)
    viv_s17<= 1'b1;
  else if(soft_rst)
    viv_s17<= 1'b1;
  else if(out_h_end&&out_val&&out_ack)
    viv_s17<= 1'b1;
  else if(out_val&&out_ack)
    viv_s17<= 1'b0;
assign out_h_st=viv_s17&&out_val;
endmodule
