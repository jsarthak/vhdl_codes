
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY decoder_3to8_case IS
    PORT (
        A : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        D : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END decoder_3to8_case;

ARCHITECTURE Behavioral OF decoder_3to8_case IS
BEGIN
    PROCESS (A)
    BEGIN
        CASE A IS
            WHEN "000" => D <= "00000001";
            WHEN "001" => D <= "00000010";
            WHEN "010" => D <= "00000100";
            WHEN "011" => D <= "00001000";
            WHEN "100" => D <= "00010000";
            WHEN "101" => D <= "00100000";
            WHEN "110" => D <= "01000000";
            WHEN OTHERS => D <= "10000000";

        END CASE;
    END PROCESS;
END Behavioral;