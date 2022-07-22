----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.04.2022 07:54:25
-- Design Name: 
-- Module Name: mux2_1x1 - Behavioral
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

entity mux2_1x1 is
    Port ( slt : in STD_LOGIC;
           y0 : in STD_LOGIC;
           y1 : in STD_LOGIC;
           z : out STD_LOGIC);
end mux2_1x1;

architecture Behavioral of mux2_1x1 is

begin

z <= y0 when (slt='0') else
     y1;

end Behavioral;
