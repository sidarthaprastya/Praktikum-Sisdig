LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity digit is
port(
	clock : in std_logic;
	reset : in std_logic;
	updown: in std_logic;
	stop	: in std_logic;
	
	digit1: out integer range 0 to 9;
	digit2: out integer range 0 to 9
);
end digit;

architecture RTL of digit is

signal pulse1, pulse2 : integer range 0 to 9;

begin
	process (reset, clock)
	begin
	if reset = '1' then
		pulse1 <= 0;
		pulse2 <= 0;
	
	else
		if clock ='1' and clock'event then
		
			if updown ='1' and stop ='0' then --up
			
				if pulse1 < 9 then
					pulse1 <= pulse1 + 1;
					
				else
					pulse1 <= 0;
					
					if pulse2 < 9 then
						pulse2 <= pulse2+1;
						
					else
						pulse2 <= 0;
						
					end if;
				end if;
			
			elsif updown ='0' and stop ='0' then --down
				if pulse1 > 0 then
					pulse1 <= pulse1 - 1;
					
				else
					pulse1 <= 9;
					
					if pulse2 > 0 then
						pulse2 <= pulse2 - 1;
						
					else
						pulse2 <= 9;
						
					end if;
				end if;
			
			else --stop
				pulse1 <= pulse1;
				pulse2 <= pulse2;
			
			end if;
		end if;
	end if;
	end process;
	
	digit1 <= pulse1;
	digit2 <= pulse2;

end RTL;
		