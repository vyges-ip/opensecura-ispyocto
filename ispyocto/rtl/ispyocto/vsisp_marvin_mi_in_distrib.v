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

module vsisp_marvin_mi_in_distrib
  (
   clk, 
   reset_n, 
   soft_rst, 
   in_y_val, 
   in_y_data, 
   in_y_h_end, 
   in_y_v_end, 
   in_y_cfg_upd, 
   in_y_ack,
   in_cb_val, 
   in_cb_data, 
   in_cb_h_end, 
   in_cb_v_end, 
   in_cb_cfg_upd, 
   in_cb_ack,
   in_cr_val, 
   in_cr_data, 
   in_cr_h_end, 
   in_cr_v_end, 
   in_cr_cfg_upd, 
   in_cr_ack,
   in_jpeg_val, 
   in_jpeg_data, 
   in_jpeg_end, 
   in_jpeg_ack,
   in_dp_data,
   in_dp_end,
   in_dp_val,
   in_dp_ack,      
   out_y_fifo_data, 
   out_y_fifo_h_end, 
   out_y_fifo_v_end, 
   out_y_fifo_write64, 
   out_y_fifo_full,
   out_cb_fifo_data, 
   out_cb_fifo_h_end, 
   out_cb_fifo_v_end, 
   out_cb_fifo_write64, 
   out_cb_fifo_full,
   out_cr_fifo_data, 
   out_cr_fifo_h_end, 
   out_cr_fifo_v_end, 
   out_cr_fifo_write64, 
   out_cr_fifo_full,
   path_sel,
   nv21,
   line_sens,
   col_sens,
   auto_update,
   cfg_in_update,
   cfg_out_update,
   slice_offset_sens_y,
   slice_offset_sens_cb,
   slice_offset_sens_cr
   );
   input         slice_offset_sens_y;
   input         slice_offset_sens_cb;
   input         slice_offset_sens_cr;
   input         clk; 
   input         reset_n;
   input         soft_rst; 
   input         in_y_val; 
   input [7:0]   in_y_data; 
   input         in_y_h_end; 
   input         in_y_v_end; 
   input         in_y_cfg_upd; 
   output        in_y_ack; 
   input         in_cb_val; 
   input [7:0]   in_cb_data; 
   input         in_cb_h_end; 
   input         in_cb_v_end; 
   input         in_cb_cfg_upd; 
   output        in_cb_ack; 
   input         in_cr_val; 
   input [7:0]   in_cr_data; 
   input         in_cr_h_end; 
   input         in_cr_v_end; 
   input         in_cr_cfg_upd; 
   output        in_cr_ack; 
   input         in_jpeg_val; 
   input [63:0]  in_jpeg_data; 
   input         in_jpeg_end; 
   output        in_jpeg_ack; 
   input [31:0]  in_dp_data;  
   input         in_dp_end;             
   input         in_dp_val;             
   output        in_dp_ack;     
   output [63:0] out_y_fifo_data; 
   output        out_y_fifo_h_end; 
   output        out_y_fifo_v_end; 
   output        out_y_fifo_write64; 
   input         out_y_fifo_full;
   reg [63:0]    out_y_fifo_data; 
   reg           out_y_fifo_h_end; 
   reg           out_y_fifo_v_end; 
   reg           out_y_fifo_write64; 
   output [63:0] out_cb_fifo_data; 
   output        out_cb_fifo_h_end; 
   output        out_cb_fifo_v_end; 
   output        out_cb_fifo_write64; 
   input         out_cb_fifo_full;
   reg [63:0]    out_cb_fifo_data; 
   reg           out_cb_fifo_h_end; 
   reg           out_cb_fifo_v_end; 
   reg           out_cb_fifo_write64; 
   output [63:0] out_cr_fifo_data; 
   output        out_cr_fifo_h_end; 
   output        out_cr_fifo_v_end; 
   output        out_cr_fifo_write64; 
   input         out_cr_fifo_full;
   reg [63:0]    out_cr_fifo_data; 
   reg           out_cr_fifo_h_end; 
   reg           out_cr_fifo_v_end; 
   reg           out_cr_fifo_write64; 
   input [3:0]   path_sel;
   input         nv21;
   input         line_sens;
   input         col_sens;
   input         auto_update;          
   output        cfg_in_update;
   input         cfg_out_update;
   reg           cfg_in_update;
   wire [10:0]   viv_s0; 
   wire          viv_s1; 
   wire [10:0]   viv_s2; 
   wire [7:0]    viv_s3; 
   wire          viv_s4; 
   wire          viv_s5; 
   wire          viv_s6; 
   wire          viv_s7; 
   wire          viv_s8; 
   wire [10:0]   viv_s9; 
   wire [7:0]    viv_s10; 
   wire          viv_s11; 
   wire          viv_s12; 
   wire          viv_s13; 
   wire          viv_s14; 
   wire          viv_s15; 
   wire          viv_s16; 
   wire [10:0]   viv_s17; 
   wire [7:0]    viv_s18; 
   wire          viv_s19; 
   wire          viv_s20; 
   wire          viv_s21; 
   wire          viv_s22; 
   wire          viv_s23; 
   wire          viv_s24; 
   wire [10:0]   viv_s25; 
   wire [7:0]    viv_s26; 
   wire          viv_s27; 
   wire          viv_s28; 
   wire          viv_s29; 
   wire          viv_s30; 
   wire          viv_s31; 
   wire          viv_s32; 
   wire [10:0]   viv_s33; 
   wire [7:0]    viv_s34; 
   wire          viv_s35; 
   wire          viv_s36; 
   wire          viv_s37; 
   wire          viv_s38; 
   wire          viv_s39; 
   wire          viv_s40; 
   wire [10:0]   viv_s41; 
   wire [7:0]    viv_s42; 
   wire          viv_s43; 
   wire          viv_s44; 
   wire          viv_s45; 
   wire          viv_s46; 
   wire          viv_s47; 
   wire          viv_s48; 
   wire [10:0]   viv_s49; 
   wire [7:0]    viv_s50; 
   wire          viv_s51; 
   wire          viv_s52; 
   wire          viv_s53; 
   wire          viv_s54; 
   wire          viv_s55; 
   wire          viv_s56; 
   wire [10:0]   viv_s57; 
   wire [7:0]    viv_s58; 
   wire          viv_s59; 
   wire          viv_s60; 
   wire          viv_s61; 
   wire          viv_s62; 
   wire          viv_s63; 
   wire [10:0]   viv_s64; 
   wire          viv_s65; 
   wire [10:0]   viv_s66; 
   wire [7:0]    viv_s67; 
   wire          viv_s68; 
   wire          viv_s69; 
   wire          viv_s70; 
   wire          viv_s71; 
   wire          viv_s72; 
   wire [10:0]   viv_s73; 
   wire [7:0]    viv_s74; 
   wire          viv_s75; 
   wire          viv_s76; 
   wire          viv_s77; 
   wire          viv_s78; 
   wire          viv_s79; 
   wire          viv_s80; 
   wire [10:0]   viv_s81; 
   wire [7:0]    viv_s82; 
   wire          viv_s83; 
   wire          viv_s84; 
   wire          viv_s85; 
   wire          viv_s86; 
   wire          viv_s87; 
   wire          viv_s88; 
   wire [10:0]   viv_s89; 
   wire [7:0]    viv_s90; 
   wire          viv_s91; 
   wire          viv_s92; 
   wire          viv_s93; 
   wire          viv_s94; 
   wire          viv_s95; 
   wire          viv_s96; 
   wire [10:0]   viv_s97; 
   wire [7:0]    viv_s98; 
   wire          viv_s99; 
   wire          viv_s100; 
   wire          viv_s101; 
   wire          viv_s102; 
   wire          viv_s103; 
   wire          viv_s104; 
   wire [10:0]   viv_s105; 
   wire [7:0]    viv_s106; 
   wire          viv_s107; 
   wire          viv_s108; 
   wire          viv_s109; 
   wire          viv_s110; 
   wire          viv_s111; 
   wire          viv_s112; 
   wire [10:0]   viv_s113; 
   wire [7:0]    viv_s114; 
   wire          viv_s115; 
   wire          viv_s116; 
   wire          viv_s117; 
   wire          viv_s118; 
   wire          viv_s119; 
   wire          viv_s120; 
   wire [10:0]   viv_s121; 
   wire [7:0]    viv_s122; 
   wire          viv_s123; 
   wire          viv_s124; 
   wire          viv_s125; 
   wire          viv_s126; 
   wire          viv_s127; 
   wire [10:0]   viv_s128; 
   wire          viv_s129; 
   wire [10:0]   viv_s130; 
   wire [7:0]    viv_s131; 
   wire          viv_s132; 
   wire          viv_s133; 
   wire          viv_s134; 
   wire          viv_s135; 
   wire          viv_s136; 
   wire [10:0]   viv_s137; 
   wire [7:0]    viv_s138; 
   wire          viv_s139; 
   wire          viv_s140; 
   wire          viv_s141; 
   wire          viv_s142; 
   wire          viv_s143; 
   wire          viv_s144; 
   wire [10:0]   viv_s145; 
   wire [7:0]    viv_s146; 
   wire          viv_s147; 
   wire          viv_s148; 
   wire          viv_s149; 
   wire          viv_s150; 
   wire          viv_s151; 
   wire          viv_s152; 
   wire [10:0]   viv_s153; 
   wire [7:0]    viv_s154; 
   wire          viv_s155; 
   wire          viv_s156; 
   wire          viv_s157; 
   wire          viv_s158; 
   wire          viv_s159; 
   wire          viv_s160; 
   wire [10:0]   viv_s161; 
   wire [7:0]    viv_s162; 
   wire          viv_s163; 
   wire          viv_s164; 
   wire          viv_s165; 
   wire          viv_s166; 
   wire          viv_s167; 
   wire          viv_s168; 
   wire [10:0]   viv_s169; 
   wire [7:0]    viv_s170; 
   wire          viv_s171; 
   wire          viv_s172; 
   wire          viv_s173; 
   wire          viv_s174; 
   wire          viv_s175; 
   wire          viv_s176; 
   wire [10:0]   viv_s177; 
   wire [7:0]    viv_s178; 
   wire          viv_s179; 
   wire          viv_s180; 
   wire          viv_s181; 
   wire          viv_s182; 
   wire          viv_s183; 
   wire          viv_s184; 
   wire [10:0]   viv_s185; 
   wire [7:0]    viv_s186; 
   wire          viv_s187; 
   wire          viv_s188; 
   wire          viv_s189; 
   wire          viv_s190; 
   wire          viv_s191;
   wire          viv_s192;
   wire          viv_s193;
   wire [31:0]   viv_s194;
   wire [32:0]   viv_s195;
   wire          viv_s196;
   wire          viv_s197;
   wire          viv_s198;
   wire [31:0]   viv_s199;
   wire [32:0]   viv_s200;
   wire          viv_s201; 
   reg [1:0]     viv_s202;
   reg           viv_s203;
   reg           viv_s204;
   wire          viv_s205;
   reg          in_jpeg_ack; 
   reg           viv_s206;
   reg           viv_s207;
   reg           viv_s208;
   reg           viv_s209;   
   reg           viv_s210;
   reg           viv_s211;
   reg           viv_s212;
   reg           viv_s213;
   reg [7:0]     viv_s214;
   reg           viv_s215;
   reg           viv_s216;
   reg           viv_s217;
   reg           viv_s218;   
   reg           viv_s219;
   reg           viv_s220;
   reg           viv_s221;
   reg           viv_s222;
   reg [7:0]     viv_s223;
   reg           viv_s224;
   reg           viv_s225;
   reg           viv_s226;
   reg           viv_s227;   
   reg           viv_s228;
   reg           viv_s229;
   reg           viv_s230;
   reg           viv_s231;
   reg [7:0]     viv_s232;
   reg           viv_s233;
   reg           viv_s234;
   reg           viv_s235;
   reg           viv_s236;
   reg           viv_s237;
   reg           viv_s238;
   reg           viv_s239;
   reg           viv_s240;
   assign viv_s0 = {in_y_cfg_upd, in_y_v_end, in_y_h_end, in_y_data};
   vsisp_marvin_mi_dpsbe #(11) u_y_buf7
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s0),
      .dpsbe_val_i  (in_y_val),
      .dpsbe_ack_o  (in_y_ack),
      .dpsbe_data_o (viv_s57),
      .dpsbe_val_o  (viv_s56),
      .dpsbe_ack_i  (viv_s63)
      );
   assign viv_s58    = viv_s57[7:0];
   assign viv_s59   = viv_s57[8];
   assign viv_s60   = viv_s57[9];
   assign viv_s61 = viv_s57[10];
   assign viv_s63 = viv_s62 | viv_s214[7];
   vsisp_marvin_mi_dpsbe #(11) u_y_buf6
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s57),
      .dpsbe_val_i  (viv_s56),
      .dpsbe_ack_o  (viv_s62),
      .dpsbe_data_o (viv_s49),
      .dpsbe_val_o  (viv_s48),
      .dpsbe_ack_i  (viv_s55)
      );
   assign viv_s50    = viv_s49[7:0];
   assign viv_s51   = viv_s49[8];
   assign viv_s52   = viv_s49[9];
   assign viv_s53 = viv_s49[10];
   assign viv_s55 = viv_s54 | viv_s214[6];
   vsisp_marvin_mi_dpsbe #(11) u_y_buf5
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s49),
      .dpsbe_val_i  (viv_s48),
      .dpsbe_ack_o  (viv_s54),
      .dpsbe_data_o (viv_s41),
      .dpsbe_val_o  (viv_s40),
      .dpsbe_ack_i  (viv_s47)
      );
   assign viv_s42    = viv_s41[7:0];
   assign viv_s43   = viv_s41[8];
   assign viv_s44   = viv_s41[9];
   assign viv_s45 = viv_s41[10];
   assign viv_s47 = viv_s46 | viv_s214[5];
   vsisp_marvin_mi_dpsbe #(11) u_y_buf4
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s41),
      .dpsbe_val_i  (viv_s40),
      .dpsbe_ack_o  (viv_s46),
      .dpsbe_data_o (viv_s33),
      .dpsbe_val_o  (viv_s32),
      .dpsbe_ack_i  (viv_s39)
      );
   assign viv_s34    = viv_s33[7:0];
   assign viv_s35   = viv_s33[8];
   assign viv_s36   = viv_s33[9];
   assign viv_s37 = viv_s33[10];
   assign viv_s39 = viv_s38 | viv_s214[4];
   vsisp_marvin_mi_dpsbe #(11) u_y_buf3
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s33),
      .dpsbe_val_i  (viv_s32),
      .dpsbe_ack_o  (viv_s38),
      .dpsbe_data_o (viv_s25),
      .dpsbe_val_o  (viv_s24),
      .dpsbe_ack_i  (viv_s31)
      );
   assign viv_s26    = viv_s25[7:0];
   assign viv_s27   = viv_s25[8];
   assign viv_s28   = viv_s25[9];
   assign viv_s29 = viv_s25[10];
   assign viv_s31 = viv_s30 | viv_s214[3];
   vsisp_marvin_mi_dpsbe #(11) u_y_buf2
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s25),
      .dpsbe_val_i  (viv_s24),
      .dpsbe_ack_o  (viv_s30),
      .dpsbe_data_o (viv_s17),
      .dpsbe_val_o  (viv_s16),
      .dpsbe_ack_i  (viv_s23)
      );
   assign viv_s18    = viv_s17[7:0];
   assign viv_s19   = viv_s17[8];
   assign viv_s20   = viv_s17[9];
   assign viv_s21 = viv_s17[10];
   assign viv_s23 = viv_s22 | viv_s214[2];
   vsisp_marvin_mi_dpsbe #(11) u_y_buf1
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s17),
      .dpsbe_val_i  (viv_s16),
      .dpsbe_ack_o  (viv_s22),
      .dpsbe_data_o (viv_s9),
      .dpsbe_val_o  (viv_s8),
      .dpsbe_ack_i  (viv_s15)
      );
   assign viv_s10    = viv_s9[7:0];
   assign viv_s11   = viv_s9[8];
   assign viv_s12   = viv_s9[9];
   assign viv_s13 = viv_s9[10];
   assign viv_s15 = viv_s14 | viv_s214[1];
   vsisp_marvin_mi_dpsbe #(11) u_y_buf0
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s9),
      .dpsbe_val_i  (viv_s8),
      .dpsbe_ack_o  (viv_s14),
      .dpsbe_data_o (viv_s2),
      .dpsbe_val_o  (viv_s1),
      .dpsbe_ack_i  (viv_s7)
      );
   assign viv_s3    = viv_s2[7:0];
   assign viv_s4   = viv_s2[8];
   assign viv_s5   = viv_s2[9];
   assign viv_s6 = viv_s2[10];
   assign viv_s7     = viv_s214[0];
   assign viv_s64 = {in_cb_cfg_upd, in_cb_v_end, in_cb_h_end, in_cb_data};
   vsisp_marvin_mi_dpsbe #(11) u_cb_buf7
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s64),
      .dpsbe_val_i  (in_cb_val),
      .dpsbe_ack_o  (in_cb_ack),
      .dpsbe_data_o (viv_s121),
      .dpsbe_val_o  (viv_s120),
      .dpsbe_ack_i  (viv_s127)
      );
   assign viv_s122    = viv_s121[7:0];
   assign viv_s123   = viv_s121[8];
   assign viv_s124   = viv_s121[9];
   assign viv_s125 = viv_s121[10];
   assign viv_s127 = viv_s126 | viv_s223[7];
   vsisp_marvin_mi_dpsbe #(11) u_cb_buf6
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s121),
      .dpsbe_val_i  (viv_s120),
      .dpsbe_ack_o  (viv_s126),
      .dpsbe_data_o (viv_s113),
      .dpsbe_val_o  (viv_s112),
      .dpsbe_ack_i  (viv_s119)
      );
   assign viv_s114    = viv_s113[7:0];
   assign viv_s115   = viv_s113[8];
   assign viv_s116   = viv_s113[9];
   assign viv_s117 = viv_s113[10];
   assign viv_s119 = viv_s118 | viv_s223[6];
   vsisp_marvin_mi_dpsbe #(11) u_cb_buf5
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s113),
      .dpsbe_val_i  (viv_s112),
      .dpsbe_ack_o  (viv_s118),
      .dpsbe_data_o (viv_s105),
      .dpsbe_val_o  (viv_s104),
      .dpsbe_ack_i  (viv_s111)
      );
   assign viv_s106    = viv_s105[7:0];
   assign viv_s107   = viv_s105[8];
   assign viv_s108   = viv_s105[9];
   assign viv_s109 = viv_s105[10];
   assign viv_s111 = viv_s110 | viv_s223[5];
   vsisp_marvin_mi_dpsbe #(11) u_cb_buf4
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s105),
      .dpsbe_val_i  (viv_s104),
      .dpsbe_ack_o  (viv_s110),
      .dpsbe_data_o (viv_s97),
      .dpsbe_val_o  (viv_s96),
      .dpsbe_ack_i  (viv_s103)
      );
   assign viv_s98    = viv_s97[7:0];
   assign viv_s99   = viv_s97[8];
   assign viv_s100   = viv_s97[9];
   assign viv_s101 = viv_s97[10];
   assign viv_s103 = viv_s102 | viv_s223[4];
   vsisp_marvin_mi_dpsbe #(11) u_cb_buf3
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s97),
      .dpsbe_val_i  (viv_s96),
      .dpsbe_ack_o  (viv_s102),
      .dpsbe_data_o (viv_s89),
      .dpsbe_val_o  (viv_s88),
      .dpsbe_ack_i  (viv_s95)
      );
   assign viv_s90    = viv_s89[7:0];
   assign viv_s91   = viv_s89[8];
   assign viv_s92   = viv_s89[9];
   assign viv_s93 = viv_s89[10];
   assign viv_s95 = viv_s94 | viv_s223[3];
   vsisp_marvin_mi_dpsbe #(11) u_cb_buf2
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s89),
      .dpsbe_val_i  (viv_s88),
      .dpsbe_ack_o  (viv_s94),
      .dpsbe_data_o (viv_s81),
      .dpsbe_val_o  (viv_s80),
      .dpsbe_ack_i  (viv_s87)
      );
   assign viv_s82    = viv_s81[7:0];
   assign viv_s83   = viv_s81[8];
   assign viv_s84   = viv_s81[9];
   assign viv_s85 = viv_s81[10];
   assign viv_s87 = viv_s86 | viv_s223[2];
   vsisp_marvin_mi_dpsbe #(11) u_cb_buf1
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s81),
      .dpsbe_val_i  (viv_s80),
      .dpsbe_ack_o  (viv_s86),
      .dpsbe_data_o (viv_s73),
      .dpsbe_val_o  (viv_s72),
      .dpsbe_ack_i  (viv_s79)
    );
   assign viv_s74    = viv_s73[7:0];
   assign viv_s75   = viv_s73[8];
   assign viv_s76   = viv_s73[9];
   assign viv_s77 = viv_s73[10];
   assign viv_s79 = viv_s78 | viv_s223[1];
   vsisp_marvin_mi_dpsbe #(11) u_cb_buf0
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s73),
      .dpsbe_val_i  (viv_s72),
      .dpsbe_ack_o  (viv_s78),
      .dpsbe_data_o (viv_s66),
      .dpsbe_val_o  (viv_s65),
      .dpsbe_ack_i  (viv_s71)
      );
   assign viv_s67    = viv_s66[7:0];
   assign viv_s68   = viv_s66[8];
   assign viv_s69   = viv_s66[9];
   assign viv_s70 = viv_s66[10];
   assign viv_s71     = viv_s223[0];
   assign viv_s128 = {in_cr_cfg_upd, in_cr_v_end, in_cr_h_end, in_cr_data};
   vsisp_marvin_mi_dpsbe #(11) u_cr_buf7
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s128),
      .dpsbe_val_i  (in_cr_val),
      .dpsbe_ack_o  (in_cr_ack),
      .dpsbe_data_o (viv_s185),
      .dpsbe_val_o  (viv_s184),
      .dpsbe_ack_i  (viv_s191)
      );
   assign viv_s186    = viv_s185[7:0];
   assign viv_s187   = viv_s185[8];
   assign viv_s188   = viv_s185[9];
   assign viv_s189 = viv_s185[10];
   assign viv_s191 = viv_s190 | viv_s232[7];
   vsisp_marvin_mi_dpsbe #(11) u_cr_buf6
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s185),
      .dpsbe_val_i  (viv_s184),
      .dpsbe_ack_o  (viv_s190),
      .dpsbe_data_o (viv_s177),
      .dpsbe_val_o  (viv_s176),
      .dpsbe_ack_i  (viv_s183)
      );
   assign viv_s178    = viv_s177[7:0];
   assign viv_s179   = viv_s177[8];
   assign viv_s180   = viv_s177[9];
   assign viv_s181 = viv_s177[10];
   assign viv_s183 = viv_s182 | viv_s232[6];
   vsisp_marvin_mi_dpsbe #(11) u_cr_buf5
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s177),
      .dpsbe_val_i  (viv_s176),
      .dpsbe_ack_o  (viv_s182),
      .dpsbe_data_o (viv_s169),
      .dpsbe_val_o  (viv_s168),
      .dpsbe_ack_i  (viv_s175)
      );
   assign viv_s170    = viv_s169[7:0];
   assign viv_s171   = viv_s169[8];
   assign viv_s172   = viv_s169[9];
   assign viv_s173 = viv_s169[10];
   assign viv_s175 = viv_s174 | viv_s232[5];
   vsisp_marvin_mi_dpsbe #(11) u_cr_buf4
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s169),
      .dpsbe_val_i  (viv_s168),
      .dpsbe_ack_o  (viv_s174),
      .dpsbe_data_o (viv_s161),
      .dpsbe_val_o  (viv_s160),
      .dpsbe_ack_i  (viv_s167)
      );
   assign viv_s162    = viv_s161[7:0];
   assign viv_s163   = viv_s161[8];
   assign viv_s164   = viv_s161[9];
   assign viv_s165 = viv_s161[10];
   assign viv_s167 = viv_s166 | viv_s232[4];
   vsisp_marvin_mi_dpsbe #(11) u_cr_buf3
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s161),
      .dpsbe_val_i  (viv_s160),
      .dpsbe_ack_o  (viv_s166),
      .dpsbe_data_o (viv_s153),
      .dpsbe_val_o  (viv_s152),
      .dpsbe_ack_i  (viv_s159)
      );
   assign viv_s154    = viv_s153[7:0];
   assign viv_s155   = viv_s153[8];
   assign viv_s156   = viv_s153[9];
   assign viv_s157 = viv_s153[10];
   assign viv_s159 = viv_s158 | viv_s232[3];
   vsisp_marvin_mi_dpsbe #(11) u_cr_buf2
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s153),
      .dpsbe_val_i  (viv_s152),
      .dpsbe_ack_o  (viv_s158),
      .dpsbe_data_o (viv_s145),
      .dpsbe_val_o  (viv_s144),
      .dpsbe_ack_i  (viv_s151)
 );
   assign viv_s146    = viv_s145[7:0];
   assign viv_s147   = viv_s145[8];
   assign viv_s148   = viv_s145[9];
   assign viv_s149 = viv_s145[10];
   assign viv_s151 = viv_s150 | viv_s232[2];
   vsisp_marvin_mi_dpsbe #(11) u_cr_buf1
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s145),
      .dpsbe_val_i  (viv_s144),
      .dpsbe_ack_o  (viv_s150),
      .dpsbe_data_o (viv_s137),
      .dpsbe_val_o  (viv_s136 ),
      .dpsbe_ack_i  (viv_s143)
      );
   assign viv_s138    = viv_s137[7:0];
   assign viv_s139   = viv_s137[8];
   assign viv_s140   = viv_s137[9];
   assign viv_s141 = viv_s137[10];
   assign viv_s143 = viv_s142 | viv_s232[1];
   vsisp_marvin_mi_dpsbe #(11) u_cr_buf0
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s137),
      .dpsbe_val_i  (viv_s136),
      .dpsbe_ack_o  (viv_s142),
      .dpsbe_data_o (viv_s130),
      .dpsbe_val_o  (viv_s129),
      .dpsbe_ack_i  (viv_s135)
      );
   assign viv_s131    = viv_s130[7:0];
   assign viv_s132   = viv_s130[8];
   assign viv_s133   = viv_s130[9];
   assign viv_s134 = viv_s130[10];
   assign viv_s135     = viv_s232[0];
   vsisp_marvin_mi_dpsbe #(33) u_dp_buf1
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i ({in_dp_end, in_dp_data}),
      .dpsbe_val_i  (in_dp_val),
      .dpsbe_ack_o  (in_dp_ack),
      .dpsbe_data_o (viv_s200),
      .dpsbe_val_o  (viv_s197),
      .dpsbe_ack_i  (viv_s205)
      );
   assign viv_s199    = viv_s200[31:0];
   assign viv_s201     = viv_s200[32];
   assign viv_s205 = viv_s198 | viv_s202[1];
   vsisp_marvin_mi_dpsbe #(33) u_dp_buf0
     (
      .clk          (clk),
      .reset_n      (reset_n),
      .soft_rst     (soft_rst),
      .dpsbe_data_i (viv_s200),
      .dpsbe_val_i  (viv_s197),
      .dpsbe_ack_o  (viv_s198),
      .dpsbe_data_o (viv_s195),
      .dpsbe_val_o  (viv_s192),
      .dpsbe_ack_i  (viv_s193)
      );
   assign viv_s194 = viv_s195[31:0];
   assign viv_s196  = viv_s195[32];
   assign viv_s193  = viv_s202[0];
   always @ (*) begin
      out_y_fifo_data     = 64'h0; 
      out_y_fifo_h_end    = 1'b0; 
      out_y_fifo_v_end    = 1'b0; 
      viv_s238       = 1'b0;
      out_cb_fifo_data    = 64'h0; 
      out_cb_fifo_h_end   = 1'b0; 
      out_cb_fifo_v_end   = 1'b0; 
      viv_s239      = 1'b0;
      out_cr_fifo_data    = 64'h0; 
      out_cr_fifo_h_end   = 1'b0; 
      out_cr_fifo_v_end   = 1'b0; 
      viv_s240      = 1'b0;
      out_y_fifo_write64  = 1'b0; 
      out_cb_fifo_write64 = 1'b0; 
      out_cr_fifo_write64 = 1'b0;
      viv_s206  = 1'b0;
      viv_s207  = 1'b0;
      viv_s208  = 1'b0;
      viv_s209  = 1'b0;        
      viv_s210  = 1'b0;
      viv_s211  = 1'b0;
      viv_s212  = 1'b0;
      viv_s213  = 1'b0;
      viv_s215 = 1'b0;
      viv_s216 = 1'b0;
      viv_s217 = 1'b0;
      viv_s218 = 1'b0;        
      viv_s219 = 1'b0;
      viv_s220 = 1'b0;
      viv_s221 = 1'b0;
      viv_s222 = 1'b0;
      viv_s224 = 1'b0;
      viv_s225 = 1'b0;
      viv_s226 = 1'b0;
      viv_s227 = 1'b0;        
      viv_s228 = 1'b0;
      viv_s229 = 1'b0;
      viv_s230 = 1'b0;
      viv_s231 = 1'b0;
      viv_s204 = 1'b0;
      viv_s203 = 1'b0;    
      viv_s214   = 8'b0000;
      viv_s223  = 8'b0000;
      viv_s232  = 8'b0000;
      viv_s202  = 2'b0;
      in_jpeg_ack  = 1'b0;
      case (path_sel)
        4'b1_110: begin
           viv_s213 = viv_s1 & viv_s4 & (viv_s5 | line_sens | slice_offset_sens_y);
           viv_s212 = viv_s1 & viv_s8 & 
                    ~viv_s14 & 
                    viv_s11 & (viv_s12 | line_sens | slice_offset_sens_y);
           viv_s211 = viv_s1 & viv_s8 & viv_s16 & 
                    ~viv_s14 & ~viv_s22 & 
                    viv_s19 & (viv_s20 | line_sens | slice_offset_sens_y);
           viv_s210 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & 
                    viv_s27 & (viv_s28 | line_sens | slice_offset_sens_y);
           viv_s209 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & 
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    viv_s35 & (viv_s36 | line_sens | slice_offset_sens_y);
           viv_s208 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & viv_s40 & 
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 & 
                    viv_s43 & (viv_s44 | line_sens | slice_offset_sens_y);
           viv_s207 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & viv_s40 & viv_s48 & 
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 & ~viv_s54 & 
                    viv_s51 & (viv_s52 | line_sens | slice_offset_sens_y);
           viv_s206 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & viv_s40 & viv_s48 & viv_s56 & 
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 & ~viv_s54 & ~viv_s62;
           if (viv_s213 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, 8'h00, 8'h00, viv_s3}; 
              out_y_fifo_h_end   = viv_s4; 
              out_y_fifo_v_end   = viv_s5;
              viv_s238      = viv_s6;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b00000001;
           end
           else if (viv_s212 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, 8'h00, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s11; 
              out_y_fifo_v_end   = viv_s12;
              viv_s238      = viv_s13;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b00000011;
           end
           else if (viv_s211 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s19; 
              out_y_fifo_v_end   = viv_s20;
              viv_s238      = viv_s21;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b00000111;
           end
           else if (viv_s210 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00,
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s27; 
              out_y_fifo_v_end   = viv_s28;
              viv_s238      = viv_s29;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b00001111;
           end
           else if (viv_s209 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s35; 
              out_y_fifo_v_end   = viv_s36;
              viv_s238      = viv_s37;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b00011111;
           end
           else if (viv_s208 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s43; 
              out_y_fifo_v_end   = viv_s44;
              viv_s238      = viv_s45;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b00111111;
           end
           else if (viv_s207 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, viv_s50, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s51; 
              out_y_fifo_v_end   = viv_s52;
              viv_s238      = viv_s53;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b01111111;
           end
           else if (viv_s206 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {viv_s58, viv_s50, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s59; 
              out_y_fifo_v_end   = viv_s60;
              viv_s238      = viv_s61;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b11111111;
           end
           viv_s223 = 8'b00000001;
           viv_s232 = 8'b00000001;
        end
        4'b1_101: begin
           viv_s206 = viv_s1 & viv_s65 & viv_s8 & viv_s72 &
                    viv_s16 & viv_s80 & viv_s24 & viv_s88 &                    
                    ~viv_s14 & ~viv_s78 & ~viv_s22 & ~viv_s86 &
                    ~viv_s30 & ~viv_s94;
           if (viv_s206 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {viv_s26, viv_s90, viv_s18, viv_s82, 
                                    viv_s10, viv_s74, viv_s3, viv_s67}; 
              out_y_fifo_h_end   = viv_s27; 
              out_y_fifo_v_end   = viv_s28;
              viv_s238      = viv_s29;
              out_y_fifo_write64 = 1'b1; 
              viv_s214  = 8'b1111;
              viv_s223 = 8'b1111;
           end
        end
        4'b1_100: begin
           viv_s208 = viv_s1 & viv_s65 & viv_s129 & 
                    viv_s8 & viv_s72 & viv_s136 &
                    ~viv_s14 & ~viv_s78 & ~viv_s142;
           if (viv_s208 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, viv_s10, viv_s74, viv_s138, 
                                    8'h00, viv_s3, viv_s67, viv_s131}; 
              out_y_fifo_h_end   = viv_s11; 
              out_y_fifo_v_end   = viv_s12;
              viv_s238      = viv_s13;
              out_y_fifo_write64 = 1'b1; 
              viv_s214  = 8'b0011;
              viv_s223 = 8'b0011;
              viv_s232 = 8'b0011;
           end
        end
        4'b1_011: begin
           out_y_fifo_data        = in_jpeg_data;
           out_y_fifo_h_end       = in_jpeg_end; 
           out_y_fifo_v_end       = in_jpeg_end;
           out_y_fifo_write64     = in_jpeg_val && ~viv_s233;
           in_jpeg_ack            = ~out_y_fifo_full && ~viv_s233;
        end
        4'b0_001: begin
           viv_s203 = viv_s192 & viv_s196;
           viv_s204 = viv_s197 & viv_s192 & ~viv_s198;
           if (viv_s203 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {32'b0,viv_s194};
              out_y_fifo_h_end   = viv_s196; 
              out_y_fifo_v_end   = viv_s196;
              out_y_fifo_write64 = 1'b1;
              viv_s202 = 2'b01;
           end
           else if (viv_s204 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {viv_s199,viv_s194};
              out_y_fifo_h_end   = viv_s201; 
              out_y_fifo_v_end   = viv_s201;
              out_y_fifo_write64 = 1'b1;
              viv_s202 = 2'b11;
           end           
        end
        4'b1_111, 4'b1_010: begin
           viv_s212 = viv_s1 & viv_s65 & 
                    viv_s4 & 
                    (viv_s5 | line_sens | slice_offset_sens_y);
           viv_s210 = viv_s1 & viv_s65 & viv_s8 & viv_s129 & 
                    ~viv_s14 &
                    viv_s11 & (viv_s12 | line_sens | slice_offset_sens_y);
           viv_s208 = viv_s1 & viv_s65 & viv_s8 & viv_s129 &
                    viv_s16 & viv_s72 &
                    ~viv_s22 & ~viv_s14 & ~viv_s78 &
                    viv_s19 & (viv_s20 | line_sens | slice_offset_sens_y);
           viv_s206 = viv_s1 & viv_s65 & viv_s8 & viv_s129 &
                    viv_s16 & viv_s72 & viv_s24 & viv_s136 &                    
                    ~viv_s30 & ~viv_s22 & ~viv_s14 & ~viv_s78 & ~viv_s142;
           if (viv_s212 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, 8'h00, viv_s67, viv_s3}; 
              out_y_fifo_h_end   = viv_s4; 
              out_y_fifo_v_end   = viv_s5;
              viv_s238      = viv_s6;
              out_y_fifo_write64 = 1'b1; 
              viv_s214  = 8'b0001;
              viv_s223 = 8'b0001;
           end
           else if (viv_s210 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00,
                                    viv_s131, viv_s10, viv_s67, viv_s3}; 
              out_y_fifo_h_end   = viv_s11; 
              out_y_fifo_v_end   = viv_s12;
              viv_s238      = viv_s13;
              out_y_fifo_write64 = 1'b1; 
              viv_s214  = 8'b0011;
              viv_s223 = 8'b0001;
              viv_s232 = 8'b0001;
           end
           else if (viv_s208 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, viv_s74, viv_s18, 
                                    viv_s131, viv_s10, viv_s67, viv_s3}; 
              out_y_fifo_h_end   = viv_s19; 
              out_y_fifo_v_end   = viv_s20;
              viv_s238      = viv_s21;
              out_y_fifo_write64 = 1'b1; 
              viv_s214  = 8'b0111;
              viv_s223 = 8'b0011;
              viv_s232 = 8'b0001;
           end
           else if (viv_s206 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {viv_s138, viv_s26, viv_s74, viv_s18, 
                                    viv_s131, viv_s10, viv_s67, viv_s3}; 
              out_y_fifo_h_end   = viv_s27; 
              out_y_fifo_v_end   = viv_s28;
              viv_s238      = viv_s29;
              out_y_fifo_write64 = 1'b1; 
              viv_s214  = 8'b1111;
              viv_s223 = 8'b0011;
              viv_s232 = 8'b0011;
           end
        end
        4'b1_001: begin
           viv_s213 = viv_s1 & 
                    viv_s4 & (viv_s5 | line_sens | slice_offset_sens_y);
           viv_s212 = viv_s1 & viv_s8 & 
                    ~viv_s14 & 
                    viv_s11 & (viv_s12 | line_sens | slice_offset_sens_y);
           viv_s211 = viv_s1 & viv_s8 & viv_s16 & 
                    ~viv_s14 & ~viv_s22 & 
                    viv_s19 & (viv_s20 | line_sens | slice_offset_sens_y);
           viv_s210 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & 
                    viv_s27 & (viv_s28 | line_sens | slice_offset_sens_y);
           viv_s209 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & viv_s32 & 
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    viv_s35 & (viv_s36 | line_sens | slice_offset_sens_y);
           viv_s208 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & viv_s32 & 
                    viv_s40 & 
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 & 
                    viv_s43 & (viv_s44 | line_sens | slice_offset_sens_y);
           viv_s207 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & viv_s40 & viv_s48 &
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 & ~viv_s54 &
                    viv_s51 & (viv_s52 | line_sens | slice_offset_sens_y);
           viv_s206 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & viv_s40 & viv_s48 & viv_s56 &
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 & ~viv_s54 & ~viv_s62;
           if (viv_s213 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, 8'h00, 8'h00, viv_s3}; 
              out_y_fifo_h_end   = viv_s4; 
              out_y_fifo_v_end   = viv_s5;
              viv_s238      = viv_s6;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b0001;
           end
           else if (viv_s212 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, 8'h00, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s11; 
              out_y_fifo_v_end   = viv_s12;
              viv_s238      = viv_s13;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b0011;
           end
           else if (viv_s211 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s19; 
              out_y_fifo_v_end   = viv_s20;
              viv_s238      = viv_s21;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b0111;
           end
           else if (viv_s210 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s27; 
              out_y_fifo_v_end   = viv_s28;
              viv_s238      = viv_s29;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b1111;
           end
           else if (viv_s209 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, 8'h00, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s35; 
              out_y_fifo_v_end   = viv_s36;
              viv_s238      = viv_s37;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b11111;
           end
           else if (viv_s208 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, 8'h00, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s43; 
              out_y_fifo_v_end   = viv_s44;
              viv_s238      = viv_s45;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b111111;
           end
           else if (viv_s207 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'h00, viv_s50, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s51; 
              out_y_fifo_v_end   = viv_s52;
              viv_s238      = viv_s53;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b1111111;
           end
           else if (viv_s206 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {viv_s58, viv_s50, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s59 | viv_s51 | viv_s43 | viv_s35 | 
                                   viv_s27 | viv_s19 | viv_s11 | viv_s4; 
              out_y_fifo_v_end   = viv_s5;
              viv_s238      = viv_s61;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b11111111;
           end
           viv_s221 = viv_s65 & viv_s129 & 
                     viv_s68 & (viv_s69 | line_sens | slice_offset_sens_cb);
           viv_s219 = viv_s65 & viv_s129 & viv_s72 & viv_s136 &
                     ~viv_s78 & ~viv_s142 &                 
                     viv_s75 & (viv_s76 | line_sens | slice_offset_sens_cb);
           viv_s217 = viv_s65 & viv_s129 & viv_s72 & viv_s136 &
                     viv_s80 & viv_s144 &
                     ~viv_s78 & ~viv_s142 & ~viv_s86 & ~viv_s150 &   
                     viv_s83 & (viv_s84 | line_sens | slice_offset_sens_cb);
           viv_s215 = viv_s65 & viv_s129 & viv_s72 & viv_s136 &
                     viv_s80 & viv_s144 & viv_s88 & viv_s152 & 
                     ~viv_s78 & ~viv_s142 & ~viv_s86 & ~viv_s150 & 
                     ~viv_s94 & ~viv_s158;
           if (viv_s221 & ~out_cb_fifo_full) begin
              if (nv21) begin 
                 out_cb_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                        8'h00, 8'h00, viv_s67, viv_s131}; 
              end
              else begin 
                 out_cb_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                        8'h00, 8'h00, viv_s131, viv_s67}; 
              end
              out_cb_fifo_h_end   = viv_s68; 
              out_cb_fifo_v_end   = viv_s69;
              viv_s239      = viv_s70;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b0001;
              viv_s232 = 8'b0001;
           end
           else if (viv_s219 & ~out_cb_fifo_full) begin
              if (nv21) begin 
                 out_cb_fifo_data  = {8'h00, 8'h00, 8'h00, 8'h00, 
                                      viv_s74, viv_s138, viv_s67, viv_s131}; 
              end
              else begin 
                 out_cb_fifo_data  = {8'h00, 8'h00, 8'h00, 8'h00, 
                                      viv_s138, viv_s74, viv_s131, viv_s67}; 
              end
              out_cb_fifo_h_end = viv_s139 | viv_s75 | viv_s132 | viv_s68;
              out_cb_fifo_v_end = viv_s69;
              viv_s239    = viv_s77;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b0011;
              viv_s232 = 8'b0011;
           end
           else if (viv_s217 & ~out_cb_fifo_full) begin
              if (nv21) begin 
                 out_cb_fifo_data  = {8'h00, 8'h00, viv_s82, viv_s146, 
                                      viv_s74, viv_s138, viv_s67, viv_s131}; 
              end
              else begin 
                 out_cb_fifo_data  = {8'h00, 8'h00, viv_s146, viv_s82, 
                                      viv_s138, viv_s74, viv_s131, viv_s67}; 
              end
              out_cb_fifo_h_end = viv_s147 | viv_s83 | viv_s139 | viv_s75 |
                                  viv_s132 | viv_s68; 
              out_cb_fifo_v_end = viv_s69;
              viv_s239    = viv_s85;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b0111;
              viv_s232 = 8'b0111;
           end
           else if (viv_s215 & ~out_cb_fifo_full) begin
              if (nv21) begin 
                 out_cb_fifo_data  = {viv_s90, viv_s154, viv_s82, viv_s146, 
                                      viv_s74, viv_s138, viv_s67, viv_s131}; 
              end
              else begin 
                 out_cb_fifo_data  = {viv_s154, viv_s90, viv_s146, viv_s82, 
                                      viv_s138, viv_s74, viv_s131, viv_s67}; 
              end
              out_cb_fifo_h_end = viv_s155 | viv_s91 | viv_s147 | viv_s83 |
                                  viv_s139 | viv_s75 | viv_s132 | viv_s68;
              out_cb_fifo_v_end = viv_s69;
              viv_s239    = viv_s93;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b1111;
              viv_s232 = 8'b1111;
           end
        end
        4'b1_000: begin
           viv_s213 = viv_s1 & 
                    (viv_s4 | viv_s5) & 
                    (viv_s4 | col_sens) & 
                    (viv_s5 | line_sens | slice_offset_sens_y);
           viv_s212 = viv_s1 & viv_s8 & 
                    ~viv_s14 & 
                    (viv_s11 | viv_s12) & 
                    (viv_s11 | col_sens) & 
                    (viv_s12 | line_sens | slice_offset_sens_y);
           viv_s211 = viv_s1 & viv_s8 & viv_s16 & 
                    ~viv_s14 & ~viv_s22 & 
                    (viv_s19 | viv_s20) & 
                    (viv_s19 | col_sens) & 
                    (viv_s20 | line_sens | slice_offset_sens_y);
           viv_s210 = viv_s1 & viv_s8 & viv_s16 & viv_s24 &
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & 
                    (viv_s27 | viv_s28) & 
                    (viv_s27 | col_sens) & 
                    (viv_s28 | line_sens | slice_offset_sens_y);
           viv_s209 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 &
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    (viv_s35 | viv_s36) & 
                    (viv_s35 | col_sens) & 
                    (viv_s36 | line_sens | slice_offset_sens_y);
           viv_s208 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & viv_s40 &
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 &
                    (viv_s43 | viv_s44) & 
                    (viv_s43 | col_sens) & 
                    (viv_s44 | line_sens | slice_offset_sens_y);
           viv_s207 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & viv_s40 & viv_s48 &
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 & ~viv_s54 &
                    (viv_s51 | viv_s52) & 
                    (viv_s51 | col_sens) & 
                    (viv_s52 | line_sens | slice_offset_sens_y);
           viv_s206 = viv_s1 & viv_s8 & viv_s16 & viv_s24 & 
                    viv_s32 & viv_s40 & viv_s48 & viv_s56 &
                    ~viv_s14 & ~viv_s22 & ~viv_s30 & ~viv_s38 & 
                    ~viv_s46 & ~viv_s54 & ~viv_s62;
           if (viv_s213 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'b00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, 8'h00, 8'h00, viv_s3}; 
              out_y_fifo_h_end   = viv_s4; 
              out_y_fifo_v_end   = viv_s5;
              viv_s238      = viv_s6;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b0001;
           end
           else if (viv_s212 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'b00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, 8'h00, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s11; 
              out_y_fifo_v_end   = viv_s12;
              viv_s238      = viv_s13;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b0011;
           end
           else if (viv_s211 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'b00, 8'h00, 8'h00, 8'h00, 
                                    8'h00, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s19; 
              out_y_fifo_v_end   = viv_s20;
              viv_s238      = viv_s21;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b0111;
           end
           else if (viv_s210 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'b00, 8'h00, 8'h00, 8'h00, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s27; 
              out_y_fifo_v_end   = viv_s28;
              viv_s238      = viv_s29;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b1111;
           end
           else if (viv_s209 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'b00, 8'h00, 8'h00, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s35; 
              out_y_fifo_v_end   = viv_s36;
              viv_s238      = viv_s37;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b11111;
           end
           else if (viv_s208 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'b00, 8'h00, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s43; 
              out_y_fifo_v_end   = viv_s44;
              viv_s238      = viv_s45;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b111111;
           end
           else if (viv_s207 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {8'b00, viv_s50, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s51; 
              out_y_fifo_v_end   = viv_s52;
              viv_s238      = viv_s53;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b1111111;
           end
           else if (viv_s206 & ~out_y_fifo_full) begin
              out_y_fifo_data    = {viv_s58, viv_s50, viv_s42, viv_s34, 
                                    viv_s26, viv_s18, viv_s10, viv_s3}; 
              out_y_fifo_h_end   = viv_s59 | viv_s51 | viv_s43 | viv_s35 | 
                                   viv_s27 | viv_s19 | viv_s11 | viv_s4; 
              out_y_fifo_v_end   = (viv_s59 | col_sens) & viv_s60;
              viv_s238      = viv_s61;
              out_y_fifo_write64 = 1'b1; 
              viv_s214 = 8'b11111111;
           end           
           viv_s222 = viv_s65 & 
                     (viv_s68 | viv_s69) & 
                     (viv_s68 | col_sens) & 
                     (viv_s69 | line_sens | slice_offset_sens_cb);
           viv_s221 = viv_s65 & viv_s72 & 
                     ~viv_s78 & 
                     (viv_s75 | viv_s76) & 
                     (viv_s75 | col_sens) & 
                     (viv_s76 | line_sens | slice_offset_sens_cb);
           viv_s220 = viv_s65 & viv_s72 & viv_s80 & 
                     ~viv_s78 & ~viv_s86 & 
                     (viv_s83 | viv_s84) & 
                     (viv_s83 | col_sens) & 
                     (viv_s84 | line_sens | slice_offset_sens_cb);
           viv_s219 = viv_s65 & viv_s72 & viv_s80 & viv_s88 & 
                     ~viv_s78 & ~viv_s86 & ~viv_s94 & 
                     (viv_s91 | viv_s92) & 
                     (viv_s91 | col_sens) & 
                     (viv_s92 | line_sens | slice_offset_sens_cb);
           viv_s218 = viv_s65 & viv_s72 & viv_s80 & viv_s88 & 
                     viv_s96 & 
                     ~viv_s78 & ~viv_s86 & ~viv_s94 & ~viv_s102 &
                     (viv_s99 | viv_s100) & 
                     (viv_s99 | col_sens) & 
                     (viv_s100 | line_sens | slice_offset_sens_cb);
           viv_s217 = viv_s65 & viv_s72 & viv_s80 & viv_s88 & 
                     viv_s96 & viv_s104 & 
                     ~viv_s78 & ~viv_s86 & ~viv_s94 & ~viv_s102 & 
                     ~viv_s110 &
                     (viv_s107 | viv_s108) & 
                     (viv_s107 | col_sens) & 
                     (viv_s108 | line_sens | slice_offset_sens_cb);
           viv_s216 = viv_s65 & viv_s72 & viv_s80 & viv_s88 & 
                     viv_s96 & viv_s104 & viv_s112 & 
                     ~viv_s78 & ~viv_s86 & ~viv_s94 & ~viv_s102 & 
                     ~viv_s110 & ~viv_s118 & 
                     (viv_s115 | viv_s116) & 
                     (viv_s115 | col_sens) & 
                     (viv_s116 | line_sens | slice_offset_sens_cb);
           viv_s215 = viv_s65 & viv_s72 & viv_s80 & viv_s88 &
                     viv_s96 & viv_s104 & viv_s112 & viv_s120 &
                     ~viv_s78 & ~viv_s86 & ~viv_s94 & ~viv_s102 & 
                     ~viv_s110 & ~viv_s118 & ~viv_s126;
           if (viv_s222 & ~out_cb_fifo_full) begin
              out_cb_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                     8'h00, 8'h00, 8'h00, viv_s67}; 
              out_cb_fifo_h_end   = viv_s68; 
              out_cb_fifo_v_end   = viv_s69;
              viv_s239      = viv_s70;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b0001;
           end
           else if (viv_s221 & ~out_cb_fifo_full) begin
              out_cb_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                     8'h00, 8'h00, viv_s74, viv_s67}; 
              out_cb_fifo_h_end   = viv_s75; 
              out_cb_fifo_v_end   = viv_s76;
              viv_s239      = viv_s77;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b0011;
           end
           else if (viv_s220 & ~out_cb_fifo_full) begin
              out_cb_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                     8'h00, viv_s82, viv_s74, viv_s67}; 
              out_cb_fifo_h_end   = viv_s83; 
              out_cb_fifo_v_end   = viv_s84;
              viv_s239      = viv_s85;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b0111;
           end
           else if (viv_s219 & ~out_cb_fifo_full) begin
              out_cb_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                     viv_s90, viv_s82, viv_s74, viv_s67}; 
              out_cb_fifo_h_end   = viv_s91; 
              out_cb_fifo_v_end   = viv_s92;
              viv_s239      = viv_s93;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b1111;
           end
           else if (viv_s218 & ~out_cb_fifo_full) begin
              out_cb_fifo_data    = {8'h00, 8'h00, 8'h00, viv_s98, 
                                     viv_s90, viv_s82, viv_s74, viv_s67}; 
              out_cb_fifo_h_end   = viv_s99; 
              out_cb_fifo_v_end   = viv_s100;
              viv_s239      = viv_s101;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b11111;
           end
           else if (viv_s217 & ~out_cb_fifo_full) begin
              out_cb_fifo_data    = {8'h00, 8'h00, viv_s106, viv_s98, 
                                     viv_s90, viv_s82, viv_s74, viv_s67}; 
              out_cb_fifo_h_end   = viv_s107;
              out_cb_fifo_v_end   = viv_s108;
              viv_s239      = viv_s109;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b111111;
           end
           else if (viv_s216 & ~out_cb_fifo_full) begin
              out_cb_fifo_data    = {8'h00, viv_s114, viv_s106, viv_s98, 
                                     viv_s90, viv_s82, viv_s74, viv_s67}; 
              out_cb_fifo_h_end   = viv_s115;
              out_cb_fifo_v_end   = viv_s116;
              viv_s239      = viv_s117;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b1111111;
           end
           else if (viv_s215 & ~out_cb_fifo_full) begin
              out_cb_fifo_data  = {viv_s122, viv_s114, viv_s106, viv_s98, 
                                   viv_s90, viv_s82, viv_s74, viv_s67}; 
              out_cb_fifo_h_end = viv_s123 | viv_s115 | viv_s107 | viv_s99 |
                                  viv_s91 | viv_s83 | viv_s75 | viv_s68 ; 
              out_cb_fifo_v_end   = (viv_s123 | col_sens) & viv_s124;
              viv_s239      = viv_s125;
              out_cb_fifo_write64 = 1'b1; 
              viv_s223 = 8'b11111111;
           end
           viv_s231 = viv_s129 & 
                     (viv_s132 | viv_s133) & 
                     (viv_s132 | col_sens) & 
                     (viv_s133 | line_sens | slice_offset_sens_cr);
           viv_s230 = viv_s129 & viv_s136 & 
                     ~viv_s142 & 
                     (viv_s139 | viv_s140) & 
                     (viv_s139 | col_sens) & 
                     (viv_s140 | line_sens | slice_offset_sens_cr);
           viv_s229 = viv_s129 & viv_s136 & viv_s144 & 
                     ~viv_s142 & ~viv_s150 & 
                     (viv_s147 | viv_s148) & 
                     (viv_s147 | col_sens) & 
                     (viv_s148 | line_sens | slice_offset_sens_cr);
           viv_s228 = viv_s129 & viv_s136 & viv_s144 & viv_s152 & 
                     ~viv_s142 & ~viv_s150 & ~viv_s158 & 
                     (viv_s155 | viv_s156) & 
                     (viv_s155 | col_sens) & 
                     (viv_s156 | line_sens | slice_offset_sens_cr);
           viv_s227 = viv_s129 & viv_s136 & viv_s144 & viv_s152 & 
                     viv_s160 & 
                     ~viv_s142 & ~viv_s150 & ~viv_s158 & ~viv_s166 & 
                     (viv_s163 | viv_s164) & 
                     (viv_s163 | col_sens) & 
                     (viv_s164 | line_sens | slice_offset_sens_cr);
           viv_s226 = viv_s129 & viv_s136 & viv_s144 & viv_s152 & 
                     viv_s160 & viv_s168 & 
                     ~viv_s142 & ~viv_s150 & ~viv_s158 & ~viv_s166 & 
                     ~viv_s174 & 
                     (viv_s171 | viv_s172) & 
                     (viv_s171 | col_sens) & 
                     (viv_s172 | line_sens | slice_offset_sens_cr);
           viv_s225 = viv_s129 & viv_s136 & viv_s144 & viv_s152 & 
                     viv_s160 & viv_s168 & viv_s176 & 
                     ~viv_s142 & ~viv_s150 & ~viv_s158 & ~viv_s166 & 
                     ~viv_s174 & ~viv_s182 & 
                     (viv_s179 | viv_s180) & 
                     (viv_s179 | col_sens) & 
                     (viv_s180 | line_sens | slice_offset_sens_cr);                   
           viv_s224 = viv_s129 & viv_s136 & viv_s144 & viv_s152 & 
                     viv_s160 & viv_s168 & viv_s176 & viv_s184 & 
                     ~viv_s142 & ~viv_s150 & ~viv_s158 & ~viv_s166 & 
                     ~viv_s174 & ~viv_s182 & ~viv_s190;
           if (viv_s231 & ~out_cr_fifo_full) begin
              out_cr_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                     8'h00, 8'h00, 8'h00, viv_s131}; 
              out_cr_fifo_h_end   = viv_s132; 
              out_cr_fifo_v_end   = viv_s133;
              viv_s240      = viv_s134;
              out_cr_fifo_write64 = 1'b1; 
              viv_s232 = 8'b0001;
           end
           else if (viv_s230 & ~out_cr_fifo_full) begin
              out_cr_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                     8'h00, 8'h00, viv_s138, viv_s131}; 
              out_cr_fifo_h_end   = viv_s139; 
              out_cr_fifo_v_end   = viv_s140;
              viv_s240      = viv_s141;
              out_cr_fifo_write64 = 1'b1; 
              viv_s232 = 8'b0011;
           end
           else if (viv_s229 & ~out_cr_fifo_full) begin
              out_cr_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00, 
                                     8'h00, viv_s146, viv_s138, viv_s131}; 
              out_cr_fifo_h_end   = viv_s147; 
              out_cr_fifo_v_end   = viv_s148;
              viv_s240      = viv_s149;
              out_cr_fifo_write64 = 1'b1; 
              viv_s232 = 8'b0111;
           end
           else if (viv_s228 & ~out_cr_fifo_full) begin
              out_cr_fifo_data    = {8'h00, 8'h00, 8'h00, 8'h00,
                                     viv_s154, viv_s146, viv_s138, viv_s131}; 
              out_cr_fifo_h_end   = viv_s155; 
              out_cr_fifo_v_end   = viv_s156;
              viv_s240      = viv_s157;
              out_cr_fifo_write64 = 1'b1; 
              viv_s232 = 8'b1111;
           end
           else if (viv_s227 & ~out_cr_fifo_full) begin
              out_cr_fifo_data    = {8'h00, 8'h00, 8'h00, viv_s162, 
                                     viv_s154, viv_s146, viv_s138, viv_s131}; 
              out_cr_fifo_h_end   = viv_s163; 
              out_cr_fifo_v_end   = viv_s164;
              viv_s240      = viv_s165;
              out_cr_fifo_write64 = 1'b1; 
              viv_s232 = 8'b11111;
           end
           else if (viv_s226 & ~out_cr_fifo_full) begin
              out_cr_fifo_data    = {8'h00, 8'h00, viv_s170, viv_s162, 
                                     viv_s154, viv_s146, viv_s138, viv_s131}; 
              out_cr_fifo_h_end   = viv_s171; 
              out_cr_fifo_v_end   = viv_s172;
              viv_s240      = viv_s173;
              out_cr_fifo_write64 = 1'b1; 
              viv_s232 = 8'b111111;
           end
           else if (viv_s225 & ~out_cr_fifo_full) begin
              out_cr_fifo_data    = {8'h00, viv_s178, viv_s170, viv_s162, 
                                     viv_s154, viv_s146, viv_s138, viv_s131}; 
              out_cr_fifo_h_end   = viv_s179; 
              out_cr_fifo_v_end   = viv_s180;
              viv_s240      = viv_s181;
              out_cr_fifo_write64 = 1'b1; 
              viv_s232 = 8'b1111111;
           end
           else if (viv_s224 & ~out_cr_fifo_full) begin
              out_cr_fifo_data  = {viv_s186, viv_s178, viv_s170, viv_s162, 
                                   viv_s154, viv_s146, viv_s138, viv_s131}; 
              out_cr_fifo_h_end = viv_s187 | viv_s179 | viv_s171 | viv_s163 |
                                  viv_s155 | viv_s147 | viv_s139 | viv_s132;
              out_cr_fifo_v_end   = (viv_s187 | col_sens) & viv_s188;
              viv_s240      = viv_s189;
              out_cr_fifo_write64 = 1'b1; 
              viv_s232 = 8'b11111111;
           end
        end
        4'b0_101: begin
           out_y_fifo_h_end  = viv_s1  & viv_s4; 
           out_y_fifo_v_end  = viv_s1  & viv_s5;
           viv_s238     = viv_s1  & viv_s6;
           out_cb_fifo_h_end = viv_s65 & viv_s68; 
           out_cb_fifo_v_end = viv_s65 & viv_s69;
           viv_s239    = viv_s65 & viv_s70;
           out_cr_fifo_h_end = out_cb_fifo_h_end; 
           out_cr_fifo_v_end = out_cb_fifo_v_end;
           viv_s240    = viv_s239;
           viv_s214  = 8'b0001;
           viv_s223 = 8'b0001;
           viv_s232 = 8'b0001;
        end
        default: begin  
           out_y_fifo_h_end  = viv_s1  & viv_s4; 
           out_y_fifo_v_end  = viv_s1  & viv_s5;
           viv_s238     = viv_s1  & viv_s6;
           out_cb_fifo_h_end = viv_s65 & viv_s68; 
           out_cb_fifo_v_end = viv_s65 & viv_s69;
           viv_s239    = viv_s65 & viv_s70;
           out_cr_fifo_h_end = viv_s129 & viv_s132; 
           out_cr_fifo_v_end = viv_s129 & viv_s133;
           viv_s240    = viv_s129 & viv_s134;
           viv_s214  = 8'b0001;
           viv_s223 = 8'b0001;
           viv_s232 = 8'b0001;
        end
      endcase 
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         cfg_in_update      <= 1'b0;
      end
      else if (soft_rst) begin
         cfg_in_update      <= 1'b0;
      end
      else begin
         if ((path_sel == 4'b1_000) || (path_sel[3] == 1'b0)) begin
            cfg_in_update <= viv_s235 & viv_s236 & viv_s237;
         end
         else if (path_sel == 4'b1_001) begin
            cfg_in_update <= viv_s235 & viv_s236;
         end
         else if (path_sel == 4'b1_011) begin
            cfg_in_update <= viv_s234;
         end
         else begin
            cfg_in_update <= viv_s235;
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s234 <= 1'b0;
         viv_s233  <= 1'b0;
      end
      else if (soft_rst) begin
         viv_s234 <= 1'b0;
         viv_s233  <= 1'b0;
      end
      else begin
         if (in_jpeg_ack & out_y_fifo_v_end & auto_update) begin
            viv_s234 <= 1'b1;
            viv_s233  <= 1'b1;
         end
         else if (cfg_out_update) begin
            viv_s234 <= 1'b0;
            viv_s233  <= 1'b0;
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s235 <= 1'b0;
      end
      else if (soft_rst) begin
         viv_s235 <= 1'b0;
      end
      else begin
         if (|viv_s214 & out_y_fifo_h_end & out_y_fifo_v_end & 
             (viv_s238 || auto_update) ) begin
            viv_s235 <= 1'b1;
         end
         else if (cfg_out_update) begin
            viv_s235 <= 1'b0;
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s236 <= 1'b0;
      end
      else if (soft_rst) begin
         viv_s236 <= 1'b0;
      end
      else begin
         if (|viv_s223 & out_cb_fifo_h_end & out_cb_fifo_v_end & 
             (viv_s239 || auto_update) ) begin
            viv_s236 <= 1'b1;
         end
         else if (cfg_out_update) begin
            viv_s236 <= 1'b0;
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (~reset_n) begin
         viv_s237 <= 1'b0;
      end
      else if (soft_rst) begin
         viv_s237 <= 1'b0;
      end
      else begin
         if (|viv_s232 & out_cr_fifo_h_end & out_cr_fifo_v_end & 
             (viv_s240 || auto_update) ) begin
            viv_s237 <= 1'b1;
         end
         else if (cfg_out_update) begin
            viv_s237 <= 1'b0;
         end
      end
   end
endmodule
