//****************************************************************************
// 
// Copyright 2023 Vivante Corp.
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

module vsisp_isp_tpg_cfg
(
    input   wire          clk,			
    input   wire          rst_n,		
    input   wire          tpg_en,	    
    input   wire [2:0]    img_num,		
    input   wire [1:0]    cfa_pat,		
    input   wire [1:0]    color_depth,  
    input   wire          def_sync,		
    input   wire          max_sync,		
    input   wire [1:0]    tpg_resolution,
    input   wire [15:0]   frame_num,
    input   wire [13:0]   vtotal_in,
    input   wire [13:0]   htotal_in,
    input   wire [13:0]   v_act_in,
    input   wire [13:0]   h_act_in,
    input   wire [13:0]   fp_v_in,
    input   wire [13:0]   fp_h_in, 
    input   wire [13:0]   bp_v_in,
    input   wire [13:0]   bp_h_in,
    input   wire [13:0]   vs_w_in,
    input   wire [13:0]   hs_w_in,
    input   wire [13:0]   line_gap_in,
    input   wire [13:0]   pix_gap_in,
    input   wire [13:0]   pix_gap_std_in,
    input   wire [31:0]   random_seed_in,
    output  reg  [ 15:0]  cfa_out,
    output  reg           vs_out,		
    output  reg           hs_out,		
    output  reg           vde_out,		
    output  reg           hde_out		
);
wire [31:0]	  viv_s0;
wire [13:0]   viv_s1;
wire [13:0]   viv_s2;
wire          viv_s3;
wire          viv_s4;
wire          viv_s5;
wire          viv_s6;
wire          viv_s7;
wire          viv_s8;
reg  [13:0]   viv_s9;
reg  [13:0]   viv_s10;
reg  [13:0]   viv_s11;
reg  [13:0]   viv_s12;
reg  [13:0]   viv_s13;
reg  [13:0]   viv_s14; 
reg  [13:0]   viv_s15;
reg  [13:0]   viv_s16;
reg  [13:0]   viv_s17;
reg  [13:0]   viv_s18;
reg  [13:0]   viv_s19;
reg  [13:0]   viv_s20;
reg  [13:0]   viv_s21;
reg  [13:0]   viv_s22;
reg  [13:0]   viv_s23;
reg  [7:0]    viv_s24;
reg  [7:0]    viv_s25;
reg  [7:0]    viv_s26;
reg  [13:0]   viv_s27;
reg           viv_s28;
reg           viv_s29;
reg           viv_s30;
reg           viv_s31;
reg           viv_s32;
reg           viv_s33;
reg  [7:0]    viv_s34;
reg           viv_s35;
reg           viv_s36;
reg           viv_s37;
reg           viv_s38;
reg           viv_s39;
reg           viv_s40;
reg           viv_s41;
reg           viv_s42;
reg           viv_s43;
vsisp_isp_pseudo_random_gen u_random_gen
(
		.q		(viv_s0[31:0]),
		.clk	(clk),
		.rst_n	(rst_n),
        .random_seed_en(viv_s8),
        .ce     (viv_s6),
		.seed   (random_seed_in[31:0])
);
always @(*)
begin
    case(tpg_resolution[1:0])
        2'b00:  begin
                    viv_s9[13:0]      = 14'd1968;
                    viv_s10[13:0]      = 14'd2844;
                    viv_s11[13:0]       = 14'd1080;
                    viv_s12[13:0]       = 14'd1920;
                    viv_s17[13:0]        = 14'd2;
                    viv_s18[13:0]        = 14'd308;
                    viv_s19[13:0]    = 14'd360;
                    viv_s20[13:0]     = 14'd640;
                    viv_s21[13:0] = 14'd240;
                    viv_s13[13:0]        = 14'd5;
                    viv_s14[13:0]        = 14'd308;
                    viv_s15[13:0]        = 14'd881;
                    viv_s16[13:0]        = 14'd308;
                end
        2'b01:  begin
                    viv_s9[13:0]      = 14'd1968;
                    viv_s10[13:0]      = 14'd2844;
                    viv_s11[13:0]       = 14'd720;
                    viv_s12[13:0]       = 14'd1280;
                    viv_s17[13:0]        = 14'd2;
                    viv_s18[13:0]        = 14'd521;
                    viv_s19[13:0]    = 14'd240;
                    viv_s20[13:0]     = 14'd426;
                    viv_s21[13:0] = 14'd160;
                    viv_s13[13:0]        = 14'd5;
                    viv_s14[13:0]        = 14'd521;
                    viv_s15[13:0]        = 14'd1241;
                    viv_s16[13:0]        = 14'd521;
                end
        2'b10:  begin
                    viv_s9[13:0]      = 14'd3048;
                    viv_s10[13:0]      = 14'd4764;
                    viv_s11[13:0]       = 14'd2160;
                    viv_s12[13:0]       = 14'd3840;
                    viv_s17[13:0]        = 14'd2;
                    viv_s18[13:0]        = 14'd308;
                    viv_s19[13:0]    = 14'd720;
                    viv_s20[13:0]     = 14'd1280;
                    viv_s21[13:0] = 14'd480;
                    viv_s13[13:0]        = 14'd5;
                    viv_s14[13:0]        = 14'd308;
                    viv_s15[13:0]        = 14'd881;
                    viv_s16[13:0]        = 14'd308;
                end
        2'b11:  begin
                    viv_s9[13:0]      = vtotal_in[13:0];
                    viv_s10[13:0]      = htotal_in[13:0];
                    viv_s11[13:0]       = v_act_in[13:0];
                    viv_s12[13:0]       = h_act_in[13:0];
                    viv_s17[13:0]        = vs_w_in[13:0];
                    viv_s18[13:0]        = hs_w_in[13:0];
                    viv_s19[13:0]    = line_gap_in[13:0];
                    viv_s20[13:0]     = pix_gap_in[13:0];
                    viv_s21[13:0] = pix_gap_std_in[13:0];
                    viv_s13[13:0]        = fp_v_in[13:0];
                    viv_s14[13:0]        = fp_h_in[13:0];
                    viv_s15[13:0]        = bp_v_in[13:0];
                    viv_s16[13:0]        = bp_h_in[13:0];
                end
        default:begin
                    viv_s9[13:0]      = 14'h0;
                    viv_s10[11:0]      = 12'h0;
                    viv_s11[13:0]       = 14'h0;
                    viv_s12[13:0]       = 14'h0;
                    viv_s13[13:0]        = 14'h0;
                    viv_s14[13:0]        = 14'h0;
                    viv_s15[13:0]        = 14'h0;
                    viv_s16[13:0]        = 14'h0;
                    viv_s17[13:0]        = 14'h0;
                    viv_s18[13:0]        = 14'h0;
                    viv_s19[13:0]    = 14'h0; 
                    viv_s20[13:0]     = 14'h0;
                    viv_s21[13:0] = 14'h0;
                end
    endcase
end
assign viv_s1[13:0] = viv_s13[13:0] + viv_s17[13:0] + viv_s15[13:0];
assign viv_s2[13:0]  = viv_s14[13:0] + viv_s18[13:0] + viv_s16[13:0];
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s43 <= 1'b0;
    else
        viv_s43 <= tpg_en;
end
assign viv_s8 = tpg_en && (~viv_s43);
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s22[13:0] <= 14'b0;
    else 
        if(tpg_en)
            begin
                if(viv_s3)
                    viv_s22[13:0] <= 14'b0;
                else
                    viv_s22[13:0] <= viv_s22[13:0]+1'b1;
            end
end
assign viv_s3 = (viv_s22[13:0] == (viv_s10[13:0]-1'b1)) && tpg_en;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s23[13:0] <= 14'b0;
    else 
        if(tpg_en)
            begin
                if(viv_s3)
                    begin
                    	if(viv_s4)
                    	    viv_s23[13:0] <= 14'b0;
                    	else
                    	    viv_s23[13:0] <= viv_s23[13:0] + 1'b1;
                    end
            end
end
assign viv_s4 = (viv_s23[13:0] == (viv_s9[13:0]-1'b1)) && viv_s3;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            viv_s24 <= 8'b0;
            viv_s25 <= 8'b0;
            viv_s26 <= 8'b0;
        end 
    else
        if(!viv_s6)
            begin
                viv_s24 <= 8'b0;
                viv_s25 <= 8'b0;
                viv_s26 <= 8'b0;
            end 
        else
            case(img_num)
                3'd0:   begin 
                            if(viv_s23<(viv_s1+viv_s19))
                                begin
                                    if(viv_s22<(viv_s2+viv_s20))
                                        begin
                                            viv_s24 <= 8'hfc;
                                            viv_s25 <= 8'h0;
                                            viv_s26 <= 8'h0;
                                        end 
                                    else 
                                        if(viv_s22<(viv_s2+{viv_s20,1'b0}))
                                            begin
                                                viv_s24 <= 8'h0;
                                                viv_s25 <= 8'hfc;
                                                viv_s26 <= 8'h0;
                                            end
                                        else
                                            begin
                                                viv_s24 <= 8'h0;
                                                viv_s25 <= 8'h0;
                                                viv_s26 <= 8'hfc;
                                            end 
                                end 
                            else
                                if(viv_s23<(viv_s1+{viv_s19,1'b0}))
                                    begin
                                        if(viv_s22<(viv_s2+viv_s20))
                                            begin
                                                viv_s24 <= 8'h0;
                                                viv_s25 <= 8'hfc;
                                                viv_s26 <= 8'h0;
                                            end 
                                        else
                                            if(viv_s22<(viv_s2+{viv_s20,1'b0}))
                                                begin
                                                    viv_s24 <= 8'h0;
                                                    viv_s25 <= 8'h0;
                                                    viv_s26 <= 8'hfc;
                                                end 
                                            else
                                                begin
                                                    viv_s24 <= 8'hfc;
                                                    viv_s25 <= 8'h0;
                                                    viv_s26 <= 8'h0;
                                                end
                                    end 
                                else
                                    begin
                                        if(viv_s22<(viv_s2+viv_s20))
                                            begin
                                                viv_s24 <= 8'h0;
                                                viv_s25 <= 8'h0;
                                                viv_s26 <= 8'hfc;
                                            end 
                                        else
                                            if(viv_s22<(viv_s2+{viv_s20,1'b0}))
                                                begin
                                                    viv_s24 <= 8'hfc;
                                                    viv_s25 <= 8'h0;
                                                    viv_s26 <= 8'h0;
                                                end 
                                            else
                                                begin
                                                    viv_s24 <= 8'h0;
                                                    viv_s25 <= 8'hfc;
                                                    viv_s26 <= 8'h0;
                                                end
                                    end
                        end 
                3'd1:   begin 
                            if(viv_s22<(viv_s2+viv_s21))
                                begin
                                    viv_s24 <= 8'hfc;
                                    viv_s25 <= 8'hfc;
                                    viv_s26 <= 8'hfc;
                                end 
                            else 
                                if(viv_s22<(viv_s2+{viv_s21,1'b0}))
                                    begin
                                        viv_s24 <= 8'hfc;
                                        viv_s25 <= 8'hfc;
                                        viv_s26 <= 8'h0;
                                    end 
                                else
                                    if(viv_s22<(viv_s2+{viv_s21,1'b0})+viv_s21)
                                        begin
                                            viv_s24 <= 8'h0;
                                            viv_s25 <= 8'hfc;
                                            viv_s26 <= 8'hfc;
                                        end 
                                    else
                                        if(viv_s22<(viv_s2+{viv_s21,2'b0}))
                                            begin
                                                viv_s24 <= 8'h0;
                                                viv_s25 <= 8'hfc;
                                                viv_s26 <= 8'h0;
                                            end 
                                        else 
                                            if(viv_s22<(viv_s2+{viv_s21,2'b0})+viv_s21)
                                                begin
                                                    viv_s24 <= 8'hfc;
                                                    viv_s25 <= 8'h0;
                                                    viv_s26 <= 8'hfc;
                                                end 
                                            else
                                                if(viv_s22<(viv_s2+{viv_s21,2'b0})+{viv_s21,1'b0})
                                                    begin
                                                        viv_s24 <= 8'hfc;
                                                        viv_s25 <= 8'h0;
                                                        viv_s26 <= 8'h0;
                                                    end 
                                                else
                                                    if(viv_s22<(viv_s2+{viv_s21,2'b0})+{viv_s21,1'b0}+viv_s21)
                                                        begin
                                                            viv_s24 <= 8'h0;
                                                            viv_s25 <= 8'h0;
                                                            viv_s26 <= 8'hfc;
                                                        end 
                                                    else
                                                        begin
                                                            viv_s24 <= 8'h0;
                                                            viv_s25 <= 8'h0;
                                                            viv_s26 <= 8'h0;
                                                        end
                        end 
                3'd2:   begin 
                            if(viv_s22<(viv_s2+viv_s21))
                                begin
                                    viv_s24 <= 8'hfc;
                                    viv_s25 <= 8'hfc;
                                    viv_s26 <= 8'hfc;
                                end 
                            else
                                if(viv_s22<(viv_s2+{viv_s21,1'b0}))
                                    begin
                                        viv_s24 <= 8'hd8;
                                        viv_s25 <= 8'hd8;
                                        viv_s26 <= 8'hd8;
                                    end 
                                else 
                                    if(viv_s22<(viv_s2+{viv_s21,1'b0})+viv_s21)
                                        begin
                                            viv_s24 <= 8'hb4;
                                            viv_s25 <= 8'hb4;
                                            viv_s26 <= 8'hb4;
                                        end 
                                    else 
                                        if(viv_s22<(viv_s2+{viv_s21,2'b0}))
                                            begin
                                                viv_s24 <= 8'h90;
                                                viv_s25 <= 8'h90;
                                                viv_s26 <= 8'h90;
                                            end 
                                        else 
                                            if(viv_s22<(viv_s2+{viv_s21,2'b0})+viv_s21)
                                                begin
                                                    viv_s24 <= 8'h6c;
                                                    viv_s25 <= 8'h6c;
                                                    viv_s26 <= 8'h6c;
                                                end 
                                            else 
                                                if(viv_s22<(viv_s2+{viv_s21,2'b0})+{viv_s21,1'b0})
                                                    begin
                                                        viv_s24 <= 8'h48;
                                                        viv_s25 <= 8'h48;
                                                        viv_s26 <= 8'h48;
                                                    end 
                                                else 
                                                    if(viv_s22<(viv_s2+{viv_s21,2'b0})+{viv_s21,1'b0}+viv_s21)
                                                        begin
                                                            viv_s24 <= 8'h24;
                                                            viv_s25 <= 8'h24;
                                                            viv_s26 <= 8'h24;
                                                        end 
                                                    else
                                                        begin
                                                            viv_s24 <= 8'h0;
                                                            viv_s25 <= 8'h0;
                                                            viv_s26 <= 8'h0;
                                                        end 
                        end 
                3'd3:   begin 
                            if(((viv_s22==(viv_s2+viv_s21))|(viv_s22==(viv_s2+viv_s21+1'b1))) |
                               ((viv_s22==(viv_s2+{viv_s21,1'b0}))|(viv_s22==(viv_s2+{viv_s21,1'b0}+1'b1))) |
                               ((viv_s22==(viv_s2+{viv_s21,1'b0}+viv_s21))|(viv_s22==(viv_s2+{viv_s21,1'b0}+viv_s21+1'b1))) |
                               ((viv_s22==(viv_s2+{viv_s21,2'b0}))|(viv_s22==(viv_s2+{viv_s21,2'b0}+1'b1))) |
                               ((viv_s22==(viv_s2+{viv_s21,2'b0}+viv_s21))|(viv_s22==(viv_s2+{viv_s21,2'b0}+viv_s21+1'b1))) |
                               ((viv_s22==(viv_s2+{viv_s21,2'b0}+{viv_s21,1'b0}))|(viv_s22==(viv_s2+{viv_s21,2'b0}+{viv_s21,1'b0}+1'b1))) |
                               ((viv_s22==(viv_s2+{viv_s21,2'b0}+{viv_s21,1'b0}+viv_s21))|(viv_s22==(viv_s2+{viv_s21,2'b0}+{viv_s21,1'b0}+viv_s21+1'b1))))
                                begin
                                    viv_s24 <= 8'hfc;
                                    viv_s25 <= 8'hfc;
                                    viv_s26 <= 8'hfc;
                                end 
                            else
                                if(((viv_s23==(viv_s1+viv_s21))|(viv_s23==(viv_s1+viv_s21+1'b1))) |
                                   ((viv_s23==(viv_s1+{viv_s21,1'b0}))|(viv_s23==(viv_s1+{viv_s21,1'b0}+1'b1))) |
                                   ((viv_s23==(viv_s1+{viv_s21,1'b0}+viv_s21))|(viv_s23==(viv_s1+{viv_s21,1'b0}+viv_s21+1'b1))) |
                                   ((viv_s23==(viv_s1+{viv_s21,2'b0}))|(viv_s23==(viv_s1+{viv_s21,2'b0}+1'b1))) |
                                   ((viv_s23==(viv_s1+{viv_s21,2'b0}+viv_s21))|(viv_s23==(viv_s1+{viv_s21,2'b0}+viv_s21+1'b1))) |
                                   ((viv_s23==(viv_s1+{viv_s21,2'b0}+{viv_s21,1'b0}))|(viv_s23==(viv_s1+{viv_s21,2'b0}+{viv_s21,1'b0}+1'b1))) |
                                   ((viv_s23==(viv_s1+{viv_s21,2'b0}+{viv_s21,1'b0}+viv_s21))|(viv_s23==(viv_s1+{viv_s21,2'b0}+{viv_s21,1'b0}+viv_s21+1'b1))) )
                                    begin
                                        viv_s24 <= 8'hfc;
                                        viv_s25 <= 8'hfc;
                                        viv_s26 <= 8'hfc;
                                    end 
                                else 
                                    begin
                                        viv_s24 <= 8'h0;
                                        viv_s25 <= 8'h0;
                                        viv_s26 <= 8'h0;
                                    end
                        end 
                3'd4:   begin 
                            viv_s24 <= viv_s0[27:20];
                            viv_s25 <= viv_s0[17:10];
                            viv_s26 <= viv_s0[ 7: 0];
                        end
                default:begin
                            viv_s24 <= 8'b0;
                            viv_s25 <= 8'b0;
                            viv_s26 <= 8'b0;
                        end
    endcase
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        viv_s28 <= 1'b1;
        viv_s29 <= 1'b0;
    end else
    begin
        if(viv_s22==viv_s14)
            viv_s28 <= 1'b0;
        else if(viv_s22==(viv_s14+viv_s18))
            viv_s28 <= 1'b1;
        else if(viv_s22==viv_s2-1'b1)
            viv_s29 <= 1'b1;
        else if(viv_s22==viv_s27)
            viv_s29 <= 1'b0;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s27 <= 14'b0;
    else
        viv_s27 <= (viv_s2+viv_s12-1'b1);
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            viv_s30  <= 1'b1;
            viv_s31 <= 1'b0;
        end 
    else
        begin
            if((viv_s23==viv_s13)&(viv_s22==viv_s14))
                viv_s30 <= 1'b0;
            else
                if((viv_s23==(viv_s13+viv_s17))&(viv_s22==viv_s14))
                    viv_s30 <= 1'b1;
                else
                    if((viv_s23==viv_s1)&(viv_s22==viv_s2-1'b1))
                        viv_s31 <= 1'b1;
                    else
                        if((viv_s23==(viv_s1+viv_s11-1'b1))&(viv_s22==viv_s27))
                            viv_s31 <= 1'b0;
        end
end
assign viv_s5 = ((viv_s22>=viv_s2-1'b1) & (viv_s22<=viv_s27)) &
                    ((viv_s23>=viv_s1) & (viv_s23<=(viv_s1+viv_s11-1'b1)));
assign viv_s6    = viv_s31&viv_s29;
assign viv_s7 = viv_s41&viv_s37;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s32 <= 1'b0;
    else 
        if(!vde_out)
            viv_s32 <= 1'b0;
        else
            if((!viv_s36)&hs_out)
                viv_s32 <= ~viv_s32;
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s33 <= 1'b0;
    else 
        if(!viv_s7)
            viv_s33 <= 1'b0;
        else
            viv_s33 <= ~viv_s33;
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s34 <= 8'b0;
    else 
        case(cfa_pat)
            2'd0:   begin
                        case({viv_s32,viv_s33})
                            2'b00:  viv_s34 <= viv_s24;
                            2'b01:  viv_s34 <= viv_s25;
                            2'b10:  viv_s34 <= viv_s25;
                            2'b11:  viv_s34 <= viv_s26;
                            default:viv_s34 <= 8'b0;
                        endcase
                    end
            2'd1:   begin
                        case({viv_s32,viv_s33})
                            2'b00:  viv_s34 <= viv_s25;
                            2'b01:  viv_s34 <= viv_s24;
                            2'b10:  viv_s34 <= viv_s26;
                            2'b11:  viv_s34 <= viv_s25;
                            default:viv_s34 <= 8'b0;
                        endcase
                    end
            2'd2:   begin
                        case({viv_s32,viv_s33})
                            2'b00:  viv_s34 <= viv_s25;
                            2'b01:  viv_s34 <= viv_s26;
                            2'b10:  viv_s34 <= viv_s24;
                            2'b11:  viv_s34 <= viv_s25;
                            default:viv_s34 <= 8'b0;
                        endcase
                    end
            2'd3:   begin
                        case({viv_s32,viv_s33})
                            2'b00:  viv_s34 <= viv_s26;
                            2'b01:  viv_s34 <= viv_s25;
                            2'b10:  viv_s34 <= viv_s25;
                            2'b11:  viv_s34 <= viv_s24;
                            default:viv_s34 <= 8'b0;
                        endcase
                    end
            default:begin
                        case({viv_s32,viv_s33})
                            2'b00:  viv_s34 <= 8'b0;
                            2'b01:  viv_s34 <= 8'b0;
                            2'b10:  viv_s34 <= 8'b0;
                            2'b11:  viv_s34 <= 8'b0;
                            default:viv_s34 <= 8'b0;
                        endcase
                    end
    endcase
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        cfa_out <= 16'b0;
    else 
        cfa_out <= {viv_s34,8'b0};
end
wire            viv_s44;
wire            viv_s45;
wire            viv_s46;
wire            viv_s47;
wire            viv_s48;
wire            viv_s49;
reg     [15:0]  viv_s50;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s50[15:0] <= 16'b0;
    else 
        if(viv_s8)
            viv_s50[15:0] <= 16'b0;
        else
            if(viv_s4)
           	    viv_s50[15:0] <= viv_s50[15:0] + 1'b1;
end
assign viv_s44 = (viv_s50[15:0] == (frame_num[15:0]-1'b1)) && viv_s4;
assign viv_s45 = (frame_num[15:0] == 1'b0) ? 1'b1 : (viv_s50[15:0] < frame_num[15:0]);
assign viv_s46 = viv_s29 && viv_s45;
assign viv_s47  = viv_s28 && viv_s45;
assign viv_s48 = viv_s31 && viv_s45;
assign viv_s49  = viv_s30 && viv_s45;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s35 <= 1'b1;
    else
        if(max_sync)
            viv_s35 <= viv_s46;
        else
            viv_s35 <= viv_s47;
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            viv_s37  <= 1'b0;
            viv_s38  <= 1'b0;
            hde_out <= 1'b0;
            viv_s36   <= 1'b1;
            hs_out  <= 1'b1;
        end 
    else
        begin
            viv_s37  <= viv_s46;
            viv_s38  <= viv_s37;  
            hde_out <= viv_s38;                
            viv_s36   <= viv_s35;
            hs_out  <= viv_s36;
        end
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        viv_s39 <= 1'b1;
    else
        if(max_sync)
            viv_s39 <= viv_s48;
        else
            viv_s39 <= viv_s49;
end
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            viv_s41  <= 1'b0;
            viv_s42  <= 1'b0;  
            vde_out <= 1'b0;            
            viv_s40   <= 1'b1;
            vs_out  <= 1'b1;
        end 
    else
        begin
            viv_s41  <= viv_s48;
            viv_s42  <= viv_s41;
            vde_out <= viv_s42;                
            viv_s40   <= viv_s39;
            vs_out  <= viv_s40;
        end
end
endmodule
