LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY gray2binary IS
    PORT (
        G : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        B : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END gray2binary;

ARCHITECTURE DataFlow OF gray2binary IS
    SIGNAL b1, b2, b3 : STD_LOGIC;
BEGIN

    B(3) <= G(3);
    b3 <= G(3);
    B(2) <= b3 XOR G(2);
    b2 <= b3 XOR G(2);
    B(1) <= b2 XOR G(1);
    b1 <= b2 XOR G(1);
    B(0) <= b1 XOR G(0);

END DataFlow;