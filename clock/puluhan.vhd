LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity puluhan is
port(
	clk1hz, reset, enable	: in bit;
	puluh		: out integer range 0 to 9;
	carry1	: out bit
);
end puluhan;

Architecture RTL of puluhan is
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
				carry1 <= '1';
			else
				carry1 <= '0';
			end if;
			
			puluh <= angka;
		end if;
	end process;
end RTL;