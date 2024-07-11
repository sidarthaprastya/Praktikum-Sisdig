LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

Entity bcd_satuan is
port(
	satu	: in integer range 0 to 9;
	a,b,c,d,e,f,g : out bit
);
end bcd_satuan;

Architecture RTL of bcd_satuan is
begin
process(satu)
variable segment : bit_vector(0 to 6);
	begin
	case satu is
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
	
	a <= segment(0);
	b <= segment(1);
	c <= segment(2);
	d <= segment(3);
	e <= segment(4);
	f <= segment(5);
	g <= segment(6);
END PROCESS;

End RTL;