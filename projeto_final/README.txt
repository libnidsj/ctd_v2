Testar os módulos: Multiplicador, ULA_MIPS, Ctrl-Ula e ULA_Usertop

Multiplicação é realizada com funct 110000 que corresponde a sel 100.
funct(4) só é diferente de 0 na multiplicação, portanto ele controla o mux que mostra o resultado da ULA.
sel 100 não estava sendo usado e permite a leitura correta do sinal de menor da ULA_MIPS.

O sinal pronto é levantado no mesmo ciclo em que a operação de multiplicação termina, 
quando a multiplicação não é realizada ele fica constante igual a 1.

É necessário resetar a ULA antes de cada multiplicação.
O reset é ativo em zero.
