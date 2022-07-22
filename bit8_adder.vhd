----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 18:55:49
-- Design Name: 
-- Module Name: bit8_adder - Behavioral
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

entity bit8_adder is
    Port ( a0 : in STD_LOGIC_VECTOR (3 downto 0);
           a1 : in STD_LOGIC_VECTOR (3 downto 0);
           b0 : in STD_LOGIC_VECTOR (3 downto 0);
           b1 : in STD_LOGIC_VECTOR (3 downto 0);
           sum1 : out STD_LOGIC_VECTOR (3 downto 0);
           sum2 : out STD_LOGIC_VECTOR (3 downto 0);
           cry : out STD_LOGIC);
end bit8_adder;

architecture Behavioral of bit8_adder is

component bit4_adder
  Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           carryIn : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0);
           carryOut : out STD_LOGIC);
           
end component;
component xor_gate
   Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component; 
 


signal c,v: std_logic;

begin

z1: bit4_adder port map(a0,b0,'0',sum1,c);
z2: bit4_adder port map(a1,b1,c,sum2,cry);

end Behavioral;
