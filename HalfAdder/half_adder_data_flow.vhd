LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY half_adder IS
    PORT (
        in1, in2 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC);
END ENTITY half_adder;

ARCHITECTURE DataFlow OF half_adder IS
BEGIN
    sum <= in1 XOR in2;
    carry <= in1 AND in2;
END ARCHITECTURE DataFlow;