library ieee;
use ieee.std_logic_1164.all;

entity adder_nbit is
	generic (N:integer:=10);
	port(
		cin_n	: in std_logic;
		x_n	: in std_logic_vector(N-1 downto 0);
		y_n	: in std_logic_vector(N-1 downto 0);
		sum_n	: out std_logic_vector(N-1 downto 0);
		cout_n: out std_logic
		);
end entity;

architecture Structural of adder_nbit is
	component fulladder is
		port(
			add_x : in std_logic;
			add_y : in std_logic;
			add_cin : in std_logic;
			add_sum, add_cout : out std_logic
		);
	end component;
	
	signal C : std_logic_vector(9 downto 0);
	
	begin
		adder_0 : fulladder
			port map(
				add_x => x_n(0),
				add_y => y_n(0),
				add_cin => cin_n,
				add_sum => sum_n(0),
				add_cout => C(0)
			);
		
		adder_i : for i in 1 to N-1 generate
			adder : fulladder
				port map(
					add_x => x_n(i),
					add_y => y_n(i),
					add_cin => C(i-1),
					add_sum => sum_n(i),
					add_cout => C(i)
				);
		end generate;
		
		cout_n <= C(N-1);
	
	end architecture Structural;
		