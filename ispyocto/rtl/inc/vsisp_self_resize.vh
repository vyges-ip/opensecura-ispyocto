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

   parameter c_max_hsize = 8192; 
   parameter c_ram_width = 12;   
   parameter size_width  =13;    
   parameter resize_data_width  =8;  
   parameter c_scale_h        = 16; 
   parameter c_scale_v        = 16; 
   parameter c_phase_h        = 16; 
   parameter c_phase_v        = 16; 
   parameter c_scale_lut_addr = 6;  
   parameter c_scale_lut      = 6;  
   parameter c_lbuf_h         = resize_data_width+7; 
   parameter c_lbuf_v         = resize_data_width+7; 
   parameter c_number_of_lut  = 64; 
   parameter c_resize_ctrl           = 5'b00000; 
   parameter c_resize_scale_hy       = 5'b00001; 
   parameter c_resize_scale_hcb      = 5'b00010;
   parameter c_resize_scale_hcr      = 5'b00011;
   parameter c_resize_scale_vy       = 5'b00100; 
   parameter c_resize_scale_vc       = 5'b00101; 
   parameter c_resize_phase_hy       = 5'b00110; 
   parameter c_resize_phase_hc       = 5'b00111; 
   parameter c_resize_phase_vy       = 5'b01000; 
   parameter c_resize_phase_vc       = 5'b01001;
   parameter c_resize_scale_lut_addr = 5'b01010; 
   parameter c_resize_scale_lut      = 5'b01011; 
   parameter c_resize_ctrl_sdw       = 5'b01100; 
   parameter c_resize_scale_hy_sdw   = 5'b01101; 
   parameter c_resize_scale_hcb_sdw  = 5'b01110;
   parameter c_resize_scale_hcr_sdw  = 5'b01111;
   parameter c_resize_scale_vy_sdw   = 5'b10000; 
   parameter c_resize_scale_vc_sdw   = 5'b10001; 
   parameter c_resize_phase_hy_sdw   = 5'b10010; 
   parameter c_resize_phase_hc_sdw   = 5'b10011; 
   parameter c_resize_phase_vy_sdw   = 5'b10100; 
   parameter c_resize_phase_vc_sdw   = 5'b10101;
   parameter c_resize_crop_x_direction  = 5'b10110;
   parameter c_resize_crop_y_direction  = 5'b10111;
   parameter c_resize_crop_x_direction_sdw  = 5'b11000;
   parameter c_resize_crop_y_direction_sdw  = 5'b11001;
   parameter c_resize_frame_rate        = 5'b11010;            
   parameter format_conv_ctrl           = 5'b11011;
   parameter c_err_flags0           = 5'b11100;
   parameter c_err_flags1           = 5'b11101;
   parameter c_err_flags2           = 5'b11110;
