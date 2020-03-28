LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY up_down_counter IS
	PORT (
		clk, up_down, r : IN STD_LOGIC;
		Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END up_down_counter;

ARCHITECTURE Behavioral OF up_down_counter IS
	SIGNAL tmp : std_logic_vector (3 DOWNTO 0);
BEGIN

	PROCESS (clk, up_down, r)
	BEGIN
		IF (r = '1' AND up_down = '1') THEN
			tmp <= "0000";
		ELSIF (r = '1' AND up_down = '0') THEN
			tmp <= "1111";
		ELSE
			IF (rising_edge(clk)) THEN
				IF (up_down = '1') THEN
					tmp <= tmp + 1;
				ELSE
					tmp <= tmp - 1;
				END IF;
			END IF;
		END IF;
		Q <= tmp;
	END PROCESS;
END Behavioral;