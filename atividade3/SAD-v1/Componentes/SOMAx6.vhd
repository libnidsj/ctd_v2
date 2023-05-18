LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_signed.all ;

ENTITY SOMAx6 IS
	PORT ( 
	Cin : IN STD_LOGIC ;
	A,B : IN STD_LOGIC_VECTOR(5 DOWNTO 0) ;
	SOMA: OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Cout: OUT STD_LOGIC
	) ;
END SOMAx6 ;

ARCHITECTURE Behavior OF SOMAx6 IS
signal S: STD_LOGIC_VECTOR (6 DOWNTO 0);
BEGIN

S <= ('0' & A) + ('0' & B) +  Cin;
SOMA <= S(5 DOWNTO 0);
Cout <= S(6);

END Behavior ;