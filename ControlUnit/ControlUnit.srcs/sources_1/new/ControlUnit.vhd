----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2023 11:53:35
-- Design Name: 
-- Module Name: ControlUnit - Behavioral
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

entity ControlUnit is
    port(
        clk, start: in std_logic;
        stato: out integer range 0 to 3
    );
end ControlUnit;

architecture Behavioral of ControlUnit is
signal st: integer range 0 to 3;
-- st=stato
begin
    process(clk)
    begin
        case st is
        when 0 => --idle
            if(start='1') then st<=1;
            else st<=0;
            end if;
        when 1 => --readA
            st<=2;
        when 2 => --readB
            st<=3;
        when 3 => --execute
            st<=0;  
        end case;
    end process;
end Behavioral;
