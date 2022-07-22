----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 17:52:26
-- Design Name: 
-- Module Name: mux4x1 - Behavioral
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

entity mux4x1 is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           s0 : in std_logic_vector (1 downto 0);
           yo : out STD_LOGIC);
end  Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC);;

architecture Behavioral of mux4x1 is

begin

yo <= a0 when (s0= "00") else
      a1 when (s0= "01") else
      a2 when (s0= "10") else
      a3;

end Behavioral;
