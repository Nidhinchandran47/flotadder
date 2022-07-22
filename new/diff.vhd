----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.04.2022 13:46:11
-- Design Name: 
-- Module Name: diff - Behavioral
-- Project Name:floting point adder 
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

entity diff is
    Port ( in1 : in STD_LOGIC_VECTOR (3 downto 0);
           in2 : in STD_LOGIC_VECTOR (3 downto 0);
           out0 : out std_logic_vector (3 downto 0);
           sign : out std_logic);
end diff;

architecture Behavioral of diff is

component sub_2s
    Port ( a1 : in STD_LOGIC_VECTOR (3 downto 0);
         b1 : in STD_LOGIC_VECTOR (3 downto 0);
         dif : out STD_LOGIC_VECTOR (3 downto 0));
end component;

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

signal c0,c1,c2,c3,c4,c5,c6,c7:std_logic;

begin

d1: sub_2s port map(a1(0)=>in1(0),a1(1)=>in1(1),a1(2)=>in1(2),a1(3)=>in1(3),b1(0)=>in2(0),b1(1)=>in2(1),b1(2)=>in2(2),b1(3)=>in2(3),dif(0)=>c0,dif(1)=>c1,dif(2)=>c2,dif(3)=>c3);
d2: xor_gate port map(c3,c0,c4);
d3: xor_gate port map(c3,c1,c5);
d4: xor_gate port map(c3,c2,c6);
d5: xor_gate port map(c3,c3,c7);
d6: bit4_adder port map(X(0)=>c4,X(1)=>c5,X(2)=>c6,X(3)=>c7,Y(0)=>c3,Y(1)=>'0',Y(2)=>'0',Y(3)=>'0',Z(0)=>out0(0),Z(1)=>out0(1),Z(2)=>out0(2),Z(3)=>out0(3),carryIn=>'0');
d7: xor_gate port map(c3,'0',sign);
end Behavioral;
