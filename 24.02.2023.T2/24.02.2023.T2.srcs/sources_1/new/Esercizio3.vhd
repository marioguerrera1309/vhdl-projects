----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2024 15:23:50
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Esercizio3 is
    port(
        clk, reset, op: in std_logic;
        wrA, wrB: in std_logic;
        Din: in std_logic_vector(7 downto 0);
        R: out std_logic_vector(7 downto 0)
    );
end Esercizio3;
architecture Behavioral of Esercizio3 is
signal A, B, aluRis, mux: std_logic_vector(7 downto 0);
begin
    mux <= aluRis when reset='1' else "0000000";
    aluRis <= A+B when op='0' else A or B;
    R<=aluRis;
process(clk)
begin
    if clk='0' and clk'event then
        if wrA='1' then A<=mux; end if;
        if wrB='1' then B<=Din; end if;
    end if;
end process;
end Behavioral;