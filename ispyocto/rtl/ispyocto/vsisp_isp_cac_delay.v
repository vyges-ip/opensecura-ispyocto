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

module vsisp_isp_cac_delay 
  (
   clk,
   reset_n,
   cac_v_clk_en,
   mem_data_m2,
   mem_data_m3,
   mem_data_m4,
   mem_data_m5,
   mem_data_m6,
   dem_in_data_m2,
   dem_in_data_m3,
   dem_in_data_m4,
   dem_in_data_m5,
   dem_in_data_m6);
`include "vsisp_isp.vh"    
   input                 clk;            
   input                 reset_n;        
   input                 cac_v_clk_en;   
   input [c_dw_si-1:0]   mem_data_m2;    
   input [c_dw_si-1:0]   mem_data_m3;    
   input [c_dw_si-1:0]   mem_data_m4;    
   input [c_dw_si-1:0]   mem_data_m5;    
   input [c_dw_si-1:0]   mem_data_m6;    
   output [c_dw_si-1:0]  dem_in_data_m2; 
   output [c_dw_si-1:0]  dem_in_data_m3; 
   output [c_dw_si-1:0]  dem_in_data_m4; 
   output [c_dw_si-1:0]  dem_in_data_m5; 
   output [c_dw_si-1:0]  dem_in_data_m6; 
   reg [c_dw_si-1:0]     dem_in_data_m2;
   reg [c_dw_si-1:0]     dem_in_data_m3;
   reg [c_dw_si-1:0]     dem_in_data_m4;
   reg [c_dw_si-1:0]     dem_in_data_m5;
   reg [c_dw_si-1:0]     dem_in_data_m6;
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin           
         dem_in_data_m2  <= {c_dw_si{1'b0}};
         dem_in_data_m3  <= {c_dw_si{1'b0}};
         dem_in_data_m4  <= {c_dw_si{1'b0}};
         dem_in_data_m5  <= {c_dw_si{1'b0}};
         dem_in_data_m6  <= {c_dw_si{1'b0}};
      end else if (cac_v_clk_en) begin
         dem_in_data_m2  <= mem_data_m2;
         dem_in_data_m3  <= mem_data_m3;
         dem_in_data_m4  <= mem_data_m4;
         dem_in_data_m5  <= mem_data_m5;
         dem_in_data_m6  <= mem_data_m6;
      end
   end
endmodule
