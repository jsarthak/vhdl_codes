LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY decoder_3to8_if_else IS
    PORT (
        A : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        D : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END decoder_3to8_if_else;

ARCHITECTURE Behavioral OF decoder_3to8_if_else IS

BEGIN
    PROCESS (A)
    BEGIN
        IF A = "000" THEN
            D <= "00000001";
        ELSIF A = "001" THEN
            D <= "00000010";
        ELSIF A = "010" THEN
            D <= "00000100";
        ELSIF A = "011" THEN
            D <= "00001000";
        ELSIF A = "100" THEN
            D <= "00010000";
        ELSIF A = "101" THEN
            D <= "00100000";
        ELSIF A = "110" THEN
            D <= "01000000";
        ELSE
            D <= "10000000";
        END IF;
    END PROCESS;
END Behavioral;