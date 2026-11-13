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

module vsisp_m4_clock_gating 
  (
   per_clk_i, 
   pdft_scan_mode_i, 
   gating_en_i, 
   clk_o);
   input per_clk_i; 
   input pdft_scan_mode_i; 
   input gating_en_i; 
   output clk_o; 
   wire   clk_o;
  `ifdef FPGA
  assign clk_o = per_clk_i;
  `else
   vsisp_GC_CG_MOD u_gc_cg_md 
   (
      .enable(gating_en_i), 
      .ck_in(per_clk_i), 
      .ck_out(clk_o), 
      .test(pdft_scan_mode_i));
  `endif
endmodule
