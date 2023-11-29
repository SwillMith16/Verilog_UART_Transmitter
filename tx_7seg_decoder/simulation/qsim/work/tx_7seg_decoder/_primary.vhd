library verilog;
use verilog.vl_types.all;
entity tx_7seg_decoder is
    port(
        data_in         : in     vl_logic_vector(3 downto 0);
        data_out        : out    vl_logic_vector(6 downto 0)
    );
end tx_7seg_decoder;
