LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY half_adder IS
    PORT (
        in1, in2 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC);
END ENTITY half_adder;

ARCHITECTURE Behavioral OF half_adder IS
BEGIN
    PROCESS (in1, in2)
    BEGIN
        IF (in1 = '0' AND in2 = '0') THEN
            sum <= '0';
            carry <= '0';
        ELSIF (in1 = '0' AND in2 = '1') THEN
            sum <= '1';
            carry <= '0';
        ELSIF (in1 = '1' AND in2 = '0') THEN
            sum <= '0';
            carry <= '0';
        ELSIF (in1 = '1' AND in2 = '1') THEN
            sum <= '0';
            carry <= '1';
        END IF;
    END PROCESS;

END ARCHITECTURE Behavioral;