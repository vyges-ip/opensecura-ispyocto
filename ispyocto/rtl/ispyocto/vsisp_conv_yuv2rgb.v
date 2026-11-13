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

module vsisp_conv_yuv2rgb( 
                 cfg_y_full,
                 cfg_crcb_full,
                 dith_offs_g,
                 dith_offs_rb,
                 y,
                 cb,
                 cr,
                 r,
                 g,
                 b);   
   input         cfg_y_full;     
   input         cfg_crcb_full;  
   input  [1:0]  dith_offs_g;    
   input  [2:0]  dith_offs_rb;   
   input  [7:0]  y;              
   input  [7:0]  cb;             
   input  [7:0]  cr;             
   output [7:0]  r;              
   output [7:0]  g;              
   output [7:0]  b;              
   wire [ 8:0] viv_s0;      
   wire [11:0] viv_s1;      
   wire [11:0] viv_s2;
   wire [11:0] viv_s3;   
   wire [ 7:0] viv_s4;
   wire [ 7:0] viv_s5;
   wire [ 9:0] viv_s6;     
   wire [10:0] viv_s7;     
   wire [13:0] viv_s8;
   wire [13:0] viv_s9; 
   wire [ 9:0] viv_s10;     
   wire [10:0] viv_s11;     
   wire [ 9:0] viv_s12;
   wire [11:0] viv_s13;  
   wire [12:0] viv_s14;    
   wire [11:0] viv_s15; 
   wire [ 5:0] viv_s16; 
   wire [11:0] viv_s17; 
   wire [ 6:0] viv_s18; 
   wire [ 9:0] viv_s19; 
   wire [12:0] viv_s20; 
   wire [ 5:0] viv_s21; 
   wire [11:0] viv_s22;
   wire [11:0] viv_s23;
   wire [12:0] viv_s24;
   wire [10:0] viv_s25;  
   wire [10:0] viv_s26;      
   wire [11:0] viv_s27;  
   wire [12:0] viv_s28;    
   wire [12:0] viv_s29;    
   wire [12:0] viv_s30;    
   wire [7:0]  r;
   wire [7:0]  g;
   wire [7:0]  b;
  assign viv_s0    = {1'b0,y}       + y[7:2];
  assign viv_s1    = {1'b0,y, 3'h0} + y;
  assign viv_s2  =       viv_s1      + viv_s0[8:2];
  assign viv_s3 = cfg_y_full     ?         {1'b0,y,3'd0} :
                  (y[7:4]==4'h0) ?        12'd0 + 8'd149 :   
                  (y > 8'hEB)    ? {9'd255,3'd0}+ 8'd149 :   
                                                  viv_s2;
  assign  viv_s5  = cr;
  assign  viv_s4  = cb;
  assign  viv_s6          = {1'b0,viv_s5,1'b0} + viv_s5;
  assign  viv_s7          = {1'b0,viv_s5,2'b0} + viv_s6;
  assign  viv_s8 = (cfg_crcb_full ?  {3'b0,viv_s5,3'b0} :  
                                                 {viv_s6,4'b0});  
  assign  viv_s9      = viv_s8    + viv_s6;
  assign  viv_s10          = {1'b0,viv_s4,1'b0} + viv_s4;
  assign  viv_s11          = {1'b0,viv_s4,2'b0} + viv_s10;
  assign  viv_s12  = (cfg_crcb_full ?    viv_s10   :  
                                        {2'b0,viv_s4});   
  assign  viv_s13       = {1'b0,viv_s4,3'b0} + viv_s12;
  assign  viv_s14         = {1'b0,viv_s4,4'b0} + viv_s13;
  assign  viv_s15 = cfg_crcb_full ?       viv_s9[11:0] :    viv_s9[13:2];      
  assign  viv_s16 = cfg_crcb_full ?          viv_s7 [10:5] : {4'b0,viv_s5 [7:6]};
  assign  viv_s17 = cfg_crcb_full ? {1'b0,viv_s9[11:1]}: {1'b0,viv_s6, 1'b0};      
  assign  viv_s18 = cfg_crcb_full ? {1'b0,   viv_s7 [10:5]}:       viv_s5 [7:1] ;       
  assign  viv_s19 = cfg_crcb_full ?        viv_s13[11:2] :       viv_s14[12:3];      
  assign  viv_s20 = cfg_crcb_full ? {1'b0, viv_s11 ,1'b0}   : {1'b0,viv_s4, 4'b0}; 
  assign  viv_s21 = viv_s13[11:6];      
  assign  viv_s22    = viv_s15 + viv_s16;
  assign  viv_s23 = viv_s17 + viv_s18 + viv_s19;
  assign  viv_s24    = viv_s20 + viv_s21;
  assign viv_s25 = ( cfg_crcb_full &&  cfg_y_full) ? {10'd718 ,1'b0}     : 
                      ( cfg_crcb_full && ~cfg_y_full) ? {10'd718 ,1'b0}+149 :
                      (~cfg_crcb_full &&  cfg_y_full) ? {10'd817 ,1'b0}     : 
                                                        {10'd817 ,1'b0}+149 ;
  assign viv_s26     = ( cfg_crcb_full &&  cfg_y_full) ? {10'd366 ,1'b0}+{10'd176,1'b0}     : 
                      ( cfg_crcb_full && ~cfg_y_full) ? {10'd366 ,1'b0}+{10'd176,1'b0}-149 :
                      (~cfg_crcb_full &&  cfg_y_full) ? {10'd416 ,1'b0}+{10'd200,1'b0}     : 
                                                        {10'd416 ,1'b0}+{10'd200,1'b0}-149 ;
  assign viv_s27 = ( cfg_crcb_full &&  cfg_y_full) ? {11'd907 ,1'b0}     : 
                      ( cfg_crcb_full && ~cfg_y_full) ? {11'd907 ,1'b0}+149 :
                      (~cfg_crcb_full &&  cfg_y_full) ? {11'd1033,1'b0}     : 
                                                        {11'd1033,1'b0}+149 ;
  assign  viv_s28 = ({1'b0,viv_s3} + viv_s22 + {dith_offs_rb, 3'h4}) - viv_s25;
  assign  viv_s29 = ({1'b0,viv_s3} + viv_s26  + {dith_offs_g , 3'h4}) - viv_s23;
  assign  viv_s30 = ({1'b0,viv_s3} + viv_s24 + {dith_offs_rb, 3'h4}) - viv_s27;
  assign  r = viv_s28[12] ? 8'h00 : viv_s28[11] ? 8'hff : viv_s28[10:3];
  assign  g = viv_s29[12] ? 8'h00 : viv_s29[11] ? 8'hff : viv_s29[10:3];
  assign  b = viv_s30[12] ? 8'h00 : viv_s30[11] ? 8'hff : viv_s30[10:3];
endmodule
