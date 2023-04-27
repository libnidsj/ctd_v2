# Alunos

João Marcos Marqueti (21102176)
Libni da Silva Junior (21102178)
		
# Descrição do trabalho

O trabalho consistiu no desenvolvimento de 4 circuitos combinacionais, sendo eles os seguintes:

- demux1para4: um circuito com uma entrada de dados, uma entrada de seleção e quatro saídas. A entrada de seleção seleciona em qual das saídas a entrada de dados deve aparecer.
	
- mux4para1: ao contrário do demux, o mux possui 4 entradas de dados, uma de seleção e uma de saída. A entrada de seleção seleciona qual das entradas deve aparecer na saída.
	
- decodificadorBCD7Seg-Logica: Um decodificador BCD montado atravéz das expressões lógicas para cada uma das saídas do display de 7 segmentos (considerando ânodo comum)
	
- decodificaforBCD7Seg-Case: Um decodificador BCD montado atravéz de case switch para cada uma das possíveis entradas (considerando ânodo comum)
	
# Descrição das simulações

- demux1para4
	```
	force /f 0 0 ns, 1 20ns -r 40ns							// alterna a entrada entre 0 e 1, a cada 20ns
	force /sel 00 0 ns, 01 40 ns, 10 80 ns, 11 120 ns		// a cada 40ns altera a saída escolhida
	```

- mux4para1
	```	
	force /a 0 0 ns, 1 20ns									// força entrada a para 1 quando saida a esta selecionada a 20ns, antes disso, a <= 0
	force /b 0 0 ns, 1 60ns									// força entrada b para 1 quando saida b esta selecionada a 20ns, antes disso, b <= 0
	force /c 0 0 ns, 1 100ns								// força entrada c para 1 quando saida c esta selecionada a 20ns, antes disso, c <= 0 
	force /d 0 0 ns, 1 140ns								// força entrada d para 1 quando saida d esta selecionada a 20ns, antes disso, d <= 0
	force /sel 00 0 ns, 01 40 ns, 10 80 ns, 11 120 ns		// a cada 40ns altera a entrada selecionada para aparecer na saída
	```

- decodificaforBCD7Seg(-Logica && -Case)
	```
	force /bcd 0000 0 ns, 0001 20 ns, 0010 40 ns, 0011 60 ns, 0100 80 ns, 0101 100 ns, 0110 120 ns, 0111 140 ns, 1000 160 ns, 1001 180 ns			// a cada 20ns testa uma das possíveis entradas, testando todos os 10 casos possíveis sequencialmente
	```