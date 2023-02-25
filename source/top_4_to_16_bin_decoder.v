/* task from course - Verilog HDL for Digital Design and Functional Verification*/

module decoder_4_to_16(
	//inputs
	input en,
	input [3:0] a,
	
	//outputs
	output wire [15:0] out );
	
	wire en_a, en_b;
	
	//enable LSB decoder
	assign en_a = ( en && (!a[3]) );
	
	//enable MSB decoder
	assign en_b = ( en && (a[3]) );
	
	//instantiate LSB decoder
	decoder_3_to_8 dec3to8_a(
		.en(en_a),
		.a(a[2:0]),
		.out(out[7:0]) );
	//instantiate MSB decoder	
	decoder_3_to_8 dec3to8_b(
		.en(en_b),
		.a(a[2:0]),
		.out(out[15:8]) );
	
endmodule