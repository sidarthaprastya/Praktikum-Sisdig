--Nama	: Sidartha Prastya. P
--NIM		: 13219033

library ieee;
use ieee.std_logic_1164.all;

-- Inisiasi adder substractor sebagai 16bit
entity adder_substractor is
	port(
		OP		: in std_logic;
		x_sub		: in std_logic_vector(15 downto 0);
		y_sub		: in std_logic_vector(15 downto 0);
		result_sub	: out std_logic_vector(15 downto 0);
		cout_sub	: out std_logic
		);
end entity;

architecture Structural of adder_substractor is
	component adder_nbit is
	Generic (N: integer);
		port(
			cin 	: in std_logic;
			x		: in std_logic_vector(N-1 downto 0);
			y		: in std_logic_vector(N-1 downto 0);
			sum	: out std_logic_vector(N-1 downto 0);
			cout	: out std_logic
			);
	end component;
	
	signal truey: std_logic_vector(15 downto 0);
	
	begin
	
	substractor : for i in 0 to 15 generate
		truey(i)	<= y_sub(i) xor OP;
	end generate;
	
	adder	: adder_nbit
		Generic map (N => 16)
		port map(OP, x_sub, truey,result_sub,cout_sub);
	
	end Structural;
	