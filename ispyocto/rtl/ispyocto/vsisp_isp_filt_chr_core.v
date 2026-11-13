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

module vsisp_isp_filt_chr_core 
  (
   clk,
   reset_n,
   soft_rst,
   in_val,
   in_ack,
   in_h_end,
   in_v_end,
   crcb_v_filt,
   chr_h_bypass,
   ch_mask,
   flt_stage1_en,
   flt_stage2_en,
   flt_stage3_en,
   flt_stage4_en,
   flt_stage5_en,
   flt_stage0_val,
   flt_stage1_val,
   flt_stage2_val,
   flt_stage3_val,
   out_val,
   out_ack,
   out_h_end,
   out_v_end,
   out_data
   );
`include "vsisp_isp.vh"    
   input       clk;         
   input       reset_n;     
   input       soft_rst;    
   input       in_val;      
   output      in_ack;      
   input       in_h_end;    
   input       in_v_end;    
   input [2*c_dw_si+1:0] crcb_v_filt;    
   input       chr_h_bypass;   
   input [1:0] ch_mask;        
   output      flt_stage1_en;  
   output      flt_stage2_en;  
   output      flt_stage3_en;  
   output      flt_stage4_en;  
   output      flt_stage5_en;  
   output      flt_stage0_val; 
   output      flt_stage1_val; 
   output      flt_stage2_val; 
   output      flt_stage3_val; 
   output      out_val;        
   input       out_ack;        
   output      out_h_end;      
   output      out_v_end;      
   output [2*c_dw_si+1:0] out_data;       
   wire [2*c_dw_si+1:0]   viv_s0;
   wire [2*c_dw_si+1:0]   viv_s1;
   wire [2*c_dw_si+1:0]   viv_s2;
   wire [2*c_dw_si+1:0]   viv_s3;
   wire [2*c_dw_si+1:0]   viv_s4;
   wire [2*c_dw_si+1:0]   viv_s5;
   wire [2*c_dw_si+1:0]   viv_s6;
   wire [c_dw_si:0]       viv_s7;
   wire [c_dw_si:0]       viv_s8;
   wire [c_dw_si:0]       viv_s9;
   wire [c_dw_si:0]       viv_s10;
   wire [c_dw_si:0]       viv_s11;
   wire [c_dw_si:0]       viv_s12;
   wire [c_dw_si:0]       viv_s13;
   wire [c_dw_si:0]       viv_s14;
   wire [c_dw_si:0]       viv_s15;
   wire [c_dw_si:0]       viv_s16;
   wire [c_dw_si:0]       viv_s17;
   wire [c_dw_si:0]       viv_s18;
   wire [c_dw_si:0]       viv_s19;
   wire [c_dw_si:0]       viv_s20;
   wire                   flt_stage1_en;
   wire                   flt_stage2_en;
   wire                   flt_stage3_en;
   wire                   flt_stage4_en;
   wire                   flt_stage5_en;
   wire                   flt_stage0_val;
   wire                   flt_stage1_val;
   wire                   flt_stage2_val;
   wire                   flt_stage3_val;
   wire                   viv_s21;
   wire                   viv_s22;
   wire                   viv_s23;
   wire [c_dw_si+3:0]     viv_s24;
   wire [c_dw_si+3:0]     viv_s25;
   wire [c_dw_si+3:0]     viv_s26;
   wire [c_dw_si+4:0]     viv_s27;
   wire [c_dw_si+4:0]     viv_s28;
   wire [c_dw_si+2:0]     viv_s29;
   wire [c_dw_si+2:0]     viv_s30;
   wire [c_dw_si+2:0]     viv_s31;
   wire [c_dw_si+3:0]     viv_s32;
   wire [c_dw_si+3:0]     viv_s33;
   wire [c_dw_si+3:0]     viv_s34;
   wire [c_dw_si+3:0]     viv_s35;
   wire [c_dw_si+3:0]     viv_s36;
   wire [c_dw_si+4:0]     viv_s37 ;
   wire [c_dw_si+4:0]     viv_s38;
   wire [c_dw_si+4:0]     viv_s39;
   wire [c_dw_si+4:0]     viv_s40;
   wire [c_dw_si+4:0]     viv_s41;
   wire [c_dw_si+5:0]     viv_s42;
   wire [c_dw_si+5:0]     viv_s43;
   wire [c_dw_si+4:0]     viv_s44;
   wire [c_dw_si+4:0]     viv_s45;
   wire [c_dw_si+4:0]     viv_s46;
   wire [c_dw_si+5:0]     viv_s47;
   wire [c_dw_si+5:0]     viv_s48;
   wire [c_dw_si+5:0]     viv_s49;
   wire [c_dw_si+5:0]     viv_s50;
   wire [c_dw_si+5:0]     viv_s51;
   wire [c_dw_si+6:0]     viv_s52;
   wire [c_dw_si+6:0]     viv_s53;
   wire [c_dw_si+6:0]     viv_s54;
   wire [c_dw_si+6:0]     viv_s55;
   wire [c_dw_si+6:0]     viv_s56;
   wire [c_dw_si+7:0]     viv_s57;
   wire [c_dw_si+7:0]     viv_s58;
   wire [c_dw_si+8:0]     viv_s59;
   wire [c_dw_si:0]       viv_s60;
   wire [c_dw_si+3:0]     viv_s61;
   wire [c_dw_si+3:0]     viv_s62;
   wire [c_dw_si+3:0]     viv_s63;
   wire [c_dw_si+4:0]     viv_s64;
   wire [c_dw_si+4:0]     viv_s65;
   wire [c_dw_si+2:0]     viv_s66;
   wire [c_dw_si+2:0]     viv_s67;
   wire [c_dw_si+2:0]     viv_s68;
   wire [c_dw_si+3:0]     viv_s69;
   wire [c_dw_si+3:0]     viv_s70;
   wire [c_dw_si+3:0]     viv_s71;
   wire [c_dw_si+3:0]     viv_s72;
   wire [c_dw_si+3:0]     viv_s73;
   wire [c_dw_si+4:0]     viv_s74 ;
   wire [c_dw_si+4:0]     viv_s75;
   wire [c_dw_si+4:0]     viv_s76;
   wire [c_dw_si+4:0]     viv_s77;
   wire [c_dw_si+4:0]     viv_s78;
   wire [c_dw_si+5:0]     viv_s79;
   wire [c_dw_si+5:0]     viv_s80;
   wire [c_dw_si+4:0]     viv_s81;
   wire [c_dw_si+4:0]     viv_s82;
   wire [c_dw_si+4:0]     viv_s83;
   wire [c_dw_si+5:0]     viv_s84;
   wire [c_dw_si+5:0]     viv_s85;
   wire [c_dw_si+5:0]     viv_s86;
   wire [c_dw_si+5:0]     viv_s87;
   wire [c_dw_si+5:0]     viv_s88;
   wire [c_dw_si+6:0]     viv_s89;
   wire [c_dw_si+6:0]     viv_s90;
   wire [c_dw_si+6:0]     viv_s91;
   wire [c_dw_si+6:0]     viv_s92;
   wire [c_dw_si+6:0]     viv_s93;
   wire [c_dw_si+7:0]     viv_s94;
   wire [c_dw_si+7:0]     viv_s95;
   wire [c_dw_si+8:0]     viv_s96;
   wire [c_dw_si:0]       viv_s97;
   reg [2*c_dw_si+1:0]    out_data;
   reg [2*c_dw_si+1:0]    viv_s98;
   vsisp_isp_filt_chr_buf #(2*c_dw_si+2) u_isp_filt_chr_buf 
     ( 
       .clk(clk),
       .reset_n(reset_n),
       .soft_rst(soft_rst),
       .in_val(in_val),
       .in_ack(in_ack),
       .in_h_end(in_h_end),
       .in_v_end(in_v_end),
       .in_data(crcb_v_filt),
       .out_stage0(viv_s0),
       .out_stage1(viv_s1),
       .out_stage2(viv_s2),
       .out_stage3(viv_s3),
       .out_stage4(viv_s4),
       .out_stage5(viv_s5),
       .out_stage6(viv_s6),
       .flt_stage1_en(flt_stage1_en),
       .flt_stage2_en(flt_stage2_en),
       .flt_stage3_en(flt_stage3_en),
       .flt_stage4_en(flt_stage4_en),
       .flt_stage5_en(flt_stage5_en),
       .flt_stage0_val(flt_stage0_val),
       .flt_stage1_val(flt_stage1_val),
       .flt_stage2_val(flt_stage2_val),
       .flt_stage3_val(flt_stage3_val),
       .out_h_end(out_h_end),
       .out_v_end(out_v_end),
       .out_val(out_val),
       .out_ack(out_ack));
   assign viv_s14 = viv_s0[2*c_dw_si+1:c_dw_si+1];
   assign viv_s15 = viv_s1[2*c_dw_si+1:c_dw_si+1];
   assign viv_s16 = viv_s2[2*c_dw_si+1:c_dw_si+1];
   assign viv_s17 = viv_s3[2*c_dw_si+1:c_dw_si+1];
   assign viv_s18 = viv_s4[2*c_dw_si+1:c_dw_si+1];
   assign viv_s19 = viv_s5[2*c_dw_si+1:c_dw_si+1];
   assign viv_s20 = viv_s6[2*c_dw_si+1:c_dw_si+1];
   assign viv_s7 = viv_s0[c_dw_si:0];
   assign viv_s8 = viv_s1[c_dw_si:0];
   assign viv_s9 = viv_s2[c_dw_si:0];
   assign viv_s10 = viv_s3[c_dw_si:0];
   assign viv_s11 = viv_s4[c_dw_si:0];
   assign viv_s12 = viv_s5[c_dw_si:0];
   assign viv_s13 = viv_s6[c_dw_si:0];
   assign viv_s21 = (ch_mask == 2'b00) ? 1'b1 : 1'b0;
   assign viv_s22 = (ch_mask == 2'b01) ? 1'b1 : 1'b0;
   assign viv_s23 = (ch_mask == 2'b10) ? 1'b1 : 1'b0;
   assign viv_s24  = (viv_s23) ? {viv_s9, 3'b100}  : {1'b0, viv_s7, 2'b10};
   assign viv_s25  = (viv_s23) ? {viv_s10, 3'b100}  : {1'b0, viv_s10, 2'b10};
   assign viv_s26  = (viv_s23) ? {viv_s11, 3'b100}  : {1'b0, viv_s13, 2'b10};
   assign viv_s29  = {viv_s8, 2'b10};
   assign viv_s30  = {viv_s9, 2'b10};
   assign viv_s31  = {viv_s11, 2'b10};
   assign viv_s34  = {1'b0, viv_s12, 2'b10};
   assign viv_s35  = viv_s32;
   assign viv_s36  = viv_s33;
   assign viv_s27  = {1'b0, viv_s24 ^ viv_s25 ^ viv_s26};
   assign viv_s28 = {(viv_s24 & viv_s25) | (viv_s24 & viv_s26) | (viv_s25 & viv_s26), 1'b0};
   assign viv_s32  = {1'b0, viv_s29 ^ viv_s30 ^ viv_s31};
   assign viv_s33 = {(viv_s29 & viv_s30) | (viv_s29 & viv_s31) | (viv_s30 & viv_s31), 1'b0};
   assign viv_s37  = {1'b0, viv_s34 ^ viv_s35 ^ viv_s36};
   assign viv_s38 = {(viv_s34 & viv_s35) | (viv_s34 & viv_s36) | (viv_s35 & viv_s36), 1'b0};
   assign viv_s39  = (viv_s22) ? {1'b0, viv_s10, 3'b100} : viv_s27;
   assign viv_s40  = (viv_s22) ? {2'b0, viv_s10, 2'b10}  : viv_s28;
   assign viv_s41  = (viv_s22) ? {3'b0, viv_s9, 1'b1}   :
                   (viv_s23) ? {c_dw_si+5{1'b0}} : {2'b0, viv_s37[c_dw_si+4:2]};
   assign viv_s44  = (viv_s22) ? {1'b0, viv_s9, 3'b100} : 
                   (viv_s23) ? {2'b0, viv_s8, 2'b10}  : viv_s37;
   assign viv_s45  = (viv_s22) ? {1'b0, viv_s11, 3'b100} : 
                   (viv_s23) ? {2'b0, viv_s12, 2'b10}  : viv_s38;
   assign viv_s46  = (viv_s22) ? {3'b00, viv_s11, 1'b1}  :
                   (viv_s23) ? {c_dw_si+5{1'b0}} : {2'b0, viv_s38[c_dw_si+4:2]};
   assign viv_s42  = {1'b0, viv_s39 ^ viv_s40 ^ viv_s41};
   assign viv_s43 = {(viv_s39 & viv_s40) | (viv_s39 & viv_s41) | (viv_s40 & viv_s41), 1'b0};
   assign viv_s47  = {1'b0, viv_s44 ^ viv_s45 ^ viv_s46};
   assign viv_s48 = {(viv_s44 & viv_s45) | (viv_s44 & viv_s46) | (viv_s45 & viv_s46), 1'b0};
   assign viv_s49  = viv_s42;
   assign viv_s50  = viv_s43;
   assign viv_s51  = viv_s48;
   assign viv_s52  = {1'b0, viv_s49 ^ viv_s50 ^ viv_s51};
   assign viv_s53 = {(viv_s49 & viv_s50) | (viv_s49 & viv_s51) | (viv_s50 & viv_s51), 1'b0};
   assign viv_s54  = (viv_s21) ? {3'b0, viv_s9, 3'b100}  : viv_s53;
   assign viv_s55  = (viv_s21) ? {2'b0, viv_s10, 4'b1000} : viv_s52;
   assign viv_s56  = (viv_s21) ? {3'b0, viv_s11, 3'b100}  : {1'b0,viv_s47};
   assign viv_s57   = {1'b0, viv_s54 ^ viv_s55 ^ viv_s56};
   assign viv_s58  = {(viv_s54 & viv_s55) | (viv_s54 & viv_s56) | (viv_s55 & viv_s56), 1'b0};
   assign viv_s59 = {1'b0,viv_s57} + viv_s58;
   assign viv_s61  = (viv_s23) ? {viv_s16, 3'b100}  : {1'b0, viv_s14, 2'b10};
   assign viv_s62  = (viv_s23) ? {viv_s17, 3'b100}  : {1'b0, viv_s17, 2'b10};
   assign viv_s63  = (viv_s23) ? {viv_s18, 3'b100}  : {1'b0, viv_s20, 2'b10};
   assign viv_s66  = {viv_s15, 2'b10};
   assign viv_s67  = {viv_s16, 2'b10};
   assign viv_s68  = {viv_s18, 2'b10};
   assign viv_s71  = {1'b0, viv_s19, 2'b10};
   assign viv_s72  = viv_s69;
   assign viv_s73  = viv_s70;
   assign viv_s64  = {1'b0, viv_s61 ^ viv_s62 ^ viv_s63};
   assign viv_s65 = {(viv_s61 & viv_s62) | (viv_s61 & viv_s63) | (viv_s62 & viv_s63), 1'b0};
   assign viv_s69  = {1'b0, viv_s66 ^ viv_s67 ^ viv_s68};
   assign viv_s70 = {(viv_s66 & viv_s67) | (viv_s66 & viv_s68) | (viv_s67 & viv_s68), 1'b0};
   assign viv_s74  = {1'b0, viv_s71 ^ viv_s72 ^ viv_s73};
   assign viv_s75 = {(viv_s71 & viv_s72) | (viv_s71 & viv_s73) | (viv_s72 & viv_s73), 1'b0};
   assign viv_s76  = (viv_s22) ? {1'b0, viv_s17, 3'b100} : viv_s64;
   assign viv_s77  = (viv_s22) ? {2'b0, viv_s17, 2'b10}  : viv_s65;
   assign viv_s78  = (viv_s22) ? {3'b0, viv_s16, 1'b1}   :
                   (viv_s23) ? {c_dw_si+5{1'b0}} : {2'b0, viv_s74[c_dw_si+4:2]};
   assign viv_s81  = (viv_s22) ? {1'b0, viv_s16, 3'b100} : 
                   (viv_s23) ? {2'b0, viv_s15, 2'b10}  : viv_s74;
   assign viv_s82  = (viv_s22) ? {1'b0, viv_s18, 3'b100} : 
                   (viv_s23) ? {2'b0, viv_s19, 2'b10}  : viv_s75;
   assign viv_s83  = (viv_s22) ? {3'b00, viv_s18, 1'b1}   :
                   (viv_s23) ? {c_dw_si+5{1'b0}} : {2'b0, viv_s75[c_dw_si+4:2]};
   assign viv_s79  = {1'b0, viv_s76 ^ viv_s77 ^ viv_s78};
   assign viv_s80 = {(viv_s76 & viv_s77) | (viv_s76 & viv_s78) | (viv_s77 & viv_s78), 1'b0};
   assign viv_s84  = {1'b0, viv_s81 ^ viv_s82 ^ viv_s83};
   assign viv_s85 = {(viv_s81 & viv_s82) | (viv_s81 & viv_s83) | (viv_s82 & viv_s83), 1'b0};
   assign viv_s86  = viv_s79;
   assign viv_s87  = viv_s80;
   assign viv_s88  = viv_s85;
   assign viv_s89  = {1'b0, viv_s86 ^ viv_s87 ^ viv_s88};
   assign viv_s90 = {(viv_s86 & viv_s87) | (viv_s86 & viv_s88) | (viv_s87 & viv_s88), 1'b0};
   assign viv_s91  = (viv_s21) ? {3'b0, viv_s16, 3'b100}  : viv_s90;
   assign viv_s92  = (viv_s21) ? {2'b0, viv_s17, 4'b1000} : viv_s89;
   assign viv_s93  = (viv_s21) ? {3'b0, viv_s18, 3'b100}  : {1'b0,viv_s84};
   assign viv_s94   = {1'b0, viv_s91 ^ viv_s92 ^ viv_s93};
   assign viv_s95  = {(viv_s91 & viv_s92) | (viv_s91 & viv_s93) | (viv_s92 & viv_s93), 1'b0};
   assign viv_s96 = {1'b0,viv_s94} + viv_s95;
   assign viv_s60 = chr_h_bypass ? {~(viv_s10[c_dw_si]),viv_s10[c_dw_si-1:0]}:
                                  {~(viv_s59[c_dw_si+5]),viv_s59[c_dw_si+4:5]};
   assign viv_s97 = chr_h_bypass ? {~(viv_s17[c_dw_si]),viv_s17[c_dw_si-1:0]}:
                                  {~(viv_s96[c_dw_si+5]),viv_s96[c_dw_si+4:5]};
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s98  <= {2*c_dw_si+2{1'b0}};  
         out_data  <= {2*c_dw_si+2{1'b0}};
      end else begin
         if (flt_stage4_en) viv_s98  <= {viv_s97, viv_s60};
         if (flt_stage5_en) out_data  <= viv_s98;
      end
   end
endmodule
