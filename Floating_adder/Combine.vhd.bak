library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Combine is
	port
	(
		-- Input ports
		ResultFixNum	: in  unsigned (11 downto 0);
		BiggerE	: in  unsigned (4 downto 0);
		
		-- Output ports
		ResultME	: out unsigned (14 downto 0)
	);

end Entity;


Architecture RTL of Combine is
	Signal Exponent : Unsigned(4 Downto 0);
Begin
	Exponent <= (BiggerE + 1) when ResultFixNum(11) = '1' else
					BiggerE;
					
	ResultME(14 Downto 10) <= exponent;
	ResultME(9 Downto 0) <= ResultFixNum(10 Downto 1) when ResultFixNum(11) = '1' else
									ResultFixNum(9 Downto 0);
	
End RTL;