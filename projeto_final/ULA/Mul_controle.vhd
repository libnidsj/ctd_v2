LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Mul_controle IS
	PORT(
	clock,reset,zero,menor:in STD_LOGIC;
	sel: in STD_LOGIC_VECTOR(2 DOWNTO 0);
	cmux,cS,cC, pronto:out STD_LOGIC
);
END Mul_controle;


ARCHITECTURE Behavior OF Mul_controle IS

	TYPE Tipo_estado IS (S0, S1,S2);
	SIGNAL EstadoAtual, ProximoEstado : Tipo_estado;
	signal clk: std_logic;

BEGIN
	PROCESS (sel, zero, EstadoAtual)
	BEGIN
		CASE EstadoAtual IS
		
			WHEN S0 =>
			IF sel = "100" THEN
				ProximoEstado <= S1;
			ELSE
				ProximoEstado <= S0;
			END IF;
			
			WHEN S1 =>
			IF zero = '0' THEN
				ProximoEstado <= S2;
			ELSE
				ProximoEstado <= S0;
			END IF;
				
			WHEN S2 =>
			IF zero = '0' THEN
				ProximoEstado <= S2;
			ELSE
				ProximoEstado <= S0;
			END IF;
			
			
			
		END CASE;
END PROCESS;

PROCESS (clock, reset)
	BEGIN
		IF reset = '0' THEN
			EstadoAtual <= S0;
		ELSIF (rising_edge(clock)) THEN
			EstadoAtual <= ProximoEstado;
		END IF;
END PROCESS;


	WITH EstadoAtual SELECT
		cmux <= '1' WHEN S2, 
				  '0' WHEN OTHERS;
						
	WITH EstadoAtual SELECT
		pronto <= '1' WHEN S0, 
				    '0' WHEN OTHERS;
				
	WITH EstadoAtual SELECT
		cS <= '1' WHEN S2, 
				'0' WHEN OTHERS;
				
	WITH EstadoAtual SELECT
		cC <= '0' WHEN S0, 
				'1' WHEN OTHERS;

END Behavior;