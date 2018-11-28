//
// A simple counter with HEX display.
// Neil Nie, (c) 2018
// Contact: contact@neilnie.com
//

module Part3(HEX0, CLOCK_50, KEY, count, LEDR);

input CLOCK_50;
output [6:0] HEX0;
output reg [3:0] count;
output [10:0] LEDR;
input [1:0] KEY;

wire out_1hz;
wire [6:0] display_out;

// setup a one hertz clock
clock_1hz clock(
	.clk(CLOCK_50), 
	.out(out_1hz)
);

//reg count;
initial count = 4'b0;

always @ (posedge out_1hz) begin

	if (count < 9)
		count <= count + 1;
	else
		count <= 4'b0;
	
end

// setup the seven segment display
seven_segment_display display(
	.in(count),
	.out(display_out)
);

assign HEX0 = display_out;
assign LEDR[0] = out_1hz;

endmodule
