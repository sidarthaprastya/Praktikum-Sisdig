library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity CompS is
	port
	(
		-- Input ports
		SA	: in  std_logic;
		SBconv	: in  std_logic;
		AlbhB	: in  Std_logic;

		-- Output ports
		OPS	: out std_logic;
		FixS: out std_logic
	);
end entity;

Architecture RTL of CompS is

Begin

	FixS <= SA when (AlbhB = '1') else
				SBconv;
					
					
	OPS <= SA xor SBconv;


End RTL;
