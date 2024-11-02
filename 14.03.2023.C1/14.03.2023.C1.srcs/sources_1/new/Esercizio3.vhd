----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.01.2024 11:44:19
-- Design Name: 
-- Module Name: Esercizio3 - Behavioral
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

entity Esercizio3 is
    port(
        clk, start: in std_logic;
        Op, ready: in std_logic;
        stato: out integer range 0 to 5
    );
end Esercizio3;

architecture Behavioral of Esercizio3 is
signal st: integer range 0 to 5;
begin   
    stato<=st;
    process(clk)
    begin
        if clk='0' and clk'event then
            case st is 
                when 0 => if start='0' then st<=0; else st<=1; end if;
                when 1 => st<=2;
                when 2 => if ready='0' then st<=2; else
                            if ready='1' and Op='0' then st<=3; else st<=4; end if;
                            end if;
                when 3 => st<=0;
                when 4 => st<=5;
                when 5 => st<=0;
            end case; 
        end if;
    end process;
end Behavioral;