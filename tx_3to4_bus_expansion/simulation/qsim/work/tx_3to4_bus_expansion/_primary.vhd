library verilog;
use verilog.vl_types.all;
entity tx_3to4_bus_expansion is
    port(
        data_in         : in     vl_logic_vector(2 downto 0);
        data_out        : out    vl_logic_vector(3 downto 0)
    );
end tx_3to4_bus_expansion;
