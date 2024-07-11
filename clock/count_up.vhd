library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.pack.all;

entity count_up is
port(
	clock	: in std_logic;
	reset	: in bit;
	enable: in bit;
	a,b,c,d,e,f,g	: out bit;
	a1,b1,c1,d1,e1,f1,g1 : out bit;
	carry1	:out bit
);
end count_up;

architecture ARQ_COUNT_99 of count_up is
	signal iclk1hz	: bit;
	signal isatu	: integer;
	signal icarry	: bit;
	signal ipuluh: integer;
	
	begin
	clockdiv	: clock_divider port map( clock => clock, reset => reset, clk1hz => iclk1hz);
	countsatu: satuan port map( reset => reset, enable => enable, clk1hz => iclk1hz, carry => icarry, satu => isatu);
	countpuluh: puluhan port map( reset => reset, enable => enable, clk1hz => icarry, puluh => ipuluh, carry1 => carry1);
	bcdsatu	: bcd_satuan port map( satu => isatu, a=>a, b=>b, c=>c, d=>d, e=>e, f=>f, g=>g);
	bcdpuluh	: bcd_puluhan port map( puluh => ipuluh, a1=>a1, b1=>b1, c1=>c1, d1=>d1, e1=>e1, f1=>f1, g1=>g1);
	
end ARQ_COUNT_99;