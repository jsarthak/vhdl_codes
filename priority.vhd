
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY priority_encoder IS
    PORT (
        I : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        Q : OUT STD_LOGIC_VECTOR (1 DOWNTO 0));
END priority_encoder;

ARCHITECTURE Behavioral OF priority_encoder IS

BEGIN

    PROCESS (I)
    BEGIN
        IF (I = "0001") THEN
            Q <= "00";
        ELSIF (I(1) = '1' AND I(2) = '0' AND I(3) = '0') THEN
            Q <= "01";
        ELSIF (I(2) = '1' AND I(3) = '0') THEN
            Q <= "10";
        ELSIF (I(3) = '1') THEN
            Q <= "11";
        ELSE
            Q <= "XX";
        END IF;
    END PROCESS;
END Behavioral;