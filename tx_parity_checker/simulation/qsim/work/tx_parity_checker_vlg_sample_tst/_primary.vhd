library verilog;
use verilog.vl_types.all;
entity tx_parity_checker_vlg_sample_tst is
    port(
        data_in         : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end tx_parity_checker_vlg_sample_tst;
