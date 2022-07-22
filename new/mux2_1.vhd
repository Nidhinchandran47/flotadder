----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 17:32:38
-- Design Name: 
-- Module Name: mux2_1 - Behavioral
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

entity mux2_1 is
    Port ( a0 : in STD_LOGIC_VECTOR (3 downto 0);
           a1 : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           yout : out STD_LOGIC_VECTOR (3 downto 0));
end mux2_1;

architecture Behavioral of mux2_1 is

begin

yout <= a0 when (sel= '0') else
        a1;
 
end Behavioral;
