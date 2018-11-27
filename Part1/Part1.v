//
// Verilog Lab 4 Part 1
// Neil Nie, (c) 2018
// All Rights Reserved
// MIT License
//

module Part1(clock, enable, out);

input clock;
input enable;
output [7:0] out;

wire in_1, in_2, in_3, in_4, in_5, in_6, in_7;
wire out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7;

t_flip_flop ff8(

	.clk(clock),
	.T(enable),
	.Q(out_0)
);

assign in_1 = enable & out_0;

t_flip_flop ff1(

	.clk(clock),
	.T(in_1),
	.Q(out_1)
);

assign in_2 = out_0 & out_1;

t_flip_flop ff2(

	.clk(clock),
	.T(in_2),
	.Q(out_2)
);

assign in_3 = out_1 & out_2;

t_flip_flop ff3(

	.clk(clock),
	.T(in_3),
	.Q(out_3)
);

assign in_4 = out_2 & out_3;

t_flip_flop ff4(

	.clk(clock),
	.T(in_4),
	.Q(out_4)
);

assign in_5 = out_3 & out_4;

t_flip_flop ff5(

	.clk(clock),
	.T(in_5),
	.Q(out_5)
);

assign in_6 = out_4 & out_5;

t_flip_flop ff6(

	.clk(clock),
	.T(in_6),
	.Q(out_6)
);

assign in_7 = out_5 & out_6;

t_flip_flop ff7(

	.clk(clock),
	.T(in_7),
	.Q(out_7)
);

assign out = {out_7, out_6, out_5, out_4, out_3, out_2, out_1, out_0};

endmodule
