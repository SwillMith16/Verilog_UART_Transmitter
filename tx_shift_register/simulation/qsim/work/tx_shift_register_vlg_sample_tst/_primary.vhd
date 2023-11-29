library verilog;
use verilog.vl_types.all;
entity tx_shift_register_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(10 downto 0);
        load            : in     vl_logic;
        reset_n         : in     vl_logic;
        shift           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_shift_register_vlg_sample_tst;
