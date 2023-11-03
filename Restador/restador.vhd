library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity restador is
	port (
			in_a, in_b, in_bin, clk: in std_logic;
			o_r, o_bout: out std_logic;
end restador;

architecture behavioral of restador is

component D_FF
	port (D, CLOCK: in std_logic;
			Q: out std_logic);
	end component;

signal a,b,bin,bout,r:std_logic;
begin 
	r <= bin xor (a xor b);
	bout <= (b and not (a)) or (bin and not(a)) or (bin and b) ;

D1: D_FF port map (in_a, clk, a);
D2: D_FF port map (in_b, clk, b);

	