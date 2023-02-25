//test bench for 4 to 16 binary decoder using two 3 to 8 binary decoder

module decoder_4_to_16_tb();
	
	//inputs
	input reg en;
	input reg [3:0] a;
	
	//outputs
	output wire [15:0] out;
	
	//testbench variables
	integer i;
	
	decoder_4_to_16 dec4to16_a(
		.en(en),
		.a(a)
		.out(out) );
		
	initial begin
		#2;
		en = 0
		for (i = 0; i < 15; i = i + 1) begin
			#1;
			a = a + 1;
		end
		#2;
		en = 1
		for (i = 0; i < 15; i = i + 1) begin
			#1;
			a = a + 1;
		end
	end
endmodule