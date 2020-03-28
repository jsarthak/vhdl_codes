LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY not_gate IS
    PORT (
        a : IN std_logic;
        y : OUT std_logic);
END not_gate;

ARCHITECTURE DataFlow OF not_gate IS

BEGIN
    y <= NOT a;

END DataFlow;