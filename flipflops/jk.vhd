
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY JK_FF IS
    PORT (
        J, K, clk : IN STD_LOGIC;
        Q, Q_bar : OUT STD_LOGIC);
END JK_FF;

ARCHITECTURE Behavioral OF JK_FF IS
BEGIN
    PROCESS (clk, J, K)
        VARIABLE X : std_logic;
    BEGIN
        IF (clk = '1' AND clk ' EVENT) THEN
            IF (J = '0' AND K = '0') THEN
                X := X;
            ELSIF (J = '1' AND K = '1') THEN
                X := NOT X;
            ELSIF (J = '1' AND K = '0') THEN
                X := '1';
            ELSIF (J = '0' AND K = '1') THEN
                X := '0';
            END IF;
            Q <= X;
            Q_bar <= NOT X;
        END IF;
    END PROCESS;

END Behavioral;