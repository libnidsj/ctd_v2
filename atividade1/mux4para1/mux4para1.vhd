LIBRARY ieee;
USE Ieee.std_logic_1164.ALL;

ENTITY mux4para1 IS
	GENERIC ( N : INTEGER := 1 );
	PORT (
	sel: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	a,b,c,d: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
	y: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
);
END mux4para1;

ARCHITECTURE comportamento OF mux4para1 IS
BEGIN
	WITH sel SELECT
	y <= a WHEN "00",
		  b WHEN "01",
		  c WHEN "10",
		  d WHEN OTHERS;
END comportamento;