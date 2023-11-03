library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity FF_JK is 
	port (J,K, clk : in std_logic;
			Q : buffer std_logic);
end FF_JK;

architecture behavioral of FF_JK is
begin 
	process (clk)
	begin
		if (clk= '1' and clk'event) then 
		Q <= (J and not(Q)) or  ((not (K)) and Q);
		end if;
	end process;
end behavioral;
	