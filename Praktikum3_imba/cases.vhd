library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity cases is
	port(
		x_input	: in std_logic_vector(15 downto 0);
		y_input	: in std_logic_vector(15 downto 0);
		enable	: out std_logic;
		S			: out std_logic_vector(15 downto 0)
		);
end cases;

architecture behavior of cases is
	
	signal out_x, out_y	: std_logic_vector(2 downto 0);
	signal exp_x, exp_y	: std_logic_vector(4 downto 0);
	signal man_x, man_y	: std_logic_vector(9 downto 0);
	signal sign_x, sign_y: std_logic;
	
	signal SS	: std_logic;
	signal ES	: std_logic_vector(4 downto 0);
	signal MS	: std_logic_vector(9 downto 0);
	
	begin
	
		sign_x	<= x_input(15);
		sign_y	<= y_input(15);
		exp_x		<= x_input(14 downto 10);
		exp_y		<= y_input(14 downto 10);
		man_x		<= x_input(9 downto 0);
		man_y		<= y_input(9 downto 0);
		
		out_x		<= "000" when exp_x = X"00" and man_x = 0 else  							-- x :zero
						"001" when exp_x = X"00" and man_x > 0 else  							--
						"011" when (exp_x > X"00" and exp_x < X"FF") and man_x > 0 else
						"100" when exp_x = X"FF" and man_x = 0 else
						"110" when exp_x = X"FF" and man_x > 0 else
						"000";
		
		out_y		<= "000" when exp_y = X"00" and man_y = 0 else
						"001" when exp_y = X"00" and man_y > 0 else
						"011" when (exp_y > X"00" and exp_y < X"FF") and man_y > 0 else
						"100" when exp_y = X"FF" and man_y = 0 else
						"110" when exp_y = X"FF" and man_y > 0 else
						"000";
		
		enable <= '1' when ((out_x(0) and out_y(0)) = '1') else '0';
		
		process (sign_x, sign_y,out_x,out_y)
			begin
			------------------------------- Zero
			if (out_x = "000") then
				SS <= sign_y;
				ES <= exp_y;
				MS <= man_y;
				
			elsif (out_y = "000") then
				SS <= sign_x;
				ES <= exp_x;
				MS <= man_x;
			
			end if;
			------------------------------- Infinite
			if (out_x(0) = '1' and out_y = "100") then
				SS <= sign_y;
				ES <= exp_y;
				MS <= man_y;
				
			elsif (out_y(0) = '1' and out_x = "100") then
				SS <= sign_x;
				ES <= exp_x;
				MS <= man_x;
			
			end if;
			
			if ((out_x and out_y) = "100" and sign_x = sign_y) then
				SS <= sign_x;
				ES <= exp_x;
				MS <= man_x;
			
			------------------------------- NaN
				
			elsif ((out_x and out_y) = "100" and sign_x /= sign_y) then
				SS <= '1';
				ES <= X"FF";
				MS <= "0000000001";
				
			end if;
			
			if (out_x = "110" or out_y = "110") then
				SS <= '1';
				ES <= X"FF";
				MS <= "0000000001";
			end if;
			------------------------------- Normal/Subnormal
			if ((out_x(0) and out_y(0)) = '1') then
				SS <= '-';
				ES <= "-----";
				MS <= "----------";
			end if;
		end process;
		
		S(15) <= SS;
		S(14 downto 10) <= ES;
		S(9 downto 0) <= MS;
	
	end behavior;
			