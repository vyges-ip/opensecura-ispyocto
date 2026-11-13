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

module vsisp_fifo4fe
( clk,
  reset_n,
  soft_rst,
  fifo_data_i,
  fifo_val_i,
  fifo_ack_o,
  fifo_data_o,
  fifo_val_o,
  fifo_ack_i
);
  parameter c_fifo_data_width = 11; 
  input  clk;      
  input  reset_n;  
  input  soft_rst; 
  input  [c_fifo_data_width-1:0] fifo_data_i; 
  input                          fifo_val_i;  
  output                         fifo_ack_o;  
  output [c_fifo_data_width-1:0] fifo_data_o; 
  output                         fifo_val_o;  
  input                          fifo_ack_i;  
  wire [c_fifo_data_width-1:0] viv_s0;
  wire                         viv_s1;
  wire                         viv_s2;
  wire [c_fifo_data_width-1:0] viv_s3;
  wire                         viv_s4;
  wire                         viv_s5;
  wire [c_fifo_data_width-1:0] viv_s6;
  wire                         viv_s7;
  wire                         viv_s8;
  wire [c_fifo_data_width-1:0] viv_s9;
  wire                         viv_s10;
  wire                         viv_s11;
   vsisp_marvin_dpsfifo #(c_fifo_data_width) u1_marvin_dpsfifo(
     .clk          ( clk         ),
     .reset_n      ( reset_n     ),
     .soft_rst     ( soft_rst    ),
     .fifo_data_i  ( fifo_data_i ),
     .fifo_val_i   ( fifo_val_i  ),
     .fifo_ack_o   ( fifo_ack_o  ),
     .fifo_data_o  ( viv_s0 ),
     .fifo_val_o   ( viv_s1    ),
     .fifo_ack_i   ( viv_s2  )
   );
   vsisp_marvin_dpsfifo #(c_fifo_data_width) u2_marvin_dpsfifo(
     .clk          ( clk         ),
     .reset_n      ( reset_n     ),
     .soft_rst     ( soft_rst    ),
     .fifo_data_i  ( viv_s0 ),
     .fifo_val_i   ( viv_s1    ),
     .fifo_ack_o   ( viv_s2  ),
     .fifo_data_o  ( viv_s3 ),
     .fifo_val_o   ( viv_s4    ),
     .fifo_ack_i   ( viv_s5  )
   );
   vsisp_marvin_dpsfifo #(c_fifo_data_width) u3_marvin_dpsfifo(
     .clk          ( clk         ),
     .reset_n      ( reset_n     ),
     .soft_rst     ( soft_rst    ),
     .fifo_data_i  ( viv_s3 ),
     .fifo_val_i   ( viv_s4    ),
     .fifo_ack_o   ( viv_s5  ),
     .fifo_data_o  ( viv_s6 ),
     .fifo_val_o   ( viv_s7    ),
     .fifo_ack_i   ( viv_s8  )
   );
   vsisp_marvin_dpsfifo #(c_fifo_data_width) u4_marvin_dpsfifo(
     .clk          ( clk         ),
     .reset_n      ( reset_n     ),
     .soft_rst     ( soft_rst    ),
     .fifo_data_i  ( viv_s6 ),
     .fifo_val_i   ( viv_s7    ),
     .fifo_ack_o   ( viv_s8  ),
     .fifo_data_o  ( viv_s9 ),
     .fifo_val_o   ( viv_s10    ),
     .fifo_ack_i   ( viv_s11  )
   );
   vsisp_marvin_dpsfe #(c_fifo_data_width) u1_marvin_dpsfe(
     .clk          ( clk      ),
     .reset_n      ( reset_n  ),
     .soft_rst     ( soft_rst ),
     .dpsfe_data_i ( viv_s9 ),
     .dpsfe_val_i  ( viv_s10    ),
     .dpsfe_ack_o  ( viv_s11  ),
     .dpsfe_data_o ( fifo_data_o ),
     .dpsfe_val_o  ( fifo_val_o  ),
     .dpsfe_ack_i  ( fifo_ack_i  )
   );
endmodule
