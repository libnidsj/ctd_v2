LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplicador IS
	PORT(
	 clock,reset,menor: IN STD_LOGIC;
	 sel: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	 A,B: in std_logic_vector(31 downto 0);
	 pronto: OUT STD_LOGIC;
	 C: OUT std_logic_vector(31 downto 0)
);
END Multiplicador;


ARCHITECTURE Behavior OF Multiplicador IS

COMPONENT Mul_controle IS PORT(
	clock,reset,zero,menor:in STD_LOGIC;
	sel: in STD_LOGIC_VECTOR(2 DOWNTO 0);
	cmux,cS,cC, pronto:out STD_LOGIC );
END COMPONENT;

COMPONENT Mul_operacional IS PORT(
	 menor,clock,cmux,reset,cS,cC:in std_logic;
	 A,B: in std_logic_vector(31 downto 0);
	 C_Mul: out std_logic_vector(31 downto 0);
	 zero: out std_logic );
END COMPONENT;

signal cmux,zero,cS,cC:std_logic;

BEGIN

CONTROLE: Mul_controle port map(clock,reset,zero,menor,sel,cmux,cS,cC,pronto);
OPERACIONAL: Mul_operacional port map(menor,clock,cmux,reset,cS,cC,A,B,C,zero);

END Behavior;