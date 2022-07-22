----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 18:12:14
-- Design Name: 
-- Module Name: shifter - Behavioral
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

entity shifter is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC_VECTOR (6 downto 0));
end shifter;

architecture Behavioral of shifter is

component mux4x1
   Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           s0 : in std_logic_vector (1 downto 0);
           yo : out STD_LOGIC);
end component;

begin

u1 : mux4x1 port map ('0','0','0',a,sel,y(0));
u2 : mux4x1 port map ('0','0',a,b,sel,y(1));
u3 : mux4x1 port map ('0',a,b,c,sel,y(2));
u4 : mux4x1 port map (a,b,c,d,sel,y(3));
u5 : mux4x1 port map (b,c,d,'0',sel,y(4));
u6 : mux4x1 port map (c,d,'0','0',sel,y(5));
u7 : mux4x1 port map (d,'0','0','0',sel,y(6));

end Behavioral;
