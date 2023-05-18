LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SAD_operacional IS
	PORT(
	clk, zi, ci, cpA, cpB, zsoma, csoma, csad_reg: IN STD_LOGIC;
	pA, pB: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	endereco: OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	SAD: OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
	menor: OUT STD_LOGIC
);
END SAD_operacional;


ARCHITECTURE arquitetura OF SAD_operacional IS

-- Declaracao dos componentes -----------------------------------------------------------------


COMPONENT REGx7 IS PORT(
	carga, rst, clk: in std_logic;
	D: in std_logic_vector(6 downto 0);
	Q: out std_logic_vector(6 downto 0)
);
END COMPONENT;

COMPONENT MUX2_1x7 IS PORT(
    S     : in  std_logic;
    L0, L1: in  std_logic_vector(6 downto 0);
    D     : out std_logic_vector(6 downto 0)
);
END COMPONENT;

COMPONENT SOMAx6 IS PORT ( 
	Cin : IN STD_LOGIC ;
	A,B : IN STD_LOGIC_VECTOR(5 DOWNTO 0) ;
	SOMA: OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Cout: OUT STD_LOGIC
) ;
END COMPONENT;


COMPONENT SAD_Bloco_Aritmetico IS PORT (
	clk, cpA,cpB, zsoma, csoma, csad_reg : IN STD_LOGIC;
	pA, pB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	SAD: OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
);
END COMPONENT;


-- Descricao das ligacoes do bloco operativo --------------------------------------------------------------

-- Fios internos do Contador:
signal REG_I_OUT, REG_I_IN, CONTADOR_CONCAT: STD_LOGIC_VECTOR(6 DOWNTO 0);
signal SOMA_CONTADOR: STD_LOGIC_VECTOR(5 DOWNTO 0);
signal COUT_CONTADOR: STD_LOGIC;

BEGIN

-- Contador --
CONTADOR_CONCAT <= (COUT_CONTADOR & SOMA_CONTADOR);
MUX7: MUX2_1x7 port map (zi,CONTADOR_CONCAT,"0000000",REG_I_IN);
REG_I: REGx7 port map (ci,'1',clk, REG_I_IN, REG_I_OUT);
menor <= not(REG_I_OUT(4));
endereco <= REG_I_OUT(5 DOWNTO 0);
SOMADOR_CONTADOR: SOMAx6 port map ('0',REG_I_OUT(5 DOWNTO 0),"000001",SOMA_CONTADOR, COUT_CONTADOR);

-- Bloco Aritmético --
BL1: SAD_Bloco_Aritmetico port map (clk, cpA,cpB, zsoma, csoma, csad_reg, pA(7 DOWNTO 0), pB(7 DOWNTO 0), SAD(13 DOWNTO 0));
BL2: SAD_Bloco_Aritmetico port map (clk, cpA,cpB, zsoma, csoma, csad_reg, pA(15 DOWNTO 8), pB(15 DOWNTO 8), SAD(27 DOWNTO 14));
BL3: SAD_Bloco_Aritmetico port map (clk, cpA,cpB, zsoma, csoma, csad_reg, pA(23 DOWNTO 16), pB(23 DOWNTO 16), SAD(41 DOWNTO 28));
BL4: SAD_Bloco_Aritmetico port map (clk, cpA,cpB, zsoma, csoma, csad_reg, pA(31 DOWNTO 24), pB(31 DOWNTO 24), SAD(55 DOWNTO 42));

END arquitetura;
