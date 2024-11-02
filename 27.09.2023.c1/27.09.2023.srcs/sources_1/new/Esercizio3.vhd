----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2024 11:36:52
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
        op: in std_logic;
        stato: in std_logic_vector(1 downto 0);
        ReadA, ReadB, Exe1, Exe2, Write: out std_logic 
    );
end Esercizio3;

architecture Behavioral of Esercizio3 is
begin
    ReadA <= '1' when op='1' and stato="01" else '0' ;
    ReadB <= '1' when op='0' and stato="01" else '0' ;
    Exe1 <= '1' when op='0' and stato="10" else '0' ;
    Exe2 <= '1' when (op='1' and stato="10") or (op='1' and stato="11") else '0';
    Write <= '1' when (op='0' and stato="10") or (op='1' and stato="11") else '0';
end Behavioral;
