LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ULA_MIPS IS
PORT (a, b : IN std_logic_vector (31 DOWNTO 0);
sel : IN std_logic_vector (2 downto 0);
S : OUT std_logic_vector (31 DOWNTO 0);
menor: out std_logic);
END ULA_MIPS;

ARCHITECTURE arch OF ULA_MIPS IS
signal Soma, opera, muxs: std_logic_vector(31 downto 0);
signal andsel: std_logic;

component mux2_1x32 is port(
    S     : in  std_logic;
    L0, L1: in  std_logic_vector(31 downto 0);
    D     : out std_logic_vector(31 downto 0)
	 );
end component;

component and_or is
port (A: in std_logic_vector(31 downto 0);
B: in std_logic_vector(31 downto 0);
sel: in std_logic;
F: out std_logic_vector(31 downto 0)
);
end component;

component Sum is
port (A: in std_logic_vector(31 downto 0);
B: in std_logic_vector(31 downto 0);
M: in std_logic;
F: out std_logic_vector(31 downto 0)
);
end component;

BEGIN
 SomaSub: Sum port map(a,b,sel(2),Soma);
 And_Orr: and_or port map(a,b,sel(0),opera);
 mux1: mux2_1x32 port map (sel(1),opera, Soma, muxs);
 mux2: mux2_1x32 port map (andsel, muxs, ("0000000000000000000000000000000" & Soma(31)), S);
 menor <= Soma(31);
 andsel <= (sel(2) and sel(1) and sel(0));
END arch;