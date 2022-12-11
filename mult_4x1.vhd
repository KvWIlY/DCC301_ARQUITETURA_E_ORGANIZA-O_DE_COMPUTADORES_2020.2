LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mult_4x1 IS
    PORT (
        S0: IN std_logic;
		  S1: IN std_logic;
        A: IN std_logic;
        B: IN std_logic;
		  C: IN std_logic;
		  D: IN std_logic;
        Z: OUT std_logic
    );
END mult_4x1;

ARCHITECTURE behavior OF mult_4x1 IS

	COMPONENT mult_2x1 IS
		 PORT(
			  in_port : IN std_logic;
			  in_A : IN std_logic;
			  in_B : IN std_logic;
			  out_port : OUT std_logic
		 );
	END COMPONENT;

	SIGNAL out_mult_1, out_mult_2, out_mult_3: std_logic;
	
	
BEGIN


	mult_1: mult_2x1 PORT MAP(S0, A, B, out_mult_1);
	mult_2: mult_2x1 PORT MAP(S0, C, D, out_mult_2);
	mult_3: mult_2x1 PORT MAP(S1, out_mult_1, out_mult_2, out_mult_3);
	
	
	Z <= out_mult_3;
	
	

END behavior;