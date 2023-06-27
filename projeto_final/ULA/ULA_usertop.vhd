LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ULA_usertop IS
	PORT(
	 enRegA, enRegB, enRegC, reset, clock: IN STD_LOGIC;
	 ULAOp: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	 funct: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
	 DataA , DataB: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	 DataC: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
	 pronto: OUT STD_LOGIC
);
END ULA_usertop;


ARCHITECTURE Behavior OF ULA_usertop IS

COMPONENT ULA_MIPS IS
PORT (a, b : IN std_logic_vector (31 DOWNTO 0);
sel : IN std_logic_vector (2 downto 0);
S : OUT std_logic_vector (31 DOWNTO 0);
menor: out std_logic);
END COMPONENT;

COMPONENT Multiplicador IS
	PORT(
	 clock,reset,menor: IN STD_LOGIC;
	 sel: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	 A,B: in std_logic_vector(31 downto 0);
	 pronto: OUT STD_LOGIC;
	 C: OUT std_logic_vector(31 downto 0)
);
END COMPONENT;

COMPONENT Ctrl_ULA IS
	PORT(
	 funct: in std_logic_vector (5 downto 0);
	 ULAop: in std_logic_vector (1 downto 0);
	 sel: out std_logic_vector (2 downto 0)
);
END COMPONENT;


COMPONENT MUX2_1x32 is port(
    S     : in  std_logic;
    L0, L1: in  std_logic_vector(31 downto 0);
    D     : out std_logic_vector(31 downto 0)
	 );
end COMPONENT;

COMPONENT REGx32 IS
	PORT(
	carga, reset, clock: in std_logic;
	D: in std_logic_vector(31 downto 0);
	Q: out std_logic_vector(31 downto 0)
);
END COMPONENT;

SIGNAL A,B,C,MUX_0,MUX_1:STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL sel: std_logic_vector(2 downto 0);
SIGNAL menor: std_logic;

BEGIN

RegA: REGx32 port map(enRegA,reset,clock,DataA,A);
RegB: REGx32 port map(enRegB,reset,clock,DataB,B);
RegC: REGx32 port map(enRegC,reset,clock,C,DataC);

Controle_Ula: Ctrl_ULA port map(funct,ULAOp,sel);

ULA_Mult: Multiplicador port map(clock,reset,menor,sel,A,B,pronto,MUX_1);
ULA_PADRAO: ULA_MIPS port map(A,B,sel,MUX_0,menor);
ULA_GERAL: Mux2_1x32 port map(funct(4),MUX_0,MUX_1,C);


END Behavior;