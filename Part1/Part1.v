//
// Verilog Lab 4 Part 1
// Neil Nie, (c) 2018
// All Rights Reserved
// MIT License
//

module Part1(KEY, SW, out, HEX0, HEX1);

input [1:0] KEY;
input [1:0] SW;
output [7:0] out;
output [6:0] HEX0;
output [6:0] HEX1;

wire in_1, in_2, in_3, in_4, in_5, in_6, in_7;
wire out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7;

t_flip_flop ff0(
	.clk(~KEY[0]),
	.T(SW[0]),
	.Q(out_0)
);

assign in_1 = SW[0] & out_0;

t_flip_flop ff1(
	.clk(~KEY[0]),
	.T(in_1),
	.Q(out_1)
);

assign in_2 = in_1 & out_1;

t_flip_flop ff2(

	.clk(~KEY[0]),
	.T(in_2),
	.Q(out_2)
);

assign in_3 = in_2 & out_2;

t_flip_flop ff3(

	.clk(~KEY[0]),
	.T(in_3),
	.Q(out_3)
);

assign in_4 = in_3 & out_3;

t_flip_flop ff4(
	.clk(~KEY[0]),
	.T(in_4),
	.Q(out_4)
);

assign in_5 = in_4 & out_4;

t_flip_flop ff5(
	.clk(~KEY[0]),
	.T(in_5),
	.Q(out_5)
);

assign in_6 = in_5 & out_5;

t_flip_flop ff6(
	.clk(~KEY[0]),
	.T(in_6),
	.Q(out_6)
);

assign in_7 = in_6 & out_6;

t_flip_flop ff7(
	.clk(~KEY[0]),
	.T(in_7),
	.Q(out_7)
);

seven_segment_decoder display1(
	.n({out_3, out_2, out_1, out_0}),
	.display(HEX0)
);

seven_segment_decoder display2(
	.n({out_7, out_6, out_5, out_4}),
	.display(HEX1)
);

assign out = {out_7, out_6, out_5, out_4, out_3, out_2, out_1, out_0};

endmodule
