library verilog;
use verilog.vl_types.all;
entity tx_baud_counter is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        baud_out        : out    vl_logic
    );
end tx_baud_counter;
