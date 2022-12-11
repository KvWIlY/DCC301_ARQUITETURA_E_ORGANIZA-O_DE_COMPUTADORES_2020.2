LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multplexador IS
    PORT (
        inPort : IN std_logic;
        inA : IN std_logic;
        inB : IN std_logic;
        outPort : OUT std_logic
    );
END multplexador ;

ARCHITECTURE behavior OF multplexador IS
BEGIN
    PROCESS (in_port, in_A, in_B)
    BEGIN
        CASE in_port IS
            WHEN '0' => out_port <= in_A;
            WHEN '1' => out_port <= in_B;
        END CASE;
    END PROCESS;
END behavior;