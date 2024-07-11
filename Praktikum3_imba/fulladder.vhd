library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port (
		add_x : in std_logic;
		add_y : in std_logic;
		add_cin : in std_logic;
		add_sum, add_cout : out std_logic
		);
end fulladder;

architecture Gate_level of fulladder is
	begin
		add_sum <= add_x xor add_y xor add_cin;
		add_cout <= (add_x and add_cin) or (add_y and add_cin) or (add_x and add_y);
	end Gate_level;