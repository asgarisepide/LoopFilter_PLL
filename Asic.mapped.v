/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R) NXT Graphical
// Version   : U-2022.12
// Date      : Sun Dec 24 23:55:18 2023
// Netlist generated using set_compile_spg_mode ICC2 command enabled,
// which affects timing. Enable set_compile_spg_mode ICC2 in the flow.
/////////////////////////////////////////////////////////////


module vc_Mux4_0 ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n1, n2;

  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in3), .D1(in1), .S(sel[0]), .Z(n2) );
  SC8T_MUX2X1_A_CSC20R U2 ( .D0(in2), .D1(in3), .S(sel[0]), .Z(n1) );
  SC8T_MUX2X1_A_CSC20R U3 ( .D0(n2), .D1(n1), .S(sel[1]), .Z(out) );
endmodule


module vc_Mux4_4 ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n1, n2;

  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in0), .D1(in1), .S(sel[0]), .Z(n2) );
  SC8T_MUX2X1_A_CSC20R U2 ( .D0(in2), .D1(in3), .S(sel[0]), .Z(n1) );
  SC8T_MUX2X1_A_CSC20R U3 ( .D0(n2), .D1(n1), .S(sel[1]), .Z(out) );
endmodule


module vc_Mux2_4 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in0), .D1(in1), .S(sel), .Z(out) );
endmodule


module vc_Mux4_1 ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n1, n2;

  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in0), .D1(in1), .S(sel[0]), .Z(n2) );
  SC8T_MUX2X1_A_CSC20R U2 ( .D0(in2), .D1(in3), .S(sel[0]), .Z(n1) );
  SC8T_MUX2X1_A_CSC20R U3 ( .D0(n2), .D1(n1), .S(sel[1]), .Z(out) );
endmodule


module vc_Mux4_2 ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n1, n2;

  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in0), .D1(in1), .S(sel[0]), .Z(n2) );
  SC8T_MUX2X1_A_CSC20R U2 ( .D0(in2), .D1(in3), .S(sel[0]), .Z(n1) );
  SC8T_MUX2X1_A_CSC20R U3 ( .D0(n2), .D1(n1), .S(sel[1]), .Z(out) );
endmodule


module vc_Mux4_3 ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n1, n2;

  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in0), .D1(in1), .S(sel[0]), .Z(n2) );
  SC8T_MUX2X1_A_CSC20R U2 ( .D0(in2), .D1(in3), .S(sel[0]), .Z(n1) );
  SC8T_MUX2X1_A_CSC20R U3 ( .D0(n2), .D1(n1), .S(sel[1]), .Z(out) );
endmodule


module vc_Mux2_1 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in0), .D1(in1), .S(sel), .Z(out) );
endmodule


module vc_Mux2_2 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in0), .D1(in1), .S(sel), .Z(out) );
endmodule


module vc_Mux2_3 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  SC8T_MUX2X1_A_CSC20R U1 ( .D0(in0), .D1(in1), .S(sel), .Z(out) );
endmodule


module Asic ( clk, reset, Int, Prop, Diff, late_i, overflow, underflow, 
        overflow_p, underflow_p, pid_o );
  input [4:0] Int;
  input [4:0] Prop;
  input [4:0] Diff;
  output [4:0] pid_o;
  input clk, reset, late_i;
  output overflow, underflow, overflow_p, underflow_p;
  wire   mInt_4_, mInt_3_, mInt_2_, mInt_1_, mProp_4_, mProp_3_, mProp_2_,
         mProp_1_, late_curr, late_prev, n10, n12, n21, n22, intadd_0_A_2_,
         intadd_0_A_1_, intadd_0_A_0_, intadd_0_CI, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_CI, intadd_1_n3, intadd_1_n2, intadd_1_n1, n25,
         n26, n27, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n50, n51, n52, n54, n55, n56, n57;
  wire   [4:0] pProp_pDiff;
  wire   [4:1] mProp_mDiff;
  wire   [4:1] int_i;
  wire   [3:0] int_o;
  wire   [3:0] acc_o;
  wire   [4:0] pd_i;
  wire   [4:0] add_o;

  vc_Mux2_1 int_mux_1_ ( .in0(mInt_1_), .in1(Int[1]), .sel(late_curr), .out(
        int_i[1]) );
  vc_Mux2_2 int_mux_2_ ( .in0(mInt_2_), .in1(Int[2]), .sel(late_curr), .out(
        int_i[2]) );
  vc_Mux2_3 int_mux_3_ ( .in0(mInt_3_), .in1(Int[3]), .sel(late_curr), .out(
        int_i[3]) );
  vc_Mux2_4 int_mux_4_ ( .in0(mInt_4_), .in1(Int[4]), .sel(late_curr), .out(
        int_i[4]) );
  vc_Mux4_0 pd_mux_0_ ( .in0(n22), .in1(pProp_pDiff[0]), .in2(pProp_pDiff[0]), 
        .in3(Prop[0]), .sel({late_curr, late_prev}), .out(pd_i[0]) );
  vc_Mux4_1 pd_mux_1_ ( .in0(mProp_1_), .in1(mProp_mDiff[1]), .in2(
        pProp_pDiff[1]), .in3(Prop[1]), .sel({late_curr, late_prev}), .out(
        pd_i[1]) );
  vc_Mux4_2 pd_mux_2_ ( .in0(mProp_2_), .in1(mProp_mDiff[2]), .in2(
        pProp_pDiff[2]), .in3(Prop[2]), .sel({late_curr, late_prev}), .out(
        pd_i[2]) );
  vc_Mux4_3 pd_mux_3_ ( .in0(mProp_3_), .in1(mProp_mDiff[3]), .in2(
        pProp_pDiff[3]), .in3(Prop[3]), .sel({late_curr, late_prev}), .out(
        pd_i[3]) );
  vc_Mux4_4 pd_mux_4_ ( .in0(mProp_4_), .in1(mProp_mDiff[4]), .in2(
        pProp_pDiff[4]), .in3(Prop[4]), .sel({late_curr, late_prev}), .out(
        pd_i[4]) );
  SC8T_SDFFSQX1_A_CSC20R int_o_reg_4_ ( .D(n10), .SI(n22), .SE(n22), .CLK(clk), 
        .SET(n21), .Q(n12) );
  SC8T_XOR3X1_CSC20R U47 ( .A(Prop[4]), .B(Diff[4]), .C(intadd_1_n1), .Z(
        pProp_pDiff[4]) );
  SC8T_AN2X1_R2_CSC28R U48 ( .A(int_o[0]), .B(pd_i[0]), .Z(n31) );
  SC8T_FCGENIX1_MR_CSC20R U49 ( .A(int_o[1]), .B(n31), .CI(pd_i[1]), .CON(n34)
         );
  SC8T_INVX2_F_CSC28R U50 ( .A(int_o[2]), .Z(n39) );
  SC8T_INVX2_F_CSC28R U51 ( .A(pd_i[2]), .Z(n33) );
  SC8T_FCGENIX1_MR_CSC20R U52 ( .A(n34), .B(n39), .CI(n33), .CON(n36) );
  SC8T_FCGENIX1_MR_CSC20R U53 ( .A(int_o[3]), .B(pd_i[3]), .CI(n36), .CON(n30)
         );
  SC8T_XOR3X1_CSC20R U54 ( .A(n30), .B(pd_i[4]), .C(n12), .Z(add_o[4]) );
  SC8T_OR3X0P5_CSC20R U55 ( .A(Prop[2]), .B(Prop[1]), .C(Prop[0]), .Z(n27) );
  SC8T_INVX1_CSC20R U57 ( .A(Diff[3]), .Z(intadd_0_A_2_) );
  SC8T_INVX1_CSC20R U58 ( .A(Diff[2]), .Z(intadd_0_A_1_) );
  SC8T_INVX1_CSC20R U61 ( .A(Diff[1]), .Z(intadd_0_A_0_) );
  SC8T_INVX1_CSC20R U64 ( .A(n26), .Z(intadd_0_CI) );
  SC8T_XNR3X1_CSC20R U68 ( .A(Diff[4]), .B(intadd_0_n1), .C(mProp_4_), .Z(
        mProp_mDiff[4]) );
  SC8T_INVX2_F_CSC28R U69 ( .A(n12), .Z(n52) );
  SC8T_NR3X1_MR_CSC20R U70 ( .A(n30), .B(pd_i[4]), .C(n52), .Z(overflow_p) );
  SC8T_AN3X1_R_CSC28R U71 ( .A(n30), .B(pd_i[4]), .C(n52), .Z(underflow_p) );
  SC8T_XNR3X1_CSC20R U73 ( .A(int_o[0]), .B(pd_i[0]), .C(n37), .Z(add_o[0]) );
  SC8T_XNR3X1_CSC20R U74 ( .A(n31), .B(pd_i[1]), .C(n37), .Z(n32) );
  SC8T_XNR3X1_CSC20R U77 ( .A(n35), .B(int_o[2]), .C(n34), .Z(add_o[2]) );
  SC8T_XNR3X1_CSC20R U78 ( .A(pd_i[3]), .B(n37), .C(n36), .Z(n38) );
  SC8T_AN2X1_R2_CSC28R U80 ( .A(int_o[0]), .B(Int[0]), .Z(n40) );
  SC8T_FCGENIX1_MR_CSC20R U81 ( .A(int_o[1]), .B(n40), .CI(int_i[1]), .CON(n43) );
  SC8T_INVX2_F_CSC28R U82 ( .A(int_i[2]), .Z(n42) );
  SC8T_FCGENIX1_MR_CSC20R U83 ( .A(n43), .B(n39), .CI(n42), .CON(n45) );
  SC8T_FCGENIX1_MR_CSC20R U84 ( .A(int_o[3]), .B(int_i[3]), .CI(n45), .CON(n51) );
  SC8T_NR3X1_MR_CSC20R U85 ( .A(n51), .B(int_i[4]), .C(n52), .Z(overflow) );
  SC8T_AN3X1_R_CSC28R U86 ( .A(n51), .B(int_i[4]), .C(n52), .Z(underflow) );
  SC8T_XNR3X1_CSC20R U88 ( .A(int_o[0]), .B(Int[0]), .C(n46), .Z(acc_o[0]) );
  SC8T_XNR3X1_CSC20R U89 ( .A(n40), .B(int_i[1]), .C(n46), .Z(n41) );
  SC8T_XNR3X1_CSC20R U92 ( .A(n44), .B(int_o[2]), .C(n43), .Z(acc_o[2]) );
  SC8T_XNR3X1_CSC20R U93 ( .A(int_i[3]), .B(n46), .C(n45), .Z(n47) );
  SC8T_OR3X0P5_CSC20R U96 ( .A(Int[2]), .B(Int[1]), .C(Int[0]), .Z(n50) );
  SC8T_XOR3X1_CSC20R U103 ( .A(n52), .B(n51), .C(int_i[4]), .Z(n10) );
  SC8T_FAX1_A_MR_CSC20R intadd_1_U4 ( .A(Diff[1]), .B(Prop[1]), .CI(
        intadd_1_CI), .CO(intadd_1_n3), .S(pProp_pDiff[1]) );
  SC8T_FAX1_A_MR_CSC20R intadd_0_U4 ( .A(mProp_1_), .B(intadd_0_A_0_), .CI(
        intadd_0_CI), .CO(intadd_0_n3), .S(mProp_mDiff[1]) );
  SC8T_FAX1_A_MR_CSC20R intadd_1_U3 ( .A(Diff[2]), .B(Prop[2]), .CI(
        intadd_1_n3), .CO(intadd_1_n2), .S(pProp_pDiff[2]) );
  SC8T_FAX1_A_MR_CSC20R intadd_0_U3 ( .A(mProp_2_), .B(intadd_0_A_1_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(mProp_mDiff[2]) );
  SC8T_FAX1_A_MR_CSC20R intadd_1_U2 ( .A(Diff[3]), .B(Prop[3]), .CI(
        intadd_1_n2), .CO(intadd_1_n1), .S(pProp_pDiff[3]) );
  SC8T_FAX1_A_MR_CSC20R intadd_0_U2 ( .A(mProp_3_), .B(intadd_0_A_2_), .CI(
        intadd_0_n2), .CO(intadd_0_n1), .S(mProp_mDiff[3]) );
  SC8T_TIELOX1_CSC20R DC_INCR_41 ( .Z(n22) );
  SC8T_NR2X1_FB_CSC28R U63 ( .A(n25), .B(Prop[0]), .Z(n26) );
  SC8T_AN2X1_R2_CSC28R U43 ( .A(Diff[0]), .B(Prop[0]), .Z(intadd_1_CI) );
  SC8T2G_4BSDFFRQX1_A_CSC28R int_o_reg_3_0_ ( .D0(acc_o[3]), .CLK(clk), 
        .RESET(n21), .SE(n22), .SI(n22), .Q0(int_o[3]), .D1(acc_o[2]), .Q1(
        int_o[2]), .D2(acc_o[1]), .Q2(int_o[1]), .D3(acc_o[0]), .Q3(int_o[0])
         );
  SC8T_NR2X1_FB_CSC28R U87 ( .A(overflow), .B(underflow), .Z(n46) );
  SC8T_NR2X1_FB_CSC28R U72 ( .A(overflow_p), .B(underflow_p), .Z(n37) );
  SC8T_INVX2_F_CSC28R U95 ( .A(reset), .Z(n21) );
  SC8T2G_2BSDFFRQX1_CSC28R late_curr_reg_late_prev_reg ( .D0(late_i), .CLK(clk), .RESET(n21), .SE(n22), .SI(n22), .Q0(late_curr), .D1(late_curr), .Q1(
        late_prev) );
  SC8T_SDFFRQX1_LP_CSC28R pid_o_reg_0_ ( .D(add_o[0]), .SI(n22), .SE(n22), 
        .CLK(clk), .RESET(n21), .Q(pid_o[0]) );
  SC8T2G_4BSDFFRQX1_A_CSC28R pid_o_reg_4_1_ ( .D0(add_o[4]), .CLK(clk), 
        .RESET(n21), .SE(n22), .SI(n22), .Q0(pid_o[4]), .D1(add_o[3]), .Q1(
        pid_o[3]), .D2(add_o[2]), .Q2(pid_o[2]), .D3(add_o[1]), .Q3(pid_o[1])
         );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_42 ( .A1(int_o[1]), .A2(n32), .B1(n32), .B2(
        int_o[1]), .Z(add_o[1]) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_43 ( .A1(int_o[3]), .A2(n38), .B1(n38), .B2(
        int_o[3]), .Z(add_o[3]) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_44 ( .A1(int_o[1]), .A2(n41), .B1(n41), .B2(
        int_o[1]), .Z(acc_o[1]) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_45 ( .A1(int_o[3]), .A2(n47), .B1(n47), .B2(
        int_o[3]), .Z(acc_o[3]) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_46 ( .A1(n33), .A2(n37), .B1(n37), .B2(n33), 
        .Z(n35) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_47 ( .A1(n42), .A2(n46), .B1(n46), .B2(n42), 
        .Z(n44) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_48 ( .A1(Int[3]), .A2(n50), .B1(n50), .B2(
        Int[3]), .Z(mInt_3_) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_49 ( .A1(Prop[3]), .A2(n27), .B1(n27), .B2(
        Prop[3]), .Z(mProp_3_) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_50 ( .A1(Int[1]), .A2(Int[0]), .B1(Int[0]), 
        .B2(Int[1]), .Z(mInt_1_) );
  SC8T_OA22IA1A2X1_CSC20R DC_INCR_51 ( .A1(Prop[1]), .A2(Prop[0]), .B1(Prop[0]), .B2(Prop[1]), .Z(mProp_1_) );
  SC8T_AO22IA1A2X0P5_CSC20R DC_INCR_52 ( .A1(n54), .A2(Int[4]), .B1(n54), .B2(
        Int[4]), .Z(mInt_4_) );
  SC8T_NR2X0P5_CSC20R DC_INCR_53 ( .A(n50), .B(Int[3]), .Z(n54) );
  SC8T_AO22IA1A2X0P5_CSC20R DC_INCR_54 ( .A1(Prop[4]), .A2(n55), .B1(Prop[4]), 
        .B2(n55), .Z(mProp_4_) );
  SC8T_NR2X0P5_CSC20R DC_INCR_55 ( .A(n27), .B(Prop[3]), .Z(n55) );
  SC8T_AO22IA1A2X0P5_CSC20R DC_INCR_56 ( .A1(Int[2]), .A2(n56), .B1(Int[2]), 
        .B2(n56), .Z(mInt_2_) );
  SC8T_NR2X0P5_CSC20R DC_INCR_57 ( .A(Int[1]), .B(Int[0]), .Z(n56) );
  SC8T_AO22IA1A2X0P5_CSC20R DC_INCR_58 ( .A1(Prop[2]), .A2(n57), .B1(Prop[2]), 
        .B2(n57), .Z(mProp_2_) );
  SC8T_NR2X0P5_CSC20R DC_INCR_59 ( .A(Prop[1]), .B(Prop[0]), .Z(n57) );
  SC8T_AO22IA1A2X0P5_CSC20R DC_INCR_60 ( .A1(Prop[0]), .A2(n25), .B1(Prop[0]), 
        .B2(n25), .Z(pProp_pDiff[0]) );
  SC8T_INVX0P5_CSC20R DC_INCR_61 ( .A(Diff[0]), .Z(n25) );
endmodule

