LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY satuan is
	port(
		clk1hz, reset, enable	: in bit;
		satu	: out integer range 0 to 9;
		carry	: out bit
	);
end satuan;

Architecture RTL of satuan is
begin
	process (clk1hz)
	variable angka	: integer range 0 to 9;
	
	begin
		if clk1hz = '1' and clk1hz'event then
			if enable ='1' then
				if angka < 9 then
					angka := angka + 1;
				
				else
					angka :=0;
				end if;
			end if;
			
			if angka = 0 and enable = '1' then
				carry <= '1';
			else
				carry <= '0';
			end if;
			
			satu <= angka;
		end if;
	end process;
end RTL;