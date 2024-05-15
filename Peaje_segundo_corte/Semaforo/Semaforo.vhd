library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Semaforo is
    port (
        clk1   : in std_logic;
		  clk2   : in std_logic;										      			-- Señales de reloj
        enable : in std_logic;															-- Si es 1, permite la salida del vehiculo, si es 0, permanecerá cerrado(emitido por front sensor)
		  alarma : in std_logic;                                             -- Parpadeo por categoría inválida
        verde, rojo : buffer std_logic					         					-- Salidas
    );
end Semaforo;

architecture arch_Semaforo of Semaforo is

	

begin
   Reloj: process(clk1, clk2, enable) is
	begin
		if (alarma = '1') then
			rojo <= clk1;
		else
			if (enable='1') then
				verde <= clk2;
				rojo <= '0';
			elsif (enable='0') then
				verde <= '0';
				rojo <= clk1;
			end if;
		end if;
    end process;
end architecture arch_Semaforo;
