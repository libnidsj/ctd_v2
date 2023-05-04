LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SAD_operacional IS
	PORT(
	clk, zi, ci, cpA, cpB, zsoma, csoma, csad_reg: IN STD_LOGIC;
	pA, pB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	endereco: OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	SAD: OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	menor: OUT STD_LOGIC
);
END SAD_operacional;


ARCHITECTURE arquitetura OF SAD_operacional IS

-- Declaracao dos componentes -----------------------------------------------------------------

COMPONENT REGx8 IS PORT(
	carga, rst, clk: in std_logic;
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0)
);
END COMPONENT;

COMPONENT REGx7 IS PORT(
	carga, rst, clk: in std_logic;
	D: in std_logic_vector(6 downto 0);
	Q: out std_logic_vector(6 downto 0)
);
END COMPONENT;

COMPONENT REGx14 IS PORT(
	carga, rst, clk: in std_logic;
	D: in std_logic_vector(13 downto 0);
	Q: out std_logic_vector(13 downto 0)
);
END COMPONENT;

COMPONENT Bloco_AD IS PORT (  
  X: in  std_logic_vector(7 downto 0); 
  Y: in  std_logic_vector(7 downto 0); 
  F: out std_logic_vector(7 downto 0) 
);
END COMPONENT;

COMPONENT MUX2_1x14 IS PORT(
    S     : in  std_logic;
    L0, L1: in  std_logic_vector(13 downto 0);
    D     : out std_logic_vector(13 downto 0)
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

COMPONENT SOMAx14 IS PORT ( 
	Cin : IN STD_LOGIC ;
	A,B : IN STD_LOGIC_VECTOR(13 DOWNTO 0) ;
	SOMA: OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
) ;
END COMPONENT;

-- Descricao das ligacoes do bloco operativo --------------------------------------------------------------

-- Fios internos do Contador:
signal REG_I_OUT, REG_I_IN, CONTADOR_CONCAT: STD_LOGIC_VECTOR(6 DOWNTO 0);
signal SOMA_CONTADOR: STD_LOGIC_VECTOR(5 DOWNTO 0);
signal COUT_CONTADOR: STD_LOGIC;

--Fios internos do bloco aritmético -----------------------------------------------------------------------
signal REG_A_OUT, REG_B_OUT, AD_OUT: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal REG_SOMA_IN, REG_SOMA_OUT,SOMADOR_OUT,AD_OUT_CONCAT: STD_LOGIC_VECTOR(13 DOWNTO 0);

BEGIN

-- Contador --
CONTADOR_CONCAT <= (COUT_CONTADOR & SOMA_CONTADOR);
MUX7: MUX2_1x7 port map (zi,CONTADOR_CONCAT,"0000000",REG_I_IN);
REG_I: REGx7 port map (ci,'1',clk, REG_I_IN, REG_I_OUT);
menor <= not(REG_I_OUT(6));
endereco <= REG_I_OUT(5 DOWNTO 0);
SOMADOR_CONTADOR: SOMAx6 port map ('0',REG_I_OUT(5 DOWNTO 0),"000001",SOMA_CONTADOR, COUT_CONTADOR);

-- Bloco Aritmético --
REG_A: REGx8 port map (cpA,'1',clk,pA,REG_A_OUT);
REG_B: REGx8 port map (cpB,'1',clk,pB,REG_B_OUT);
DIFERENCA_ABS: Bloco_AD port map (REG_A_OUT, REG_B_OUT, AD_OUT);
AD_OUT_CONCAT <= ("000000" & AD_OUT);
SOMADOR_SAD: SOMAx14 port map ('0',REG_SOMA_OUT,AD_OUT_CONCAT,SOMADOR_OUT);
MUX14: MUX2_1x14 port map (zsoma, SOMADOR_OUT,"00000000000000",REG_SOMA_IN);
REG_SOMADOR: REGx14 port map (csoma, '1', clk, REG_SOMA_IN,REG_SOMA_OUT);
SAD_REG: REGx14 port map (csad_reg, '1', clk, REG_SOMA_OUT, SAD);

END arquitetura;