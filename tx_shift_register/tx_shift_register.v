module tx_shift_register(
	input clk,
	input reset_n,
	input shift,
	input load,
	input [10:0] data_in,
	output txData
	);
	
reg [10:0] p_data, n_data;

// output is LSB
assign txData = p_data[0];

always @ (posedge clk, negedge reset_n)
begin
	if (!reset_n) p_data <= 1;
		else p_data <= n_data;
end

always @ (shift, load, data_in)
begin
	n_data = p_data; // default assignment
	
	if (load)
		// bring new data into shift register
		n_data = data_in;
	
	if (shift)
	begin
		// when shift signal is received, shift data right
		// and replace with 1's (stop bit value)
		n_data = p_data >>> 1;
		n_data[10] = 1;
	end
	
end
	
endmodule
