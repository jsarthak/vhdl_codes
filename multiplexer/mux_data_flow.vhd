LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux_4x1 IS
    PORT (
        I : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        S : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        Y : OUT STD_LOGIC);
END mux_4x1;

ARCHITECTURE DataFlow OF mux_4x1 IS

BEGIN
    Y <= ((NOT S(0)) AND (NOT S(1)) AND I(0)) OR
        ((S(0)) AND (NOT S(1)) AND I(1)) OR
        ((NOT S(0)) AND (S(1)) AND I(2)) OR
        ((S(0)) AND (S(1)) AND I(3));
END DataFlow;