ARCHITECTURE Behavior OF fsm_exemplo IS
TYPE Tipo_estado IS (A, B, C);
SIGNAL EstadoAtual, ProximoEstado : Tipo_estado;
BEGIN
PROCESS (w, EstadoAtual)
BEGIN
CASE EstadoAtual IS
WHEN A =>
IF w = '0' THEN
ProximoEstado <= A;
ELSE
ProximoEstado <= B;
END IF;
WHEN B =>
IF w = '0' THEN
ProximoEstado <= A;
ELSE
ProximoEstado <= C;
END IF;
WHEN C =>
IF w = '0' THEN
ProximoEstado <= A;
ELSE
ProximoEstado <= C;
END IF;
END CASE;
END PROCESS;


ARCHITECTURE Behavior OF fsm_exemplo IS
TYPE Tipo_estado IS (A, B, C);
SIGNAL EstadoAtual, ProximoEstado : Tipo_estado;
BEGIN
PROCESS (w, EstadoAtual)
BEGIN
CASE EstadoAtual IS
WHEN A =>
IF w = '0' THEN
ProximoEstado <= A;
ELSE
ProximoEstado <= B;
END IF;
WHEN B =>
IF w = '0' THEN
ProximoEstado <= A;
ELSE
ProximoEstado <= C;
END IF;
WHEN C =>
IF w = '0' THEN
ProximoEstado <= A;
ELSE
ProximoEstado <= C;
END IF;
END CASE;
END PROCESS;


PROCESS (clk, rst)
BEGIN
IF rst = '1' THEN
EstadoAtual <= A;
ELSIF (rising_edge(clk)) THEN
EstadoAtual <= ProximoEstado;
END IF;
END PROCESS;

z <= '1' WHEN EstadoAtual = C ELSE '0';
END Behavior;