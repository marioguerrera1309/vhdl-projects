----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2024 14:12:36
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
use ieee.std_logic_signed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Esercizio3 is
    port(
        clk, wa, wb, wr: in std_logic;
        op: in std_logic;
        D: in std_logic_vector(15 downto 0);
        R: out std_logic_vector(15 downto 0)
    );
end Esercizio3;

architecture Behavioral of Esercizio3 is
signal aluris: std_logic_vector(15 downto 0);
signal regA: std_logic_vector(15 downto 0);
signal regB: std_logic_vector(15 downto 0);
begin
    aluris <= (regA or regB) when op='0' else (regA + regB);
process(clk)
begin   
    if clk='0' and clk'event then
        if wa='1' then regA<=D; end if;
        if wb='1' then regB<=D; end if;
        if wr='1' then R<=aluris; end if;
    end if;
end process;
end Behavioral;
