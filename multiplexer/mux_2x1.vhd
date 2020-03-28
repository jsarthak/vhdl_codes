
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux_2x1 IS
    PORT (
        A, B : IN STD_LOGIC;
        S : IN STD_LOGIC;
        Y : OUT STD_LOGIC);
END mux_2x1;

ARCHITECTURE Behavioral OF mux_2x1 IS

BEGIN

    PROCESS (S)
    BEGIN
        CASE S IS
            WHEN '0' => Y <= A;
            WHEN '1' => Y <= B;
            WHEN OTHERS => Y <= '0';
        END CASE;
    END PROCESS;
END Behavioral;