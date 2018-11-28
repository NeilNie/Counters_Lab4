//
//
// Part 2 Digital Logic Lab 4
// Neil Nie
// (c) 2018, All Rights Reserved


module Part2 (KEY, HEX0, HEX1, LEDR);

input [1:0] KEY;
input [6:0] HEX0;
input [6:0] HEX1;
output [7:0] LEDR;

wire clock;

assign clock = ~KEY[0];

reg [7:0] value;

initial begin

value <= 8'b00000000;

end

always @ (posedge clock) begin

value <= value + 1;

end

assign LEDR = {value[7],value[6],value[5],value[4],value[3],value[2],value[1],value[0]};

endmodule
