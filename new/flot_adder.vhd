----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nidhin chandran
-- 
-- Create Date: 20.04.2022 08:11:31
-- Design Name: flotting point adder
-- Module Name: flot_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- @nidhin_47
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

entity flot_adder is
    Port ( c1 : in STD_LOGIC_VECTOR (3 downto 0);
           c2 : in STD_LOGIC_VECTOR (3 downto 0);
           e1 : in STD_LOGIC_VECTOR (3 downto 0);
           e2 : in STD_LOGIC_VECTOR (3 downto 0);
           c_out : out STD_LOGIC_VECTOR (9 downto 0);
           e_out : out STD_LOGIC_VECTOR (3 downto 0));
end flot_adder;

architecture Behavioral of flot_adder is

component diff
      Port ( in1 : in STD_LOGIC_VECTOR (3 downto 0);
           in2 : in STD_LOGIC_VECTOR (3 downto 0);
           out0 : out std_logic_vector (3 downto 0);
           sign : out std_logic);
 end component;
 
 component shifter
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC_VECTOR (6 downto 0));
end component; 

component mux2_1
    Port ( a0 : in STD_LOGIC_VECTOR (3 downto 0);
           a1 : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           yout : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component bit8_adder
    Port ( a0 : in STD_LOGIC_VECTOR (3 downto 0);
           a1 : in STD_LOGIC_VECTOR (3 downto 0);
           b0 : in STD_LOGIC_VECTOR (3 downto 0);
           b1 : in STD_LOGIC_VECTOR (3 downto 0);
           sum1 : out STD_LOGIC_VECTOR (3 downto 0);
           sum2 : out STD_LOGIC_VECTOR (3 downto 0);
           cry : out STD_LOGIC);
end component;

component xor_gate
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

component SINGLE_SHFITER
    Port ( shf : in STD_LOGIC;
           yin : in STD_LOGIC_VECTOR (8 downto 0);
           yout : out STD_LOGIC_VECTOR (9 downto 0));
end component;

component bit4_adder
  Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           carryIn : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0);
           carryOut : out STD_LOGIC);
end component;

signal s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,inc,y0,y1,y2,y3,y4,y5,y6,y7:std_logic;

begin

n1: diff port map(in1=>e1,in2=>e2,out0(0)=>s0,out0(1)=>s1,out0(2)=>s2,out0(3)=>s3,sign=>s4);
n2: mux2_1 port map(a0=>e1,a1=>e2,sel=>s4,yout(0)=>s5,yout(1)=>s6,yout(2)=>s7,yout(3)=>s8);
n3: mux2_1 port map(a0=>c1,a1=>c2,sel=>s4,yout(0)=>s9,yout(1)=>s10,yout(2)=>s11,yout(3)=>s12);
n4: mux2_1 port map(a0=>c2,a1=>c1,sel=>s4,yout(0)=>s13,yout(1)=>s14,yout(2)=>s15,yout(3)=>s16);
n5: shifter port map(a=>s9,b=>s10,c=>s11,d=>s12,sel(0)=>s0,sel(1)=>s1,y(0)=>s17,y(1)=>s18,y(2)=>s19,y(3)=>s20,y(4)=>s21,y(5)=>s22,y(6)=>s23);
n6: bit8_adder port map(a1(3)=>s16,a1(2)=>s15,a1(1)=>s14,a1(0)=>s13,
                        a0(3)=>'0',a0(2)=>'0',a0(1)=>'0',a0(0)=>'0',
                        b1(3)=>s23,b1(2)=>s22,b1(1)=>s21,b1(0)=>s20,
                        b0(3)=>s19,b0(2)=>s18,b0(1)=>s17,b0(0)=>'0',
                        cry=>inc,
                        sum1(0)=>y0,sum1(1)=>y1,sum1(2)=>y2,sum1(3)=>y3,
                        sum2(0)=>y4,sum2(1)=>y5,sum2(2)=>y6,sum2(3)=>y7);
n7: bit4_adder port map(X(0)=>s5,X(1)=>s6,X(2)=>s7,X(3)=>s8,Y=>"0000",Z=>e_out,carryIn=>inc,carryOut=>s24);
n8: SINGLE_SHFITER port map(shf=>inc,yout=>c_out,yin(0)=>y0,yin(1)=>y1,yin(2)=>y2,yin(3)=>y3,yin(4)=>y4,yin(5)=>y5,yin(6)=>y6,yin(7)=>y7,yin(8)=>'0');                       

                    

end Behavioral;
