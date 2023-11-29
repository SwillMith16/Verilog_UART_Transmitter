library verilog;
use verilog.vl_types.all;
entity tx_bit_counter is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        increment       : in     vl_logic;
        done            : out    vl_logic
    );
end tx_bit_counter;
