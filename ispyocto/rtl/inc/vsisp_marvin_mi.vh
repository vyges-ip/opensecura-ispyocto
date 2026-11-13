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

   parameter c_bursts_supported = 5'd16; 
   parameter c_fifo_depth = (c_bursts_supported == 5'd16) ? 32 :
                            (c_bursts_supported == 5'd8)  ? 16 : 8;
   parameter c_addr_width = (c_fifo_depth == 32) ? 5 :
                            (c_fifo_depth == 16) ? 4 : 3;
   parameter c_burst_len_bw   = 5;    
   parameter c_fifo_depth_bw  = 6;    
   parameter c_bufsize        = 28;   
   parameter c_mi_data_addr = 28;
   parameter c_dma_y_fifo_depth  = 10'd16;   
   parameter c_dma_cb_fifo_depth = 10'd16;   
   parameter c_dma_cr_fifo_depth = 10'd16;   
