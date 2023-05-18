library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity testbench is
end testbench;

architecture tb of testbench is

	signal input: std_logic_vector(3 DOWNTO 0);
	signal output: std_logic_vector(6 downto 0);

CONSTANT passo : TIME := 20 ns;

begin

-- Connect DUV
DUV: entity work.decodificadorBCD7Seg
port map(input, output);

process
begin
	input <= std_logic_vector(to_unsigned(0, input'length));
	wait for passo;
	assert(output="0000001")
	report "Fail 0" severity error;

	input <= std_logic_vector(to_unsigned(1, input'length));
	wait for passo;
	assert(output="1001111")
	report "Fail 1" severity error;

	input <= std_logic_vector(to_unsigned(2, input'length));
	wait for passo;
	assert(output="0010010")
	report "Fail 2" severity error;

	input <= std_logic_vector(to_unsigned(3, input'length));
	wait for passo;
	assert(output="0000110")
	report "Fail 3" severity error;

	input <= std_logic_vector(to_unsigned(4, input'length));
	wait for passo;
	assert(output="1001100")
	report "Fail 4" severity error;

	input <= std_logic_vector(to_unsigned(5, input'length));
	wait for passo;
	assert(output="0100100")
	report "Fail 5" severity error;

	input <= std_logic_vector(to_unsigned(6, input'length));
	wait for passo;
	assert(output="0100000")
	report "Fail 6" severity error;

	input <= std_logic_vector(to_unsigned(7, input'length));
	wait for passo;
	assert(output="0001111")
	report "Fail 7" severity error;

	input <= std_logic_vector(to_unsigned(8, input'length));
	wait for passo;
	assert(output="0000000")
	report "Fail 8" severity error;

	input <= std_logic_vector(to_unsigned(9, input'length));
	wait for passo;
	assert(output="0000100")
	report "Fail 9" severity error;

	input <= std_logic_vector(to_unsigned(10, input'length));
	wait for passo;
	assert(output="0110000")
	report "Fail 10" severity error;

	input <= std_logic_vector(to_unsigned(11, input'length));
	wait for passo;
	assert(output="0110000")
	report "Fail 11" severity error;

	input <= std_logic_vector(to_unsigned(12, input'length));
	wait for passo;
	assert(output="0110000")
	report "Fail 12" severity error;

	input <= std_logic_vector(to_unsigned(13, input'length));
	wait for passo;
	assert(output="0110000")
	report "Fail 13" severity error;

	input <= std_logic_vector(to_unsigned(14, input'length));
	wait for passo;
	assert(output="0110000")
	report "Fail 14" severity error;

	input <= std_logic_vector(to_unsigned(15, input'length));
	wait for passo;
	assert(output="0110000")
	report "Fail 15" severity error;

	wait for passo;
	assert false report "Test done." severity note;
	wait;
end process;
end tb;