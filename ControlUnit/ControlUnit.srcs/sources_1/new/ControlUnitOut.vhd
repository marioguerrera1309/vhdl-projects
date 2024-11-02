----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2023 12:02:54
-- Design Name: 
-- Module Name: ControlUnitOut - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnitOut is
    port(
        stato: in integer range 0 to 3;
        writeA, writeB, writeR, ready: out std_logic
    );
end ControlUnitOut;

architecture Behavioral of ControlUnitOut is
begin
    process(stato)
    begin
        case stato is
            when 0 => --idle
                writeA<='0';
                writeB<='0';
                writeR<='0';
                ready<='1';
            when 1 => -- readA
                writeA<='1';
                writeB<='0';
                writeR<='0';
                ready<='0';
            when 2 => --readB
                writeA<='0';
                writeB<='1';
                writeR<='0';
                ready<='0';
            when 3 => --execute
                writeA<='0';
                writeB<='0';
                writeR<='1';
                ready<='0';
        end case;
    end process;
end Behavioral;