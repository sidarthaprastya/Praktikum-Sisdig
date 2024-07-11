library ieee;
use ieee.std_logic_1164.all;

-- Inisiasi adder substractor sebagai 16bit
entity adder_substractor is
	Generic (N: integer := 10);
	port(
		OP		: in std_logic;
		x_sub		: in std_logic_vector(N-1 downto 0);
		y_sub		: in std_logic_vector(N-1 downto 0);
		result_sub	: out std_logic_vector(N-1 downto 0);
		cout_sub	: out std_logic
		);
end entity;

architecture Structural of adder_substractor is
	component adder_nbit is
	Generic (N: integer := 10);
		port(
			cin_n	: in std_logic;
			x_n	: in std_logic_vector(N-1 downto 0);
			y_n	: in std_logic_vector(N-1 downto 0);
			sum_n	: out std_logic_vector(N-1 downto 0);
			cout_n: out std_logic
			);
	end component;
	
	signal truey: std_logic_vector(N-1 downto 0);
	
	begin
	
	substractor : for i in 0 to (N-1) generate
		truey(i)	<= y_sub(i) xor OP;
	end generate;
	
	adder	: adder_nbit
		port map(OP, x_sub, truey,result_sub,cout_sub);
	
	end Structural;