----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.01.2024 16:40:57
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
        stato: in std_logic_vector(1 downto 0); 
        en, cnt: in std_logic; 
        WA, WB, Exe, Ready: out std_logic
    );
end Esercizio3;

architecture Behavioral of Esercizio3 is
begin
    WA <= '1' when stato="01" else '0';
    WB <= '1' when stato="01" and en='1' else 
          '1' when stato="10" else '0';
    Exe <= '1' when stato="11" and cnt='1' else '0';
    Ready <= '1' when stato="00" else '0';
end Behavioral;