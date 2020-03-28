LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY full_adder IS
    PORT (
        in1, in2, in3 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC);
END full_adder;

ARCHITECTURE Structural OF full_adder IS

    COMPONENT half_adder
        PORT (
            in1, in2 : IN STD_LOGIC;
            sum, carry : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL carry1, carry2, sum1 : STD_LOGIC;

BEGIN
    HA1 : half_adder PORT MAP(in1, in2, sum1, carry1);
    HA2 : half_adder PORT MAP(in3, sum1, sum, carry2);
    carry <= carry1 OR carry2;

END Structural;