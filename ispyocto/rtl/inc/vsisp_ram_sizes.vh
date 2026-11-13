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

parameter c_ispfifo_aw  = 7;               
parameter c_ispfifo_dw  = 2*(c_dw_si + 2); 
parameter c_lsc_ram_ad_bw  = 9;    
parameter c_lsc_ram_d_bw   = 24;   
parameter c_dw_dpmem    = 9*c_dw_si; 
parameter c_aw_dpmem    = 12; 
parameter c_h_aw_bpt  = 13;           
parameter c_v_aw_bpt  = 12;           
parameter c_dw_bpt    = c_h_aw_bpt +
                        c_v_aw_bpt;   
parameter c_aw_bpt    = 11;           
parameter c_dw_dpf_mem  = 8*c_dw_si;  
parameter c_aw_dpf_mem  = 12; 
parameter c_dw_dem_mem  = 14*c_dw_si;  
parameter c_aw_dem_mem  = 9; 
parameter c_aw_vsm_h      = 10;
parameter c_aw_vsm_v      = 10;
parameter  c_r2b_ram0_aw  = 3'd5;
parameter  c_r2b_ram1_aw  = 3'd4;
parameter  c_vlc_ram_aw   = 3'd5;  
parameter  c_vlc_fifo0_dw = 7'd35; 
parameter  c_vlc_fifo1_dw = 7'd37; 
parameter  c_vlc_ram0_dw  = (c_vlc_fifo0_dw)*2;
parameter  c_vlc_ram1_dw  = (c_vlc_fifo1_dw)*2;
parameter c_mipi_data_aw      = 11;
parameter c_mipi_data_dw      = 32;
parameter c_smia_data_aw      = 8;
parameter c_smia_data_dw      = 32;
parameter c_aw_ie = 12; 
parameter c_ie_ram_size = 2560; 
parameter c_aw_mrsz = 9;         
parameter c_aw_srsz = 9;         
parameter c_srsz_ram_size = 1024; 
parameter c_aw_cnr            = 12; 
parameter c_cnr_ram_g_dw      = 2*c_dw_si;
parameter c_cnr_ram_c12_dw    = 4*(c_dw_si+1); 
parameter c_aw_wdrt = 13;
parameter c_mi_mp_y_aw = 7;
parameter c_mi_mp_c_aw = 6;
parameter c_mi_bp_aw = 7;
