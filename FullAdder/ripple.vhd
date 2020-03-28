LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ripple_adder IS
    PORT (
        inA, inB : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        carry_in : IN STD_LOGIC;
        sum : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        carry : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END ripple_adder;

ARCHITECTURE Structural OF ripple_adder IS

    COMPONENT full_adder
        PORT (
            in1, in2, in3 : IN STD_LOGIC;
            sum, carry : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL carry1, carry2, carry3 : STD_LOGIC;
BEGIN

    FA1 : full_adder PORT MAP(inA(0), inB(0), carry_in, sum(0), carry1);
    carry(0) <= carry1;
    FA2 : full_adder PORT MAP(inA(1), inB(1), carry1, sum(1), carry2);
    carry(1) <= carry2;
    FA3 : full_adder PORT MAP(inA(2), inB(2), carry2, sum(2), carry3);
    carry(2) <= carry3;
    FA4 : full_adder PORT MAP(inA(3), inB(3), carry3, sum(3), carry(3));

END Structural;