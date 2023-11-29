library verilog;
use verilog.vl_types.all;
entity transmitter is
    port(
        load            : out    vl_logic;
        CLOCK_50        : in     vl_logic;
        reset_n         : in     vl_logic;
        send_n          : in     vl_logic;
        shift           : out    vl_logic;
        UART_TXD        : out    vl_logic;
        data_in         : in     vl_logic_vector(6 downto 0);
        baud_out        : out    vl_logic;
        send_pulse      : out    vl_logic;
        sync_out1       : out    vl_logic;
        sync_out2       : out    vl_logic;
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        LEDG            : out    vl_logic_vector(1 downto 0);
        parity_data     : out    vl_logic_vector(10 downto 0)
    );
end transmitter;
