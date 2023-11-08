library ieee;
use ieee.std_logic_1164.all;

entity ej_combinaiconal is
	port ( SW1,SW2: in std_logic;
			 led : out std_logic);
end ej_combinaiconal;

architecture behavioral of ej_combinaiconal is
begin
	led <= not (SW1 and SW2);
end behavioral;
