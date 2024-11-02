----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2023 17:16:57
-- Design Name: 
-- Module Name: Esercizio - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Esercizio is
    port(
        Din: in std_logic_vector(15 downto 0);
        clk, wa, wb, wr: in std_logic;
        r: out std_logic_vector(15 downto 0) 
    );
end Esercizio;

architecture Behavioral of Esercizio is
signal a, b, aluris: std_logic_vector(15 downto 0);
begin
    aluris <= a+b when din<a else din+b;
    process(clk)
    begin
        if(clk'event and clk='0') then
            if(wa='1') then
                a<=din;
            end if;
            if(wb='1') then
                b<=din;
            end if;
            if(wr='1') then
                r<=aluris;
            end if;
        end if;
    end process;
end Behavioral;