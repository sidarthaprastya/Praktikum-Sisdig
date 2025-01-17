library ieee;
use ieee.std_logic_1164.all;

entity substractor_nbit is
	Generic(N : integer);
	port(
		bin : in std_logic;
		x		: in std_logic_vector(N-1 downto 0);
		y		: in std_logic_vector(N-1 downto 0);
		subs	: out std_logic_vector(N-1 downto 0);
		bout	: out std_logic
		);
end entity;

architecture Structural of substractor_nbit is
	component fullsubs is
		port(
			x,y,bin	: in std_logic;
			subs,bout	: out std_logic
			);
	end component;

	signal C	: std_logic_vector(N-1 downto 0);
	
	begin
		Adder_0	: fullsubs
		port map(
			bin => bin,
			x => x(0),
			y => y(0),
			subs => subs(0),
			bout => C(0)
		);
		
		Adders : for i in 1 to N-1 generate
			Adder : fullsubs
			port map(
				bin => C(i-1),
				x => x(i),
				y => y(i),
				subs => subs(i),
				bout => C(i));
	end generate;
	
	bout <= C(N-1);
	
	end architecture Structural;