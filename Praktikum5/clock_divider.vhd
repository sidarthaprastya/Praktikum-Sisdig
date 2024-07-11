LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY clock_divider IS
	port(
		clock	: in std_logic;
		reset	: in std_logic;
		clk1hz: out std_logic;
		clk1khz: out std_logic
	);
END clock_divider;
 
ARCHITECTURE RTL OF clock_divider IS

	signal pulsehz	: std_logic;
	signal pulsekhz: std_logic;
	signal counterhz	: integer range 0 to 24999999 := 0;
	signal counterkhz	: integer range 0 to 24999 := 0;

BEGIN
	Process (reset, clock)
	Begin
		if (reset ='1') then
			pulsehz <= '0';
			pulsekhz <= '0';
			counterhz <= 0;
			counterkhz <= 0;
			
		elsif rising_edge (clock) then
			if counterhz = 24999999 then
				pulsehz <= not pulsehz;
				counterhz <= 0;
			else
				counterhz <= counterhz + 1;
			end if;
			
			if counterkhz = 24999 then
				pulsekhz	<= not pulsekhz;
				counterkhz <= 0;
			else
				counterkhz <= counterkhz + 1;
			end if;
			
		end if;
	end process;
	
	clk1hz <= pulsehz;
	clk1khz <= pulsekhz;

END RTL;
