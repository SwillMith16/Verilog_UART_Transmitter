library verilog;
use verilog.vl_types.all;
entity tx_parity_checker is
    port(
        data_in         : in     vl_logic_vector(6 downto 0);
        data_out        : out    vl_logic_vector(10 downto 0)
    );
end tx_parity_checker;
