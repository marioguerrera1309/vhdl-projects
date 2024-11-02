----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2023 17:25:01
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
        clk, WRA, WRB: in std_logic;
        OP: in std_logic_vector(1 downto 0);
        Di: in std_logic_vector(15 downto 0);
        R: out std_logic_vector(15 downto 0)
    );
end Esercizio;

architecture Behavioral of Esercizio is
signal A, B: std_logic_vector(15 downto 0);
signal aluris: std_logic_vector(15 downto 0);
begin
    process(A, B, Di, OP)
    begin
        --aluris<=A+Di when op="00" else 
        --A+B when op="01" else 
        --A or Di;
        
        if(op="00") then
            aluris<=A+Di;
            else if(op="01") then
                 aluris<=A+B;
            else 
                 aluris<=A or Di;
            end if;
        end if;
    end process;
    process(clk)
    begin
        if(clk'event and clk='0') then
            if(WRA='1') then 
            A<=Di;
            end if;
            if(WRB='1') then
            B<=aluris;
            end if;
            R<=aluris;
        end if;
    end process;
end Behavioral;
