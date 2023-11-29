library verilog;
use verilog.vl_types.all;
entity tx_controller_vlg_check_tst is
    port(
        load            : in     vl_logic;
        shift           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tx_controller_vlg_check_tst;
