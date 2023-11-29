module tx_single_pulser(
	input clk,
	input reset_n,
	input send_n,
	output pulse_out
	);

parameter S1 = 1'b0;
parameter S2 = 1'b1;

reg n_state, p_state;
reg n_pulse, p_pulse;

assign pulse_out = p_pulse;

always @(posedge clk, negedge reset_n)
begin
	if (!reset_n)
	begin
		p_pulse <= 0;
		p_state <= S1;
	end
	else
	begin
		p_state <= n_state;
		p_pulse <= n_pulse;
	end
end

always @ (send_n, p_state)
begin
	// dafult assignments
	n_pulse = 0;
	n_state = p_state;
	
	case (p_state)
	S1:
	begin
		if (!send_n) // send key is pressed
		begin
			n_pulse = 1;
			n_state = S2;
		end
		else // send key not pressed, remain in S1
		begin
			n_state = p_state;
		end
	end
	S2:
	begin
		if (send_n) // send key released, return to S1
		begin
			n_state = S1;
		end
		else // send key not released, stay in S2
		begin
			n_state = p_state;
		end
	end
	endcase
end

endmodule
