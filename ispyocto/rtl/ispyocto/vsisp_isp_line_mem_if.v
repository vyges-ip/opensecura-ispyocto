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

module vsisp_isp_line_mem_if
  (
   clk,
   reset_n,
   soft_rst,
   in_val,
   in_h_end,
   in_v_end,
   in_data,
   in_ack,
   regs_bayer_pat,
   out_val,
   out_h_end,
   out_v_end,
   out_data_1t,
   out_data_m2,
   out_data_m3,
   out_data_m4,
   out_data_m5,
   out_data_m6,
   out_data_7b,
   out_ack,
   memif_h_end,
   memif_v_end,
   memif_val,
   memif_ack,
   adr,
   we_n,
   cs_n,
   wr_data,
   rd_data);
`include "vsisp_isp.vh" 
`include "vsisp_ram_sizes.vh"
   input                 clk;            
   input                 reset_n;        
   input                 soft_rst;       
   input                 in_val;         
   input                 in_h_end;       
   input                 in_v_end;       
   input [c_dw_si-1:0]   in_data;        
   output                in_ack;         
   input [1:0]           regs_bayer_pat; 
   output                out_val;        
   output                out_h_end;      
   output                out_v_end;      
   output [c_dw_si-1:0]  out_data_1t;    
   output [c_dw_si-1:0]  out_data_m2;    
   output [c_dw_si-1:0]  out_data_m3;    
   output [c_dw_si-1:0]  out_data_m4;    
   output [c_dw_si-1:0]  out_data_m5;    
   output [c_dw_si-1:0]  out_data_m6;    
   output [c_dw_si-1:0]  out_data_7b;    
   input                 out_ack;        
   output                memif_h_end;    
   output                memif_v_end;    
   output                memif_val;      
   output                memif_ack;      
   output [c_aw_dem_mem-1:0] adr;        
   output                    we_n;       
   output                    cs_n;       
   output [c_dw_dem_mem-1:0] wr_data;    
   input  [c_dw_dem_mem-1:0] rd_data;    
   reg                    viv_s0;
   reg [1:0]              viv_s1;
   reg                    viv_s2;
   reg                    viv_s3;
   reg                    viv_s4;
   reg [c_dw_dem_mem-1:0] viv_s5;
   reg [c_dw_si-1:0]      viv_s6;
   reg [c_aw_dem_mem-1:0] viv_s7;         
   reg [c_aw_dem_mem-1:0] viv_s8;         
   reg [2:0]              viv_s9;          
   reg [3:0]              viv_s10;       
   reg [c_aw_dem_mem-1:0] viv_s11;    
   reg [(7*c_dw_si)-1:0] viv_s12;
   reg                   out_h_end;
   reg                   out_v_end;
   reg                   viv_s13; 
   reg                    we_n;
   wire                   cs_n;
   reg      [c_aw_dem_mem-1:0] adr;
   reg                    memif_val;
   wire                   memif_h_end;
   wire                   memif_v_end;
   wire [(7*c_dw_si)-1:0] viv_s14;
   wire     [c_dw_si-1:0] viv_s15;
   wire     [c_dw_si-1:0] viv_s16;
   wire     [c_dw_si-1:0] viv_s17;
   wire     [c_dw_si-1:0] viv_s18;
   wire     [c_dw_si-1:0] viv_s19;
   wire     [c_dw_si-1:0] viv_s20;
   wire     [c_dw_si-1:0] viv_s21;
   wire     [c_dw_si-1:0] viv_s22;
   wire     [c_dw_si-1:0] viv_s23;
   wire     [c_dw_si-1:0] viv_s24;
   wire     [c_dw_si-1:0] viv_s25;
   wire     [c_dw_si-1:0] viv_s26;
   wire     [c_dw_si-1:0] viv_s27;
   wire     [c_dw_si-1:0] viv_s28;
   reg      [c_dw_si-1:0] viv_s29;
   reg      [c_dw_si-1:0] viv_s30;
   reg      [c_dw_si-1:0] viv_s31;
   reg      [c_dw_si-1:0] viv_s32;
   reg      [c_dw_si-1:0] viv_s33;
   reg      [c_dw_si-1:0] viv_s34;
   reg      [c_dw_si-1:0] viv_s35;
   reg      [c_dw_si-1:0] viv_s36;
   reg      [c_dw_si-1:0] viv_s37;
   reg      [c_dw_si-1:0] viv_s38;
   reg      [c_dw_si-1:0] viv_s39;
   reg      [c_dw_si-1:0] viv_s40;
   wire     [c_dw_si-1:0] viv_s41;
   wire     [c_dw_si-1:0] viv_s42;
   wire     [c_dw_si-1:0] viv_s43;
   reg                    in_ack;
   reg [c_dw_dem_mem-1:0] wr_data;
   reg                    viv_s44;
   wire                  viv_s45;
   wire                  viv_s46;
   wire                  viv_s47;
   wire                  viv_s48;
   wire                  viv_s49;
   wire                  viv_s50;
   wire                  viv_s51;      
   wire                  memif_ack;       
   assign viv_s45   = viv_s10 <  c_line_delay; 
   assign viv_s46 = viv_s10 == c_line_delay; 
   assign viv_s47  = viv_s10 == c_line_delay; 
   assign viv_s48     = viv_s10 >  c_line_delay; 
   assign viv_s49 = viv_s7 == viv_s11;
   assign viv_s50  = (viv_s45 || viv_s47) ? in_h_end : 
                                               viv_s49 && (viv_s9 == c_odd_wr);
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s0  <= 1'b0;
         viv_s1   <= 2'd0;
      end else begin
         if (soft_rst || (memif_v_end && memif_h_end && memif_val)) begin
           viv_s0 <= 0;            
         end else if (in_val && in_ack) begin
           viv_s0 <= 1;            
         end
         if (~viv_s0)
           viv_s1  <= regs_bayer_pat;
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s2             <= 0;
         viv_s3         <= 0;
      end else begin
         if (~viv_s44 && ~viv_s0)  begin           
            viv_s2     <= ~viv_s1[1];
            viv_s3 <= viv_s1[1] == viv_s1[0];
         end else if (viv_s44) begin           
            if (viv_s50) begin
               if (memif_v_end) begin
                  viv_s2     <= ~viv_s1[1];
                  viv_s3 <= viv_s1[1] == viv_s1[0];
               end else begin
                  viv_s2     <= ~viv_s2 ;
                  viv_s3 <= ~viv_s2 == viv_s1[0];
               end
            end else begin
               viv_s3   <= ~viv_s3;
            end
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s9      <= c_reset;
         viv_s10   <= 0;
         viv_s4 <= 1;
      end else begin
         if (soft_rst) begin
           viv_s9 <= c_reset;
         end else begin
            case (viv_s9) 
              c_rd_p0 :
                viv_s9  <= c_rd_p1;
              c_rd_p1 :
                if (viv_s44) begin
                  viv_s9 <= c_odd_wr;
                end else begin
                  viv_s9 <= c_even;
                end
              c_even :
                if (viv_s44) begin
                  viv_s9 <= c_odd_wr;
                end
              c_odd_wr : begin
                if (viv_s44) begin
                   if (viv_s50) begin
                      if (memif_v_end) begin
                         viv_s9      <= c_even;
                         viv_s4 <= 1;
                         viv_s10   <= 0;
                      end else begin
                         viv_s9      <= c_rd_p0;
                         viv_s4 <= 0;
                         if (in_v_end || ~viv_s46)  
                           viv_s10 <= viv_s10 +1;
                      end
                   end else begin
                      viv_s9 <= c_even;
                   end
                end
              end
              default : begin 
                 viv_s9      <= c_even;
                 viv_s4 <= 1'b1;
                 viv_s10   <= 0;
              end
            endcase
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s7      <= {c_aw_dem_mem{1'b0}};
         viv_s8      <= {c_aw_dem_mem{1'b0}};
         viv_s6 <= {c_dw_si{1'b0}};
         viv_s5     <= {c_dw_dem_mem{1'b0}};
         viv_s11 <= {c_aw_dem_mem{1'b0}};
      end else begin
         if (~soft_rst) begin
            case (viv_s9) 
              c_rd_p0 :
                viv_s7 <= {{c_aw_dem_mem-1{1'b0}},1'b1};
              c_rd_p1 : begin
                 viv_s5    <= rd_data;
                 if (viv_s44) begin
                   viv_s6 <= viv_s30;
                 end
              end
              c_even :
                if (viv_s44) begin
                  viv_s6 <= viv_s30;
                end
              c_odd_wr :
                if (viv_s44) begin
                   if (viv_s50) begin
                      viv_s5    <= {c_dw_dem_mem{1'b0}};
                      viv_s8     <= {c_aw_dem_mem{1'b0}};
                      viv_s7     <= {c_aw_dem_mem{1'b0}};
                      if (memif_v_end)
                        viv_s11 <= {c_aw_dem_mem{1'b0}};
                      else if (in_v_end)
                        viv_s11 <= viv_s7;
                   end else begin
                      viv_s8     <= viv_s8 + 1'b1;
                      viv_s7     <= viv_s7 + 1'b1;
                      if (viv_s10 == 4'h0)
                        viv_s5 <= {c_dw_dem_mem{1'b0}};
                      else
                        viv_s5 <= rd_data;
                   end
                end
              default : begin 
                 viv_s7    <= {c_aw_dem_mem{1'b0}};
                 viv_s8    <= {c_aw_dem_mem{1'b0}};
              end
            endcase
         end
      end
   end
   assign cs_n = (viv_s9 == c_reset);
   always @(*) begin
      case (viv_s9)
        c_reset : begin
           adr  = {c_aw_dem_mem{1'b0}};
           we_n = 1'b1;
        end
        c_odd_wr :
          if (viv_s10 < c_last_line) begin
             adr  = (viv_s44) ? viv_s8 : viv_s7;
             we_n = ~viv_s44;
          end else begin
             adr  = viv_s7;
             we_n = 1'b1;
          end
        default : begin
           adr  = viv_s7;
           we_n = 1'b1;
        end
      endcase
   end
   always @(viv_s9 or viv_s51 or viv_s45 or viv_s47) begin
      case (viv_s9)
        c_rd_p0 :
            in_ack  = 1'b0;
        c_rd_p1  ,
        c_even   ,
        c_odd_wr :
          if (viv_s45)
             in_ack   = 1'b1;
          else if (viv_s47)
             in_ack   = viv_s51;
          else
             in_ack   = 1'b0;
        default :
             in_ack   = 1'b1;    
      endcase
   end
   always @(*) begin
      case (viv_s9)
        c_reset,
        c_rd_p0 : begin
           memif_val   = 1'b0;
           viv_s44 = 1'b1;
        end
        default :  
          if (viv_s45) begin
             memif_val   = 1'b0;
             viv_s44 = in_val;
          end else if (viv_s47) begin
             memif_val   = in_val;
             viv_s44 = in_val && memif_ack;
          end else begin
             memif_val   = 1'b1;
             viv_s44 = memif_ack;
          end
      endcase
   end
  assign memif_h_end = (viv_s9 == c_odd_wr) && (
                        (viv_s47  && in_h_end ) ||
                        (viv_s48 && viv_s49) );
  assign memif_v_end = viv_s10 == c_last_line;
  assign viv_s15 = viv_s5[(14*c_dw_si)-1 :13*c_dw_si];
  assign viv_s16 = viv_s5[(13*c_dw_si)-1 :12*c_dw_si];
  assign viv_s17 = viv_s5[(12*c_dw_si)-1 :11*c_dw_si];
  assign viv_s18 = viv_s5[(10*c_dw_si)-1 : 9*c_dw_si];
  assign viv_s19 = viv_s5[( 8*c_dw_si)-1 : 7*c_dw_si];
  assign viv_s20 = viv_s5[( 6*c_dw_si)-1 : 5*c_dw_si];
  assign viv_s21 = viv_s5[( 4*c_dw_si)-1 : 3*c_dw_si];
  assign viv_s22 = viv_s5[( 2*c_dw_si)-1 : 1*c_dw_si];
  assign viv_s23 = viv_s5[(11*c_dw_si)-1 :10*c_dw_si];
  assign viv_s24 = viv_s5[( 9*c_dw_si)-1 : 8*c_dw_si];
  assign viv_s25 = viv_s5[( 7*c_dw_si)-1 : 6*c_dw_si];
  assign viv_s26 = viv_s5[( 5*c_dw_si)-1 : 4*c_dw_si];
  assign viv_s27 = viv_s5[( 3*c_dw_si)-1 : 2*c_dw_si];
  assign viv_s28 = viv_s5[( 1*c_dw_si)-1 : 0 ];
  assign viv_s42 = viv_s23;
  assign viv_s41 = viv_s17;
  assign viv_s43     = viv_s16;
   always @(*) begin
     wr_data[(14*c_dw_si)-1 : 13*c_dw_si] = viv_s43;
     wr_data[(12*c_dw_si)-1 : 10*c_dw_si] = {viv_s18, viv_s24};
     wr_data[( 8*c_dw_si)-1 :  6*c_dw_si] = {viv_s20, viv_s26};
     wr_data[( 4*c_dw_si)-1 :  2*c_dw_si] = {viv_s22, viv_s28};
     wr_data[( 2*c_dw_si)-1 :          0] = {viv_s6, viv_s29};
     if (viv_s3)
        wr_data[(13*c_dw_si)-1 :12*c_dw_si] = viv_s42;
     else
        wr_data[(13*c_dw_si)-1 :12*c_dw_si] = viv_s41;
     if (viv_s10 > 4'h1)
        wr_data[(10*c_dw_si)-1 : 8*c_dw_si] = {viv_s19, viv_s25};
     else                                  
        wr_data[(10*c_dw_si)-1 : 8*c_dw_si] = {viv_s6, viv_s29};
     if (viv_s10 > 4'h1)
        wr_data[(6*c_dw_si)-1 : 4*c_dw_si] = {viv_s21, viv_s27};
     else                                  
        wr_data[(6*c_dw_si)-1 : 4*c_dw_si] = {viv_s6, viv_s29};
   end
  always @(*) begin
     if (viv_s4) begin
        viv_s38  = {c_dw_si{1'b0}};
        viv_s37  = {c_dw_si{1'b0}};
        viv_s36  = {c_dw_si{1'b0}};
        viv_s35  = {c_dw_si{1'b0}};
        viv_s34  = {c_dw_si{1'b0}};
        viv_s33  = {c_dw_si{1'b0}};
        viv_s32  = {c_dw_si{1'b0}};
        viv_s31  = {c_dw_si{1'b0}};
     end else begin
        case (viv_s9)
          c_rd_p1 : begin
             viv_s38 = rd_data[(14*c_dw_si)-1 :13*c_dw_si];
             viv_s37 = rd_data[(13*c_dw_si)-1 :12*c_dw_si];
             viv_s36 = rd_data[(12*c_dw_si)-1 :11*c_dw_si];
             viv_s35 = rd_data[(10*c_dw_si)-1 : 9*c_dw_si];
             viv_s34 = rd_data[( 8*c_dw_si)-1 : 7*c_dw_si];
             viv_s33 = rd_data[( 6*c_dw_si)-1 : 5*c_dw_si];
             viv_s32 = rd_data[( 4*c_dw_si)-1 : 3*c_dw_si];
             viv_s31 = rd_data[( 2*c_dw_si)-1 : 1*c_dw_si];
          end
          c_even : begin
             viv_s38 = viv_s15;
             viv_s37 = viv_s16;
             viv_s36 = viv_s17;
             viv_s35 = viv_s18;
             viv_s34 = viv_s19;
             viv_s33 = viv_s20;
             viv_s32 = viv_s21;
             viv_s31 = viv_s22;
          end
          default : begin
             viv_s38 = viv_s15;
             viv_s37 = viv_s16;
             viv_s36 = viv_s23;
             viv_s35 = viv_s24;
             viv_s34 = viv_s25;
             viv_s33 = viv_s26;
             viv_s32 = viv_s27;
             viv_s31 = viv_s28;
          end
        endcase
     end
  end
  always @(*) begin
     if (viv_s48) begin
       viv_s30     = viv_s32;
       viv_s29 = viv_s27; 
     end else begin
       viv_s30     = in_data;
       viv_s29 = in_data;
     end
  end
  always @(*) begin
     if (viv_s3) begin 
        viv_s40 = viv_s38;
        viv_s39 = viv_s30;
     end else begin
        viv_s40 = viv_s37;
        viv_s39 = viv_s31;
     end
   end
  assign viv_s51 = out_ack || (~viv_s13);
  assign memif_ack  = viv_s51;
  assign out_val    = viv_s13;
  assign viv_s14 = {viv_s40, viv_s36, viv_s35, viv_s34, viv_s33, viv_s32, viv_s39};
  always @(posedge clk or negedge reset_n) begin
     if (reset_n == 1'b0) begin
        viv_s13 <= 1'b0;
        out_h_end        <= 1'b0;
        out_v_end        <= 1'b0;
        viv_s12         <= {7*c_dw_si{1'b0}};
     end else if (soft_rst) begin        
        viv_s13 <= 1'b0;
        out_h_end        <= 1'b0;
        out_v_end        <= 1'b0;
     end else if (viv_s51) begin
        viv_s13 <= memif_val;
        out_h_end        <= memif_h_end;
        out_v_end        <= memif_v_end;
        viv_s12         <= viv_s14;
    end  
  end
  assign {out_data_7b,
          out_data_m6,
          out_data_m5,
          out_data_m4,
          out_data_m3,
          out_data_m2,
          out_data_1t} = viv_s12;
endmodule
