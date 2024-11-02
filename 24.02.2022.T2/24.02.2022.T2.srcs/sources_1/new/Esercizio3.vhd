----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2024 14:54:36
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
        Din: in std_logic_vector(15 downto 0);
        clk, weA, weB, weR: in std_logic;
        R: out std_logic_vector(15 downto 0)
    );
end Esercizio3;
architecture Behavioral of Esercizio3 is
signal A, B, Ris: std_logic_vector(15 downto 0);
begin
    Ris<= A+B when Din<A else Din+B;
process(clk)
begin
    if clk='0' and clk'event then
        if weA='1' then A<=Din; end if;
        if weB='1' then B<=Din; end if;
        if weR='1' then R<=Ris; end if;
    end if;
end process;
end Behavioral;