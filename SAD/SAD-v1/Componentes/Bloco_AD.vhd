library ieee;
use ieee.std_logic_1164.all;        
use ieee.numeric_std.all;


ENTITY Bloco_AD IS -- o bloco tira a diferença absoluta de dois números positivos
port (  
  X: in  std_logic_vector(7 downto 0); 
  Y: in  std_logic_vector(7 downto 0); 
  F: out std_logic_vector(7 downto 0) 
);
END Bloco_AD;

ARCHITECTURE Behavior OF Bloco_AD IS
begin
process(X,Y) is
begin
  F <= std_logic_vector(abs(signed(unsigned(X)-unsigned(Y))));
end process;
END Behavior;