library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity seven_segment is
	port(
		-- Input
		i1 : in std_logic;
		i2 : in std_logic;
		i3 : in std_logic;
		i4 : in std_logic;
		
		-- Output
		dig: out std_logic;
		a : out std_logic;
		b : out std_logic;
		c : out std_logic;
		d : out std_logic;
		e : out std_logic;
		f : out std_logic;
		g : out std_logic
	);
	
End entity;


Architecture RTL of seven_segment is
signal q1,q2,q3,q4 : std_logic;
Begin
	-- Inisiasi dig menjadi '0'
	dig <= '0';
	
	-- Inisiasi q1 hingga q4 sebagai kebalikan dari input
	q1 <= not(i1);
	q2 <= not(i2);
	q3 <= not(i3);
	q4 <= not(i4);
	
	-- Rangkaian logika dengan ditambahkan "not"
	a <= not(q1 or q3 or (q2 and q4) or ((not q4) and (not q2)));
	b <= not((not q2) or ((not q3) and (not q4)) or (q3 and q4));
	c <= not(q2 or (not q3) or q4);
	d <= not(((not q2) and (not q4)) or (q3 and (not q4)) or (q2 and (not q3) and q4) or ((not q2) and q3) or q1);
	e <= not(((not q2) and (not q4)) or (q3 and (not q4)));
	f <= not(q1 or ((not q3) and (not q4)) or (q2 and (not q3)) or (q2 and (not q4)));
	g <= not(q1 or (q2 and (not q3)) or (not q2 and q3) or (q2 and (not q4)));
	
	
End architecture;