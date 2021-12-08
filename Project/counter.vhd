library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
 
entity counter is   	
generic(n : positive :=10);  	
port( clk: in std_logic; 
 	 	enable : in std_logic;  	 	 	
		reset : in std_logic; -- active low  	 	 	
		counter_output: out std_logic_vector(n-1 downto 0)); 
end entity; 
 
architecture behavioural of counter is 
 
signal count : std_logic_vector(n-1 downto 0); 
begin 
process(clk,reset)  	
begin 
if(reset = '0') then  	 	 	
	count <= (others=>'0');  	 	
elsif(clk'event and clk='1') then  	 	 	
	if(enable = '1') then 
		count <= count+1; 
 	 end if;  	 	
end if;  	
end process; 
 
counter_output <= count;  
end architecture; 
