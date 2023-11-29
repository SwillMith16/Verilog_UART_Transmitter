library verilog;
use verilog.vl_types.all;
entity tx_controller is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        send            : in     vl_logic;
        baud            : in     vl_logic;
        count_done      : in     vl_logic;
        shift           : out    vl_logic;
        load            : out    vl_logic
    );
end tx_controller;
