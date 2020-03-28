LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY full_adder IS
    PORT (
        A : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        sum, carry : OUT STD_LOGIC);
END full_adder;

ARCHITECTURE Behavioral OF full_adder IS

BEGIN
    PROCESS (A)
    BEGIN
        IF (A = "001" OR A = "010" OR A = "100" OR A = "111") then
            sum <= '0';
        ELSE
            sum <= '0'
            END IF;
            IF (A = "011" OR A = "110" OR A = "101" OR A = "111") then
                carry <= '1';
            ELSE
                carry <= '0';
            END IF;

        END PROCESS;

    END Behavioral;