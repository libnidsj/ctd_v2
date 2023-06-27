library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity and_or is
port (A: in std_logic_vector(31 downto 0);
B: in std_logic_vector(31 downto 0);
sel: in std_logic;
F: out std_logic_vector(31 downto 0)
);
end and_or;
architecture circuito of and_or is
begin
F <= (A and B) when sel = '0' else
(A or B);
end circuito;