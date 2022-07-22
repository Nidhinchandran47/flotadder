----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.04.2022 13:32:31
-- Design Name: 
-- Module Name: bit4_adder - Behavioral
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

entity bit4_adder is
 Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           carryIn : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0);
           carryOut : out STD_LOGIC);
end bit4_adder;

architecture Behavioral of bit4_adder is

component full_adder
Port ( Ain : in STD_LOGIC;
           Bin : in STD_LOGIC;
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;

signal c0,c1,c2: std_logic;

begin

A1:full_adder port map(X(0),Y(0),carryIn,Z(0),c0);
A2:full_adder port map(X(1),Y(1),c0,Z(1),c1);
A3:full_adder port map(X(2),Y(2),c1,Z(2),c2);
A4:full_adder port map(X(3),Y(3),c2,Z(3),carryOut);



end Behavioral;
