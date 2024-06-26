library verilog;
use verilog.vl_types.all;
entity Contador_tiempo is
    port(
        CLK             : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        count           : out    vl_logic_vector(2 downto 0);
        minsal          : out    vl_logic
    );
end Contador_tiempo;
