library ieee;
use ieee.std_logic_1164.all;

entity Adder_4bit is
	port(
		x	: in std_logic_vector(3 downto 0);
		y	: in std_logic_vector(3 downto 0);
		result	: out std_logic_vector(4 downto 0)
		);
end Adder_4bit;

architecture RTL of Adder_4bit is
	component fulladder is
		port(
			A,B,Cin	: in std_logic;
			S,Cout	: out std_logic
			);
	end component;

	signal carry	: std_logic_vector(3 downto 0);
	begin
		FA1	: fulladder port map(x(0),y(0),'0',result(0),carry(0));
		FA2	: fulladder port map(x(1),y(1),carry(0),result(1),carry(1));
		FA3	: fulladder port map(x(2),y(2),carry(1),result(2),carry(2));
		FA4	: fulladder port map(x(3),y(3),carry(2),result(3),carry(3));
		
		result(4) <= carry(3);
	
	end RTL;