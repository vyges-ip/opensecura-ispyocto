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

   parameter c_rot_line_length = 13'd1920; 
   parameter c_rot_ram_aw      =  8'd14;   
   parameter c_img_w           = 16'd13;   
   parameter c_img_h        = 16'd14;      
   parameter c_mcu_cnt_w    = 16'd20;      
   parameter c_jpeg_in      = c_img_w +1 ; 
   parameter c_ram1_aw      = c_img_w +1 ; 
   parameter c_ram2_aw      = c_rot_ram_aw;
   parameter c_ram_dw       = 16'd32;      
   parameter c_jpeg_r2bram_pipelined = 1'b0; 
   parameter c_share_rams   = 1'b0;      
   parameter c_ram1_size       = 16'd16384; 
   parameter c_rot_ram_size    = 16'd15360; 
   parameter c_ram2_size       = c_share_rams ? c_ram1_size + c_rot_ram_size : c_ram1_size; 
