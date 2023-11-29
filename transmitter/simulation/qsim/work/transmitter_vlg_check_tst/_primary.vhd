library verilog;
use verilog.vl_types.all;
entity transmitter_vlg_check_tst is
    port(
        baud_out        : in     vl_logic;
        HEX2            : in     vl_logic_vector(6 downto 0);
        HEX3            : in     vl_logic_vector(6 downto 0);
        LEDG            : in     vl_logic_vector(1 downto 0);
        load            : in     vl_logic;
        parity_data     : in     vl_logic_vector(10 downto 0);
        send_pulse      : in     vl_logic;
        shift           : in     vl_logic;
        sync_out1       : in     vl_logic;
        sync_out2       : in     vl_logic;
        UART_TXD        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end transmitter_vlg_check_tst;
