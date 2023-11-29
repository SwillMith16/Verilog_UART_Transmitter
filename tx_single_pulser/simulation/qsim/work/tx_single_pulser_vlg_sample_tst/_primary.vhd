library verilog;
use verilog.vl_types.all;
entity tx_single_pulser_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        send_n          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_single_pulser_vlg_sample_tst;
