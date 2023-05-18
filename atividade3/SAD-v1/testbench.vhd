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

CONSTANT passo : TIME := 20 ns;
CONSTANT half_period : time := 5 ns;

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
	reset <= '0';
	wait for passo;
	reset <= '1';
	Mem_A <= "10000000";
	Mem_B <= "00000000";
	iniciar <= '0';
	wait for passo;
	iniciar <= '1';
	wait on pronto;
	assert(SAD="10000000000000")
	report "Fail 0" severity error;

	wait for passo;
	Mem_A <= "00000000";
	Mem_B <= "10000000";
	iniciar <= '0';
	wait for passo;
	iniciar <= '1';
	wait on pronto;
	assert(SAD="10000000000000")
	report "Fail 1" severity error;
	
	wait for passo;
	Mem_A <= "00000000";
	Mem_B <= "00000000";
	iniciar <= '0';
	wait for passo;
	iniciar <= '1';
	wait on pronto;
	assert(SAD="00000000000000")
	report "Fail 2" severity error;

	wait for passo;
	assert false report "Test done." severity note;
	wait;
end process;
end tb;