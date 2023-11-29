library verilog;
use verilog.vl_types.all;
entity tx_controller_vlg_sample_tst is
    port(
        baud            : in     vl_logic;
        clk             : in     vl_logic;
        count_done      : in     vl_logic;
        reset_n         : in     vl_logic;
        send            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_controller_vlg_sample_tst;
