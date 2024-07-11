--Nama	: Sidartha Prastya. P
--NIM		: 13219033

library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port (
		x,y,cin	: in std_logic;
		sum,cout	: out std_logic
		);
end fulladder;
	
architecture Gate_level of fulladder is
	begin
		sum <= x xor y xor cin;
		cout <= (x and cin) or (x and y) or (y and cin);
	end Gate_level;