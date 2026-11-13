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

module vsisp_ahb2pvci 
  (
   hclk,     
   hreset_n, 
   pval, 
   paddress, 
   pwdata,   
   prd,      
   pack,     
   prdata,   
   hsel,      
   hrdata,    
   haddr,     
   hwdata,    
   hwrite,    
   hready_in, 
   htrans,    
   hresp,     
   hready     
   );
   parameter g_data_width  = 32;
   parameter g_addr_width  = 32;
   input     hclk; 
   input     hreset_n; 
   output    pval; 
   wire      pval;
   output [g_addr_width - 1:0] paddress; 
   wire [g_addr_width - 1:0]   paddress;
   output [g_data_width - 1:0] pwdata; 
   wire [g_data_width - 1:0]   pwdata;
   output                      prd; 
   wire                        prd;
   input                       pack; 
   input [g_data_width - 1:0]  prdata; 
   input                       hsel; 
   output [g_data_width - 1:0] hrdata; 
   wire [g_data_width - 1:0]   hrdata;
   input [g_addr_width - 1:0]  haddr; 
   input [g_data_width - 1:0]  hwdata; 
   input                       hwrite; 
   input                       hready_in; 
   input [1:0]                 htrans; 
   output [1:0]                hresp; 
   wire [1:0]                  hresp;
   output                      hready; 
   wire                        hready;
   reg [g_addr_width - 1:0]    viv_s0; 
   reg                         viv_s1; 
   reg                         viv_s2; 
   wire                        viv_s3 ;
   reg viv_s4;
   reg [7:0] viv_s5;
   assign viv_s3 = (((htrans[1]) == 1'b1) & (hsel == 1'b1) & 
                        (hready_in == 1'b1) & 
                        ((viv_s1 == 1'b0) | (pack == 1'b1)|viv_s4));
   assign paddress = viv_s0;
   assign pval     = viv_s1;
   assign pwdata   = hwdata;
   assign hready   = ~viv_s1 | pack |viv_s4 ;
   assign prd      = viv_s2;
   assign hresp    = 2'b00;
   assign hrdata   = prdata;
   always @(negedge hreset_n or posedge hclk)
     begin : sequ_proc
        if (hreset_n == 1'b0)
          begin
             viv_s0        <= {g_addr_width{1'b0}} ; 
             viv_s1 <= 1'b0 ; 
             viv_s2        <= 1'b1 ; 
          end
        else
          begin
             if ((viv_s1 == 1'b1) & (pack == 1'b1))
               begin
                  viv_s1 <= 1'b0 ; 
               end 
              else if (viv_s3) begin 
                  viv_s1 <= 1'b1 ; 
              end
             if (viv_s3)
               begin
                  viv_s0        <= haddr ; 
                  viv_s2        <= ~hwrite ; 
               end 
          end 
     end
     always @(negedge hreset_n or posedge hclk)begin
          if (hreset_n == 1'b0)
               viv_s5 <= 8'b0;
          else if(hready)
               viv_s5 <= 8'b0;
          else if((viv_s1 == 1'b1) &&(~pack))
               viv_s5 <= viv_s5 + 1'b1;
     end
     always @(negedge hreset_n or posedge hclk)begin
          if (hreset_n == 1'b0)
               viv_s4 <= 1'b0;
          else if(~viv_s1 | pack)
               viv_s4 <= 1'b0;
          else if(viv_s1 &&(viv_s5==8'hff))
               viv_s4 <= 1'b1;
     end
endmodule
