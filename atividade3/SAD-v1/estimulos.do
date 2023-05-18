force /clk 0,1 5 ns -r 10 ns							

	force /reset 0 0 ns, 1 20 ns						
	force /iniciar 0 20 ns, 1 40 ns						
	force /Mem_A 10000000 20 ns							
	force /Mem_B 00000000 20 ns

	force /iniciar 0 2100 ns, 1 2120 ns					
	force /Mem_A 00000000 2100 ns						
	force /Mem_B 10000000 2100 ns

	force /iniciar 0 4200 ns, 1 4220 ns					
	force /Mem_A 00000000 4200 ns						
	force /Mem_B 00000000 4200 ns