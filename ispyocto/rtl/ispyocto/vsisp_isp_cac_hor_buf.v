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

module vsisp_isp_cac_hor_buf 
  (
   clk,
   reset_n,
   soft_rst,
   in_val,
   in_ack,
   in_h_end,
   in_v_end,
   in_data,
   regs_bayer_pat,
   out_stage0,
   out_stage1,
   out_stage2,
   out_stage3,
   out_stage4,
   out_stage5,
   out_stage6,
   out_stage7,
   out_stage8,
   out_stage9,
   out_stage10,
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
   out_h_end,
   out_v_end,
   out_val,
   out_ack);
   parameter c_dw_in = 10;                
   input     clk;             
   input     reset_n;         
   input     soft_rst;        
   input     in_val;          
   output    in_ack;          
   input     in_h_end;        
   input     in_v_end;        
   input  [c_dw_in-1:0] in_data;         
   input          [1:0] regs_bayer_pat;  
   output [c_dw_in-1:0] out_stage0;      
   output [c_dw_in-1:0] out_stage1;      
   output [c_dw_in-1:0] out_stage2;      
   output [c_dw_in-1:0] out_stage3;      
   output [c_dw_in-1:0] out_stage4;      
   output [c_dw_in-1:0] out_stage5;      
   output [c_dw_in-1:0] out_stage6;      
   output [c_dw_in-1:0] out_stage7;      
   output [c_dw_in-1:0] out_stage8;      
   output [c_dw_in-1:0] out_stage9;      
   output [c_dw_in-1:0] out_stage10;     
   output               alom_stage1_en;  
   output               alom_stage2_en;  
   output               alom_stage3_en;  
   output               alom_stage4_en;  
   output               alom_stage5_en;  
   output               alom_stage6_en;  
   output               alom_stage7_en;  
   output               alom_stage8_en;  
   output               alom_stage0_val; 
   output               alom_stage1_val; 
   output               alom_stage2_val; 
   output               alom_stage3_val; 
   output               alom_stage4_val; 
   output               alom_stage5_val; 
   output               alom_stage6_val; 
   output [1:0]         proc_pattern_stg2; 
   output [1:0]         proc_pattern_stg3; 
   output               out_h_end;       
   output               out_v_end;       
   output               out_val;         
   input                out_ack;         
   parameter c_dw_buf = c_dw_in+2;  
   reg               out_h_end;       
   reg               out_v_end;       
   reg               out_val;         
   reg [1:0] proc_pattern_stg2; 
   reg [1:0] proc_pattern_stg3; 
   reg [c_dw_in-1:0] out_stage0;
   reg [c_dw_in-1:0] out_stage1;
   reg [c_dw_in-1:0] out_stage2;
   reg [c_dw_in-1:0] out_stage3;
   reg [c_dw_in-1:0] out_stage4;
   reg [c_dw_in-1:0] out_stage5;
   reg [c_dw_in-1:0] out_stage6;
   reg [c_dw_in-1:0] out_stage7;
   reg [c_dw_in-1:0] out_stage8;
   reg [c_dw_in-1:0] out_stage9;
   reg [c_dw_in-1:0] out_stage10;
   reg               viv_s0;
   reg [1:0]         viv_s1;
   wire [c_dw_buf-1:0] viv_s2; 
   wire                viv_s3;  
   reg                viv_s4;       
   reg [c_dw_buf-1:0] viv_s5;   
   reg [c_dw_buf-1:0] viv_s6;
   reg [c_dw_buf-1:0] viv_s7;
   reg [c_dw_buf-1:0] viv_s8;
   reg [c_dw_buf-1:0] viv_s9;
   reg [c_dw_buf-1:0] viv_s10;
   reg [c_dw_buf-1:0] viv_s11;
   reg [c_dw_buf-1:0] viv_s12;
   reg [c_dw_buf-1:0] viv_s13;
   reg [c_dw_buf-1:0] viv_s14;
   reg                viv_s15;
   reg                viv_s16;
   reg                viv_s17;
   reg                viv_s18;
   reg                viv_s19;
   reg                viv_s20;
   reg                viv_s21;
   reg                viv_s22;
   reg                viv_s23;
   reg                viv_s24;
   wire               viv_s25;
   wire               viv_s26;
   wire               viv_s27;
   wire               viv_s28;
   wire               viv_s29;
   wire               viv_s30;
   wire               viv_s31;
   wire               viv_s32;
   wire               viv_s33;
   wire               viv_s34;
   wire               viv_s35;
   wire               viv_s36;
   wire               viv_s37;
   wire               viv_s38;
   wire               viv_s39;
   wire               viv_s40;
   wire               viv_s41;
   wire               viv_s42;
   wire               viv_s43;
   wire               viv_s44;
   wire               viv_s45;
   wire               viv_s46;
   wire               viv_s47;
   wire               viv_s48;
   wire               viv_s49;
   wire               viv_s50;
   wire               viv_s51;
   wire               viv_s52;
   wire               viv_s53;
   wire               viv_s54;
   wire               viv_s55;
   wire               viv_s56;
   wire               viv_s57;
   wire               viv_s58;
   wire               viv_s59;
   wire               viv_s60;
   wire               viv_s61;
   wire               viv_s62;
   wire               viv_s63;
   wire               viv_s64;
   wire               viv_s65;  
   wire               viv_s66;
   wire               viv_s67;
   reg                viv_s68;
   wire               viv_s69;
   reg                viv_s70;
   wire               viv_s71;
   reg                viv_s72;
   wire               viv_s73;
   wire               viv_s74;
   assign viv_s34 =                (viv_s3 || viv_s58);
   assign viv_s35 = viv_s34 && (viv_s15 || viv_s59);
   assign viv_s36 = viv_s35 && (viv_s16 || viv_s60);
   assign viv_s37 = viv_s36 && (viv_s17 || viv_s61);
   assign viv_s38 = viv_s37 && (viv_s18 || viv_s62);
   assign viv_s39 = viv_s38 && (viv_s19 || viv_s63);
   assign viv_s41   = !viv_s15  || viv_s42 && viv_s34;
   assign viv_s42   = !viv_s16  || viv_s43 && viv_s35;
   assign viv_s43   = !viv_s17  || viv_s44 && viv_s36;
   assign viv_s44   = !viv_s18  || viv_s45 && viv_s37;
   assign viv_s45   = !viv_s19  || viv_s46 && viv_s38;
   assign viv_s46   = !viv_s20  || viv_s52  && viv_s39;
   assign viv_s47   =  viv_s46;
   assign viv_s48   =  viv_s46;
   assign viv_s49   =  viv_s46;
   assign viv_s50  =  viv_s46;
   assign viv_s51    = out_ack;   
   assign viv_s52    = viv_s51;  
   assign viv_s53  = !viv_s20   || viv_s52;
   assign viv_s54  = !viv_s19   || viv_s53;
   assign viv_s55  = !viv_s18   || viv_s54;
   assign viv_s56  = !viv_s17   || viv_s55;
   assign viv_s57  = !viv_s16   || viv_s56;
   assign in_ack      = (!viv_s15  || viv_s57) && viv_s4;
   assign viv_s40 = (!viv_s15 || viv_s57) && viv_s4 && viv_s3;
   assign viv_s64 = viv_s6[c_dw_buf-2];
   assign viv_s65 = viv_s7[c_dw_buf-2];
   assign viv_s66 = viv_s10[c_dw_buf-2];
   assign viv_s58 = viv_s5[c_dw_buf-1];
   assign viv_s59 = viv_s6[c_dw_buf-1];
   assign viv_s60 = viv_s7[c_dw_buf-1];
   assign viv_s61 = viv_s8[c_dw_buf-1];
   assign viv_s62 = viv_s9[c_dw_buf-1];
   assign viv_s63 = viv_s10[c_dw_buf-1];
   assign viv_s3  = in_val && viv_s4;
   assign viv_s2 = {in_h_end, in_v_end, in_data};
   assign viv_s73  = in_h_end && in_val && in_ack;
   assign viv_s74 = viv_s63 && viv_s30 && viv_s52;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s5  <= {c_dw_buf{1'b0}};
         viv_s6  <= {c_dw_buf{1'b0}};
         viv_s7  <= {c_dw_buf{1'b0}};
         viv_s8  <= {c_dw_buf{1'b0}};
         viv_s9  <= {c_dw_buf{1'b0}};
         viv_s10  <= {c_dw_buf{1'b0}};
         viv_s11  <= {c_dw_buf{1'b0}};
         viv_s12  <= {c_dw_buf{1'b0}};
         viv_s13  <= {c_dw_buf{1'b0}};
         viv_s14 <= {c_dw_buf{1'b0}};
         viv_s15   <= 1'b0;
         viv_s16   <= 1'b0;
         viv_s17   <= 1'b0;
         viv_s18   <= 1'b0;
         viv_s19   <= 1'b0;
         viv_s20   <= 1'b0;
         viv_s21   <= 1'b0;
         viv_s22   <= 1'b0;
         viv_s23   <= 1'b0;
         viv_s24  <= 1'b0;
         viv_s4      <= 1'b1;
      end else begin
         if (viv_s40) viv_s5 <= viv_s2;
         if (viv_s42)      viv_s6 <= viv_s5;
         if (viv_s43)      viv_s7 <= viv_s6;
         if (viv_s44)      viv_s8 <= viv_s7;
         if (viv_s45)      viv_s9 <= viv_s8;
         if (viv_s46)      viv_s10 <= viv_s9;
         if (viv_s47)      viv_s11 <= viv_s10;
         if (viv_s48)      viv_s12 <= viv_s11;
         if (viv_s49)      viv_s13 <= viv_s12;
         if (viv_s50)    viv_s14 <= viv_s13;
         if (soft_rst) begin
            viv_s15   <= 1'b0;
            viv_s16   <= 1'b0;
            viv_s17   <= 1'b0;
            viv_s18   <= 1'b0;
            viv_s19   <= 1'b0;
            viv_s20   <= 1'b0;
            viv_s21   <= 1'b0;
            viv_s22   <= 1'b0;
            viv_s23   <= 1'b0;
            viv_s24  <= 1'b0;
            viv_s4      <= 1'b1;
         end else begin
            if (viv_s41)  viv_s15 <= viv_s3;
            if (viv_s42)  viv_s16 <= viv_s25;
            if (viv_s43)  viv_s17 <= viv_s26;
            if (viv_s44)  viv_s18 <= viv_s27;
            if (viv_s45)  viv_s19 <= viv_s28;
            if (viv_s46)  viv_s20 <= viv_s29;
            if (viv_s47)  viv_s21 <= viv_s30;
            if (viv_s48)  viv_s22 <= viv_s31;
            if (viv_s49)  viv_s23 <= viv_s32;
            if (viv_s50) viv_s24 <= viv_s33;
            if      (viv_s73)   viv_s4 <= 1'b0;
            else if (viv_s74)  viv_s4 <= 1'b1;
         end
      end
   end
   assign viv_s25 = viv_s15 && (viv_s3     || viv_s58);
   assign viv_s26 = viv_s16 && (viv_s25 || viv_s59);
   assign viv_s27 = viv_s17 && (viv_s26 || viv_s60);
   assign viv_s28 = viv_s18 && (viv_s27 || viv_s61);
   assign viv_s29 = viv_s19 && (viv_s28 || viv_s62);
   assign viv_s30 = viv_s20 && (viv_s29 || viv_s63);
   assign viv_s31 = viv_s21 && viv_s30;
   assign viv_s32 = viv_s22 && viv_s31;
   assign viv_s33 = viv_s23 && viv_s32;
  always @(posedge clk or negedge reset_n) begin
     if (reset_n == 1'b0) begin
        viv_s0  <= 1'b0;
        viv_s1   <= 2'd0;
     end else begin
        if (soft_rst || out_v_end && out_h_end && out_val) begin
           viv_s0  <= 1'b0;            
        end else if (in_val && in_ack) begin
           viv_s0  <= 1'b1;            
        end
        if (~viv_s0)
           viv_s1  <= regs_bayer_pat;
     end
  end
  always @(posedge clk or negedge reset_n) begin
     if (reset_n == 1'b0) begin
        proc_pattern_stg2    <= 2'd0;
        proc_pattern_stg3    <= 2'd0;
     end else if (soft_rst) begin
        proc_pattern_stg2    <= 2'd0;
        proc_pattern_stg3    <= 2'd0;
     end else if (~viv_s0 && ~in_val) begin
        proc_pattern_stg2    <=  viv_s1;  
     end else begin
        if (viv_s42 && viv_s26) begin
           if (viv_s59) begin
              proc_pattern_stg2[0]    <= viv_s1[0];  
              if (viv_s64) begin
                 proc_pattern_stg2[1] <= viv_s1[1];  
              end else begin
                 proc_pattern_stg2[1] <= ~proc_pattern_stg2[1]; 
              end
           end else begin
              proc_pattern_stg2[0]    <= ~proc_pattern_stg2[0]; 
           end
        end
        if (viv_s43) begin
           proc_pattern_stg3          <= proc_pattern_stg2;
        end
     end
  end
   always @(*) begin
      if      (viv_s3) out_stage0 = viv_s2[c_dw_in-1:0];
      else if (viv_s16) out_stage0 = viv_s6[c_dw_in-1:0];
      else if (viv_s18) out_stage0 = viv_s8[c_dw_in-1:0];
      else if (viv_s20) out_stage0 = viv_s10[c_dw_in-1:0];
      else                 out_stage0 = viv_s2[c_dw_in-1:0];
      if      (viv_s15) out_stage1 = viv_s5[c_dw_in-1:0];
      else if (viv_s17) out_stage1 = viv_s7[c_dw_in-1:0];
      else if (viv_s19) out_stage1 = viv_s9[c_dw_in-1:0];
      else                 out_stage1 = viv_s5[c_dw_in-1:0];
      if      (viv_s16) out_stage2 = viv_s6[c_dw_in-1:0];
      else if (viv_s18) out_stage2 = viv_s8[c_dw_in-1:0];
      else if (viv_s20) out_stage2 = viv_s10[c_dw_in-1:0];
      else                 out_stage2 = viv_s6[c_dw_in-1:0];
      if      (viv_s17) out_stage3 = viv_s7[c_dw_in-1:0];
      else if (viv_s19) out_stage3 = viv_s9[c_dw_in-1:0];
      else                 out_stage3 = viv_s7[c_dw_in-1:0];
      if      (viv_s18) out_stage4 = viv_s8[c_dw_in-1:0];
      else if (viv_s20) out_stage4 = viv_s10[c_dw_in-1:0];
      else                 out_stage4 = viv_s8[c_dw_in-1:0];
      out_stage5                      = viv_s9[c_dw_in-1:0];
      if      (viv_s20) out_stage6 = viv_s10[c_dw_in-1:0];
      else if (viv_s18) out_stage6 = viv_s8[c_dw_in-1:0];
      else                 out_stage6 = viv_s10[c_dw_in-1:0];
      if      (viv_s21) out_stage7 = viv_s11[c_dw_in-1:0];
      else if (viv_s19) out_stage7 = viv_s9[c_dw_in-1:0];
      else                 out_stage7 = viv_s11[c_dw_in-1:0];
      if      (viv_s22) out_stage8 = viv_s12[c_dw_in-1:0];
      else if (viv_s20) out_stage8 = viv_s10[c_dw_in-1:0];
      else if (viv_s18) out_stage8 = viv_s8[c_dw_in-1:0];
      else                 out_stage8 = viv_s12[c_dw_in-1:0];
      if      (viv_s23) out_stage9 = viv_s13[c_dw_in-1:0];
      else if (viv_s21) out_stage9 = viv_s11[c_dw_in-1:0];
      else if (viv_s19) out_stage9 = viv_s9[c_dw_in-1:0];
      else                 out_stage9 = viv_s13[c_dw_in-1:0];
      if      (viv_s24) out_stage10 = viv_s14[c_dw_in-1:0];
      else if (viv_s22)  out_stage10 = viv_s12[c_dw_in-1:0];
      else if (viv_s20)  out_stage10 = viv_s10[c_dw_in-1:0];
      else if (viv_s18)  out_stage10 = viv_s8[c_dw_in-1:0];
      else                  out_stage10 = viv_s14[c_dw_in-1:0];
   end
   assign viv_s67 = viv_s63 && viv_s30;
   assign viv_s69 = viv_s66 && viv_s30;
   assign viv_s71   = viv_s30;
   assign alom_stage1_en = viv_s40;
   assign alom_stage2_en = viv_s42;
   assign alom_stage3_en = viv_s43; 
   assign alom_stage4_en = viv_s44; 
   assign alom_stage5_en = viv_s45;
   assign alom_stage6_en = viv_s46;
   assign alom_stage7_en = viv_s52;
   assign alom_stage8_en = viv_s51;
   assign alom_stage0_val = viv_s3;
   assign alom_stage1_val = viv_s15;
   assign alom_stage2_val = viv_s16;
   assign alom_stage3_val = viv_s17;
   assign alom_stage4_val = viv_s18;
   assign alom_stage5_val = viv_s19;
   assign alom_stage6_val = viv_s20;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s68 <= 0;
         viv_s70 <= 0;
         viv_s72   <= 0;
         out_h_end      <= 0;
         out_v_end      <= 0;
         out_val        <= 0;
      end else begin
         if (viv_s52) begin
            viv_s68 <= viv_s67;
            viv_s70 <= viv_s69;
         end
         if (viv_s51) begin
            out_h_end <= viv_s68;
            out_v_end <= viv_s70;
         end
         if (soft_rst)
           viv_s72 <= 1'b0;
         else if (viv_s52) 
           viv_s72 <= viv_s71;
         if (soft_rst)
           out_val      <= 1'b0;
         else if (viv_s51) 
           out_val      <= viv_s72;
      end
   end
endmodule
