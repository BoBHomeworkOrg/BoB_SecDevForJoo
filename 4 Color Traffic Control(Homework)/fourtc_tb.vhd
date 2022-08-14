library ieee;
use ieee.std_logic_1164.all;

entity fourtc_tb is
end entity fourtc_tb;

architecture arch_fourtc_tb of fourtc_tb is
	signal clk_s, rst_s : std_logic;
	signal G_s, L_s, Y_s, R_s : std_logic;

	component fourtc is
		port ( clk, rst : in std_logic;
		g, l, y, r : out std_logic );
	end component;

begin
	map0 : fourtc port map ( clk_s, rst_s, G_s, L_s, Y_s, R_S );

clocking : process begin
	clk_s <= '0';
	wait for 10 ns;
	clk_s <= '1';
	wait for 10 ns;
end process;

reseting : process begin
	rst_s <= '1';
	wait for 5 ns;
	rst_s <= '0';
	wait for 995 ns;
end process;

end architecture arch_fourtc_tb;

