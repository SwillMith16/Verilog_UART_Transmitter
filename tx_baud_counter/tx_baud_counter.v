module tx_baud_counter(
	input clk,
	input reset_n,
	output baud_out
	);
	
reg [12:0] count; // 13-bit counter to divide the clock

// 9600 baud rate. 50MHz / 9600 = 5208. Starting at 0, count to 5207
parameter baud_count = 13'd5207; // use this for programming DE2 board
//parameter baud_count = 13'd4; // use this for waveform simulation

assign baud_out = (count == baud_count);

always @(posedge clk, negedge reset_n)
begin
	if (!reset_n) // reset is pressed
	begin
		count = 13'd0;
	end
	else
	begin
		// If it has incremented 5207 times, reset and output logic 1
		if (count == baud_count)
			count = 13'd0;
		// If it hasn't incremented 5207 times, increment the counter
		else
			count = count + 1;
	end
end

endmodule
