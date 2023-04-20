LIBRARY ieee;
USE ieee.std_logic_1164.ALL; USE ieee.numeric_std.ALL;

ENTITY decodificadorBCD7Seg IS PORT (
	bcd : IN std_logic_vector(3 DOWNTO 0);
	a, b, c, d, e, f, g : OUT std_logic );
END decodificadorBCD7Seg;
	
ARCHITECTURE arch OF decodificadorBCD7Seg IS
BEGIN
	
	a <= bcd[0] or bcd[2] or (bcd[1] and bcd[3]) or ((not bcd[1]) and (not bcd[3]));
	b <= (not bcd[1]) or ((not bcd[2]) and (not bcd[3])) or (bcd[2] and bcd[3]);
	c <= bcd[1] or (not bcd[2]) or bcd[3];
	d <= ((not bcd[1]) and (not bcd[3])) or (bcd[2] and (not bcd[3])) or (bcd[1] and (not bcd[2]) and bcd[3]) or ((not bcd[1]) and bcd[2]) or (bcd[0]);
	e <= ((not bcd[1]) and (not bcd[3])) or (bcd[2] and (not bcd[3]));
	f <= (bcd[0]) or ((not bcd[2]) and (not bcd[3])) or (bcd[1] and (not bcd[2])) or (bcd[1] and (not bcd[3]));
	g <= (bcd[0]) or (bcd[1] and (not bcd[2])) or ((not bcd[1]) and bcd[2]) or (bcd[2] and (not bcd[3]));

END ARCHITECTURE; 
