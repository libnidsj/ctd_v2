LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Ctrl_ULA IS
	PORT(
	 funct: in std_logic_vector (5 downto 0);
	 ULAop: in std_logic_vector (1 downto 0);
	 sel: out std_logic_vector (2 downto 0)
);
END Ctrl_ULA;


ARCHITECTURE Behavior OF Ctrl_ULA IS
BEGIN

PROCESS(funct)
	BEGIN
	CASE funct IS 
	
   when  "100000" => sel <=  "010";   -- add
   when  "100010" => sel <=  "110";   -- sub
   when  "100100" => sel <=  "000";   -- and
   when  "100101" => sel <=  "001";   -- or
   when  "101010" => sel <=  "111";	  -- slt
   when  "110000" => sel <=  "100";	  -- mul (a funct escolhida permite controlar o muxM e a sel permite extrair o sinal de menor da ULA)
	when   others  => sel <=  "011";   -- NA (not assigned)
	
	END CASE;
END PROCESS;
END Behavior;