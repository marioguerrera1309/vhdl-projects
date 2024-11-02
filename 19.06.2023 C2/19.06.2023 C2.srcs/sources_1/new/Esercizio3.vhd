LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

Entity DP is
Port(clk,WA,WR: in std_logic;
	OP: in std_logic_vector(1 downto 0);
	I: in std_logic_vector(15 downto 0);
	R: out std_logic_vector(15 downto 0) );
End DP;

Architecture beh of DP is
SIGNAL Ris: std_logic_vector(15 downto 0);
SIGNAL A: std_logic_vector(15 downto 0);

begin
	PROCESS(clk, op)
	BEGIN
		IF (op = "00") THEN
			Ris <= A + I;
			end if;
		IF (op = "01") THEN
			Ris <= A OR I;
			end if;
		IF (op = "00") THEN
			IF (A < I) THEN
				Ris <= A;
			ELSE
				Ris <= I;
		 end if;
		
		ELSE
			Ris <= A AND I;
		END IF;
	END PROCESS;

	PRoCESS(clk)
	BEGIN
		IF (clk'event AND clk = '0') THEN
			IF (WA = '1') THEN 
				A <= I;
			END IF;
			IF (WR = '1') THEN 
			R <= Ris;
			END IF;
		END IF;
	END PROCESS;
end beh;