library verilog;
use verilog.vl_types.all;
entity tx_bit_counter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        increment       : in     vl_logic;
        reset_n         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_bit_counter_vlg_sample_tst;
