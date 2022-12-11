LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY portAnd IS
    PORT (
        inPortA : IN STD_LOGIC;
        inPortB : IN STD_LOGIC;
        outPortS : OUT STD_LOGIC
    );
END portAnd;

ARCHITECTURE main OF p_and IS
BEGIN
    outPortS <= inPortA AND inPortB;
END main;
