//****************************************************************************
// 
// Copyright 2023 Vivante Corp.
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

module vsisp_marvin_mi_swap (
       swap_vector,
       data_to_swap,
       swapped_data);
input   [3:0]   swap_vector; 
input   [127:0] data_to_swap; 
output  [127:0] swapped_data; 
wire    [127:0] swapped_data; 
reg     [63:0] viv_s0; 
reg     [63:0] viv_s1; 
reg     [31:0] viv_s2; 
reg     [31:0] viv_s3; 
reg     [31:0] viv_s4; 
reg     [31:0] viv_s5; 
reg     [15:0] viv_s6; 
reg     [15:0] viv_s7; 
reg     [15:0] viv_s8; 
reg     [15:0] viv_s9; 
reg     [15:0] viv_s10; 
reg     [15:0] viv_s11; 
reg     [15:0] viv_s12; 
reg     [15:0] viv_s13; 
reg     [7:0] viv_s14; 
reg     [7:0] viv_s15; 
reg     [7:0] viv_s16; 
reg     [7:0] viv_s17; 
reg     [7:0] viv_s18; 
reg     [7:0] viv_s19; 
reg     [7:0] viv_s20; 
reg     [7:0] viv_s21; 
reg     [7:0] viv_s22; 
reg     [7:0] viv_s23; 
reg     [7:0] viv_s24; 
reg     [7:0] viv_s25; 
reg     [7:0] viv_s26; 
reg     [7:0] viv_s27; 
reg     [7:0] viv_s28; 
reg     [7:0] viv_s29; 
assign swapped_data = {viv_s29, viv_s28, viv_s27, viv_s26, 
                       viv_s25, viv_s24, viv_s23, viv_s22, 
                       viv_s21, viv_s20, viv_s19, viv_s18, 
                       viv_s17, viv_s16, viv_s15, viv_s14}; 
always @(swap_vector or data_to_swap)
   begin : swap_64bits_proc
   if (swap_vector[3] == 1'b 0)
      begin
      viv_s0 = data_to_swap[63:0];   
      viv_s1 = data_to_swap[127:64];   
      end
   else
      begin
      viv_s0 = data_to_swap[127:64];   
      viv_s1 = data_to_swap[63:0];   
      end
   end
always @(swap_vector or viv_s0 or viv_s1)
   begin : swap_32bits_proc
   if (swap_vector[2] == 1'b 0)
      begin
      viv_s2 = viv_s0[31:0];   
      viv_s3 = viv_s0[63:32];   
      viv_s4 = viv_s1[31:0];   
      viv_s5 = viv_s1[63:32];   
      end
   else
      begin
      viv_s2 = viv_s0[63:32];   
      viv_s3 = viv_s0[31:0];   
      viv_s4 = viv_s1[63:32];   
      viv_s5 = viv_s1[31:0];   
      end
   end
always @(swap_vector or viv_s2 or viv_s3 or viv_s4 or viv_s5)
   begin : swap_16bits_proc
   if (swap_vector[1] == 1'b 0)
      begin
      viv_s6 = viv_s2[15:0];   
      viv_s7 = viv_s2[31:16];   
      viv_s8 = viv_s3[15:0];   
      viv_s9 = viv_s3[31:16];   
      viv_s10 = viv_s4[15:0];   
      viv_s11 = viv_s4[31:16];   
      viv_s12 = viv_s5[15:0];   
      viv_s13 = viv_s5[31:16];   
      end
   else
      begin
      viv_s6 = viv_s2[31:16];   
      viv_s7 = viv_s2[15:0];   
      viv_s8 = viv_s3[31:16];   
      viv_s9 = viv_s3[15:0];   
      viv_s10 = viv_s4[31:16];   
      viv_s11 = viv_s4[15:0];   
      viv_s12 = viv_s5[31:16];   
      viv_s13 = viv_s5[15:0];   
      end
   end
always @(swap_vector or viv_s6 or viv_s7 or viv_s8 or viv_s9
 or viv_s10 or viv_s11 or viv_s12 or viv_s13)
   begin : swap_final_bytes_proc
   if (swap_vector[0] == 1'b 0)
      begin
      viv_s14 = viv_s6[7:0];   
      viv_s15 = viv_s6[15:8];   
      viv_s16 = viv_s7[7:0];   
      viv_s17 = viv_s7[15:8];   
      viv_s18 = viv_s8[7:0];   
      viv_s19 = viv_s8[15:8];   
      viv_s20 = viv_s9[7:0];   
      viv_s21 = viv_s9[15:8];   
      viv_s22 = viv_s10[7:0];   
      viv_s23 = viv_s10[15:8];   
      viv_s24 = viv_s11[7:0];   
      viv_s25 = viv_s11[15:8];   
      viv_s26 = viv_s12[7:0];   
      viv_s27 = viv_s12[15:8];   
      viv_s28 = viv_s13[7:0];   
      viv_s29 = viv_s13[15:8];   
      end
   else
      begin
      viv_s14 = viv_s6[15:8];   
      viv_s15 = viv_s6[7:0];   
      viv_s16 = viv_s7[15:8];   
      viv_s17 = viv_s7[7:0];   
      viv_s18 = viv_s8[15:8];   
      viv_s19 = viv_s8[7:0];   
      viv_s20 = viv_s9[15:8];   
      viv_s21 = viv_s9[7:0];   
      viv_s22 = viv_s10[15:8];   
      viv_s23 = viv_s10[7:0];   
      viv_s24 = viv_s11[15:8];   
      viv_s25 = viv_s11[7:0];   
      viv_s26 = viv_s12[15:8];   
      viv_s27 = viv_s12[7:0];   
      viv_s28 = viv_s13[15:8];   
      viv_s29 = viv_s13[7:0];   
      end
   end
endmodule
