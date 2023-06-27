LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_signed.all ;

ENTITY SOMAx32 IS
	PORT ( 
	Cin : IN STD_LOGIC ;
	A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0) ;
	SOMA: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	) ;
END SOMAx32;

ARCHITECTURE Behavior OF SOMAx32 IS
signal S: std_logic_vector(32 downto 0);
BEGIN

S <= ('0' & A) + ('0' & B) + Cin ;
SOMA <= S(31 DOWNTO 0);

END Behavior ;