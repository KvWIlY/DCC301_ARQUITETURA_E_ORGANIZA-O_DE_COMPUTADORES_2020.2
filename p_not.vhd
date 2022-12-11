LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY port_not IS
    PORT (
        inPortA : IN STD_LOGIC;
        outPort : OUT STD_LOGIC
    );
END port_not;

ARCHITECTURE main OF p_not IS
BEGIN
    outPort <= NOT(inPortA);
END main;