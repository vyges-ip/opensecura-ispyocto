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

module vsisp_isp_filt_lp_core 
  (
   clk,
   reset_n,
   alom_stage6_en,
   alom_stage7_en,
   alom_stage8_en,
   alom_stage5_val,
   alom_stage6_val,
   grn_line04,
   grn_line13,
   grn_line2,
   filt_lp_select,
   out_data13,
   out_data2
   );
`include "vsisp_isp.vh"    
   input               clk;             
   input               reset_n;         
   input               alom_stage6_en;  
   input               alom_stage7_en;  
   input               alom_stage8_en;  
   input               alom_stage5_val; 
   input               alom_stage6_val; 
   input [c_dw_si  :0] grn_line04;      
   input [c_dw_si  :0] grn_line13;      
   input [c_dw_si-1:0] grn_line2;       
   input [3:0]         filt_lp_select;  
   output [c_dw_si+2:0] out_data13;      
   output [c_dw_si+1:0] out_data2;       
   parameter            c_dw_buf = (3*c_dw_si)+2;
   wire                 viv_s0;
   wire                 viv_s1;
   wire                 viv_s2;
   wire                 viv_s3;
   wire                 viv_s4;
   reg                  viv_s5;
   reg [3:0]            viv_s6;
   reg [c_dw_buf-1:0]   viv_s7;
   reg [c_dw_buf-1:0]   viv_s8;
   reg [c_dw_buf-1:0]   viv_s9;
   reg [c_dw_buf-1:0]   viv_s10;
   reg [c_dw_buf-1:0]   viv_s11;
   wire [c_dw_buf-1:0]  viv_s12; 
   wire [c_dw_si:0]     viv_s13;
   wire [c_dw_si:0]     viv_s14;
   wire [c_dw_si:0]     viv_s15;
   wire [c_dw_si:0]     viv_s16;
   wire [c_dw_si:0]     viv_s17;  
   wire [c_dw_si:0]     viv_s18;
   wire [c_dw_si-1:0]   viv_s19;
   wire [c_dw_si-1:0]   viv_s20; 
   wire [c_dw_si-1:0]   viv_s21;
   wire [c_dw_si  :0]   viv_s22; 
   wire [c_dw_si+2:0]   viv_s23; 
   wire [c_dw_si+2:0]   viv_s24; 
   wire [c_dw_si-1:0]   viv_s25; 
   wire [c_dw_si+1:0]   viv_s26; 
   wire [c_dw_si+1:0]   viv_s27; 
   wire [c_dw_si  :0]   viv_s28;
   reg [c_dw_si+5:0]    viv_s29; 
   reg [c_dw_si+3:0]    viv_s30;
   reg [c_dw_si+5:0]    viv_s31;
   reg [c_dw_si+3:0]    viv_s32;
   reg [c_dw_si+4:0]    viv_s33;
   reg [c_dw_si+3:0]    viv_s34;
   reg [c_dw_si+4:0]    viv_s35; 
   reg [c_dw_si+2:0]    viv_s36;
   reg [c_dw_si+4:0]    viv_s37;
   reg [c_dw_si+2:0]    viv_s38;
   reg [c_dw_si+3:0]    viv_s39;
   reg [c_dw_si+2:0]    viv_s40;
   wire [c_dw_si+6:0]   viv_s41;
   wire [c_dw_si+5:0]   viv_s42;
   wire [c_dw_si+2:0]   viv_s43;
   wire [c_dw_si+1:0]   viv_s44;
   reg [c_dw_si+2:0]    viv_s45;
   reg [c_dw_si+1:0]    viv_s46;
   reg [c_dw_si+2:0]    out_data13;
   reg [c_dw_si+1:0]    out_data2;
   assign viv_s12 = {grn_line04, grn_line13, grn_line2};
   assign viv_s0 = alom_stage6_en;
   assign viv_s1 = alom_stage7_en;
   assign viv_s2 = alom_stage8_en;
   assign viv_s3 = alom_stage5_val;
   assign viv_s4 = alom_stage6_val;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s7    <= {c_dw_buf{1'b0}};
         viv_s8    <= {c_dw_buf{1'b0}};
         viv_s6 <= 4'b0;
         viv_s5     <= 1'b0;
      end else begin
         if (viv_s0) viv_s6 <= filt_lp_select;
         if (viv_s0) viv_s7    <= viv_s12;
         if (viv_s0) viv_s8    <= viv_s7;
         if (viv_s0) viv_s5     <= viv_s4;
      end
   end
   always @(*) begin
      if (viv_s3)      viv_s9 = viv_s12;
      else if (viv_s4) viv_s9 = viv_s7;
      else                 viv_s9 = viv_s12;
      viv_s10                      = viv_s7;
      if (viv_s5)      viv_s11 = viv_s8;
      else if (viv_s4) viv_s11 = viv_s7;
      else                 viv_s11 = viv_s8;
   end
   assign viv_s13 = viv_s9[3*c_dw_si+1:2*c_dw_si+1];
   assign viv_s14 = viv_s10[3*c_dw_si+1:2*c_dw_si+1];
   assign viv_s15 = viv_s11[3*c_dw_si+1:2*c_dw_si+1];
   assign viv_s16 = viv_s9[2*c_dw_si:c_dw_si];
   assign viv_s17 = viv_s10[2*c_dw_si:c_dw_si];  
   assign viv_s18 = viv_s11[2*c_dw_si:c_dw_si];
   assign viv_s19 = viv_s9[c_dw_si-1:0];
   assign viv_s20 = viv_s10[c_dw_si-1:0]; 
   assign viv_s21 = viv_s11[c_dw_si-1:0];
   assign viv_s24  = {2'b0, viv_s14} + {viv_s20, 1'b0} + viv_s26;
   assign viv_s23  = {2'b0, viv_s13} + viv_s15 + {viv_s28, 1'b0};
   assign viv_s22  = viv_s17;
   assign viv_s28 = {1'b0, viv_s19} + viv_s21;
   assign viv_s27  = {1'b0, viv_s17} + viv_s28;
   assign viv_s26  = {1'b0, viv_s16} + viv_s18;
   assign viv_s25  = viv_s20;
   always @(*) begin
      case(viv_s6[2:0])
        3'b000  : viv_s29 = {      viv_s24, 3'b0};
        3'b001  : viv_s29 = {      viv_s24, 3'b0};
        3'b010  : viv_s29 = {      viv_s24, 3'b0};
        3'b111  : viv_s29 = {2'b0, viv_s24, 1'b0};
        default : viv_s29 = {1'b0, viv_s24, 2'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b011  : viv_s30 = {      viv_s24, 1'b0};
        3'b100  : viv_s30 = {      viv_s24, 1'b0};
        3'b101  : viv_s30 = {1'b0, viv_s24      };
        3'b111  : viv_s30 = {1'b0, viv_s24      };
        default : viv_s30 = 0;
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b000  : viv_s31 = {2'b0, viv_s22, 3'b0};
        3'b001  : viv_s31 = {2'b0, viv_s22, 3'b0};
        3'b010  : viv_s31 = {1'b0, viv_s22, 4'b0};
        3'b011  : viv_s31 = {1'b0, viv_s22, 4'b0};
        3'b100  : viv_s31 = {1'b0, viv_s22, 4'b0};
        default : viv_s31 = {      viv_s22, 5'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b000  : viv_s32 = 0;
        3'b001  : viv_s32 = {1'b0, viv_s22, 2'b0};
        3'b010  : viv_s32 = 0;
        3'b011  : viv_s32 = {1'b0, viv_s22, 2'b0};
        3'b100  : viv_s32 = {      viv_s22, 3'b0};
        3'b101  : viv_s32 = 0;
        3'b110  : viv_s32 = {1'b0, viv_s22, 2'b0};
        default : viv_s32 = {      viv_s22, 3'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b101  : viv_s33 = {1'b0, viv_s23, 1'b0};
        3'b110  : viv_s33 = {1'b0, viv_s23, 1'b0};
        3'b111  : viv_s33 = {2'b0, viv_s22, 2'b0}; 
        default : viv_s33 = {      viv_s23, 2'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b000  : viv_s34 = {      viv_s23, 1'b0};
        3'b001  : viv_s34 = {1'b0, viv_s23      };
        3'b010  : viv_s34 = 0;
        3'b011  : viv_s34 = {1'b0, viv_s23      };
        3'b100  : viv_s34 = 0;
        3'b101  : viv_s34 = {1'b0, viv_s23      };
        3'b110  : viv_s34 = {1'b0, viv_s23      };
        default : viv_s34 = {      viv_s23, 1'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b000  : viv_s35 = {      viv_s27, 3'b0};
        3'b001  : viv_s35 = {      viv_s27, 3'b0};
        3'b010  : viv_s35 = {      viv_s27, 3'b0};
        3'b111  : viv_s35 = {2'b0, viv_s27, 1'b0};
        default : viv_s35 = {1'b0, viv_s27, 2'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b011  : viv_s36 = {      viv_s27, 1'b0};
        3'b100  : viv_s36 = {      viv_s27, 1'b0};
        3'b101  : viv_s36 = {1'b0, viv_s27      };
        3'b111  : viv_s36 = {1'b0, viv_s27      };
        default : viv_s36 = 0;
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b000  : viv_s37 = {2'b0, viv_s25, 3'b0};
        3'b001  : viv_s37 = {2'b0, viv_s25, 3'b0};
        3'b010  : viv_s37 = {1'b0, viv_s25, 4'b0};
        3'b011  : viv_s37 = {1'b0, viv_s25, 4'b0};
        3'b100  : viv_s37 = {1'b0, viv_s25, 4'b0};
        default : viv_s37 = {      viv_s25, 5'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b000  : viv_s38 = 0;
        3'b001  : viv_s38 = {1'b0, viv_s25, 2'b0};
        3'b010  : viv_s38 = 0;
        3'b011  : viv_s38 = {1'b0, viv_s25, 2'b0};
        3'b100  : viv_s38 = {      viv_s25, 3'b0};
        3'b101  : viv_s38 = 0;
        3'b110  : viv_s38 = {1'b0, viv_s25, 2'b0};
        default : viv_s38 = {      viv_s25, 3'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b101  : viv_s39 = {1'b0, viv_s26, 1'b0};
        3'b110  : viv_s39 = {1'b0, viv_s26, 1'b0};
        3'b111  : viv_s39 = {2'b0, viv_s25, 2'b0}; 
        default : viv_s39 = {      viv_s26, 2'b0};
      endcase
   end
   always @(*) begin
      case(viv_s6[2:0])
        3'b000  : viv_s40 = {      viv_s26, 1'b0};
        3'b001  : viv_s40 = {1'b0, viv_s26      };
        3'b010  : viv_s40 = 0;
        3'b011  : viv_s40 = {1'b0, viv_s26      };
        3'b100  : viv_s40 = 0;
        3'b101  : viv_s40 = {1'b0, viv_s26      };
        3'b110  : viv_s40 = {1'b0, viv_s26      };
        default : viv_s40 = {      viv_s26, 1'b0};
      endcase
   end
   assign viv_s41 = {1'b0, viv_s29} + viv_s30 + viv_s31 + viv_s32 + viv_s33 + viv_s34;
   assign viv_s42  = {1'b0, viv_s35}  + viv_s36  + viv_s37  + viv_s38  + viv_s39  + viv_s40;
   assign viv_s43 = viv_s6[3] ? {viv_s22, 2'b0} : 
                                               viv_s41[c_dw_si+6:4];
   assign viv_s44  = viv_s6[3] ? {viv_s25, 2'b0}  : 
                                               viv_s42[c_dw_si+5:4];
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s45  <= {c_dw_si+3{1'b0}};
         viv_s46   <= {c_dw_si+2{1'b0}};
         out_data13  <= {c_dw_si+3{1'b0}};
         out_data2   <= {c_dw_si+2{1'b0}};
      end else begin
         if (viv_s1) begin
            viv_s45 <= viv_s43;
            viv_s46  <= viv_s44;
         end
         if (viv_s2) begin
            out_data13 <= viv_s45;
            out_data2  <= viv_s46;
         end
      end
   end
endmodule
