library ieee;
use ieee.std_Logic_1164.all;

entity MUX2_1x32 is port(
    S     : in  std_logic;
    L0, L1: in  std_logic_vector(31 downto 0);
    D     : out std_logic_vector(31 downto 0)
	 );
end MUX2_1x32;

architecture Behavior of MUX2_1x32 is 
begin

    D <= L0 when S = '0' else
         L1;
			
end Behavior;
