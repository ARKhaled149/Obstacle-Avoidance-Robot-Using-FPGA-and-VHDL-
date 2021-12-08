library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
Entity Clk_Generator is
Port( clk: In std_Logic ;clkOut : Out std_Logic );
End Clk_Generator;

architecture behav of Clk_Generator is
signal count: integer:=1;
signal tmp : std_logic := '0';
begin
process(clk)
begin

if(clk'event and clk='1') then
count <=count+1;
if (count = 25000000) then
tmp <= NOT tmp;
count <= 1;
end if;
end if;
clkOut <= tmp;
end process;
end behav;
