library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Sum is
port (A: in std_logic_vector(31 downto 0);
B: in std_logic_vector(31 downto 0);
M: in std_logic;
F: out std_logic_vector(31 downto 0)
);
end Sum;

architecture circuito of Sum is
begin
F <= (A + B) when M = '0' else
(A - B);
end circuito;