LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY johnson_counter IS
	PORT (
		clk, r : IN STD_LOGIC;
		Q : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END johnson_counter;

ARCHITECTURE Behavioral OF johnson_counter IS
	SIGNAL tmp : std_logic_vector (7 DOWNTO 0);

BEGIN
	PROCESS (clk, r)

	BEGIN
		IF (r = '1') THEN
			tmp <= "00000000";
		ELSE
			IF (rising_edge(clk)) THEN
				tmp(1) <= tmp(0);
				tmp(2) <= tmp(1);
				tmp(3) <= tmp(2);
				tmp(4) <= tmp(3);
				tmp(5) <= tmp(4);
				tmp(6) <= tmp(5);
				tmp(7) <= tmp(6);
				tmp(0) <= (NOT tmp(7));
			END IF;
		END IF;
		Q <= tmp;
	END PROCESS;

END Behavioral;