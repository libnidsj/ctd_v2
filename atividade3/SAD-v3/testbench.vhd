library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity testbench is
end testbench;

architecture tb of testbench is

	signal clk: std_logic := '0';
	signal iniciar: std_logic := '1';
	signal reset: std_logic := '1';
	
	signal pronto: std_logic;
	
	signal endereco: std_logic_vector(5 downto 0);
	
	signal Mem_A: std_logic_vector(31 downto 0);
	signal Mem_B: std_logic_vector(31 downto 0);
	
	signal SAD: std_logic_vector(55 downto 0);

CONSTANT passo : TIME := 20 ns;
CONSTANT half_period : time := 5 ns;

begin

-- Connect DUV
DUV: entity work.SAD_usertop
port map(clk, iniciar, reset, pronto, endereco, Mem_A, Mem_B, SAD);

clk_process :process
begin
   clk <= not clk after half_period;
   wait for half_period;
   clk <= not clk after half_period;
   wait for half_period;
end process;

stim: process is
file arquivo_de_estimulos : text open read_mode is "../../estimulos.dat";
variable linha_de_estimulos: line;
variable espaco: character;
variable valor_de_entrada1: bit_vector(31 downto 0);
variable valor_de_entrada2: bit_vector(31 downto 0);
variable valor_de_saida: bit_vector(55 downto 0);
variable end_bit: bit;
begin

	while not endfile(arquivo_de_estimulos) loop
	
		reset <= '0';
		wait for passo;
		reset <= '1';
		wait for passo;
		
		iniciar <= '0';
		wait on endereco;
		iniciar <= '1';
		
		while (pronto = '0') loop
		
			-- read inputs
			readline(arquivo_de_estimulos, linha_de_estimulos);
			read(linha_de_estimulos, valor_de_entrada1);
			Mem_A <= to_stdlogicvector (valor_de_entrada1);
			read(linha_de_estimulos, espaco);
			read(linha_de_estimulos, valor_de_entrada2);
			Mem_B <= to_stdlogicvector (valor_de_entrada2);
			read(linha_de_estimulos, espaco);
			read(linha_de_estimulos, valor_de_saida);
			read(linha_de_estimulos, espaco);
			read(linha_de_estimulos, end_bit);
			wait on endereco;
			assert (SAD = to_stdlogicvector(valor_de_saida))
			report
			"Falha na simulacao. "
			severity error;
			
			if (end_bit = '1') then
				Mem_A <= "00000000000000000000000000000000";
				Mem_B <= "00000000000000000000000000000000";
				wait on pronto;
			end if;
			
			--if (end_bit = '1' and pronto = '0') then
			--	while (pronto = '0') loop
			--		Mem_A <= "00000000000000000000000000000000";
			--		Mem_B <= "00000000000000000000000000000000";
			--		wait on endereco;
			--	end loop;
			--end if;
		
		end loop;
			
	end loop;

	wait for passo;
	assert false report "Test done." severity note;
	wait;
end process;
end tb;
