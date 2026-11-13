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

module vsisp_isp
  (
            clk_not_gated,
            clk,
            reset_clk_n,
            clk_isp_rgb_ram,
            clk_cfg,
            reset_cfg_n,
            soft_rst,
            s_data,
            s_hsync,
            s_vsync,
            s_data_val,
            s_data_ack,
            regs_sample_edge,
            pipeline_full,
            isp_data,
            isp_val,
            isp_ack,
            isp_h_end,
            isp_v_end,
            isp_cfg_upd,
            raw_out_data,
            raw_out_h_end,
            raw_out_v_end,
            raw_out_val,
            raw_out_cfg_upd,
            raw_out_ack,
            raw_mode,
            isp_fifo_cs_n,
            isp_fifo_we_n,
            isp_fifo_addr,
            isp_fifo_wdata,
            isp_fifo_rdata,
            ispram_addr,
            ispram_wdata,
            ispram_rdata,
            ispram_we_n,
            ispram_cs_n,
            cfg_addr,
            cfg_wdata,
            cfg_rdata,
            cfg_rd,
            cfg_val,
            cfg_ack,
            disable_isp,
	    regs_disable_isp_clk,
            format_conv_ctrl,
            isp_int_exp_end,
            isp_int_h_start,
            isp_int_v_start,
            isp_int_frame_in,
	    isp_int_awb_done,
            isp_int_size_err,
            isp_int_dataloss,
            test_mode,
            isp_clk_en
            );
`include "vsisp_isp.vh"
`include "vsisp_ram_sizes.vh"
   input     clk_not_gated;          
   input     clk;                    
   input     reset_clk_n;            
   output    clk_isp_rgb_ram;        
   input     clk_cfg;                
   input     reset_cfg_n;            
   input     soft_rst;               
   input [c_dw_si-1:0] s_data;           
   input               s_hsync;          
   input               s_vsync;          
   input               s_data_val;       
   output              s_data_ack;       
   output              regs_sample_edge; 
   input               pipeline_full;    
   output [(2*c_dw_do)-1:0] isp_data;    
   output                   isp_val;     
   input                    isp_ack;     
   output                   isp_h_end;   
   output                   isp_v_end;   
   output                   isp_cfg_upd; 
    output wire [16-1:0]    raw_out_data;
    output                  raw_out_h_end;
    output                  raw_out_v_end;
    output                  raw_out_val;
    output                  raw_out_cfg_upd;
    input                   raw_out_ack ;
    output                  raw_mode;
   output                    isp_fifo_cs_n;  
   output                    isp_fifo_we_n;  
   output [c_ispfifo_aw-1:0] isp_fifo_addr;  
   output [c_ispfifo_dw-1:0] isp_fifo_wdata; 
   input  [c_ispfifo_dw-1:0] isp_fifo_rdata; 
   output [c_aw_dem_mem-1:0] ispram_addr;    
   output [c_dw_dem_mem-1:0] ispram_wdata;   
   input [c_dw_dem_mem-1:0]  ispram_rdata;   
   output                    ispram_we_n;    
   output                    ispram_cs_n;    
   input [31:0]  cfg_addr;           
   input [31:0]  cfg_wdata;          
   output [31:0] cfg_rdata;          
   input         cfg_rd;             
   input         cfg_val;            
   output        cfg_ack;            
   input         disable_isp;        
   output        regs_disable_isp_clk;
   output        isp_int_h_start;    
   output        isp_int_v_start;    
   output        isp_int_frame_in;   
   output        isp_int_size_err;   
   output        isp_int_dataloss;   
   output        isp_int_exp_end;    
   output        isp_int_awb_done;   
   input         test_mode;          
   input         isp_clk_en;         
   output        format_conv_ctrl;
wire  [c_dw_si-1:0] viv_s0;
wire                viv_s1;
wire                viv_s2;
wire                viv_s3;
wire          viv_s4;
wire [2:0]    viv_s5;
wire [15:0]   viv_s6;
wire [1:0]    viv_s7;
wire [1:0]    viv_s8;
wire          viv_s9;
wire          viv_s10;
wire [1:0]    viv_s11;                           
wire [13:0]   viv_s12;
wire [13:0]   viv_s13;
wire [13:0]   viv_s14;
wire [13:0]   viv_s15;
wire [13:0]   viv_s16;
wire [13:0]   viv_s17; 
wire [13:0]   viv_s18;
wire [13:0]   viv_s19;
wire [13:0]   viv_s20;
wire [13:0]   viv_s21;
wire [13:0]   viv_s22;
wire [13:0]   viv_s23;
wire [13:0]   viv_s24;                             
wire [31:0]   viv_s25;
    wire  [ 15:0]  viv_s26;
    wire           viv_s27;		
    wire           viv_s28;		
    wire           viv_s29;		
    wire           viv_s30;	
   wire [(2*c_dw_do)-1:0] isp_data;    
   wire                   isp_val;     
   wire                   isp_h_end;   
   wire                   isp_v_end;   
   wire                   isp_cfg_upd; 
   wire        viv_s31;       
   wire        viv_s32;     
   wire        viv_s33; 
   wire        viv_s34; 
   wire [c_dw_si-1:0] viv_s35;  
   wire               viv_s36; 
   wire               viv_s37; 
   wire               viv_s38;    
   wire               viv_s39;    
   wire [c_dw_si-1:0] viv_s40;  
   wire               viv_s41; 
   wire               viv_s42; 
   wire               viv_s43;    
   wire               viv_s44;    
   wire [c_dw_si-1:0] viv_s45;  
   wire               viv_s46; 
   wire               viv_s47; 
   wire               viv_s48;   
   wire [c_dw_si-1:0] viv_s49;  
   wire               viv_s50; 
   wire               viv_s51; 
   wire               viv_s52;   
   wire               viv_s53;    
   wire               viv_s54;    
   wire               viv_s55;  
   wire               viv_s56;  
   wire [c_dw_si-1:0] viv_s57;   
   wire [c_ispfifo_aw-1:0] viv_s58;
   wire [(2*c_dw_do)-1:0] viv_s59;
   wire                   viv_s60;
   wire                   viv_s61;
   wire                   viv_s62;
   wire                   viv_s63;
   wire                   viv_s64;     
   wire                   viv_s65;
   wire                   viv_s66;
   wire [c_dw_si-1:0] viv_s67;       
   wire               viv_s68;        
   wire               viv_s69;      
   wire               viv_s70;      
   wire               viv_s71;        
   wire [(3*c_dw_si)-1:0] viv_s72;
   wire                   viv_s73;
   wire                   viv_s74;
   wire                   viv_s75;
   wire                   viv_s76;
   wire [(3*c_dw_do)-1:0] viv_s77;
   wire                   viv_s78;
   wire                   viv_s79;
   wire                   viv_s80;
   wire                   viv_s81;
   wire [(3*c_dw_do)-1:0] viv_s82; 
   wire                   viv_s83; 
   wire                   viv_s84; 
   wire                   viv_s85;     
   wire                   viv_s86;     
   wire [(2*c_dw_do)-1:0] viv_s87;
   wire                   viv_s88;
   wire                   viv_s89;
   wire                   viv_s90;
   wire                   viv_s91;
   wire        viv_s92;
   wire        viv_s93;
   wire        viv_s94;
   wire         viv_s95;
   wire         viv_s96;
   wire         viv_s97;
   wire         viv_s98;
   wire [2:0]   viv_s99;
   wire         viv_s100; 
   wire [7:0]   viv_s101;
   wire         viv_s102;
   wire [2:0]   viv_s103;
   wire [2:0]   viv_s104;
   wire         viv_s105;
   wire [1:0]   viv_s106;
   wire [1:0]   viv_s107;
   wire [1:0]   viv_s108;
   wire [1:0]   viv_s109;
   wire         viv_s110;
   wire         viv_s111;
   wire [14:0]  viv_s112;
   wire [13:0]  viv_s113;
   wire [14:0]  viv_s114;
   wire [13:0]  viv_s115;
   wire [5:0] viv_s116;
   wire         viv_s117 ;
   wire        viv_s118;
   wire [4:0] viv_s119;
   wire [4:0] viv_s120;
   wire [4:0] viv_s121;
   wire [4:0] viv_s122;
   wire [9:0]  viv_s123;
   wire [9:0]  viv_s124;
   wire [9:0]  viv_s125;
   wire [9:0]  viv_s126;
   wire         viv_s127;
   wire [15:0]  viv_s128;
   wire [15:0]  viv_s129;
   wire [15:0]  viv_s130;
   wire [15:0]  viv_s131;
   wire               viv_s132;
   wire [c_dw_do-1:0] viv_s133;
   wire [c_dw_do-1:0] viv_s134;
   wire [c_dw_do-1:0] viv_s135;
   wire [c_dw_do-1:0] viv_s136;
   wire [c_dw_do-1:0] viv_s137;
   wire [c_dw_do-1:0] viv_s138;
   wire [c_dw_do-1:0] viv_s139;
   wire [c_dw_do-1:0] viv_s140;
   wire [c_dw_do-1:0] viv_s141;
   wire [c_dw_do-1:0] viv_s142;
   wire [c_dw_do-1:0] viv_s143;
   wire [c_dw_do-1:0] viv_s144;
   wire [c_dw_do-1:0] viv_s145;
   wire [c_dw_do-1:0] viv_s146;
   wire [c_dw_do-1:0] viv_s147;
   wire [c_dw_do-1:0] viv_s148;
   wire [c_dw_do-1:0] viv_s149;
   wire        viv_s150;
   wire        viv_s151;
   wire [1:0]  viv_s152;
   wire [12:0] viv_s153;
   wire [12:0] viv_s154;
   wire [13:0] viv_s155;
   wire [13:0] viv_s156;
   wire [ 2:0] viv_s157;
   wire [ 7:0] viv_s158;
   wire [ 7:0] viv_s159;
   wire [ 7:0] viv_s160;
   wire [ 7:0] viv_s161;
   wire [ 7:0] viv_s162;
   wire [ 7:0] viv_s163;
   wire [c_white_cnt-1:0] viv_s164;
   wire [7:0]             viv_s165;
   wire [7:0]             viv_s166;
   wire [7:0]             viv_s167;
   wire                   viv_s168;
   wire               viv_s169;
   wire               viv_s170;
   wire [ 8:0] viv_s171;
   wire [ 8:0] viv_s172;
   wire [ 8:0] viv_s173;
   wire [ 8:0] viv_s174;
   wire [ 8:0] viv_s175;
   wire [ 8:0] viv_s176;
   wire [ 8:0] viv_s177;
   wire [ 8:0] viv_s178;
   wire [ 8:0] viv_s179;
   wire        viv_s180;
   wire        viv_s181;
   wire [10:0] viv_s182;
   wire [10:0] viv_s183;
   wire [10:0] viv_s184;
   wire [10:0] viv_s185;
   wire [10:0] viv_s186;
   wire [10:0] viv_s187;
   wire [10:0] viv_s188;
   wire [10:0] viv_s189;
   wire [10:0] viv_s190;
   wire [c_dw_si-1:0] viv_s191;
   wire [c_dw_si-1:0] viv_s192;
   wire [c_dw_si-1:0] viv_s193;
   wire [13:0] viv_s194;            
   wire [13:0] viv_s195;            
   wire [14:0] viv_s196;            
   wire [13:0] viv_s197;            
   wire [13:0] viv_s198;             
   wire [13:0] viv_s199;             
   wire [14:0] viv_s200;             
   wire [13:0] viv_s201;             
   wire [1:0]  viv_s202;  
   wire [1:0]  viv_s203;
   wire        viv_s204;    
   wire        viv_s205;      
   wire        viv_s206;      
   wire        viv_s207;
   wire        viv_s208;
   wire [c_irq_bw-1:0] viv_s209;
   wire [c_irq_bw-1:0] viv_s210;
   wire [c_irq_bw-1:0] viv_s211;
   wire [c_irq_bw-1:0] viv_s212;
   wire [c_irq_bw-1:0] viv_s213;
   wire [c_irq_bw-1:0] viv_s214;
   wire [c_isp_err_bw-1:0] viv_s215;
   wire [c_isp_err_bw-1:0] viv_s216;
   wire [c_isp_err_bw-1:0] viv_s217;
   wire         viv_s218;
   wire         viv_s219;
   wire         viv_s220;
   wire [31:0] viv_s221;
   wire [31:0] viv_s222;
   wire [31:0] viv_s223;
   wire                   viv_s224;
   wire                   viv_s225;
   wire                   raw_mode;
   wire                   viv_s226;
   wire                   viv_s227; 
   assign clk_isp_rgb_ram = viv_s227; 
   assign viv_s224 = (viv_s99[2:0] == 3'b011)|
                         (viv_s99[2:0] == 3'b101);
   assign viv_s225     = (viv_s99[2:0] == 3'b001)|
                         (viv_s99[2:0] == 3'b010);
   assign raw_mode     = (viv_s99[2:0] == 3'b000)| 
                         (viv_s99[2:0] == 3'b110)| 
                         (viv_s99[2:0] == 3'b100); 
   assign viv_s226 = (viv_s99[2:0] == 3'b111);
   assign viv_s205     = (viv_s225)                    ? viv_s53 : 1'b0;
   assign viv_s206     = (viv_s224 & ~disable_isp) ? viv_s53 & raw_out_ack : 1'b0;
   assign viv_s207    = (viv_s226)                   ? viv_s53 : 1'b0;
   assign raw_out_data  = {viv_s57,{16-c_dw_si{1'b0}}} ;
   assign raw_out_h_end = viv_s55;
   assign raw_out_v_end = viv_s56;
   assign raw_out_val   = viv_s53 & ~viv_s225 & ~viv_s226 & viv_s64   ;
   assign raw_out_cfg_upd = raw_out_h_end & raw_out_v_end & viv_s95;
   assign viv_s54 = (viv_s225) ? viv_s65 :
                         viv_s226 ? viv_s66 : 
                                    viv_s64 & raw_out_ack ;
   assign viv_s208 = viv_s32 | viv_s93;
   assign viv_s212 = {1'b0,
                     viv_s169,
                     10'b0,
                     viv_s33,
                     viv_s34,
                     viv_s94,
		     viv_s168,
                     viv_s208,
                     pipeline_full,
                     2'b0};
   assign isp_int_exp_end     = viv_s214[18]; 
   assign isp_int_h_start     = viv_s214[7];
   assign isp_int_v_start     = viv_s214[6];
   assign isp_int_frame_in    = viv_s214[5];
   assign isp_int_awb_done    = viv_s214[4];
   assign isp_int_size_err    = viv_s214[3];
   assign isp_int_dataloss    = viv_s214[2];
   assign viv_s215  = {viv_s93, 1'b0, viv_s32};
   assign viv_s218 = cfg_val && ((12'h814 <= cfg_addr[11:0]) && (cfg_addr[11:0]  <=12'h888));
   assign viv_s219  = cfg_val && ((12'h700 <= cfg_addr[11:0]) && (cfg_addr[11:0]  <=12'h710));
   assign viv_s220 = cfg_val && ((12'h720 <= cfg_addr[11:0]) && (cfg_addr[11:0]  <=12'h794));
vsisp_isp_tpg_cfg u_isp_tpg_cfg(
                            .clk                    (clk                                        ),			
                            .rst_n                  (reset_clk_n                                ),		
                            .tpg_en                 (viv_s4                                     ),	    
                            .img_num                (viv_s5                                ),		    
                            .frame_num              (viv_s6                                ),		    
                            .cfa_pat                (viv_s7                                ),		
                            .color_depth            (viv_s8                            ), 
                            .def_sync               (viv_s9                               ),		
                            .max_sync               (viv_s10                               ),		
                            .tpg_resolution         (viv_s11                         ),
                            .vtotal_in              (viv_s12                              ),
                            .htotal_in              (viv_s13                              ),
                            .v_act_in               (viv_s14                               ),
                            .h_act_in               (viv_s15                               ),
                            .fp_v_in                (viv_s16                                ),
                            .fp_h_in                (viv_s17                                ),
                            .bp_v_in                (viv_s18                                ),
                            .bp_h_in                (viv_s19                                ),
                            .vs_w_in                (viv_s20                                ),
                            .hs_w_in                (viv_s21                                ),
                            .line_gap_in            (viv_s22                            ),
                            .pix_gap_in             (viv_s23                             ),
                            .pix_gap_std_in         (viv_s24                         ),        
                            .random_seed_in         (viv_s25                         ),          
                            .cfa_out                (viv_s26                                ),		
                            .vs_out                 (viv_s27                                 ),		
                            .hs_out                 (viv_s28                                 ),		
                            .vde_out                (viv_s29                                ),		
                            .hde_out                (viv_s30                                )); 		
assign viv_s0       = viv_s4 ? viv_s26[15:16-c_dw_si] : s_data;
assign viv_s1      = viv_s4 ? viv_s28  : s_hsync;
assign viv_s2      = viv_s4 ? viv_s27  : s_vsync;
assign viv_s3   = viv_s4 ? (viv_s29 && viv_s30) : s_data_val;
   vsisp_isp_inform u_isp_inform
     (
      .clk             (clk),
      .reset_clk_n     (reset_clk_n),
      .soft_rst        (soft_rst),
      .s_data          (viv_s0),
      .s_hsync         (viv_s1),
      .s_vsync         (viv_s2),
      .s_data_val      (viv_s3),
      .s_data_ack      (s_data_ack),
      .out_bls_data    (),
      .out_bls_h_end   (),
      .out_bls_v_end   (),
      .out_bls_val     (),
      .inform_mux_val  (viv_s38),
      .inform_mux_ack  (viv_s39),
      .inform_mux_h_end(viv_s36),
      .inform_mux_v_end(viv_s37),
      .inform_mux_data (viv_s35),
      .regs_hsync_pol  (viv_s111),
      .regs_vsync_pol  (viv_s110),
      .regs_acq_h_offs (viv_s112),
      .regs_acq_v_offs (viv_s113),
      .regs_acq_h_size (viv_s114),
      .regs_acq_v_size (viv_s115),
      .regs_bayer_pat  (viv_s109),
      .out_h_offs_shd  (viv_s198),
      .out_v_offs_shd  (viv_s199),
      .regs_input_pin_map  (viv_s103),
      .regs_input_selection(viv_s104),
      .regs_field_selection(viv_s106),
      .regs_field_inv      (viv_s105),
      .regs_isp_mode       (viv_s99),
      .regs_inform_enable  (viv_s98),
      .regs_cfg_upd        (viv_s96),
      .regs_gen_cfg_upd    (viv_s95),
      .bayer_pat_act       (viv_s202),
      .bayer_pat_diff      (viv_s203),
      .frame_in_irq        (viv_s94),
      .inform_en_shd       (viv_s31),
      .field               (),
      .in_size_err         (viv_s32),
      .h_start_edge        (viv_s33),
      .v_start_edge        (viv_s34)
      );
   vsisp_isp_outform #(c_dw_si) u_isp_outform
     (
      .clk             (clk),
      .reset_clk_n     (reset_clk_n),
      .soft_rst        (soft_rst),
      .in_data         (viv_s35    ),
      .in_h_end        (viv_s36   ),
      .in_v_end        (viv_s37   ),
      .in_val          (viv_s38     ),
      .in_ack          (viv_s39     ),
      .outform_data    (viv_s45),
      .outform_h_end   (viv_s46),
      .outform_v_end   (viv_s47),
      .outform_val     (viv_s48),
      .outform_ack     (viv_s204),
      .regs_out_h_offs (viv_s194),
      .regs_out_v_offs (viv_s195),
      .regs_out_h_size (viv_s196),
      .regs_out_v_size (viv_s197),
      .regs_isp_mode   (viv_s99),
      .regs_cfg_upd    (viv_s96),
      .regs_gen_cfg_upd(viv_s95),
      .isp_on_shd      (1'b1),
      .h_offs_shd      (viv_s198),
      .v_offs_shd      (viv_s199),
      .h_size_shd      (viv_s200),
      .v_size_shd      (viv_s201),
      .v_start_pos     (     ),
      .size_err        (viv_s93)
      );
   assign  isp_fifo_addr[c_ispfifo_aw-1:0] = viv_s58[c_ispfifo_aw-1:0];
   vsisp_fifo #(c_dw_si, c_ispfifo_aw) u_fifo
     (
      .clk       (clk),
      .reset_n   (reset_clk_n),
      .soft_rst  (soft_rst),
      .wr_val    (viv_s48   ),
      .wr_ack    (viv_s204   ),
      .wr_h_end  (viv_s46 ),
      .wr_v_end  (viv_s47 ),
      .wr_data   (viv_s45  ),
      .rd_val    (viv_s53),
      .rd_ack    (viv_s54),
      .rd_h_end  (viv_s55),
      .rd_v_end  (viv_s56),
      .rd_data   (viv_s57),
      .ram_cs_n  (isp_fifo_cs_n),
      .ram_we_n  (isp_fifo_we_n),
      .ram_addr  (viv_s58),
      .ram_wdata (isp_fifo_wdata),
      .ram_rdata (isp_fifo_rdata)
      );
vsisp_GC_CG_MOD GC_CG_MOD_0(
.ck_in(clk), 
.test(test_mode),
.enable(viv_s225),
.ck_out(clk_yuv_mode)
);
assign viv_s65      = 1;
assign viv_s62    = 0;
assign viv_s60  = 0;
assign viv_s61  = 0;
assign viv_s59   = 'b0;
   vsisp_m4_clock_gating u_clock_gating_clk
     (
      .per_clk_i       (clk_not_gated),
      .pdft_scan_mode_i(test_mode),
      .gating_en_i     (viv_s224 & isp_clk_en),
      .clk_o           (viv_s227)
      );
   vsisp_isp_bls_v2 u_isp_bls_v2
     (
      .clk           (viv_s227),
      .reset_n       (reset_clk_n),
      .clk_cfg       (clk_cfg),
      .reset_cfg_n   (reset_cfg_n),
      .soft_rst      (soft_rst),
      .cfg_val       (viv_s219),
      .cfg_addr      (cfg_addr[c_cfg_bls-1:2]),
      .cfg_rd        (cfg_rd),
      .cfg_wdata     (cfg_wdata),
      .cfg_rdata     (viv_s222),
      .bayer_pat_diff(viv_s203),
      .in_act_data   (viv_s57),
      .in_act_h_end  (viv_s55),
      .in_act_v_end  (viv_s56),
      .in_act_val    (viv_s206),
      .in_act_ack    (viv_s64),
      .out_data      (viv_s67),
      .out_h_end     (viv_s69),
      .out_v_end     (viv_s70),
      .out_val       (viv_s68),
      .out_ack       (viv_s71)
      );
wire [c_dw_si-1:0] viv_s228;
 vsisp_isp_digi_gain #(.c_dw_si(c_dw_si)) u_digi_gain(
       .clk                  (viv_s227),
       .reset_n              (reset_clk_n),
       .soft_rst             (soft_rst),
       .regs_bayer_pat       (viv_s202),
       .in_data              (viv_s67),
       .in_h_end             (viv_s69),
       .in_v_end             (viv_s70),
       .in_val               (viv_s68),
       .in_ack               (viv_s71),
       .in_vsync             (viv_s34),
       .out_vsync            (),
       .out_h_st             (),
       .out_v_st             (),
       .out_data             (viv_s228),
       .out_h_end            (dgain_h_end),
       .out_v_end            (dgain_v_end),
       .out_val              (dgain_val),
       .out_bayer_ptn        (),
       .out_ack              (dgain_ack),
       .gain_r               (viv_s128),
       .gain_gr              (viv_s129),
       .gain_gb              (viv_s130),
       .gain_b               (viv_s131),
       .regs_dgain_enable    (viv_s127)
);
   vsisp_isp_filt u_isp_filt
     (
      .clk             (viv_s227),
      .reset_n         (reset_clk_n),
      .clk_cfg         (clk_cfg),
      .reset_cfg_n     (reset_cfg_n),
      .soft_rst        (soft_rst),
      .cfg_val         (viv_s218),
      .cfg_addr        (cfg_addr[c_cfg_filt-1:2]),
      .cfg_rd          (cfg_rd),
      .cfg_wdata       (cfg_wdata),
      .cfg_rdata       (viv_s221),
      .in_data         (viv_s228),
      .in_h_end        (dgain_h_end),
      .in_v_end        (dgain_v_end),
      .in_val          (dgain_val),
      .in_ack          (dgain_ack),
      .regs_demosaic_th(viv_s101),
      .regs_dem_bypass (viv_s102),
      .regs_bayer_pat  (viv_s202),
      .regs_cfg_upd    (viv_s96),
      .regs_gen_cfg_upd(viv_s95),
      .filt_data       (viv_s72),
      .filt_h_end      (viv_s73),
      .filt_v_end      (viv_s74),
      .filt_val        (viv_s75),
      .filt_ack        (viv_s76),
      .meas_val        (),
      .meas_h_end      (),
      .meas_v_end      (),
      .meas_data_t     (),
      .meas_data_m     (),
      .meas_data_b     (),
      .adr             (ispram_addr),
      .we_n            (ispram_we_n),
      .cs_n            (ispram_cs_n),
      .wr_data         (ispram_wdata),
      .rd_data         (ispram_rdata)
      );
   wire [(3*c_dw_si)-1:0] viv_s229;
   wire                   viv_s230;
   wire                   viv_s231;
   wire                   viv_s232;
   wire                   viv_s233;
   vsisp_isp_cross_talk u_isp_cross_talk
     (
      .clk       (viv_s227),
      .reset_n   (reset_clk_n),
      .soft_rst  (soft_rst),
      .in_data   (viv_s72),
      .in_h_end  (viv_s73),
      .in_v_end  (viv_s74),
      .in_val    (viv_s75),
      .in_ack    (viv_s76),
      .out_data  (viv_s229),
      .out_h_end (viv_s230),
      .out_v_end (viv_s231),
      .out_val   (viv_s232),
      .out_ack   (viv_s233),
      .coeff0    (viv_s182),
      .coeff1    (viv_s183),
      .coeff2    (viv_s184),
      .coeff3    (viv_s185),
      .coeff4    (viv_s186),
      .coeff5    (viv_s187),
      .coeff6    (viv_s188),
      .coeff7    (viv_s189),
      .coeff8    (viv_s190),
      .offset_r  (viv_s191),
      .offset_g  (viv_s192),
      .offset_b  (viv_s193)
      );
   wire [3*c_dw_si-1:0] viv_s234 = viv_s117 ? viv_s72 : viv_s229;
   wire                 viv_s235  = viv_s117 ? viv_s75 & viv_s76 : viv_s232 & viv_s233;
   wire                 viv_s236  = viv_s117 ? viv_s73 : viv_s230;
   wire                 viv_s237  = viv_s117 ? viv_s74 : viv_s231;
   vsisp_isp_gamma_out u_isp_gamma_out
     (
      .clk      (viv_s227),
      .reset_n  (reset_clk_n),
      .soft_rst (soft_rst),
      .enable   (viv_s97),
      .equ_segm (viv_s132),
      .y0       (viv_s133),
      .y1       (viv_s134),
      .y2       (viv_s135),
      .y3       (viv_s136),
      .y4       (viv_s137),
      .y5       (viv_s138),
      .y6       (viv_s139),
      .y7       (viv_s140),
      .y8       (viv_s141),
      .y9       (viv_s142),
      .y10      (viv_s143),
      .y11      (viv_s144),
      .y12      (viv_s145),
      .y13      (viv_s146),
      .y14      (viv_s147),
      .y15      (viv_s148),
      .y16      (viv_s149),
      .in_data  (viv_s229    ),
      .in_h_end (viv_s230   ),
      .in_v_end (viv_s231   ),
      .in_val   (viv_s232     ),  
      .in_ack   (viv_s233     ),
      .out_data (viv_s82),
      .out_h_end(viv_s83),
      .out_v_end(viv_s84),
      .out_val  (viv_s85),
      .out_ack  (viv_s86)
      );
   wire [23:0]  viv_s238;
   wire [7:0]   viv_s239;
   wire         viv_s240;
   wire         viv_s241;
   wire         viv_s242;
   wire         viv_s243;
   assign viv_s243 = 1'b1;
   vsisp_isp_csm_fix u_isp_csm_fix
     (
      .clk               (viv_s227),
      .reset_n           (reset_clk_n),
      .soft_rst          (soft_rst),
      .regs_awb_meas_mode(viv_s150),
      .exp_alt_mode      (viv_s170),
      .in_data           (viv_s234),
      .in_h_end          (viv_s236),
      .in_v_end          (viv_s237),
      .in_val            (viv_s235),
      .out_data          (viv_s238),
      .out_y_exp         (viv_s239),
      .out_h_end         (viv_s240),
      .out_v_end         (viv_s241),
      .out_val           (viv_s242),
      .out_ack           (viv_s243) 
      );
    vsisp_isp_exp u_isp_exp
      (
        .clk              (viv_s227),
        .reset_n          (reset_clk_n),
        .soft_rst         (soft_rst),
        .clk_cfg          (clk_cfg),
        .reset_cfg_n      (reset_cfg_n),
        .regs_gen_cfg_upd (viv_s95),
        .regs_cfg_upd     (viv_s96),
        .cfg_val_i        (viv_s220),
        .cfg_addr_i       ({2'b0,cfg_addr[11:2]}),
        .cfg_rd_i         (cfg_rd),
        .cfg_wdata_i      (cfg_wdata),
        .cfg_rdata_o      (viv_s223),
        .y_i              (viv_s239),
        .h_end_i          (viv_s240),
        .v_end_i          (viv_s241),
        .val_i            (viv_s242),
        .ack_i            (viv_s243),  
        .exp_alt_mode_o   (viv_s170),
        .measure_complete (viv_s169)
        );
  vsisp_isp_awb_meas u_isp_awb_meas_old
     (
      .clk                   (viv_s227),
      .reset_n               (reset_clk_n),
      .soft_rst              (soft_rst),
      .meas_data             (viv_s238),
      .meas_h_end            (viv_s240),
      .meas_v_end            (viv_s241),
      .meas_val              (viv_s242),
      .meas_ack              (viv_s243), 
      .mean_y__g             (viv_s165),
      .mean_cb__b            (viv_s166),
      .mean_cr__r            (viv_s167),
      .white_cnt             (viv_s164),
      .awb_done              (viv_s168),
      .regs_awb_enable       (regs_awb_enable),
      .regs_awb_meas_mode    (viv_s150),
      .regs_awb_max_en       (viv_s151),
      .regs_awb_mode         (viv_s152),
      .regs_awb_h_offs       (viv_s153),
      .regs_awb_v_offs       (viv_s154),
      .regs_awb_h_size       (viv_s155),
      .regs_awb_v_size       (viv_s156),
      .regs_awb_frames       (viv_s157),
      .regs_awb_ref_cb__max_b(viv_s158),
      .regs_awb_ref_cr__max_r(viv_s159),
      .regs_awb_max_y        (viv_s160),
      .regs_awb_min_y__max_g (viv_s161),
      .regs_awb_min_c        (viv_s162),
      .regs_awb_max_csum     (viv_s163)
      );
   vsisp_isp_csm u_isp_csm
     (
      .clk      (viv_s227),
      .reset_n  (reset_clk_n),
      .soft_rst (soft_rst),
      .in_data  (viv_s82),
      .in_h_end (viv_s83),
      .in_v_end (viv_s84),
      .in_val   (viv_s85),
      .in_ack   (viv_s86),
      .out_data (viv_s77),
      .out_h_end(viv_s79),
      .out_v_end(viv_s80),
      .out_val  (viv_s81),
      .out_ack  (viv_s78),
      .coeff0   (viv_s171),
      .coeff1   (viv_s172),
      .coeff2   (viv_s173),
      .coeff3   (viv_s174),
      .coeff4   (viv_s175),
      .coeff5   (viv_s176),
      .coeff6   (viv_s177),
      .coeff7   (viv_s178),
      .coeff8   (viv_s179),
      .y_range  (viv_s180),
      .c_range  (viv_s181)
      );
   vsisp_isp_422_conv u_isp_422_conv
     (
      .clk        (viv_s227),
      .reset_n    (reset_clk_n),
      .soft_rst   (soft_rst),
      .in_data    (viv_s77),
      .in_h_end   (viv_s79),
      .in_v_end   (viv_s80),
      .in_val     (viv_s81),
      .in_ack     (viv_s78),
      .out_data   (viv_s87),
      .out_h_end  (viv_s89),
      .out_v_end  (viv_s90),
      .out_val    (viv_s91),
      .out_ack    (viv_s88),
      .cb_cr_swap (viv_s63),
      .regs_method(viv_s108)
      );
  vsisp_isp_rgb_yuv_sel u_isp_rgb_yuv_sel
     (
      .if_sel      (viv_s225),
      .yuv_dma_sel (viv_s226),
      .s2_val      (viv_s207),
      .s2_data     ({viv_s57[c_dw_si-1:c_dw_si-c_dw_do],{c_dw_do{1'b0}}}),
      .s2_h_end    (viv_s55),
      .s2_v_end    (viv_s56),
      .s2_ack      (viv_s66),
      .s1_val      (viv_s62),
      .s1_data     (viv_s59),
      .s1_h_end    (viv_s60),
      .s1_v_end    (viv_s61),
      .s1_ack      (viv_s92),
      .s0_val      (viv_s91),
      .s0_data     (viv_s87),
      .s0_h_end    (viv_s89),
      .s0_v_end    (viv_s90),
      .s0_ack      (viv_s88),
      .out_val     (isp_val),
      .out_data    (isp_data),
      .out_h_end   (isp_h_end),
      .out_v_end   (isp_v_end),
      .out_ack     (isp_ack)
      );
  wire viv_s244 = viv_s96 || viv_s95 && isp_val && isp_ack && isp_h_end && isp_v_end;
  wire viv_s245 =  viv_s96 || viv_s95 && raw_out_val && raw_out_ack && raw_out_h_end && raw_out_v_end;
  reg viv_s246;
  always@(posedge clk or negedge reset_clk_n) begin
    if(~reset_clk_n) begin
      viv_s246 <= 1'b0;
    end else if(viv_s244) begin
      viv_s246 <= viv_s194[0];
    end
  end
  reg viv_s247;
  always@(posedge clk or negedge reset_clk_n) begin
    if(~reset_clk_n) begin
      viv_s247 <= 1'b0;
    end else if(viv_s244) begin
      viv_s247 <= viv_s194[0];
    end
  end
  assign viv_s63 = raw_mode ? viv_s247 : viv_s246;
  assign isp_cfg_upd = viv_s95 & isp_h_end & isp_v_end;
  vsisp_isp_regs u_isp_regs
  (
      .clk_cfg(clk_cfg),
      .reset_cfg_n(reset_cfg_n),
      .cfg_addr(cfg_addr),
      .cfg_wdata(cfg_wdata),
      .cfg_rdata(cfg_rdata),
      .cfg_rd(cfg_rd),
      .cfg_val(cfg_val),
      .cfg_ack(cfg_ack),
      .regs_gen_cfg_upd(viv_s95),
      .regs_cfg_upd(viv_s96),
      .regs_isp_mode(viv_s99),
      .regs_isp_enable(viv_s100),
      .regs_disable_isp_clk(regs_disable_isp_clk),
      .regs_awb_enable       (regs_awb_enable), 
      .regs_statistic_3a_sel (viv_s117 ),
      .regs_inform_enable(viv_s98),
      .regs_input_selection(viv_s104),
      .regs_input_pin_map(viv_s103),
      .regs_field_inv(viv_s105),
      .regs_field_selection(viv_s106),
      .regs_ccir_seq(viv_s107),
      .regs_conv_422(viv_s108),
      .regs_bayer_pat(viv_s109),
      .regs_vsync_pol(viv_s110),
      .regs_hsync_pol(viv_s111),
      .regs_sample_edge(regs_sample_edge),
      .regs_acq_h_offs(viv_s112),
      .regs_acq_v_offs(viv_s113),
      .regs_acq_h_size(viv_s114),
      .regs_acq_v_size(viv_s115),
      .regs_out_h_offs(viv_s194),
      .regs_out_v_offs(viv_s195),
      .regs_out_h_size(viv_s196),
      .regs_out_v_size(viv_s197),
      .out_h_offs_shd(viv_s198),
      .out_v_offs_shd(viv_s199),
      .out_h_size_shd(viv_s200),
      .out_v_size_shd(viv_s201),
      .regs_dgain_enable(viv_s127),
      .regs_dgain_r(viv_s128),
      .regs_dgain_gr(viv_s129),
      .regs_dgain_gb(viv_s130),
      .regs_dgain_b(viv_s131),
      .regs_demosaic_bypass(viv_s102),
      .regs_demosaic_th(viv_s101),
      .regs_gamma_out_enable(viv_s97),
      .regs_equ_segm(viv_s132),
      .regs_gamma_out_y0(viv_s133),
      .regs_gamma_out_y1(viv_s134),
      .regs_gamma_out_y2(viv_s135),
      .regs_gamma_out_y3(viv_s136),
      .regs_gamma_out_y4(viv_s137),
      .regs_gamma_out_y5(viv_s138),
      .regs_gamma_out_y6(viv_s139),
      .regs_gamma_out_y7(viv_s140),
      .regs_gamma_out_y8(viv_s141),
      .regs_gamma_out_y9(viv_s142),
      .regs_gamma_out_y10(viv_s143),
      .regs_gamma_out_y11(viv_s144),
      .regs_gamma_out_y12(viv_s145),
      .regs_gamma_out_y13(viv_s146),
      .regs_gamma_out_y14(viv_s147),
      .regs_gamma_out_y15(viv_s148),
      .regs_gamma_out_y16(viv_s149),
      .regs_awb_meas_mode    (viv_s150),
      .regs_awb_max_en       (viv_s151),
      .regs_awb_mode         (viv_s152),
      .regs_awb_h_offs       (viv_s153),
      .regs_awb_v_offs       (viv_s154),
      .regs_awb_h_size       (viv_s155),
      .regs_awb_v_size       (viv_s156),
      .regs_awb_frames       (viv_s157),
      .regs_awb_ref_cb__max_b(viv_s158),
      .regs_awb_ref_cr__max_r(viv_s159),
      .regs_awb_max_y        (viv_s160),
      .regs_awb_min_y__max_g (viv_s161),
      .regs_awb_min_c        (viv_s162),
      .regs_awb_max_csum     (viv_s163),
      .awb_white_cnt         (viv_s164),
      .awb_mean_y__g         (viv_s165),
      .awb_mean_cb__b        (viv_s166),
      .awb_mean_cr__r        (viv_s167),
      .regs_cc_coeff0(viv_s171),
      .regs_cc_coeff1(viv_s172),
      .regs_cc_coeff2(viv_s173),
      .regs_cc_coeff3(viv_s174),
      .regs_cc_coeff4(viv_s175),
      .regs_cc_coeff5(viv_s176),
      .regs_cc_coeff6(viv_s177),
      .regs_cc_coeff7(viv_s178),
      .regs_cc_coeff8(viv_s179),
      .regs_csm_y_range(viv_s180),
      .regs_csm_c_range(viv_s181),
      .format_conv_ctrl(format_conv_ctrl),
      .regs_ct_coeff0        (viv_s182),
      .regs_ct_coeff1        (viv_s183),
      .regs_ct_coeff2        (viv_s184),
      .regs_ct_coeff3        (viv_s185),
      .regs_ct_coeff4        (viv_s186),
      .regs_ct_coeff5        (viv_s187),
      .regs_ct_coeff6        (viv_s188),
      .regs_ct_coeff7        (viv_s189),
      .regs_ct_coeff8        (viv_s190),
      .regs_ct_offset_r      (viv_s191),
      .regs_ct_offset_g      (viv_s192),
      .regs_ct_offset_b      (viv_s193),
      .regs_isp_ris(viv_s213),
      .regs_isp_mis(viv_s214),
      .regs_isp_imsc(viv_s209),
      .regs_isp_isr(viv_s210),
      .regs_isp_icr(viv_s211),
      .regs_err_clr(viv_s217),
      .isp_err_status(viv_s216),
      .cfg_filt_rdata(viv_s221),
      .cfg_bls_rdata(viv_s222),
      .cfg_exp_rdata(viv_s223),
      .tpg_en           ( viv_s4                              ),	    
      .img_num          ( viv_s5                         ),		
      .frm_num          ( viv_s6                         ),		
      .cfa_pat          ( viv_s7                         ),		
      .color_depth      ( viv_s8                     ), 
      .def_sync         ( viv_s9                        ),	  
      .max_sync         ( viv_s10                        ),	  
      .tpg_resolution   ( viv_s11                  ),
      .vtotal_in        ( viv_s12                       ),
      .htotal_in        ( viv_s13                       ),
      .v_act_in         ( viv_s14                        ),
      .h_act_in         ( viv_s15                        ),
      .fp_v_in          ( viv_s16                         ),
      .fp_h_in          ( viv_s17                         ),
      .bp_v_in          ( viv_s18                         ),
      .bp_h_in          ( viv_s19                         ),
      .vs_w_in          ( viv_s20                         ),
      .hs_w_in          ( viv_s21                         ),
      .line_gap_in      ( viv_s22                     ),
      .pix_gap_in       ( viv_s23                      ),
      .pix_gap_std_in   ( viv_s24                  ),
      .random_seed_in   ( viv_s25                  ),
      .clk              (clk_not_gated ),
      .rst_clk_n        (reset_clk_n ),
      .frame_end_dgain  (dgain_val & dgain_ack & dgain_h_end & dgain_v_end)
      );
   vsisp_isp_irq_handler u_isp_irq_handler
     (
      .clk                (clk),
      .reset_n            (reset_clk_n),
      .soft_rst           (soft_rst),
      .isp_err_status_set (viv_s215),
      .regs_err_clr       (viv_s217),
      .isp_err_status     (viv_s216),
      .irq_set            (viv_s212),
      .regs_isp_ris       (viv_s213),
      .regs_isp_mis       (viv_s214),
      .regs_isp_imsc      (viv_s209),
      .regs_isp_icr       (viv_s211),
      .regs_isp_isr       (viv_s210));
endmodule
