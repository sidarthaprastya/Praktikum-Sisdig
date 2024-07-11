library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity SubsE is
	port
	(
		-- Input ports
		EA	: in  unsigned (4 downto 0);
		EB	: in  unsigned (4 downto 0);
		AlbhB	: in  Std_logic;

		-- Output ports
		SelisE	: out unsigned (4 downto 0);
		BiggerE: out unsigned (4 downto 0)
	);
end entity;

Architecture RTL of SubsE is

Begin

	BiggerE <= EA when (AlbhB = '1') else
					EB;
					
					
	SelisE <= (EA - EB) when (AlbhB = '1') else
					(EB-EA);


End RTL;
