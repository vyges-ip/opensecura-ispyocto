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

module vsisp_self_vert_mult 
  (a_y1, 
   b_y1, 
   a_y2, 
   b_y2, 
   mult_y1, 
   mult_y2);
`include "vsisp_self_resize.vh"
   input  [c_scale_v - 1:0] a_y1; 
   input [c_scale_v - 1:0]  b_y1; 
   input [c_scale_v - 1:0]  a_y2; 
   input [c_scale_v - 1:0]  b_y2; 
   output [(c_scale_v * 2) - 1:0] mult_y1; 
   reg [(c_scale_v * 2) - 1:0]    mult_y1;
   output [(c_scale_v * 2) - 1:0] mult_y2; 
   reg [(c_scale_v * 2) - 1:0]    mult_y2;
   reg [(c_scale_v * 2) - 5:0]    viv_s0;
   reg [(c_scale_v * 2) - 5:0]    viv_s1;
   always @(*)
     begin : proc_calc
        viv_s0 = a_y1[c_scale_v - 1:2] * b_y1[c_scale_v - 1:2];
        viv_s1 = a_y2[c_scale_v - 1:2] * b_y2[c_scale_v - 1:2];
        mult_y1 = {viv_s0,4'b0};
        mult_y2 = {viv_s1,4'b0}; 
     end
endmodule
