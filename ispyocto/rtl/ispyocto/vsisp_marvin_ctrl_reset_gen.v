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

module vsisp_marvin_ctrl_reset_gen (
                              reset_n,
                              clk,
                              soft_rst_i,
                              reset_out_n,
                              test_mode
                              );
   input    reset_n;       
   input    clk;           
   input    soft_rst_i;    
   output   reset_out_n;   
   input    test_mode;     
   reg      viv_s0;
   reg      viv_s1;
   reg      viv_s2;
   reg      viv_s3;   
   wire     viv_s4;
   assign viv_s4 = (test_mode) ? reset_n : (reset_n & !soft_rst_i);
  always @(posedge clk or negedge viv_s4) begin
     if (!viv_s4)begin
         viv_s0 <= 1'b0;
         viv_s1 <= 1'b0;
         viv_s2 <= 1'b0;
         viv_s3 <= 1'b0;      
     end
     else begin       
         viv_s0 <= 1'b1;
         viv_s1 <= viv_s0;
         viv_s2 <= viv_s1;
         viv_s3 <= viv_s2;
      end
   end   
   assign reset_out_n = (test_mode) ? reset_n : viv_s3;
endmodule
