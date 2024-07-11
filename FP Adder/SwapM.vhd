library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity SwapM is
	port
	(
		-- Input ports
		MA	: in  unsigned (9 downto 0);
		MB	: in  unsigned (9 downto 0);
		AlbhB	: in  Std_logic;

		-- Output ports
		BiggerI_Mantisa	: out unsigned (9 downto 0);
		SmallerI_Mantisa	: out unsigned (9 downto 0)
	);
end Entity;


Architecture RTL of SwapM is
Begin

	BiggerI_Mantisa <= MA when (AlbhB = '1') else
							  MB;
							  
	SmallerI_Mantisa <= MA when (AlbhB = '0') else
							  MB;

End RTL;
