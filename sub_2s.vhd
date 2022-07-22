
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity sub_2s is
    Port ( a1 : in STD_LOGIC_VECTOR (3 downto 0);
         b1 : in STD_LOGIC_VECTOR (3 downto 0);
         dif : out STD_LOGIC_VECTOR (3 downto 0));
end sub_2s;

architecture Behavioral of sub_2s is

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

    signal c0,c1,c2,c3,c4,c5,c6,c7: std_logic;

begin

    q1: xor_gate port map(a1(0),'1',c0);
    q2: xor_gate port map(a1(1),'1',c1);
    q3: xor_gate port map(a1(2),'1',c2);
    q4: xor_gate port map(a1(3),'1',c3);
    q5: bit4_adder port map(X(0)=>c0,X(1)=>c1,X(2)=>c2,X(3)=>c3,Y(0)=>b1(0),Y(1)=>b1(1),Y(2)=>b1(2),Y(3)=>b1(3),carryIn=>'1',Z(0)=>dif(0),Z(1)=>dif(1),Z(2)=>dif(2),Z(3)=>dif(3));

end Behavioral;