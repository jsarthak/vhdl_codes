LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY half_adder IS
    PORT (
        in1, in2 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC);
END ENTITY half_adder;

ARCHITECTURE Structural OF half_adder IS
    COMPONENT and_gate IS
        PORT (
            a, b : IN STD_LOGIC;
            y : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT xor_gate IS
        PORT (
            a, b : IN STD_LOGIC;
            y : OUT STD_LOGIC);
    END COMPONENT;

BEGIN
    S1 : xor_gate PORT MAP(in1, in2, sum);
    S2 : and_gate PORT MAP(in1, in2, carry);
END ARCHITECTURE Structural;