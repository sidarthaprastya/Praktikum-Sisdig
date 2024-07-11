library ieee;
use ieee.std_logic_1164.all;

entity fullsubs is
	port (
		x,y,bin	: in std_logic;
		subs,bout	: out std_logic
		);
end fullsubs;
	
architecture Gate_level of fullsubs is
	begin
		subs <= x xor y xor bin;
		bout <= (not(x) and bin) or (not(x) and y) or (y and bin);
	end Gate_level;