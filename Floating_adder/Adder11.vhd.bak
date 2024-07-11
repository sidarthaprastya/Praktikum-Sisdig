library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Adder11 is
	port
	(
		-- Input ports
		InMSatu	: in  unsigned (10 downto 0);
		InMDua	: in  unsigned (10 downto 0);
		
		-- Output ports
		OutM	: out unsigned (11 downto 0)
	);
end Entity;


Architecture RTL of Adder11 is
Begin

	OutM <= ('0' & InMSatu) + ('0' & InMDua);
End RTL;