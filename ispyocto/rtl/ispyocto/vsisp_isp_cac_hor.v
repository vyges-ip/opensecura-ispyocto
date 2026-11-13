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

module vsisp_isp_cac_hor 
  (
   clk,
   reset_n,
   soft_rst,
   in_val,
   in_ack,
   in_h_end,
   in_v_end,
   cac_v_data_out,
   red_sub,
   blue_sub,
   regs_dem_bypass,
   regs_bayer_pat,
   cac_h_red,
   cac_h_blue,
   cac_h_red_col,
   alom_stage1_en,
   alom_stage2_en,
   alom_stage3_en,
   alom_stage4_en,
   alom_stage5_en,
   alom_stage6_en,
   alom_stage7_en,
   alom_stage8_en,
   alom_stage0_val,
   alom_stage1_val,
   alom_stage2_val,
   alom_stage3_val,
   alom_stage4_val,
   alom_stage5_val,
   alom_stage6_val,
   proc_pattern_stg2,
   proc_pattern_stg3,
   out_cb,
   out_cr,
   out_h_end,
   out_v_end,
   out_val,
   out_ack);
`include "vsisp_isp.vh"    
   input               clk;             
   input               reset_n;         
   input               soft_rst;        
   input               in_val;          
   output              in_ack;          
   input               in_h_end;        
   input               in_v_end;        
   input [c_dw_si-1:0] cac_v_data_out;  
   input [c_dw_si:0]   red_sub;         
   input [c_dw_si:0]   blue_sub;        
   input               regs_dem_bypass; 
   input [1:0]         regs_bayer_pat;  
   input [7:0]         cac_h_red;       
   input [7:0]         cac_h_blue;      
   input               cac_h_red_col;   
   output              alom_stage1_en;  
   output              alom_stage2_en;  
   output              alom_stage3_en;  
   output              alom_stage4_en;  
   output              alom_stage5_en;  
   output              alom_stage6_en;  
   output              alom_stage7_en;  
   output              alom_stage8_en;  
   output              alom_stage0_val; 
   output              alom_stage1_val; 
   output              alom_stage2_val; 
   output              alom_stage3_val; 
   output              alom_stage4_val; 
   output              alom_stage5_val; 
   output              alom_stage6_val; 
   output [1:0]        proc_pattern_stg2;
   output [1:0]        proc_pattern_stg3;
   output [c_dw_si:0]  out_cb;          
   output [c_dw_si:0]  out_cr;          
   output              out_h_end;       
   output              out_v_end;       
   output              out_val;         
   input               out_ack;         
   wire [c_dw_si-1:0]  viv_s0;
   wire [c_dw_si-1:0]  viv_s1;
   wire [c_dw_si-1:0]  viv_s2;
   wire [c_dw_si-1:0]  viv_s3;
   wire [c_dw_si-1:0]  viv_s4;
   wire [c_dw_si-1:0]  viv_s5;
   wire [c_dw_si-1:0]  viv_s6;
   wire [c_dw_si-1:0]  viv_s7;
   wire [c_dw_si-1:0]  viv_s8;
   wire [c_dw_si-1:0]  viv_s9;
   wire [c_dw_si-1:0]  viv_s10;
   wire                alom_stage5_en;
   wire                alom_stage6_en;
   wire                alom_stage7_en;
   wire                alom_stage8_en;
   wire [3:0]          viv_s11;
   wire [3:0]          viv_s12;
   reg  [4:0]          viv_s13;
   reg  [4:0]          viv_s14;
   reg [c_dw_si-1:0]   viv_s15;
   reg [c_dw_si-1:0]   viv_s16;
   reg [c_dw_si-1:0]   viv_s17;
   reg [c_dw_si-1:0]   viv_s18;
   wire [c_dw_si-1:0]  viv_s19;
   wire [c_dw_si-1:0]  viv_s20;
   wire [c_dw_si-1:0]  viv_s21;
   wire [c_dw_si-1:0]  viv_s22;
   wire [c_dw_si-1:0]  viv_s23;
   wire [c_dw_si-1:0]  viv_s24;
   wire [c_dw_si-1:0]  viv_s25;
   wire [c_dw_si-1:0]  viv_s26;
   wire [c_dw_si-1:0]  viv_s27;
   wire [c_dw_si-1:0]  viv_s28;
   wire [c_dw_si+5:0]  viv_s29;
   wire [c_dw_si+5:0]  viv_s30;
   reg [c_dw_si:0]     viv_s31;
   reg [c_dw_si:0]     viv_s32;
   reg [c_dw_si:0]     viv_s33;
   reg [c_dw_si:0]     viv_s34;
   reg [c_dw_si:0]     out_cb;
   reg [c_dw_si:0]     out_cr;
   reg                 viv_s35;
   reg                 viv_s36;
   vsisp_isp_cac_hor_buf #(c_dw_si) u_isp_cac_hor_buf 
     ( 
       .clk(clk),
       .reset_n(reset_n),
       .soft_rst(soft_rst),
       .in_val(in_val),
       .in_ack(in_ack),
       .in_h_end(in_h_end),
       .in_v_end(in_v_end),
       .in_data(cac_v_data_out),
       .regs_bayer_pat(regs_bayer_pat),
       .out_stage0(viv_s0),
       .out_stage1(viv_s1),
       .out_stage2(viv_s2),
       .out_stage3(viv_s3),
       .out_stage4(viv_s4),
       .out_stage5(viv_s5),
       .out_stage6(viv_s6),
       .out_stage7(viv_s7),
       .out_stage8(viv_s8),
       .out_stage9(viv_s9),
       .out_stage10(viv_s10),
       .alom_stage1_en(alom_stage1_en),
       .alom_stage2_en(alom_stage2_en),
       .alom_stage3_en(alom_stage3_en),
       .alom_stage4_en(alom_stage4_en),
       .alom_stage5_en(alom_stage5_en),
       .alom_stage6_en(alom_stage6_en),
       .alom_stage7_en(alom_stage7_en),
       .alom_stage8_en(alom_stage8_en),
       .alom_stage0_val(alom_stage0_val),
       .alom_stage1_val(alom_stage1_val),
       .alom_stage2_val(alom_stage2_val),
       .alom_stage3_val(alom_stage3_val),
       .alom_stage4_val(alom_stage4_val),
       .alom_stage5_val(alom_stage5_val),
       .alom_stage6_val(alom_stage6_val),
       .proc_pattern_stg2(proc_pattern_stg2),
       .proc_pattern_stg3(proc_pattern_stg3),
       .out_h_end(out_h_end),
       .out_v_end(out_v_end),
       .out_val(out_val),
       .out_ack(out_ack));
   assign viv_s11  = {cac_h_red[7:5],~cac_h_red_col};
   assign viv_s12 = {cac_h_blue[7:5],cac_h_red_col};
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
             viv_s15         <= {c_dw_si{1'b0}};
             viv_s17         <= {c_dw_si{1'b0}};
             viv_s16        <= {c_dw_si{1'b0}};
             viv_s18        <= {c_dw_si{1'b0}};
             viv_s13      <= 5'b0;
             viv_s14     <= 5'b0;
      end else begin
        if (alom_stage6_en) begin
          viv_s13  <= cac_h_red[4:0];
          viv_s14 <= cac_h_blue[4:0];
          case(viv_s11)
             4'd03  : viv_s15 <= viv_s0;
             4'd04  : viv_s15 <= viv_s1;
             4'd05  : viv_s15 <= viv_s2;
             4'd06  : viv_s15 <= viv_s3;
             4'd07  : viv_s15 <= viv_s4;
             4'd08  : viv_s15 <= viv_s5;
             4'd09  : viv_s15 <= viv_s6;
             4'd10  : viv_s15 <= viv_s7;
             4'd11  : viv_s15 <= viv_s8;
             4'd12  : viv_s15 <= viv_s9;
             default: viv_s15 <= viv_s10;
          endcase                        
          case(viv_s11)
            4'd03  : viv_s17 <= viv_s2;
            4'd04  : viv_s17 <= viv_s3;
            4'd05  : viv_s17 <= viv_s4;
            4'd06  : viv_s17 <= viv_s5;
            4'd07  : viv_s17 <= viv_s6;
            4'd08  : viv_s17 <= viv_s7;
            4'd09  : viv_s17 <= viv_s8;
            4'd10  : viv_s17 <= viv_s9;
            4'd11  : viv_s17 <= viv_s10;
            4'd12  : viv_s17 <= viv_s9;
            default: viv_s17 <= viv_s10;
          endcase                        
          case(viv_s12)
            4'd03  : viv_s16 <= viv_s0;
            4'd04  : viv_s16 <= viv_s1;
            4'd05  : viv_s16 <= viv_s2;
            4'd06  : viv_s16 <= viv_s3;
            4'd07  : viv_s16 <= viv_s4;
            4'd08  : viv_s16 <= viv_s5;
            4'd09  : viv_s16 <= viv_s6;
            4'd10  : viv_s16 <= viv_s7;
            4'd11  : viv_s16 <= viv_s8;
            4'd12  : viv_s16 <= viv_s9;
            default: viv_s16 <= viv_s10;
          endcase                        
          case(viv_s12)
            4'd03  : viv_s18 <= viv_s2;
            4'd04  : viv_s18 <= viv_s3;
            4'd05  : viv_s18 <= viv_s4;
            4'd06  : viv_s18 <= viv_s5;
            4'd07  : viv_s18 <= viv_s6;
            4'd08  : viv_s18 <= viv_s7;
            4'd09  : viv_s18 <= viv_s8;
            4'd10  : viv_s18 <= viv_s9;
            4'd11  : viv_s18 <= viv_s10;
            4'd12  : viv_s18 <= viv_s9;
            default: viv_s18 <= viv_s10;
          endcase                        
        end
      end
    end
   assign viv_s19 = (viv_s13[0]) ? viv_s17 : viv_s15;
   assign viv_s20 = (viv_s13[1]) ? viv_s17 : viv_s15;
   assign viv_s21 = (viv_s13[2]) ? viv_s17 : viv_s15;
   assign viv_s22 = (viv_s13[3]) ? viv_s17 : viv_s15;
   assign viv_s23 = (viv_s13[4]) ? viv_s17 : viv_s15;
   assign viv_s24 = (viv_s14[0]) ? viv_s18 : viv_s16;
   assign viv_s25 = (viv_s14[1]) ? viv_s18 : viv_s16;
   assign viv_s26 = (viv_s14[2]) ? viv_s18 : viv_s16;
   assign viv_s27 = (viv_s14[3]) ? viv_s18 : viv_s16;
   assign viv_s28 = (viv_s14[4]) ? viv_s18 : viv_s16;
   assign viv_s29 = viv_s15 + viv_s19 +
                   {viv_s20, 1'h0} + {viv_s21, 2'h0} +
                   {viv_s22, 3'h0} + {2'b10,viv_s23, 4'h0} -
                   {viv_s31, 4'h0};
   assign viv_s30 = viv_s16 + viv_s24 +
                   {viv_s25, 1'h0} + {viv_s26, 2'h0} +
                   {viv_s27, 3'h0} + {2'b10,viv_s28, 4'h0} -
                   {viv_s32, 4'h0};
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s31         <= {c_dw_si+1{1'b0}};
         viv_s32        <= {c_dw_si+1{1'b0}};
         viv_s33          <= {c_dw_si+1{1'b0}};
         viv_s34          <= {c_dw_si+1{1'b0}};
         out_cr               <= {c_dw_si+1{1'b0}};
         out_cb               <= {c_dw_si+1{1'b0}};
         viv_s35 <= 1'b0;
         viv_s36 <= 1'b0;
      end else begin
         if (alom_stage6_en) begin
             viv_s35 <= regs_dem_bypass;
             viv_s31         <= red_sub;
             viv_s32        <= blue_sub;
         end
         if (alom_stage7_en) begin
             viv_s36 <= viv_s35;
             viv_s33          <= viv_s29[c_dw_si+5:5];
             viv_s34          <= viv_s30[c_dw_si+5:5];
         end
         if (alom_stage8_en) begin
            if (viv_s36) begin
               out_cr             <= {1'b1,{c_dw_si{1'b0}}};
               out_cb             <= {1'b1,{c_dw_si{1'b0}}};
            end else begin
               out_cr             <= viv_s33;
               out_cb             <= viv_s34;
            end
         end
      end
   end
endmodule
