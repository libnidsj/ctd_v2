library IEEE;
use IEEE.Std_Logic_1164.all;

ENTITY Decod7Seg IS PORT (

	bcd  : IN  std_logic_vector(3 downto 0);
	abcdefg: OUT std_logic_vector (6 downto 0)
	);

END Decod7Seg;

ARCHITECTURE arc_decod7seg OF Decod7Seg IS BEGIN
	PROCESS(bcd)
	BEGIN
	CASE bcd IS 
	
   when  "0000" => abcdefg <=  "1000000";   -- 0
	when  "0001" => abcdefg <=  "1111001";   -- 1
	when  "0010" => abcdefg <=  "0100100";   -- 2
	when  "0011" => abcdefg <=  "0110000";   -- 3
	when  "0100" => abcdefg <=  "0011001";   -- 4
	when  "0101" => abcdefg <=  "0010010";   -- 5
	when  "0110" => abcdefg <=  "0000010";   -- 6
	when  "0111" => abcdefg <=  "1111000";   -- 7
	when  "1000" => abcdefg <=  "0000000";   -- 8
	when others  => abcdefg <=  "0010000";   -- 9
	
	END CASE;
END PROCESS;
				 
end arc_decod7seg;
