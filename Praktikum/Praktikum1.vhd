--Nama	: Sidartha Prastya. P
--NIM		: 13219033


--Library

library ieee;
use ieee.std_logic_1164.all;


--entity

entity Praktikum1 is
port
(
	X : in std_logic_vector(3 downto 0);
	B : out std_logic;
	A : out std_logic;
	C : out std_logic;
	D : out std_logic;
	E : out std_logic;
	F : out std_logic;
	G : out std_logic
	
);
end Praktikum1;


--Architecture

Architecture GateLevel of Praktikum1 is
Begin
	A <= X(1) or X(3) or (not X(2) and not X(0)) or (X(2) and X(0));
	B <= not X(2) or (not X(1) and not X(0)) or (X(1) and X(0));
	C <= X(0) or (not X(1)) or X(2);
	D <= X(3) or (X(1) and not X(0)) or (X(1) and not X(2)) or (not X(1) and X(0) and X(2));
	E <= not X(0) and (X(1) or not X(2));
	F <= X(3) or (not X(1) and not X(0)) or (not X(0) and X(2)) or (not X(1) and X(2));
	G <= (X(1) or X(3) or X(2)) and (not X(1) or not X(0) or not X(2));
	
End;