LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY REGx32 IS
	PORT(
	carga, reset, clock: in std_logic;
	D: in std_logic_vector(31 downto 0);
	Q: out std_logic_vector(31 downto 0)
);
END REGx32;


ARCHITECTURE Behavior OF REGx32 IS
begin

process(reset, clock)
begin

	if (reset = '0') then
		Q <= "00000000000000000000000000000000"; 

	elsif (rising_edge(clock)) then
		if (carga = '1') then
			Q <= D;
		end if;
	end if;
	
end process;
	
END Behavior;