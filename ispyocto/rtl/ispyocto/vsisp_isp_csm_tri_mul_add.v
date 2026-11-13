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

module vsisp_isp_csm_tri_mul_add (
                              coeff_r,
                              coeff_g,
                              coeff_b,
                              data_r,
                              data_g,
                              data_b,
                              data_out
                              );
`include "vsisp_isp.vh"   
parameter c_dw_prod = c_dw_csm_coeff + (c_dw_do+1) -1; 
   input [c_dw_csm_coeff-1:0] coeff_r; 
   input [c_dw_csm_coeff-1:0] coeff_g; 
   input [c_dw_csm_coeff-1:0] coeff_b; 
   input        [c_dw_do-1:0] data_r;  
   input        [c_dw_do-1:0] data_g;  
   input        [c_dw_do-1:0] data_b;  
  output signed [c_dw_prod-6:0] data_out;
  wire signed      [c_dw_prod-1:0] viv_s0;
  wire signed      [c_dw_prod-1:0] viv_s1;
  wire signed      [c_dw_prod-1:0] viv_s2;
  wire signed      [c_dw_prod+1:0] viv_s3; 
  wire signed [c_dw_csm_coeff-1:0] viv_s4;
  wire signed          [c_dw_do:0] viv_s5;
  wire signed [c_dw_csm_coeff-1:0] viv_s6;
  wire signed          [c_dw_do:0] viv_s7;
  wire signed [c_dw_csm_coeff-1:0] viv_s8;
  wire signed          [c_dw_do:0] viv_s9;
  assign viv_s4 = coeff_r;
  assign viv_s5 = {1'b0,data_r};
  assign viv_s6 = coeff_g;
  assign viv_s7 = {1'b0,data_g};
  assign viv_s8 = coeff_b;
  assign viv_s9 = {1'b0,data_b};
  assign viv_s0 = viv_s4 * viv_s5;
  assign viv_s1 = viv_s6 * viv_s7;
  assign viv_s2 = viv_s8 * viv_s9;
  assign viv_s3 = {{2{viv_s0[c_dw_prod-1]}}, viv_s0} + 
                   {{2{viv_s1[c_dw_prod-1]}}, viv_s1} +
                   {{2{viv_s2[c_dw_prod-1]}}, viv_s2} + 
                   {{c_dw_do+4 {1'b0}}, 1'b1, {c_dw_csm_coeff-3 {1'b0}}};   
  assign data_out = viv_s3[c_dw_prod+1 : c_dw_csm_coeff-2];              
endmodule
