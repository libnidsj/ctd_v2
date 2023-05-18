# Alunos

João Marcos Marqueti (21102176)
Libni da Silva Junior (21102178)
		
# Descrição do trabalho

A atividade consistiu na descrição em VHDL de um bloco acelerador capaz de calcular a SAD (Sum of Absolute Differences) entre duas imagens, esta é uma métrica comumente utilizada para comparar duas imagens digitais, com o objetivo de avaliar o quão diferentes elas são entre si. A técnica SAD compara cada pixel da imagem de referência com o seu correspondente na imagem de comparação e calcula a diferença absoluta entre eles. Em seguida, somam-se as diferenças absolutas de todos os pixels para obter um valor global que representa a medida de diferença entre as duas imagens.
Inicialmente foi criado o Bloco de Controle, uma FSM que enviará sinais de controles ao Bloco Operativo dependendo do estado em que ele se encontra. Em seguida, foram criados os componentes básicos e suas ligações dentro do Datapath. Ambos o BO e BC foram interconectados sob o arquivo SAD_usertop.vhd.
Uma pequena adaptação foi feita ao projeto original por motivos de padronização, doravante os botões externos (reset e iniciar) são ativos em zero.
As simulações comprovaram o funcionamento adequado do acelerador, que forneceu resultados conforme o esperado.
Durante as simulações, também comprovou-se que mediante ao aumentado paralelismo da SAD-v3, esta mostrou requerer menos ciclos que a SAD-v1, portanto tendo execução ~4x mais rápida em troca da utilização de ~4x mais componentes.
	
# Descrição das simulações

- SAD_V1
	```
	force /clk 0,1 5 ns -r 10 ns							// gera um sinal de clock de 100MHz

	force /reset 0 0 ns, 1 20 ns							// realiza um reset assíncrono nos primeiros 20ns (OBS: todos os botões são ativos em nível lógico baixo)
	force /iniciar 0 20 ns, 1 40 ns							// mantém iniciar em nível lógico baixo por 20ns, afim de iniciar a operação
	force /Mem_A 10000000 20 ns								// seta Mem_A como 1000000 e Mem_B como 0000000, com resultado da SAD esperado 10000000000000
	force /Mem_B 00000000 20 ns

	force /iniciar 0 2100 ns, 1 2120 ns						// mantém iniciar em nível lógico baixo por 20ns, afim de iniciar a operação (após 195 ciclos * 10 ns + delay)
	force /Mem_A 00000000 2100 ns							// seta Mem_A como 0000000 e Mem_B como 1000000, com resultado da SAD esperado 10000000000000
	force /Mem_B 10000000 2100 ns

	force /iniciar 0 4200 ns, 1 4220 ns						// mantém iniciar em nível lógico baixo por 20ns, afim de iniciar a operação (após 195 ciclos * 10 ns + delay)
	force /Mem_A 00000000 4200 ns							// seta Mem_A como 0000000 e Mem_B como 0000000, com resultado da SAD esperado 00000000000000
	force /Mem_B 00000000 4200 ns
	```

- SAD_V3
	```	
	force /clk 0,1 5 ns -r 10 ns									// gera um sinal de clock de 100MHz

	force /reset 0 0 ns, 1 20 ns									// realiza um reset assíncrono nos primeiros 20ns (OBS: todos os botões são ativos em nível lógico baixo)
	force /iniciar 0 20 ns, 1 40 ns									// mantém iniciar em nível lógico baixo por 20ns, afim de iniciar a operação
	force /Mem_A 10000000000000000000000000000000 20 ns				// seta Mem_A como 10000000000000000000000000000000 e Mem_B como 00000000000000000000000000000000, com resultado da SAD esperado 10000000000000000000000000000000
	force /Mem_B 00000000000000000000000000000000 20 ns

	force /iniciar 0 600 ns, 1 620 ns
	force /Mem_A 00000000000000000000000000000000 600 ns			// mantém iniciar em nível lógico baixo por 20ns, afim de iniciar a operação (após 51 ciclos * 10 ns + delay)
	force /Mem_B 10000000000000000000000000000000 600 ns			// seta Mem_A como 00000000000000000000000000000000 e Mem_B como 10000000000000000000000000000000, com resultado da SAD esperado 10000000000000000000000000000000

	force /iniciar 0 1300 ns, 1 1320 ns	
	force /Mem_A 00000000000000000000000000000000 1300 ns			// mantém iniciar em nível lógico baixo por 20ns, afim de iniciar a operação (após 51 ciclos * 10 ns + delay)
	force /Mem_B 00000000000000000000000000000000 1300 ns			// seta Mem_A como 00000000000000000000000000000000 e Mem_B como 00000000000000000000000000000000, com resultado da SAD esperado 00000000000000000000000000000000
	```