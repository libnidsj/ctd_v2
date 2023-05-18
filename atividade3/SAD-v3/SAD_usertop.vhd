LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SAD_usertop IS
	PORT(
	 clk, iniciar, reset: IN STD_LOGIC;
	 pronto: OUT STD_LOGIC;
	 endereco: OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
	 Mem_A , Mem_B: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SAD: OUT STD_LOGIC_VECTOR (55 DOWNTO 0)
);
END SAD_usertop;


ARCHITECTURE Behavior OF SAD_usertop IS

COMPONENT SAD_operacional IS PORT (
	clk, zi, ci, cpA, cpB, zsoma, csoma, csad_reg: IN STD_LOGIC;
	pA, pB: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	endereco: OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	SAD: OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
	menor: OUT STD_LOGIC
);
END COMPONENT;

COMPONENT SAD_controle IS PORT (
	clk, rst, iniciar, menor: IN STD_LOGIC;
	zi, ci, cpA, cpB, zsoma, csoma, csad_reg, pronto, ler: OUT STD_LOGIC
);
END COMPONENT;

-- Comunicação entre Controle e Datapath --
signal zi, ci, cpA, cpB, zsoma, csoma, csad_reg, menor, ler: std_logic;

BEGIN

OPERACIONAL: SAD_operacional port map(clk,zi,ci,cpA,cpB,zsoma,csoma,csad_reg,Mem_A,Mem_B,endereco,SAD,menor);
CONTROLE: SAD_controle port map(clk,reset,iniciar,menor,zi, ci, cpA, cpB, zsoma, csoma, csad_reg, pronto, ler);

END Behavior;