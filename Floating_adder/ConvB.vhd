library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ConvB is
	port
	(
		-- Input ports
		BOP	: in  std_logic;
		OP	: in  std_logic;

		-- Output ports
		Bconv : out std_logic
	);
end entity;

Architecture RTL of ConvB is

Begin

	Bconv <= BOP xor OP;

End RTL;
