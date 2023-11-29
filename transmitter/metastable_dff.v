
module metastable_dff(
	input async_in,
	input clk,
	output reg sync_out
);

/*
starting value must be 1 to
prevent instant send of data
*/
initial
	sync_out = 1;

/*
at positive clock edge, send
input through to output
*/
always @ (posedge clk)
	sync_out <= async_in;

endmodule

