LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Mul_operacional IS
	PORT(
	 menor,clock,cmux,reset,cS,cC:in std_logic;
	 A,B: in std_logic_vector(31 downto 0);
	 C_Mul: out std_logic_vector(31 downto 0);
	 zero: out std_logic
);
END Mul_operacional;


ARCHITECTURE Behavior OF Mul_operacional IS

COMPONENT REGx32 IS PORT(
	carga, reset, clock: in std_logic;
	D: in std_logic_vector(31 downto 0);
	Q: out std_logic_vector(31 downto 0)
);
END COMPONENT;

COMPONENT MUX2_1X32 IS PORT(
    S     : in  std_logic;
    L0, L1: in  std_logic_vector(31 downto 0);
    D     : out std_logic_vector(31 downto 0)
	 );
END COMPONENT;

COMPONENT Sum IS PORT (
	A: in std_logic_vector(31 downto 0);
	B: in std_logic_vector(31 downto 0);
	M: in std_logic;
	F: out std_logic_vector(31 downto 0)
	);
END COMPONENT;

-- Sinais do Somador --
SIGNAL MUXSOMA_OUT,REGSOMA_IN,REGSOMA_OUT: STD_LOGIC_VECTOR(31 DOWNTO 0);

-- Sinais do Contador --
SIGNAL MUX1_OUT, SUB_OUT, REGCONT_IN, REGCONT_OUT: STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

-- Somador --
MUXSOMA: MUX2_1x32 port map(menor,A,B,MUXSOMA_OUT);
SOMA: Sum port map(MUXSOMA_OUT,REGSOMA_OUT,'0',REGSOMA_IN);
REGSOMA: REGx32 port map(cS,reset,clock,REGSOMA_IN,REGSOMA_OUT);

C_Mul <= REGSOMA_OUT;

-- Contador --
MUX1: MUX2_1x32 port map(menor,B,A,MUX1_OUT);
MUX2: MUX2_1x32 port map(cmux,MUX1_OUT,SUB_OUT,REGCONT_IN);
SUB: Sum port map(REGCONT_OUT,"00000000000000000000000000000001",'1',SUB_OUT);
REGCONT: REGx32 port map(cC,reset,clock,REGCONT_IN,REGCONT_OUT);

zero <= '1' when REGCONT_IN = "00000000000000000000000000000000" else
		  '0';


END Behavior;