library verilog;
use verilog.vl_types.all;
entity tx_7seg_decoder_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end tx_7seg_decoder_vlg_check_tst;
