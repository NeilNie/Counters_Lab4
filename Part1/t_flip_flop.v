

module t_flip_flop(clk, T, Q);

input T, clk;
output Q;

wire Qm, Qs, D;

assign D = T ^ Q;

gated_d_latch latch1(
	.clk(~clk), 
	.D(D), 
	.Q(Qm)
);

gated_d_latch latch2(
	.clk(clk), 
	.D(Qm), 
	.Q(Qs)
);

assign Q = Qs;

endmodule
