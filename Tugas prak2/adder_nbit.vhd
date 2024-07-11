--Nama	: Sidartha Prastya. P
--NIM		: 13219033

library ieee;
use ieee.std_logic_1164.all;

entity adder_nbit is
	Generic(N : integer);
	port(
		cin : in std_logic;
		x		: in std_logic_vector(N-1 downto 0);
		y		: in std_logic_vector(N-1 downto 0);
		sum	: out std_logic_vector(N-1 downto 0);
		cout	: out std_logic
		);
end entity;

architecture Structural of adder_nbit is
	component fulladder is
		port(
			x,y,cin	: in std_logic;
			sum,cout	: out std_logic
			);
	end component;

	signal C	: std_logic_vector(N-1 downto 0);
	
	begin
		Adder_0	: fulladder
		port map(
			cin => Cin,
			x => x(0),
			y => y(0),
			sum => sum(0),
			cout => C(0)
		);
		
		Adders : for i in 1 to N-1 generate
			Adder : fulladder
			port map(
				cin => C(i-1),
				x => x(i),
				y => y(i),
				sum => sum(i),
				cout => C(i));
	end generate;
	
	cout <= C(N-1);
	
	end architecture Structural;