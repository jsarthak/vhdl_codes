LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY up_counter IS
    PORT (
        clk, reset : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END up_counter;

ARCHITECTURE Behavioral OF up_counter IS
    SIGNAL tmp : std_logic_vector (3 DOWNTO 0);
BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF (reset = '1') THEN
            tmp <= "0000";
        ELSE
            IF (rising_edge(clk)) THEN
                tmp <= tmp + 1;
            END IF;
        END IF;

    END PROCESS;

    Q <= tmp;

END Behavioral;