----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2024 12:07:52
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
        op, ready: in std_logic;
        stato: out integer range 0 to 4
    );
end Esercizio3;
architecture Behavioral of Esercizio3 is
signal st : integer range 0 to 4;
begin
process(clk)
begin
    stato <= st;
    if clk='0' and clk'event then
        case st is
            when 0 => if start='0' then st<=0; 
                        else st<=1; 
                        end if;
            when 1 => if ready='0' then st<=1;
                        else if (op='0' and ready='1') then st<=2;
                                else st<=3;
                                end if;
                        end if;
            when 2 => st<=4;
            when 3 => st<=4;
            when 4 => st<=0;
            when others => null;
        end case;
    end if;
end process;
end Behavioral;
