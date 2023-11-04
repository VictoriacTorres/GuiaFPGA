library ieee;
use ieee.std_logic_1164. all;

entity restador_testbench is 
end restador_testbench;

architecture behavior of restador_testbench is

	component restador 
	port (
			in_a, in_b, in_bin, clk: in std_logic;
			o_r, o_bout: out std_logic);
	end component;
	
	signal in_a : std_logic := '0';
	signal in_b : std_logic := '0';
	signal in_bin : std_logic := '0';
	signal clk : std_logic := '0';
	signal o_r : std_logic;
	signal o_bout : std_logic;
	
	constant clk_period :time :=10ns;
	
begin
	uut: restador port map (
		in_a => in_a ,
		in_b => in_b ,
		in_bin => in_bin ,
		clk => clk ,
		o_r => o_r,
		o_bout => o_bout );
		
	clock_process: process
		begin
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
		end process;
		
	stim_proc : process
		begin 
		in_a <= '0'; in_b <= '0'; in_bin <= '0'; wait for 40 ns;
		in_a <= '0'; in_b <= '0'; in_bin <= '1'; wait for 40 ns;
		in_a <= '0'; in_b <= '1'; in_bin <= '0'; wait for 40 ns;
		in_a <= '0'; in_b <= '1'; in_bin <= '1'; wait for 40 ns;
		in_a <= '1'; in_b <= '0'; in_bin <= '0'; wait for 40 ns;
		in_a <= '1'; in_b <= '0'; in_bin <= '1'; wait for 40 ns;
		in_a <= '1'; in_b <= '1'; in_bin <= '0'; wait for 40 ns;
		in_a <= '1'; in_b <= '1'; in_bin <= '1'; wait for 40 ns;
		wait;
	end process;
end;
		