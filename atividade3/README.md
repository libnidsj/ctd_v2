# Alunos

João Marcos Marqueti (21102176)
Libni da Silva Junior (21102178)
		
# Descrição do trabalho

A atividade consistiu na criação de duas testbenchs, uma que realiza os testes pré estabelecidos no próprio vhdl, e outra que realiza os testes gerados por um golden model. Foi necessário em ambos os casos criar um sinal de clock, que, foi arbitrado um período de 10ns.
	
# Descrição das simulações

- SAD_V1 (testbench)
	```
	clk_process: process											// processo de geração de clock
	begin
		clk <= '0';
		wait for half_period;
		clk <= '1';
		wait for half_period;
	end process;
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	wait for passo;													// aguarda 20ns após reset ou término de outra operação
	reset <= '1';													// desativa sinal de reset
	Mem_A <= "10000000";											// define Mem_A como "10000000" em todo teste, igual realizado em estimulos.do
	Mem_B <= "00000000";											// define Mem_B como "00000000" em todo teste, igual realizado em estimulos.do
	iniciar <= '0';													// inicia a operação
	wait for passo;													// aguarda 20ns após início da operação
	iniciar <= '1';													// desativa sinal de iniciar, para que não comece outra operação assim que pronto for alcançado
	wait on pronto;													// espera mudança no sinal de pronto
	assert(SAD="10000000000000")									// testa se a SAD possui o valor esperado "10000000000000"
	report "Fail 0" severity error;									// reporta erro caso SAD != "10000000000000"
																	// nota: o teste é realizado novamente para todos os valores testados em estimulos.do
	```

- SAD_V3 (testbench)
	```	
	clk_process :process											// processo de geração de clock
	begin
	   clk <= not clk after half_period;
	   wait for half_period;
	   clk <= not clk after half_period;
	   wait for half_period;
	end process;
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	while not endfile(arquivo_de_estimulos) loop					// enquanto não acabou o arquivo de estímulos
	
		reset <= '0';												// realiza um reset assíncrono
		wait for passo;
		reset <= '1';
		wait for passo;
		
		iniciar <= '0';												// inicia a operação
		wait on endereco;											// espera o sinal de endereço alterar
		iniciar <= '1';												// desativa sinal de iniciar, para que não comece outra operação assim que pronto for alcançado
		
		while (pronto = '0') loop
		
			-- read inputs
			readline(arquivo_de_estimulos, linha_de_estimulos);		// nas seguintes linhas o arquivo de estímulos é lido e salvo nas variáveis respectivas
			read(linha_de_estimulos, valor_de_entrada1);
			Mem_A <= to_stdlogicvector (valor_de_entrada1);
			read(linha_de_estimulos, espaco);
			read(linha_de_estimulos, valor_de_entrada2);
			Mem_B <= to_stdlogicvector (valor_de_entrada2);
			read(linha_de_estimulos, espaco);
			read(linha_de_estimulos, valor_de_saida);
			read(linha_de_estimulos, espaco);
			read(linha_de_estimulos, end_bit);
			wait on endereco;										// a cada mudança de endereço, novos valores são colocados em Mem_A e Mem_B
			assert (SAD = to_stdlogicvector(valor_de_saida))		// testa se a SAD é a esperada a cada mundança de endereço
			report
			"Falha na simulacao. "
			severity error;
			
			if (end_bit = '1') then									// se o bloco 8x8 chegou ao fim, considera Mem_A = Mem_B = 0 até que esteja pronto
				Mem_A <= "00000000000000000000000000000000";
				Mem_B <= "00000000000000000000000000000000";
				wait on pronto;
			end if;
		
		end loop;
			
	end loop;
			
	```