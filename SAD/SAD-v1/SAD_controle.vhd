LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SAD_controle IS
	PORT(
	clk, rst, iniciar, menor: IN STD_LOGIC;
	zi, ci, cpA, cpB, zsoma, csoma, csad_reg, pronto, ler: OUT STD_LOGIC
);
END SAD_controle;

ARCHITECTURE Behavior OF SAD_controle IS
	TYPE Tipo_estado IS (S0, S1, S2, S3, S4, S5);
	SIGNAL EstadoAtual, ProximoEstado : Tipo_estado;

BEGIN
	PROCESS (iniciar, EstadoAtual, menor)
	BEGIN
		CASE EstadoAtual IS
			WHEN S0 =>
			IF iniciar = '0' THEN
				ProximoEstado <= S1;
			ELSE
				ProximoEstado <= S0;
			END IF;
			
			WHEN S1 =>
				ProximoEstado <= S2;
			
			WHEN S2 =>
			IF menor = '1' THEN
				ProximoEstado <= S3;
			ELSE
				ProximoEstado <= S5;
			END IF;
			
			WHEN S3 =>
				ProximoEstado <= S4;

			WHEN S4 => 
				ProximoEstado <= S2;
			
			WHEN S5  =>
				ProximoEstado <= S0;
			
			END CASE;
END PROCESS;

PROCESS (clk, rst)
	BEGIN
		IF rst = '0' THEN
			EstadoAtual <= S0;
		ELSIF (rising_edge(clk)) THEN
			EstadoAtual <= ProximoEstado;
		END IF;
END PROCESS;


	WITH EstadoAtual SELECT
		csad_reg <= '1' WHEN S5, 
						'0' WHEN OTHERS;
						
	WITH EstadoAtual SELECT
		pronto <= '1' WHEN S0,
					 '0' WHEN OTHERS;
					 
	WITH EstadoAtual SELECT
		zi <= '1' WHEN S1,
				'0' WHEN OTHERS;
				
	WITH EstadoAtual SELECT
		ci <= '1' WHEN S1,
				'1' WHEN S4,
				'0' WHEN OTHERS;
				
	WITH EstadoAtual SELECT
		zsoma <= '1' WHEN S1,
				   '0' WHEN OTHERS;
					
	WITH EstadoAtual SELECT		
		csoma <= '1' WHEN S1,
					'1' WHEN S4,
				   '0' WHEN OTHERS;

	WITH EstadoAtual SELECT
		ler <= '1' WHEN S3,
				 '0' WHEN OTHERS;
				 
	WITH EstadoAtual SELECT
		cpA <= '1' WHEN S3,
				 '0' WHEN OTHERS;
				 
	WITH EstadoAtual SELECT
		cpB <= '1' WHEN S3,
				 '0' WHEN OTHERS;		 


END Behavior;