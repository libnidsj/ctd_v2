force /clk 0,1 5 ns -r 10 ns									

	force /reset 0 0 ns, 1 20 ns								
	force /iniciar 0 20 ns, 1 40 ns								
	force /Mem_A 10000000000000000000000000000000 20 ns			
	force /Mem_B 00000000000000000000000000000000 20 ns

	force /iniciar 0 600 ns, 1 620 ns
	force /Mem_A 00000000000000000000000000000000 600 ns		
	force /Mem_B 10000000000000000000000000000000 600 ns		

	force /iniciar 0 1300 ns, 1 1320 ns	
	force /Mem_A 00000000000000000000000000000000 1300 ns		
	force /Mem_B 00000000000000000000000000000000 1300 ns		