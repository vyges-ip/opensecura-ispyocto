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

module vsisp_CLOCKGATER (enable, ck_in, ck_out, test);
    input enable, ck_in, test;
    output ck_out;
    wire enable, ck_in, test;
    wire ck_out;
    reg enLatched;
    always @(ck_in or enable)
      if (!ck_in)
        enLatched = enable;
    wire enQual = enLatched | test;	
    `ifdef VIVANTE_NO_BLOCK_CG
    assign ck_out = ck_in;
    `else
    assign ck_out = ck_in & enQual;
    `endif
endmodule
