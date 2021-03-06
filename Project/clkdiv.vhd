library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
 
entity clkdiv is  	
port( 
 	 clock_50:in std_logic;  	 	 	
	 clr: in std_logic; 
 	 clock_q:out std_logic); 

	 end entity; 
 
architecture behaviour of clkdiv is 
signal q:std_logic_vector(23 downto 0); 
 
begin 
 --clock divider 
process(clock_50,clr) 
begin  	 	
if clr = '1' then  	 	 	
	q <= X"000000"; -- hex number 
elsif clock_50'event and clock_50='1' then 
 	q <= q+1;  	 	
	end if;  
end process;  	

clock_q <= q(6);  

end architecture; 
