LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY FF_SR_if_else IS
    PORT (
        S, R, clk : IN STD_LOGIC;
        Q, Q_bar : OUT STD_LOGIC);
END FF_SR_if_else;

ARCHITECTURE Behavioral OF FF_SR_if_else IS

BEGIN

    PROCESS (S, R, clk)
        VARIABLE X : std_logic;
    BEGIN
        IF (clk = '1' AND clk ' EVENT) THEN

            IF (S = '0' AND R = '0') THEN
                X := X;
            ELSIF (S = '0' AND R = '1') THEN
                X := '0';
            ELSIF (S = '1' AND R = '0') THEN
                X := '1';
            ELSE
                X := 'Z';
            END IF;
        END IF;
        Q <= X;
        Q_bar <= NOT X;
    END PROCESS;
END Behavioral;