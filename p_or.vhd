LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY portOR IS
    PORT (
        in_port_A : IN STD_LOGIC;
        in_port_B : IN STD_LOGIC;
        out_port : OUT STD_LOGIC
    );
END portOR;

ARCHITECTURE main OF portOR IS
BEGIN
    out_port <= in_port_A OR in_port_B;
END main;