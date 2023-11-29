library verilog;
use verilog.vl_types.all;
entity transmitter_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        data_in         : in     vl_logic_vector(6 downto 0);
        reset_n         : in     vl_logic;
        send_n          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end transmitter_vlg_sample_tst;
