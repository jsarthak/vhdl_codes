LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY mux IS
    PORT (
        I : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        S : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        Y : OUT STD_LOGIC);
END mux;

ARCHITECTURE Behavioral OF mux IS

BEGIN
    PROCESS (S)
    BEGIN
        IF (S = "00") THEN
            Y <= I(0);
        ELSIF (S = "01") THEN
            Y <= I(1);
        ELSIF (S = "10") THEN
            Y <= I(2);
        ELSIF (S = "11") THEN
            Y <= I(3);
        END IF;
    END PROCESS;

END Behavioral;