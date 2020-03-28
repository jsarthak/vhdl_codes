LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY full_adder IS
    PORT (
        A : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        sum, carry : OUT STD_LOGIC);
END full_adder;

ARCHITECTURE Behavioral OF full_adder IS

BEGIN
    PROCESS (A)
    BEGIN
        case A is 
        when A<= "001" S=> '1';

        END PROCESS;

    END Behavioral;