----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.04.2022 07:50:15
-- Design Name: 
-- Module Name: SINGLE_SHFITER - Behavioral
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

entity SINGLE_SHFITER is
    Port ( shf : in STD_LOGIC;
           yin : in STD_LOGIC_VECTOR (8 downto 0);
           yout : out STD_LOGIC_VECTOR (9 downto 0));
end SINGLE_SHFITER;

architecture Behavioral of SINGLE_SHFITER is

component mux2_1x1
       Port ( slt : in STD_LOGIC;
           y0 : in STD_LOGIC;
           y1 : in STD_LOGIC;
           z : out STD_LOGIC);
end component;


begin

q1: mux2_1x1 port map (shf,yin(8),'0',yout(9));
q2: mux2_1x1 port map (shf,yin(7),yin(8),yout(8));
q3: mux2_1x1 port map (shf,yin(6),yin(7),yout(7));
q4: mux2_1x1 port map (shf,yin(5),yin(6),yout(6));
q5: mux2_1x1 port map (shf,yin(4),yin(5),yout(5));
q6: mux2_1x1 port map (shf,yin(3),yin(4),yout(4));
q7: mux2_1x1 port map (shf,yin(2),yin(3),yout(3));
q8: mux2_1x1 port map (shf,yin(1),yin(2),yout(2));
q9: mux2_1x1 port map (shf,yin(0),yin(1),yout(1));
q10: mux2_1x1 port map (shf,'0',yin(0),yout(0));
end Behavioral;
