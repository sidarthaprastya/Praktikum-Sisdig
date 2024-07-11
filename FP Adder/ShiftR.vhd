library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ShiftR is
	port
	(
		-- Input ports
		InM	: in  unsigned (10 downto 0);
		SelisE	: in  unsigned (4 downto 0);
		
		-- Output ports
		OutM	: out unsigned (10 downto 0)
	);
end Entity;

Architecture RTL of ShiftR is
Signal Shifted_Signal : unsigned(21 downto 0);
Signal Internal_Signal : std_logic_vector(9 downto 0);
Signal Round_Up : std_logic;

Begin

with SelisE select
Shifted_Signal <= (InM & "00000000000") when "00000",
                   ("0" &  InM & "0000000000") when "00001",
						 ("00" &  InM & "000000000") when "00010",
						 ("000" &  InM & "00000000") when "00011",
						 ("0000" &  InM & "0000000") when "00100",
						 ("00000" &  InM & "000000") when "00101",
						 ("000000" &  InM & "00000") when "00110",
						 ("0000000" &  InM & "0000") when "00111",
						 ("00000000" &  InM & "000") when "01000",
						 ("000000000" &  InM & "00") when "01001",
						 ("0000000000" &  InM & "0") when "01010",
						 ("00000000000" &  InM) when "01011",
						 ("000000000000" &  InM(10 Downto 1)) when "01100",
						 "0000000000000000000000" when others;
				
OutM <= Shifted_Signal(21 Downto 11) when (Round_Up = '0') else
		  (Shifted_Signal(21 Downto 11) + 1);
		  
Internal_Signal <= std_logic_vector(Shifted_Signal(9 Downto 0));
Round_Up <= Shifted_Signal(10) when (Internal_Signal /= "000000000") else
            '0'; 						 


End RTL;
