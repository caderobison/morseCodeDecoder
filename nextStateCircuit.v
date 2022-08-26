// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"
// CREATED		"Mon Nov 29 13:58:29 2021"

module nextStateCircuit(
	dash,
	dot,
	d5,
	d4,
	d3,
	d2,
	d1,
	d0,
	n5,
	n4,
	n3,
	n2,
	n1,
	n0
);


input wire	dash;
input wire	dot;
input wire	d5;
input wire	d4;
input wire	d3;
input wire	d2;
input wire	d1;
input wire	d0;
output wire	n5;
output wire	n4;
output wire	n3;
output wire	n2;
output wire	n1;
output wire	n0;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_18 = 0;
assign	SYNTHESIZED_WIRE_19 = 1;






dashNextState	b2v_inst2(
	.d5(d5),
	.d4(d4),
	.d3(d3),
	.d2(d2),
	.d1(d1),
	.d0(d0),
	.n5(SYNTHESIZED_WIRE_15),
	.n4(SYNTHESIZED_WIRE_12),
	.n3(SYNTHESIZED_WIRE_9),
	.n2(SYNTHESIZED_WIRE_6),
	.n1(SYNTHESIZED_WIRE_0),
	.n0(SYNTHESIZED_WIRE_3));


dotNextState	b2v_inst3(
	.d5(d5),
	.d4(d4),
	.d3(d3),
	.d2(d2),
	.d1(d1),
	.d0(d0),
	.n5(SYNTHESIZED_WIRE_16),
	.n4(SYNTHESIZED_WIRE_13),
	.n3(SYNTHESIZED_WIRE_10),
	.n2(SYNTHESIZED_WIRE_7),
	.n1(SYNTHESIZED_WIRE_1),
	.n0(SYNTHESIZED_WIRE_4));


myMux41	b2v_state(
	.w0(d1),
	.w1(SYNTHESIZED_WIRE_0),
	.w2(SYNTHESIZED_WIRE_1),
	.w3(SYNTHESIZED_WIRE_18),
	.s1(dot),
	.s0(dash),
	.Q(n1));


myMux41	b2v_state0(
	.w0(d0),
	.w1(SYNTHESIZED_WIRE_3),
	.w2(SYNTHESIZED_WIRE_4),
	.w3(SYNTHESIZED_WIRE_18),
	.s1(dot),
	.s0(dash),
	.Q(n0));


myMux41	b2v_state2(
	.w0(d2),
	.w1(SYNTHESIZED_WIRE_6),
	.w2(SYNTHESIZED_WIRE_7),
	.w3(SYNTHESIZED_WIRE_18),
	.s1(dot),
	.s0(dash),
	.Q(n2));


myMux41	b2v_state3(
	.w0(d3),
	.w1(SYNTHESIZED_WIRE_9),
	.w2(SYNTHESIZED_WIRE_10),
	.w3(SYNTHESIZED_WIRE_19),
	.s1(dot),
	.s0(dash),
	.Q(n3));


myMux41	b2v_state4(
	.w0(d4),
	.w1(SYNTHESIZED_WIRE_12),
	.w2(SYNTHESIZED_WIRE_13),
	.w3(SYNTHESIZED_WIRE_18),
	.s1(dot),
	.s0(dash),
	.Q(n4));


myMux41	b2v_state5(
	.w0(d5),
	.w1(SYNTHESIZED_WIRE_15),
	.w2(SYNTHESIZED_WIRE_16),
	.w3(SYNTHESIZED_WIRE_19),
	.s1(dot),
	.s0(dash),
	.Q(n5));


endmodule
