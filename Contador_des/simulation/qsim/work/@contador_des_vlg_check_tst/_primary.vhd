library verilog;
use verilog.vl_types.all;
entity Contador_des_vlg_check_tst is
    port(
        count           : in     vl_logic_vector(5 downto 0);
        minsal          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Contador_des_vlg_check_tst;
