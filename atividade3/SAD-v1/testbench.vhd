library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity testbench is
end testbench;

architecture tb of testbench is

	signal clk: std_logic := '0';
	signal iniciar: std_logic := '1';
	signal reset: std_logic := '1';
	
	signal pronto: std_logic;
	
	signal endereco: std_logic_vector(5 downto 0);
	
	signal Mem_A: std_logic_vector(7 downto 0);
	signal Mem_B: std_logic_vector(7 downto 0);
	
	signal SAD: std_logic_vector(13 downto 0);

CONSTANT passo : TIME := 5 ns;
CONSTANT half_period : time := 5 ns;
CONSTANT total_delay : TIME := 2100 ns;

begin

-- Connect DUV
DUV: entity work.SAD_usertop
port map(clk, iniciar, reset, pronto, endereco, Mem_A, Mem_B, SAD);

clk_process :process
begin
   clk <= not clk after half_period;
end process;

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