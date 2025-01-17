--Nama	: Sidartha Prastya. P
--NIM		: 13219033

library ieee;
use ieee.std_logic_1164.all;

-- Inisiasi adder substractor sebagai 16bit
entity substractor_adder is
	port(
		OP		: in std_logic;
		x_add		: in std_logic_vector(15 downto 0);
		y_add		: in std_logic_vector(15 downto 0);
		result_add	: out std_logic_vector(15 downto 0);
		bout_add	: out std_logic
		);
end entity;

architecture Structural of substractor_adder is
	component substractor_nbit is
	Generic (N: integer);
		port(
			bin 	: in std_logic;
			x		: in std_logic_vector(N-1 downto 0);
			y		: in std_logic_vector(N-1 downto 0);
			subs	: out std_logic_vector(N-1 downto 0);
			bout	: out std_logic
			);
	end component;
	
	signal truey: std_logic_vector(15 downto 0);
	
	begin
	
	substractor : for i in 0 to 15 generate
		truey(i)	<= y_add(i) xor OP;
	end generate;
	
	subs	: substractor_nbit
		Generic map (N => 16)
		port map(OP, x_add, truey,result_add,bout_add);

	end Structural;
	