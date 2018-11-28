

module t_flip_flop(clk, T, Q);

input T, clk;
output reg Q;

initial begin
	Q = 0;
end 

always @ (posedge clk) begin

	if (T == 1)
		Q = ~Q;
	else
		Q = Q;
end

endmodule
