library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;
use IEEE.std_logic_unsigned.all;

entity testbench is
end testbench;

architecture tb of testbench is

	signal enRegA, enRegB, enRegC: std_logic := '0';
	signal reset: std_logic := '1';
	signal clock: std_logic := '0';
	
	signal ULAOp: std_logic_vector(1 downto 0);
	signal funct: std_logic_vector(5 downto 0);
		
	signal DataA: std_logic_vector(31 downto 0);
	signal DataB: std_logic_vector(31 downto 0);
	signal DataC: std_logic_vector(31 downto 0);
	
	signal pronto: std_logic;
	
	signal Reg_funct : std_logic := '0';

CONSTANT passo : TIME := 20 ns;
CONSTANT half_period : time := 5 ns;
CONSTANT registrador_time : TIME := 3 ns;

begin

DUV: entity work.ULA_usertop
port map(enRegA, enRegB, enRegC, reset, clock, ULAOp, funct, DataA, DataB, DataC, pronto);

clk_process :process
begin
   clock <= not clock after half_period;
   wait for half_period;
   clock <= not clock after half_period;
   wait for half_period;
end process;

stim: process is
file arquivo_de_estimulos : text open read_mode is "../../estimulos.dat";
variable linha_de_estimulos: line;
variable espaco: character;
variable valor_funct: bit_vector(5 downto 0);
variable valor_de_entrada1: bit_vector(31 downto 0);
variable valor_de_entrada2: bit_vector(31 downto 0);
variable valor_de_saida: bit_vector(31 downto 0);

begin

	while not endfile(arquivo_de_estimulos) loop
	
		wait for passo;
	
		reset <= '1';
		funct <= "000000";
		enRegA <= '0';
		enRegB <= '0';
		enRegC <= '0';
		
		wait for passo;
	
		readline(arquivo_de_estimulos, linha_de_estimulos);
		read(linha_de_estimulos, valor_funct);
		read(linha_de_estimulos, espaco);
		read(linha_de_estimulos, valor_de_entrada1);
		DataA <= to_stdlogicvector (valor_de_entrada1);
		read(linha_de_estimulos, espaco);
		read(linha_de_estimulos, valor_de_entrada2);
		DataB <= to_stdlogicvector (valor_de_entrada2);
		read(linha_de_estimulos, espaco);
		read(linha_de_estimulos, valor_de_saida);
		
		wait for passo;
		
		reset <= '0';
		
		wait for passo;
			
		reset <= '1';
		ULAOp <= "10";			
		enRegA <= '1';
		enRegB <= '1';
			
		wait until rising_edge(clock);
		wait for registrador_time;
			
		funct <= to_stdlogicvector (valor_funct);	-- inicia a operacao
		Reg_funct <= to_stdlogicvector (valor_funct)(4);
			
		enRegA <= '0';
		enRegB <= '0';
		
		wait for 0 ns;
		
		if(Reg_funct = '1') then
			if(pronto = '1') then
				wait until (falling_edge(pronto));
			end if;
			wait until (rising_edge(pronto));
		end if;
			
		enRegC <= '1';
		
		wait until rising_edge(clock);
		wait for registrador_time;
					
		enRegC <= '0';
			
		assert (DataC = to_stdlogicvector(valor_de_saida));
		
		wait for passo;

	end loop;

	wait for passo;
	assert false report "Test done." severity note;
	wait;
end process;
end tb;
