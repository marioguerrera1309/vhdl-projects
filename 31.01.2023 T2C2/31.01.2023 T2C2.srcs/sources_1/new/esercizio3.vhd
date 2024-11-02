----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.01.2024 07:52:00
-- Design Name: 
-- Module Name: esercizio3 - Behavioral
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
use ieee.std_logic_unsigned.all;    
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity esercizio3 is
    port(
    clk: in std_logic;
    wra, wrb: in std_logic;
    op: in std_logic_vector(1 downto 0);
    Di: in std_logic_vector(15 downto 0);
    R: out std_logic_vector(15 downto 0)
    );
end esercizio3;

architecture Behavioral of esercizio3 is
signal A, B, Ris: std_logic_vector(15 downto 0);
begin
    Ris<= A+Di when op="00" else
          A+B when op="01" else
          A or Di when op="10";
   R<=Ris;
process(clk)
begin
    if clk='0' and clk'event then
        if wra='1' then 
            A<=Di;
        end if;
        if wrb='1' then
            B<=Ris;
        end if;
        
    end if;
end process;

end Behavioral;
