//
// A simple counter with HEX display.
// Neil Nie, (c) 2018
// Contact: contact@neilnie.com
//

module Part2(HEX0, CLOCK_50, count);

input CLOCK_50;
output [6:0] HEX0;
output reg [3:0] count;

wire out_1hz;

// setup a one hertz clock
clock_1hz clock(
	.clk(CLOCK_50), 
	.out(out_1hz)
);

//reg count;
initial count = 4'b0;

always @ (posedge CLOCK_50) begin

	if (count < 10)
		count <= count + 1;
	else
		count <= 4'b0;
	
end

// setup the seven segment display
seven_segment_display display(
	.in(count),
	.out(HEX0)
);

endmodule
