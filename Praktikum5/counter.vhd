library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port (
		clk : in std_logic;
		up_down : in std_logic;
		reset		: in std_logic;
		stop		: in std_logic;
		
		a,b,c,d,e,f,g	: out std_logic;
		s1,s2	: out std_logic
	);
	end counter;

architecture behav of counter is

signal clk1hz, clk1khz	: std_logic;
signal digit1, digit2	: integer range 0 to 9;

component clock_divider is
port(
	clock	: in std_logic;
	reset	: in std_logic;
	clk1hz: out std_logic;
	clk1khz: out std_logic
);
end component;

component digit is
port(
	clock : in std_logic;
	reset : in std_logic;
	updown: in std_logic;
	stop	: in std_logic;
	
	digit1: out integer range 0 to 9;
	digit2: out integer range 0 to 9
);
end component;

component segment_on is
port(
	clk1khz	: in std_logic;
	digit1	: in integer range 0 to 9;
	digit2	: in integer range 0 to 9;

	a,b,c,d,e,f,g	: out std_logic;
	s1, s2			: out std_logic
);

end component;


BEGIN
	divclk : clock_divider port map(
		clock	 => clk,
		reset	 => not reset,
		clk1hz => clk1hz,
		clk1khz => clk1khz
	);
	
	count : digit port map(
		clock 	=> clk1hz,
		reset 	=> not reset, 
		updown	=> up_down, 
		stop		=> not stop, 
		
		digit1	=> digit1,
		digit2	=> digit2
	);
	
	segment	: segment_on port map(
		clk1khz	=> clk1khz,
		digit1	=> digit1,
		digit2	=> digit2,
		a	=> a,
		b	=> b,
		c	=> c,
		d	=> d,
		e	=> e,
		f	=> f,
		g	=> g,
		s1	=> s1,
		s2	=> s2
	);
	
end behav;