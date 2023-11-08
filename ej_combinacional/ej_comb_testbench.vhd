library ieee;
use ieee.std_logic_1164.all;

entity ej_comb_testbench is
end ej_comb_testbench;

architecture behavior of ej_comb_testbench is 

component ej_combinacional
	port ( SW1,SW2: in std_logic;
			 led : out std_logic);
end component;

	signal SW1: std_logic :='0';
	signal SW2: std_logic :='0';
	signal led: std_logic;

begin 
	uut: ej_combinacional port map (
		SW1 => SW1,
		SW2 => SW2,
		led => led );
		
	stim_proc: process
	begin
		SW1 <= '0'; SW2 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; wait for 10ns;
		wait;
	end process;
end;
