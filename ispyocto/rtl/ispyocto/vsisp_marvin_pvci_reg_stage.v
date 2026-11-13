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

module vsisp_marvin_pvci_reg_stage
  ( clk,
    reset_n,
    pwdata_i,
    paddr_i,
    pval_i, 
    prd_i,
    pack_o,
    prdata_o,    
    pwdata_o,
    paddr_o,
    pval_o,
    prd_o,  
    pack_i,
    prdata_i
    );
   parameter c_data_width = 32; 
   input     clk;      
   input     reset_n;  
   input [c_data_width-1:0]  pwdata_i;
   input [c_data_width-1:0]  paddr_i;   
   input                     pval_i; 
   input                     prd_i;  
   output                    pack_o; 
   output [c_data_width-1:0] prdata_o;   
   output [c_data_width-1:0] pwdata_o;
   input  [c_data_width-1:0] prdata_i;     
   output [c_data_width-1:0] paddr_o;
   output                    pval_o; 
   output                    prd_o;    
   input                     pack_i; 
   reg [c_data_width-1:0]  prdata_o; 
   reg                     pval_o;   
   reg                     pack_o;   
   reg [c_data_width-1:0]  pwdata_o; 
   reg [c_data_width-1:0]  paddr_o;  
   reg                     prd_o;    
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin    
         prdata_o <= 32'b0;
         pwdata_o <= 32'b0;
         paddr_o  <= 32'b0;         
         pval_o   <= 1'b0;         
         pack_o   <= 1'b0;
         prd_o    <= 1'b0;         
      end 
      else begin
         prdata_o <= prdata_i; 
         pwdata_o <= pwdata_i;
         paddr_o  <= paddr_i;
         pval_o   <= pval_i && ~pack_i && ~pack_o; 
         pack_o   <= pack_i;         
         prd_o    <= prd_i;
      end
   end
endmodule
