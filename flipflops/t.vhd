
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY T_FF IS
    PORT (
        T : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        Q, Q_bar : OUT STD_LOGIC);
END T_FF;

ARCHITECTURE Behavioral OF T_FF IS

BEGIN

    PROCESS (clk)
    BEGIN
        IF (clk = '0' AND clk ' EVENT) THEN
            Q <= NOT T;
            Q_bar <= T;
        END IF;
    END PROCESS;

END Behavioral;