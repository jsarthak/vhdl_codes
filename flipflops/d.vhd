
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY FF_D_if_else IS
    PORT (
        D, clk : IN STD_LOGIC;
        Q, Qbar : OUT STD_LOGIC);
END FF_D_if_else;

ARCHITECTURE Behavioral OF FF_D_if_else IS
BEGIN

    PROCESS (D, clk)
    BEGIN

        IF (clk = '0' AND clk ' EVENT) THEN
            Q <= D;
            Qbar <= NOT D;

        END IF;
    END PROCESS;
END Behavioral;