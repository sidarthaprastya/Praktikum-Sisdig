LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

PACKAGE pack is 

component clock_divider
port(
	clock	: in std_logic;
	reset	: in bit;
	clk1hz: out bit
);
end component;

component satuan
port(
	clk1hz, reset, enable	: in bit;
	satu	: out integer range 0 to 9;
	carry	: out bit
);
end component;

component puluhan
port(
	clk1hz, reset, enable	: in bit;
	puluh		: out integer range 0 to 9;
	carry1	: out bit
);
end component;

component bcd_satuan
port(
	satu	: in integer range 0 to 9;
	a,b,c,d,e,f,g : out bit
);
end component;

component bcd_puluhan
port(
	puluh	: in integer range 0 to 9;
	a1,b1,c1,d1,e1,f1,g1 : out bit
);
end component;

END pack;