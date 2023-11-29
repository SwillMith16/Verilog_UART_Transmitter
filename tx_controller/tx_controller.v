module tx_controller(
	input clk,
	input reset_n,
	input send,
	input baud,
	input count_done,
	output shift,
	output load
	);

// state parameters
parameter IDLE = 1'b0;
parameter ACTIVE = 1'b1;

reg n_state, p_state;
reg load_pulse, shift_pulse;

assign load = load_pulse;
assign shift = shift_pulse;

always @ (posedge clk, negedge reset_n)
begin
	if(!reset_n)
	begin
		p_state <= IDLE;
	end
	else
	begin
		p_state <= n_state;
	end
end


always @ (send, baud, count_done, p_state)
begin
	// default assignments
	load_pulse = 0;
	shift_pulse = 0;
	n_state = p_state;
	
	case (p_state)
	IDLE:
	begin
		// if send pulse is received, generate load 
		// pulse and move to ACTIVE state
		if (send)
		begin
			n_state = ACTIVE;
			load_pulse = 1;
		end
	end
	ACTIVE:
	begin
		// shift follows baud until count done signal
		// is received from bit counter
		if (baud)
			shift_pulse = 1;
		if (count_done)
			n_state = IDLE;
	end
	endcase
end
	
	
endmodule
