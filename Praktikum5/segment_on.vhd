LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity segment_on is
port(
	clk1khz	: in std_logic;
	digit1	: in integer range 0 to 9;
	digit2	: in integer range 0 to 9;

	a,b,c,d,e,f,g	: out std_logic;
	s1, s2			: out std_logic
);
end segment_on;

architecture RTL of segment_on is

signal switch	: std_logic := '0';

signal BCD1, BCD2	: std_logic_vector (0 to 6);
begin
	process(digit1, digit2)
	begin
	case (digit2) is
		when 0 => BCD1 <= "0000001";
		when 1 => BCD1 <= "1001111";
		when 2 => BCD1 <= "0010010";
		when 3 => BCD1 <= "0000110";
		when 4 => BCD1 <= "1001100";
		when 5 => BCD1 <= "0100100";
		when 6 => BCD1 <= "0100000";
		when 7 => BCD1 <= "0001111";
		when 8 => BCD1 <= "0000000";
		when 9 => BCD1 <= "0000100";
		when others => BCD1 <= "1111111";
	end case;
	
	case (digit1) is
		when 0 => BCD2 <= "0000001";
		when 1 => BCD2 <= "1001111";
		when 2 => BCD2 <= "0010010";
		when 3 => BCD2 <= "0000110";
		when 4 => BCD2 <= "1001100";
		when 5 => BCD2 <= "0100100";
		when 6 => BCD2 <= "0100000";
		when 7 => BCD2 <= "0001111";
		when 8 => BCD2 <= "0000000";
		when 9 => BCD2 <= "0000100";
		when others => BCD2 <= "1111111";
	end case;
	end process;
	
	process (clk1khz)
	begin
	if clk1khz ='1' and clk1khz'event then
		if switch ='0' then
			s1 <= '0';
			s2 <= '1';
			a <= BCD1(0);
			b <= BCD1(1);
			c <= BCD1(2);
			d <= BCD1(3);
			e <= BCD1(4);
			f <= BCD1(5);
			g <= BCD1(6);
			switch <= not switch;
		else
			s1 <= '1';
			s2 <= '0';
			a <= BCD2(0);
			b <= BCD2(1);
			c <= BCD2(2);
			d <= BCD2(3);
			e <= BCD2(4);
			f <= BCD2(5);
			g <= BCD2(6);
			switch <= not switch;
		end if;
	end if;
	
	end process;

end architecture;