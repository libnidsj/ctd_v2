LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY REGx8 IS
	PORT(
	carga, rst, clk: in std_logic;
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0)
);
END REGx8;


ARCHITECTURE Behavior OF REGx8 IS
begin

process(rst, clk)
begin

	if (rst = '0') then
		Q <= "00000000"; 

	elsif (rising_edge(clk)) then
		if (carga = '1') then
			Q <= D;
		end if;
	end if;
	
end process;
	
END Behavior;