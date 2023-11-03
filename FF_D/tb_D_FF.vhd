library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity tb_D_FF is 
end tb_D_FF;

architecture comportamiento of tb_D_FF is 

component D_FF is
PORT ( D,CLOCK: in std_logic;
		Q: out std_logic);
end component;

signal D: std_logic :='1';
signal CLOCK: std_logic:='1';
signal Q: std_logic;

constant periodo_clk: time := 20ns;

begin 
uut: D_FF port map (
D <= D,
CLOCK <= CLOCK,
Q <= Q
);

proc_clock: process
begin
	CLOCK <= '0';
	wait for periodo_clk/2;
	CLOCK <= '1';
	wait for periodo_clk/2;
end process;

proc_estimulos: process
begin
	D <= '0';
	wait for 40 ns;
	D <= '1';
	wait for 50 ns;
end process;

end comportamiento; 

