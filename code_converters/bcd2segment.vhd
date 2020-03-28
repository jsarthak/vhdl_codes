LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY bcdto7segment IS
    PORT (
        BCD : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        SEGMENT : OUT STD_LOGIC_VECTOR (6 DOWNTO 0));
END bcdto7segment;

ARCHITECTURE Behavioral OF bcdto7segment IS

BEGIN

    PROCESS (BCD)
    BEGIN
        CASE BCD IS
            WHEN "0000" => SEGMENT <= "1111110";
            WHEN "0001" => SEGMENT <= "0110000";
            WHEN "0010" => SEGMENT <= "1101101";
            WHEN "0011" => SEGMENT <= "1111001";
            WHEN "0100" => SEGMENT <= "0110011";
            WHEN "0101" => SEGMENT <= "1011011";
            WHEN "0110" => SEGMENT <= "1011111";
            WHEN "0111" => SEGMENT <= "1110000";
            WHEN "1000" => SEGMENT <= "1111111";
            WHEN "1001" => SEGMENT <= "1111011";
            WHEN OTHERS => SEGMENT <= "0000000";
        END CASE;
    END PROCESS;
END Behavioral;