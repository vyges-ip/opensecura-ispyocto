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

module vsisp_mi_dp_raw
(
clk,
reset_n,
soft_rst,
rformat,
ralignen,
rpadpseud,
in_raw,
in_h_end,
in_v_end,
in_ack,
in_val,
out_h_end,
out_v_end,
out_fifo_full,
out_val,
out_raw,
out_cfg_upd,
out_duo,
cfg_in_update,
cfg_out_update,
auto_update,
path_enable
);
parameter pack_width=128;
parameter raw_width = 16;
input clk, reset_n;
input soft_rst;
input [3:0] rformat;
input [1:0] ralignen;
input rpadpseud;
input [raw_width-1: 0] in_raw;
input in_h_end, in_v_end, in_val;
output out_h_end, out_v_end;
output out_val;
output out_cfg_upd;
output out_duo;
output in_ack;
output [pack_width-1: 0] out_raw;
input out_fifo_full;
input path_enable;
output cfg_in_update;
input cfg_out_update;
input auto_update;
wire cfg_out_update;
reg cfg_in_update;
reg [pack_width-1+12: 0] viv_s0;
wire [pack_width-1: 0] viv_s1;
wire viv_s2 = in_val & path_enable;
wire viv_s3 = in_h_end & viv_s2;
wire viv_s4 = in_v_end & viv_s3;
wire viv_s5 = ~out_fifo_full;
integer i;
parameter  fmtw=5;
localparam i8_w  =8;
localparam i10_w =10;
localparam i12_w =12;
localparam i14_w =14;
localparam i16_w =16;
parameter RAW8 =5'bxx000,r8i =5'd0;
parameter RAW10=5'b00001,r10i=5'd1;
parameter RAW12=5'b00010,r12i=5'd2;
parameter RAW14=5'b00011,r14i=5'd3;
parameter RAW16=5'bxx100,r16i=5'd4;
parameter RAW10ALN={2'b01, RAW10[2:0]}, r10ai=5'd5;
parameter RAW12ALN={2'b01, RAW12[2:0]}, r12ai=5'd6;
parameter RAW14ALN={2'b01, RAW14[2:0]}, r14ai=5'd7;
parameter RAW10ALN16={2'b1x, RAW10[2:0]}, r10ahi=5'd8;
parameter RAW12ALN16={2'b1x, RAW12[2:0]}, r12ahi=5'd9;
parameter RAW14ALN16={2'b1x, RAW14[2:0]}, r14ahi=5'd10;
parameter [11*fmtw-1:0] format_cfg= {RAW14ALN16, RAW12ALN16, RAW10ALN16, 
                                  RAW14ALN,RAW12ALN,RAW10ALN,
                                  RAW16,RAW14,RAW12, RAW10, RAW8};
reg [pack_width-1:0] viv_s6;
reg [1:0] viv_s7;
wire viv_s8;
wire viv_s9;
assign viv_s9 = |viv_s7[1:0];
assign viv_s8 = viv_s9 & viv_s5;
reg [1:0] viv_s10;
wire [1:0] viv_s11;
assign viv_s11 = {1'b0,viv_s7[1]};
wire [4:0] viv_s12={ralignen[1:0],rformat[2:0]};
wire viv_s13;
assign viv_s13=viv_s2&in_ack;
wire viv_s14;
assign viv_s14 = out_val & viv_s5;
reg viv_s15, viv_s16;
reg [raw_width-1:0] viv_s17;
always @(posedge clk or negedge reset_n)begin
    if(~reset_n)begin
        viv_s16 <= 1'b0;
    end
    else begin 
      if(~viv_s16)begin
        viv_s16 <= viv_s4;
      end
      else if(out_v_end & viv_s14) begin
        viv_s16 <= 1'b0;
      end
    end
end
always @(posedge clk or negedge reset_n)begin
    if(~reset_n)begin
        viv_s17 <= 1'b0;
        viv_s15 <=1'b0;
    end
    else begin 
        viv_s17 <= viv_s13 ? in_raw: viv_s17;
        viv_s15  <= viv_s13 ? viv_s3 : viv_s15;
    end
end
reg [3:0] viv_s18;
reg [3:0] viv_s19;
wire [3:0] viv_s20;
reg [2:0] viv_s21;
reg [2:0] viv_s22;
wire [2:0] viv_s23;
assign viv_s20=viv_s18 + 1'b1;
assign viv_s23 =  viv_s21 + 1'b1;
wire [raw_width-1:0] viv_s24 = viv_s12[2:0]== RAW10[2:0] ? in_raw[raw_width-1-:i10_w]:
                                  viv_s12[2:0]== RAW12[2:0] ? in_raw[raw_width-1-:i12_w]:
                                  viv_s12[2:0]== RAW14[2:0] ? in_raw[raw_width-1-:i14_w]:
                                  in_raw[raw_width-1:0];
`ifdef DEBUG
integer infocnt=0;
initial begin
forever begin
  @(posedge clk);
  if(infocnt > 1000) $finish;
end
end
`endif
always @(*)begin
    viv_s19 = viv_s18;
    viv_s22 = viv_s21;
    viv_s19 = viv_s18;
    viv_s10 = viv_s14? viv_s11: viv_s7;
    if(viv_s13)begin
        casex(viv_s12[4:0])
            RAW8:begin
                viv_s19 = viv_s20;
                viv_s10=&viv_s18[3:0];
            end
            RAW10:begin
                if(viv_s21==4 && viv_s18==11 || viv_s18==12)begin 
                    viv_s19 = 0;
                    if(viv_s21==4) viv_s22 = 0;
                    else viv_s22 = viv_s23;
                end
                else viv_s19 = viv_s20;
                if(viv_s18==12) viv_s10=2'b10;
                else if(viv_s21==4 && viv_s18==11) viv_s10=2'b01;
            end
            RAW12:begin
                if(viv_s21==2 && viv_s18==9 || viv_s18==10)begin
                    viv_s19 =0;
                    if(viv_s21==2) viv_s22 = 0;
                    else viv_s22 = viv_s23;
                end
                else viv_s19 = viv_s20;
                if(viv_s18==10) viv_s10=2'b10;
                else if(viv_s21==2 && viv_s18==9) viv_s10=2'b01;
            end
            RAW14:begin
                if(viv_s18==9 || viv_s21!=0&&viv_s18==8 )begin
                    viv_s19 = 0;
                    if(viv_s21==6) viv_s22 = 0;
                    else viv_s22 = viv_s23;
                end
                else viv_s19 = viv_s20;
                if(viv_s21==6 && viv_s18==8) viv_s10=2'b01;
                else if(viv_s18==9 || viv_s21!=0&&viv_s18==8) viv_s10=2'b10;
            end
            RAW10ALN16,RAW12ALN16,RAW14ALN16,RAW16:begin
                viv_s19 = viv_s20[2:0];
                viv_s10=&viv_s18[2:0];
            end
            RAW10ALN:begin
                if(viv_s18==11) begin
                    viv_s19 =0;
                    viv_s10=2'b01;
                end
                else viv_s19 = viv_s20;
            end
            RAW12ALN:begin
                if(viv_s18==9) begin
                    viv_s19 = 0;
                    viv_s10=2'b01;
                end
                else viv_s19 = viv_s20;
            end
            RAW14ALN:begin
                if(viv_s18==8) begin
                    viv_s19 = 0;
                    viv_s10=2'b01;
                end
                else viv_s19 = viv_s20;
            end
            default:;
        endcase
    end
if (viv_s13) begin
    if(|viv_s10)begin
        if(viv_s3) viv_s10 = viv_s10;
        else viv_s10 = 2'b01;
    end
    else if(viv_s3) viv_s10 = 2'b01;
    else viv_s10 = viv_s11;
    if(viv_s3) viv_s19 = 0;
    else viv_s19 = viv_s19;
end
    if(viv_s7[1:0]==2'b10 && viv_s14==1'b1 || viv_s10[1:0]==2'b01 && viv_s3==1'b1 && viv_s13) viv_s22 = 3'd0;
end
reg [6:0] viv_s25;
reg [7:0] viv_s26;
reg viv_s27, out_duo;
always @(*)begin
    viv_s26 = {1'b0,viv_s25};
    viv_s27 = out_duo;
    if(viv_s13)begin
        casex(viv_s12[4:0])
            RAW8:begin
              viv_s26 = {1'b0,viv_s25} + i8_w;
            end
            RAW10:begin
              viv_s26 = {1'b0,viv_s25} + i10_w;
            end
            RAW12:begin
              viv_s26 = {1'b0,viv_s25} + i12_w;
            end
            RAW14:begin
              viv_s26 = {1'b0,viv_s25} + i14_w;
            end
            RAW10ALN16,RAW12ALN16,RAW14ALN16,RAW16:begin
              viv_s26 = {1'b0,viv_s25} + i16_w;
            end
            RAW10ALN:begin
                if(viv_s18>=8'h05) begin
                   viv_s26 = 8'h41;
                end
                else begin
                   viv_s26 = 8'h00;
                end
            end
            RAW12ALN:begin
                if(viv_s18>=8'h04) begin
                   viv_s26 = 8'h41;
                end
                else begin
                   viv_s26 = 8'h00;
                end
            end
            RAW14ALN:begin
                if(viv_s18>=8'h03) begin
                   viv_s26 = 8'h41;
                end
                else begin
                   viv_s26 = 8'h00;
                end
            end
            default:;
        endcase
    end
if (viv_s13) begin
    if(viv_s26>8'h40)begin
      viv_s27 = 1'b1;
    end
    else begin
      viv_s27 = 1'b0;
    end
    if(viv_s3) viv_s26 = 8'h0;
end
else if (viv_s14) begin
  viv_s27 = 1'b0;
end
end
always @(posedge clk or negedge reset_n)begin
  if(!reset_n)begin
    out_duo <= 1'b0;
    viv_s25 <= 7'h0;
  end
  else begin
    out_duo <= viv_s27;
    viv_s25 <= viv_s26[6:0];
  end
end
reg [3:0] viv_s28;
reg [pack_width-1+i14_w:0] viv_s29;
reg [pack_width-1+i14_w:0] viv_s30;
parameter i10_rem_w= {4'd8, 4'd6, 4'd4, 4'd2, 4'd0};
parameter i12_rem_w= {4'd8,4'd4,4'd0};
parameter i14_rem_w= {4'd2, 4'd4, 4'd6, 4'd8, 4'd10, 4'd12, 4'd0};
always @(*)begin
    viv_s29 = viv_s30;
    casex (viv_s12[4:0])
        format_cfg[r8i*fmtw+:fmtw]:begin
            for(i=0;i<16;i=i+1)begin
                if(viv_s18==i && viv_s13 )begin
                    viv_s29[i*i8_w+:i8_w]=in_raw[raw_width-1-:i8_w];
                end
                else if(viv_s8==1'b1)begin
                    viv_s29[i*i8_w+:i8_w]={(i8_w){rpadpseud}};
                end
            end
        end
        format_cfg[r10i*fmtw+:fmtw]:begin
            case(viv_s21)
            3'b000:begin
                for(i=0;i<13;i=i+1)begin
                    if(viv_s18==i && viv_s13 )begin
                        viv_s29[i*i10_w+:i10_w] =in_raw[raw_width-1-:i10_w];
                    end
                    else if(viv_s8==1'b1)begin
                        viv_s29[i*i10_w+:i10_w] ={(i10_w){rpadpseud}};
                    end
                end
            end
            3'b001:begin
                if(viv_s8==1)begin
                    viv_s29[i10_rem_w[1*4+:4]-1:0]=viv_s17[raw_width-1-:i10_rem_w[1*4+:4]];
                end
                else viv_s29[i10_rem_w[1*4+:4]-1:0]=viv_s30[i10_rem_w[1*4+:4]-1:0];
                for(i=0;i<13;i=i+1)begin
                    if(viv_s18==i && viv_s13 )begin
                        viv_s29[i*i10_w+i10_rem_w[1*4+:4]+:i10_w] = in_raw[raw_width-1-:i10_w];
                    end
                    else if(viv_s8==1'b1)begin
                        viv_s29[i*i10_w+i10_rem_w[1*4+:4]+:i10_w] = {(i10_w){rpadpseud}};
                    end
                end
            end
            3'b010:begin
                if(viv_s8==1)begin
                    viv_s29[i10_rem_w[2*4+:4]-1:0]=viv_s17[raw_width-1-:i10_rem_w[2*4+:4]];
                end
                else viv_s29[i10_rem_w[2*4+:4]-1:0]=viv_s30[i10_rem_w[2*4+:4]-1:0];
                for(i=0;i<13;i=i+1)begin
                    if(viv_s18==i && viv_s13 )begin
                        viv_s29[i*i10_w+i10_rem_w[2*4+:4]+:i10_w] = in_raw[raw_width-1-:i10_w];
                    end
                    else if(viv_s8==1'b1)begin
                        viv_s29[i*i10_w+i10_rem_w[2*4+:4]+:i10_w] = {(i10_w){rpadpseud}};
                    end
                end
            end
            3'b011:begin
                if(viv_s8==1)begin
                    viv_s29[i10_rem_w[3*4+:4]-1:0]=viv_s17[raw_width-1-:i10_rem_w[3*4+:4]];
                end
                else viv_s29[i10_rem_w[3*4+:4]-1:0]=viv_s30[i10_rem_w[3*4+:4]-1:0];
                for(i=0;i<13;i=i+1)begin
                    if(viv_s18==i && viv_s13 )begin
                        viv_s29[i*i10_w+i10_rem_w[3*4+:4]+:i10_w] = in_raw[raw_width-1-:i10_w];
                    end
                    else if(viv_s8==1'b1)begin
                        viv_s29[i*i10_w+i10_rem_w[3*4+:4]+:i10_w] = {(i10_w){rpadpseud}};
                    end
                end
            end
            3'b100:begin
                if(viv_s8==1)begin
                    viv_s29[i10_rem_w[4*4+:4]-1:0]=viv_s17[raw_width-1-:i10_rem_w[4*4+:4]];
                end
                else viv_s29[i10_rem_w[4*4+:4]-1:0]=viv_s30[i10_rem_w[4*4+:4]-1:0];
                for(i=0;i<13;i=i+1)begin
                    if(viv_s18==i && viv_s13 )begin
                        viv_s29[i*i10_w+i10_rem_w[4*4+:4]+:i10_w] = in_raw[raw_width-1-:i10_w];
                    end
                    else if(viv_s8==1'b1)begin
                        viv_s29[i*i10_w+i10_rem_w[4*4+:4]+:i10_w] = {(i10_w){rpadpseud}};
                    end
                end
            end
            default:;
            endcase
        end
        format_cfg[r12i*fmtw+:fmtw]:
            case(viv_s21)
                3'b000:begin
                    for(i=0;i<11;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i12_w+i12_rem_w[0*4+:4]+:i12_w] = in_raw[raw_width-1-:i12_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i12_w+i12_rem_w[0*4+:4]+:i12_w] = {(i12_w){1'b0}};
                        end
                    end
                end
                3'b001:begin
                    if(viv_s8==1'b1) begin
                        viv_s29[i12_rem_w[1*4+:4]-1:0] = viv_s17[raw_width-1-:i12_rem_w[1*4+:4]];
                    end
                    else begin
                        viv_s29[i12_rem_w[1*4+:4]-1:0] = viv_s30[i12_rem_w[1*4+:4]-1:0];
                    end
                    for(i=0;i<11;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i12_w+i12_rem_w[1*4+:4]+:i12_w] = in_raw[raw_width-1-:i12_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i12_w+i12_rem_w[1*4+:4]+:i12_w] = {(i12_w){1'b0}};
                        end
                    end
                end
                3'b010:begin
                    if(viv_s8==1'b1) begin
                        viv_s29[i12_rem_w[2*4+:4]-1:0] = viv_s17[raw_width-1-:i12_rem_w[2*4+:4]];
                    end
                    else begin
                        viv_s29[i12_rem_w[2*4+:4]-1:0] = viv_s30[i12_rem_w[2*4+:4]-1:0];
                    end
                    for(i=0;i<11;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i12_w+i12_rem_w[2*4+:4]+:i12_w] = in_raw[raw_width-1-:i12_w];
                            `ifdef DEBUG
                            $display($realtime,,"if1: the current viv_s18 =%h, i=%h, in_raw[raw_width-1-:i12_w]=%h", viv_s18, i, in_raw[raw_width-1-:i12_w]);
                            $display($realtime,,"viv_s29[%h*i12_w+i12_rem_w[2*4+:4]+:i12_w]=%h",i,viv_s29[i*i12_w+i12_rem_w[2*4+:4]+:i12_w]);
                            $display($realtime,,"viv_s29=%h",viv_s29);
                            infocnt++;
                            `endif
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i12_w+i12_rem_w[2*4+:4]+:i12_w] = {(i12_w){1'b0}};
                            `ifdef DEBUG
                            $display($realtime,,"if2: the current viv_s18 =%h, i=%h, in_raw[raw_width-1-:i12_w]=%h", viv_s18, i, in_raw[raw_width-1-:i12_w]);
                            $display($realtime,,"viv_s29[%h*i12_w+i12_rem_w[2*4+:4]+:i12_w]=%h",i,viv_s29[i*i12_w+i12_rem_w[2*4+:4]+:i12_w]);
                            $display($realtime,,"viv_s29=%h",viv_s29);
                            infocnt++;
                            `endif
                        end
                    end
                end
                default:;
            endcase
        format_cfg[r14i*fmtw+:fmtw]:
            case(viv_s21)
                3'd0:begin
                    for(i=0;i<10;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i14_w+i14_rem_w[0*4+:4]+:i14_w] = in_raw[raw_width-1-:i14_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i14_w+i14_rem_w[0*4+:4]+:i14_w] = {(i14_w){rpadpseud}};
                        end
                    end
                end
                3'd1:begin
                    if(viv_s8==1'b1)begin
                        viv_s29[i14_rem_w[1*4+:4]-1:0] = viv_s17[raw_width-1-:i14_rem_w[1*4+:4]];
                    end
                    else begin
                        viv_s29[i14_rem_w[1*4+:4]-1:0] = viv_s30[i14_rem_w[1*4+:4]-1:0];
                    end
                    for(i=0;i<9;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i14_w+i14_rem_w[1*4+:4]+:i14_w] = in_raw[raw_width-1-:i14_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i14_w+i14_rem_w[1*4+:4]+:i14_w] = {(i14_w){rpadpseud}};
                        end
                    end
                end
                3'd2:begin
                    if(viv_s8==1'b1)begin
                        viv_s29[i14_rem_w[2*4+:4]-1:0] = viv_s17[raw_width-1-:i14_rem_w[2*4+:4]];
                    end
                    else begin
                        viv_s29[i14_rem_w[2*4+:4]-1:0] = viv_s30[i14_rem_w[2*4+:4]-1:0];
                    end
                    for(i=0;i<9;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i14_w+i14_rem_w[2*4+:4]+:i14_w] = in_raw[raw_width-1-:i14_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i14_w+i14_rem_w[2*4+:4]+:i14_w] = {(i14_w){rpadpseud}};
                        end
                    end
                end
                3'd3:begin
                    if(viv_s8==1'b1)begin
                        viv_s29[i14_rem_w[3*4+:4]-1:0] = viv_s17[raw_width-1-:i14_rem_w[3*4+:4]];
                    end
                    else begin
                        viv_s29[i14_rem_w[3*4+:4]-1:0] = viv_s30[i14_rem_w[3*4+:4]-1:0];
                    end
                    for(i=0;i<9;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i14_w+i14_rem_w[3*4+:4]+:i14_w] = in_raw[raw_width-1-:i14_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i14_w+i14_rem_w[3*4+:4]+:i14_w] = {(i14_w){rpadpseud}};
                        end
                    end
                end
                3'd4:begin
                    if(viv_s8==1'b1)begin
                        viv_s29[i14_rem_w[4*4+:4]-1:0] = viv_s17[raw_width-1-:i14_rem_w[4*4+:4]];
                    end
                    else begin
                        viv_s29[i14_rem_w[4*4+:4]-1:0] = viv_s30[i14_rem_w[4*4+:4]-1:0];
                    end
                    for(i=0;i<9;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i14_w+i14_rem_w[4*4+:4]+:i14_w] = in_raw[raw_width-1-:i14_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i14_w+i14_rem_w[4*4+:4]+:i14_w] = {(i14_w){rpadpseud}};
                        end
                    end
                end
                3'd5:begin
                    if(viv_s8==1'b1)begin
                        viv_s29[i14_rem_w[5*4+:4]-1:0] = viv_s17[raw_width-1-:i14_rem_w[5*4+:4]];
                    end
                    else begin
                        viv_s29[i14_rem_w[5*4+:4]-1:0] = viv_s30[i14_rem_w[5*4+:4]-1:0];
                    end
                    for(i=0;i<9;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i14_w+i14_rem_w[5*4+:4]+:i14_w] = in_raw[raw_width-1-:i14_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i14_w+i14_rem_w[5*4+:4]+:i14_w] = {(i14_w){rpadpseud}};
                        end
                    end
                end
                3'd6:begin
                    if(viv_s8==1'b1)begin
                        viv_s29[i14_rem_w[6*4+:4]-1:0] = viv_s17[raw_width-1-:i14_rem_w[6*4+:4]];
                    end
                    else begin
                        viv_s29[i14_rem_w[6*4+:4]-1:0] = viv_s30[i14_rem_w[6*4+:4]-1:0];
                    end
                    for(i=0;i<9;i=i+1)begin
                        if(viv_s18==i && viv_s13 )begin
                            viv_s29[i*i14_w+i14_rem_w[6*4+:4]+:i14_w] = in_raw[raw_width-1-:i14_w];
                        end
                        else if(viv_s8==1'b1)begin
                            viv_s29[i*i14_w+i14_rem_w[6*4+:4]+:i14_w] = {(i14_w){rpadpseud}};
                        end
                    end
                end
                default:begin
                    viv_s29 = viv_s30;
                end
            endcase
        format_cfg[r16i*fmtw+:fmtw]:begin
            for(i=0;i<8;i=i+1)begin
                if(viv_s18==i && viv_s13 )begin
                    viv_s29[i*i16_w+:i16_w]=in_raw[raw_width-1-:i16_w];
                end
                else if(viv_s8==1'b1)begin
                    viv_s29[i*i16_w+:i16_w]={(i16_w){rpadpseud}};
                end
            end
        end
        format_cfg[r10ahi*fmtw+:fmtw],format_cfg[r12ahi*fmtw+:fmtw],format_cfg[r14ahi*fmtw+:fmtw]:begin
            for(i=0;i<8;i=i+1)begin
                if(viv_s18==i && viv_s13 )begin
                    viv_s29[i*i16_w+:i16_w]=viv_s24;
                end
                else if(viv_s8==1'b1)begin
                    viv_s29[i*i16_w+:i16_w]={(i16_w){rpadpseud}};
                end
            end
        end
        format_cfg[r10ai*fmtw+:fmtw]:begin
            for(i=0;i<12;i=i+1)begin
                if(viv_s18==i && viv_s13 )begin
                    viv_s29[i*i10_w+(i/3)*2+:i10_w] = in_raw[raw_width-1-:i10_w];
                end
                else if(viv_s8==1'b1) begin
                    viv_s29[i*i10_w+(i/3)*2+:i10_w] = {(i10_w){rpadpseud}};
                end
            end
        end
        format_cfg[r12ai*fmtw+:fmtw]:begin
            for(i=0;i<10;i=i+1)begin
                if(viv_s18==i && viv_s13)begin
                  viv_s29[i*i12_w+(i/5)*4+:i12_w] = in_raw[raw_width-1-:i12_w];
                end
                else if(viv_s8 == 1'b1)begin
                  viv_s29[i*i12_w+(i/5)*4+:i12_w] = {(i12_w){rpadpseud}};
                end
            end
        end
        format_cfg[r14ai*fmtw+:fmtw]:begin
            for(i=0;i<9;i=i+1)begin
                if(viv_s18==i && viv_s13)begin
                  viv_s29[i*i14_w+:i14_w] = in_raw[raw_width-1-:i14_w];
                end
                else if(viv_s8==1'b1)begin
                  viv_s29[i*i14_w+:i14_w] = {(i14_w){rpadpseud}};
                end
            end
        end
        default:;
    endcase
end
always @(posedge clk or negedge reset_n)begin
    if(!reset_n)begin
        viv_s30[pack_width-1+i14_w:pack_width]<={(i14_w){1'b0}};
        viv_s30[pack_width-1:0]<={(pack_width){1'b0}};
        viv_s18 <= 4'b0;
        viv_s21 <= 3'b0;
        viv_s7 <= 2'b0;
    end
    else begin
        viv_s30[pack_width-1+i14_w:pack_width]<={(i14_w){1'b0}};
        viv_s30[pack_width-1:0]<=viv_s29[pack_width-1:0];
        viv_s18 <= viv_s19;
        viv_s21 <= viv_s22;
        viv_s7 <= viv_s10;
    end
end
reg viv_s31;
always @(posedge clk or negedge reset_n) begin
   if (~reset_n) begin
      cfg_in_update      <= 1'b0;
   end
   else if (soft_rst) begin
      cfg_in_update      <= 1'b0;
   end
   else begin
      cfg_in_update <= viv_s31;
   end
end
always @(posedge clk or negedge reset_n) begin
   if (~reset_n) begin
      viv_s31      <= 1'b0;
   end
   else if (soft_rst) begin
      viv_s31      <= 1'b0;
   end
   else begin
      if(out_val & viv_s5 & out_v_end & out_h_end  & (out_cfg_upd | auto_update))
         viv_s31 <= 1'b1;
      else if (cfg_out_update)begin
         viv_s31 <= 1'b0;
      end
   end
end
assign out_val = viv_s9 & viv_s5;
assign out_h_end = viv_s15 && viv_s7[1]!=1'b1;
assign out_raw = viv_s30;
assign in_ack = viv_s7[1:0]==2'b00 || (~viv_s7[1]&viv_s5);
assign out_v_end = (viv_s16&& out_h_end);
assign out_cfg_upd = 1'b0;
endmodule
