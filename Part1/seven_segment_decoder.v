

module seven_segment_decoder(n, display);

input [3:0] n;
output reg [6:0] display;
reg in;

always @* begin

	in = n;

	case (in)
	0000: display = 7'b1000000;
   0001: display = 7'b1111001;
   0010: display = 7'b0100100;
   0011: display = 7'b0110000;
   0100: display = 7'b0011001;
   0101: display = 7'b0010010;
   0110: display = 7'b0000010;
   0111: display = 7'b1111000;
   1000: display = 7'b0000000;
   1001: display = 7'b0011000;
   1010: display = 7'b0001000;
   1011: display = 7'b0000011;
   1100: display = 7'b0100111;
   1101: display = 7'b0100001;
   1110: display = 7'b0000110;
   1111: display = 7'b0001110;
	default: display = 7'b0000000;
	endcase
 end
 
endmodule
