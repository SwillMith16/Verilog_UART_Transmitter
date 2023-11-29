module tx_bit_counter(
	input clk,
	input reset_n,
	input increment,
	output done
	);

reg [3:0] count;
parameter count_max = 4'd10;

// 'done' output is only high when count has reached 10
assign done = (count == count_max);

always @(posedge clk, negedge reset_n)
begin
	if (!reset_n)
		// if reset signal is received, clear and restart
		count = 4'd0;
	else
	begin
		if (increment)
			// if increment input is received, increase count
			count = count + 1;
		
		else if (count == count_max)
			// if count has reached 10, clear and restart
			count = 4'd0;
	end
end

endmodule
