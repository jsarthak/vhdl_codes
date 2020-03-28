LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY full_adder IS
    PORT (
        in1, in2, in3 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC);
END full_adder;

ARCHITECTURE DataFlow OF full_adder IS

BEGIN
    sum <= in1 XOR in2 XOR in3;
    carry <= (in1 AND in2) OR (in2 AND in3) OR (in3 AND in1);

END DataFlow;