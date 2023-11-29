module tx_3to4_bus_expansion(
	input [2:0] data_in,
	output reg [3:0] data_out
	);
	
// input b111 = output b0111;

always @ (data_in)
begin
	// pass data straight through
	// and set spare bit to 0
	data_out[3] = 0;
	data_out[2:0] = data_in;
end

endmodule
