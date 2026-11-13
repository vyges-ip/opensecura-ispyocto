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

module vsisp_AQSync(
   bitSync, 
   clk, bitIn, reset_
   );
parameter RESET_STATE=0;   
  input clk;
  input reset_;
  input  bitIn;
  output bitSync;
  wire viv_s0;
  wire bitSync;
  vsisp_gc_dr_reg #(1,RESET_STATE) metaReg (.out(viv_s0), .clk(clk), .reset_(reset_), .in(bitIn));
  vsisp_gc_dr_reg #(1,RESET_STATE) AQSyncReg (.out(bitSync), .clk(clk), .reset_(reset_), .in(viv_s0));
endmodule
