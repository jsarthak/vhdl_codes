LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY decoder_3to8 IS
    PORT (
        A : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        D : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END decoder_3to8;

ARCHITECTURE DataFlow OF decoder_3to8 IS
BEGIN
    D(0) <= ((NOT A(2)) AND (NOT A(1)) AND (NOT A(0)));
    D(1) <= ((NOT A(2)) AND (NOT A(1)) AND A(0));
    D(2) <= ((NOT A(2)) AND A(1) AND (NOT A(0)));
    D(3) <= ((NOT A(2)) AND A(1) AND A(0));
    D(4) <= (A(2) AND (NOT A(1)) AND (NOT A(0)));
    D(5) <= (A(2) AND (NOT A(1)) AND A(0));
    D(6) <= (A(2) AND A(1) AND (NOT A(0)));
    D(7) <= A(2) AND A(1) AND A(0);
END DataFlow;