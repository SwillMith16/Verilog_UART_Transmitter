library verilog;
use verilog.vl_types.all;
entity tx_3to4_bus_expansion_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end tx_3to4_bus_expansion_vlg_check_tst;
