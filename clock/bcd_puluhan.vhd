LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

Entity bcd_puluhan is
port(
	puluh	: in integer range 0 to 9;
	a1,b1,c1,d1,e1,f1,g1 : out bit
);
end bcd_puluhan;

Architecture RTL of bcd_puluhan is
begin
process(puluh)
variable segment : bit_vector(0 to 6);
	begin
	case puluh is
		when 0 => segment := "0000001";
		when 1 => segment := "1001111";
		when 2 => segment := "0010010";
		when 3 => segment := "0000110";
		when 4 => segment := "1001100";
		when 5 => segment := "0100100";
		when 6 => segment := "0100000";
		when 7 => segment := "0001111";
		when 8 => segment := "0000000";
		when 9 => segment := "0000100";
		when others => segment := "1111111";
	end case;
	
	a1 <= segment(0);
	b1 <= segment(1);
	c1 <= segment(2);
	d1 <= segment(3);
	e1 <= segment(4);
	f1 <= segment(5);
	g1 <= segment(6);
END PROCESS;

End RTL;