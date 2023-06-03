# Alunos

João Marcos Marqueti (21102176)
Libni da Silva Junior (21102178)
		
# Descrição do golden model

O golden model é basicamente um gerador de dois número binários randomicos de 32 bits, que serão as entradas em Mem_A e Mem_B, representando 4 linhas de cada bloco (8x8/4 -> 16 números por operação). Após gerado cada um desses números, os mesmos são divididos em 4, cada um com 8 bits, para que seja realizada a diferença absoluta entre eles, e, então realizada uma soma cumulativa para obter o resultado esperado na SAD.

Como queremos testar para mais pares de números, a cada 16 gerados, ou seja, um bloco 8x8, é setada uma flag de término como 1, que serve para que a testbench entenda que as memórias chegaram ao fim do bloco.

Realizando o modelo e o testando, notamos que existem erros na SAD, sendo que a saída, ao invés de 14 bits, como esperado, possui 56, além de não convergir para o resultado correto.