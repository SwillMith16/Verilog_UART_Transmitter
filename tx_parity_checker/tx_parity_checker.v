module tx_parity_checker(
	input [6:0] data_in,
	output [10:0] data_out
	);
	
// default assignment to prevent latch synthesis
reg parity_bit = 0;
reg start_bit = 0;
reg stop_bit = 1;

// pass data from input to output
assign data_out[0] = stop_bit;
assign data_out[1] = start_bit;
assign data_out[8:2] = data_in[6:0];
assign data_out[9] = parity_bit;
assign data_out[10] = stop_bit;

always @ (data_in)
begin
	// get value of parity bit
	// NOT XOR data input
	parity_bit = !(^data_in);
end
	
endmodule
