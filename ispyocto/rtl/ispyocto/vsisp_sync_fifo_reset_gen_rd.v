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

module vsisp_sync_fifo_reset_gen_rd 
  (
   rd_clk,
   reset_n,
   soft_reset,
test_mode,
   rd_reset_n
   );
   input        rd_clk;  
   input        reset_n;   
   input        soft_reset; 
   input    test_mode;
   output       rd_reset_n; 
   vsisp_marvin_ctrl_reset_gen u_marvin_ctrl_reset_gen (
                                                   .reset_n(reset_n),               
                                                   .clk(rd_clk),                      
                                                   .soft_rst_i(soft_reset),    
                                                   .reset_out_n(rd_reset_n), 
                                                   .test_mode(test_mode)            
                                                   );
endmodule
