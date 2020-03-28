
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

ARCHITECTURE Structural OF mux_4x1 IS

    COMPONENT mux_2x1 IS
        PORT (
            A, B : IN STD_LOGIC;
            S : IN STD_LOGIC;
            Y : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL Y1, Y2 : STD_LOGIC;

BEGIN

    mux1 : mux_2x1 PORT MAP(I(0), I(1), S(1), Y1);
    mux2 : mux_2x1 PORT MAP(I(2), I(3), S(1), Y2);
    mux3 : mux_2x1 PORT MAP(Y1, Y2, S(0), Y);

END Structural;