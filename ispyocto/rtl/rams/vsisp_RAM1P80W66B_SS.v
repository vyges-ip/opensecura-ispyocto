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

module vsisp_RAM1P80W66B_SS(D,Q,CLK,CEB,WEB,BWEB,A,CLKEN,TESTEN);
    input [66-1:0] D;
    output [66-1:0] Q;
    input CLK;
    input CEB;
    input WEB;
    input [66-1:0] BWEB;
    input [7-1:0] A;
    input CLKEN;
    input TESTEN;
`ifdef CG_IN_RAM
wire CLK_;
vsisp_GC_CG_MOD GC_CG_READ(.enable(CLKEN), .ck_in(CLK), .ck_out(CLK_), .test(TESTEN));
`else
wire CLK_ = CLK;
`endif
    reg [66-1:0] mem_core [0:80-1];
    wire [66-1:0] temp = mem_core[A];
    `ifdef CG_IN_RAM
    always @(posedge CLK_)
    `else
    always @(posedge CLK)
    `endif
        if (~WEB & ~CEB) mem_core[A] <= (temp & BWEB) | (D & ~BWEB);
    wire [66-1:0] QN = mem_core[A];
    wire [66-1:0] Q;
    vsisp_gc_den_reg #(66) QReg (.out(Q), .clk(CLK_), .in(QN), .reset_(1'b1), .en(~CEB & WEB));
    `ifdef VIVANTE_COLLECT_TOGGLE_INFO_IN_FLOPS_AND_RAMS
    `ifdef VIVANTE_SAIF_TRIGGER
    reg [31:0] clkToggle;
    reg [31:0] outputToggle;
    reg [31:0] toggleRegion;
    integer i;
    initial begin
        clkToggle = 0;
        outputToggle = 0;
        toggleRegion = 0;
    end
    always @(negedge CLK_) begin
        if(~CEB) begin
            clkToggle <= clkToggle + 1'b1;
            if ((QN != Q) & WEB) begin
                for (i = 0; i <= 66-1; i = i + 1) begin
                    if(QN[i] != Q[i]) begin
                        outputToggle = outputToggle + 1'b1;
                    end
                end
            end
            if(clkToggle[31] | outputToggle[31]) begin
                $display("ERROR: %m - Toggle counter overflow.");
                #10000;
                $finish;                
            end
        end
    end
    initial begin
        forever begin
            @(posedge `VIVANTE_SAIF_TRIGGER);
            $display ("vsisp_RAM1P80W66B_SS TOGGLE: %d : %m : WIDTH: %d, CLK_TOGGLE: %d, OUT_TOGGLE: %d",toggleRegion,66,clkToggle,outputToggle);
            clkToggle = 0;
            outputToggle = 0;
            toggleRegion = toggleRegion + 1;
        end
    end
    `endif
    `endif
endmodule
