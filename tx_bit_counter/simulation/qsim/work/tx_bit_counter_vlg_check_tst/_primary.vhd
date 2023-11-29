library verilog;
use verilog.vl_types.all;
entity tx_bit_counter_vlg_check_tst is
    port(
        done            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tx_bit_counter_vlg_check_tst;
