library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FPadder is
	port 
	(
		a	   : in std_logic_vector  (15 downto 0);
		b	   : in std_logic_vector  (15 downto 0);
		result : out std_logic_vector  (15 downto 0)
	);

end entity;

architecture structural of FPadder is

component SwapM
	port
	(
		-- Input ports
		MA	: in  unsigned (9 downto 0);
		MB	: in  unsigned (9 downto 0);
		AlbhB	: in  Std_logic;

		-- Output ports
		BiggerI_Mantisa	: out unsigned (9 downto 0);
		SmallerI_Mantisa	: out unsigned (9 downto 0)
	);
end component;

component SubsE
	port
	(
		-- Input ports
		EA	: in  unsigned (4 downto 0);
		EB	: in  unsigned (4 downto 0);
		AlbhB	: in  Std_logic;

		-- Output ports
		SelisE	: out unsigned (4 downto 0);
		BiggerE: out unsigned (4 downto 0)
	);
end component;

component ShiftR
	port
	(
		-- Input ports
		InM	: in  unsigned (10 downto 0);
		SelisE	: in  unsigned (4 downto 0);
		
		-- Output ports
		OutM	: out unsigned (10 downto 0)
	);
end component;

component Adder11
	port
	(
		-- Input ports
		InMSatu	: in  unsigned (10 downto 0);
		InMDua	: in  unsigned (10 downto 0);
		
		-- Output ports
		OutM	: out unsigned (11 downto 0)
	);
end component;
	
component Combine
	port
	(
		-- Input ports
		ResultFixNum	: in  unsigned (11 downto 0);
		BiggerE	: in  unsigned (4 downto 0);
		
		-- Output ports
		ResultME	: out unsigned (14 downto 0)
	);
end component;


	signal MA,MB,BiggerI_Mantisa,SmallerI_Mantisa: unsigned (9 downto 0);
	signal BigFixNum, SmallFixNum, ShiftedFixNum : unsigned (10 downto 0);
   signal EA,EB,SelisE,BiggerE: unsigned (4 downto 0);
	signal SA,SB,AlbhB: std_logic;
	signal ResultFixNum: unsigned (11 downto 0);
	signal ResultME: unsigned (14 downto 0);
	
	
begin
-- Treating input
   MA <= unsigned(A(9 downto 0));  -- Mantisa input A
	EA <= unsigned(A(14 downto 10)); -- Exponen inpur A
	SA <= A(15); -- sign A
   MB <= unsigned(B(9 downto 0));  -- Mantisa input B
	EB <= unsigned(B(14 downto 10)); -- Exponen input B
	SB <= B(15); -- sign B
	
-- Instasiasi Komponen SwapM
Komponen_SwapM : SwapM
	port map
	(
		-- Input ports
		MA	=> MA,
		MB	=> MB,
		AlbhB	=> AlbhB,

		-- Output ports
		BiggerI_Mantisa	=> BiggerI_Mantisa,
		SmallerI_Mantisa	=> SmallerI_Mantisa
	);
	
-- Block Comparator
	AlbhB <= '1' when (EA > EB) else
				'0';
				
-- Instansiasi Komponen SubsE
Komponen_Subse : SubsE
	port map
	(
		EA,
		EB,
		AlbhB,
		SelisE,
		BiggerE
	);
	
-- Add '1' to mantisa
SmallFixNum <= '1' & SmallerI_Mantisa;
BigFixNum <= '1' & BiggerI_Mantisa;
	
-- Instansiasi Komponen ShiftR
Komponen_ShiftR : ShiftR
	port map
	(
		-- Input ports
		InM	=> SmallFixNum,
		SelisE	=> SelisE,
		
		-- Output ports
		OutM	=> ShiftedFixNum
	);

-- Instansiasi Komponen Adder untuk mantisa
Komponen_Adder11 : Adder11
	port map
	(
	  ShiftedFixNum,
	  BigFixNum,
		-- Output ports
	  ResultFixNum
	);
	
-- Instansiasi Komponen Combine untuk memggabungkan hasil akhir dengan exponen	
Komponen_combine: Combine
	port map
	(
		-- Input ports
		ResultFixNum,
		BiggerE,
	
		-- Output ports
		ResultME
	);
				
Result <= std_logic_vector(SA & ResultME);

end structural;
