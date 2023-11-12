library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo is
	port (
		a,b,cin: in std_logic;
		f,cout: out std_logic);
end sumador_completo;

architecture behavioral of sumador_completo is

begin
	f<= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));
end behavioral; 