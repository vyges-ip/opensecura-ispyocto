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

module vsisp_GC_CG_MOD (enable, ck_in, ck_out, test);
    input enable, ck_in, test;
    output ck_out;
    wire enable, ck_in, test;
    wire ck_out;
    `ifdef AQ_TSMC28HPM35_9T_LIB
      CKLNQD4BWP35 GC_CG_INST(
        .E (enable),
        .CP (ck_in),
        .TE (test),
        .Q (ck_out));
    `else
    `ifdef AQ_TSMC28HPM35_7T_LIB
      CKLNQD4BWP7T35P140 GC_CG_INST(
        .E (enable),
        .CP (ck_in),
        .TE (test),
        .Q (ck_out));
    `else
    `ifdef AQ_SEC14LPP_A9TR_C14_LIB
      PREICG_X4N_A9PP84TR_C14 GC_CG_INST(
        .E (enable),
        .CK (ck_in),
        .SE (test),
        .ECK (ck_out));
    `else
    `ifdef AQ_TSMC16FFC_7T5_SVT_LIB
      PREICG_X4R_A7P5PP96PTS_C16 GC_CG_INST(
        .E (enable),
        .CK (ck_in),
        .SE (test),
        .ECK (ck_out));
    `else
    `ifdef AQ_TSMC16FFC_9T_SVT_LIB
      PREICG_X4R_A9PP96CTS_C16 GC_CG_INST(
        .E (enable),
        .CK (ck_in),
        .SE (test),
        .ECK (ck_out));
    `else
    `ifdef AQ_TSMC12FFC_6T_SVT_LIB
      CKLNQD4BWP6T16P96CPD GC_CG_INST(
        .E  (enable),
        .CP (ck_in),
        .TE (test),
        .Q  (ck_out));
    `else
    `ifdef AQ_TSMC12FFC_7T5_SVT_LIB
      CKLNQD4BWP7D5T16P96CPD GC_CG_INST(
        .E  (enable),
        .CP (ck_in),
        .TE (test),
        .Q  (ck_out));
    `else
    `ifdef AQ_TSMC12FFC_9T_SVT_LIB
      CKLNQD4BWP16P90CPD GC_CG_INST(
        .E  (enable),
        .CP (ck_in),
        .TE (test),
        .Q  (ck_out));
    `else
    `ifdef AQ_TSMC7FF_6T_SVT_LIB
      CKLNQD4BWP240H8P57PDSVT GC_CG_INST(
        .E (enable),
        .CP (ck_in),
        .TE (test),
        .Q (ck_out));
    `else
    `ifdef AQ_TSMC7FF_7T5_SVT_LIB
      CKLNQD4BWP300H8P64PDSVT GC_CG_INST(
        .E (enable),
        .CP (ck_in),
        .TE (test),
        .Q (ck_out));
    `else
    `ifdef FPGA 
    assign ck_out = ck_in;
    `else 
      vsisp_CLOCKGATER COMMON_GATER(
        .enable(enable),
        .ck_in(ck_in),
        .ck_out(ck_out),
        .test(test));
    `endif
    `endif
    `endif
    `endif
    `endif
    `endif
    `endif
    `endif
    `endif
    `endif
    `endif
endmodule
