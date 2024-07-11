LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY clock_divider IS
	port(
		clock	: in std_logic;
		reset	: in bit;
		clk1hz: out bit
	);
END clock_divider;
 
ARCHITECTURE RTL OF clock_divider IS

	signal pulse	: bit;
	signal counter	: integer range 0 to 24999999 := 0;

BEGIN
	Process (reset, clock)
	Begin
		if (reset ='0') then
			pulse <= '0';
			counter <= 0;
		elsif rising_edge (clock) then
			if counter = 24999999 then
				pulse <= not pulse;
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
	clk1hz <= pulse;

END RTL;
