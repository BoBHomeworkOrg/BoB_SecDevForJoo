library ieee;
use ieee.std_logic_1164.all;

entity fa16 is
port ( a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15: in std_logic; 
	b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15 : in std_logic;
	cin : in std_logic;
	cout : out std_logic;
	s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15 : out std_logic );
end entity fa16;

architecture arch_fa16 of fa16 is
	signal temp_b1, temp_b2, temp_b3, temp_b4, temp_b5 : std_logic;
	signal  temp_b6, temp_b7, temp_b8, temp_b9, temp_b10 : std_logic;
	signal temp_b11, temp_b12, temp_b13, temp_b14, temp_b15 : std_logic;

	component fa is
	port ( a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		cout : out std_logic;
		s : out std_logic );
	end component fa;

begin
	fa16_1 : fa port map (a0, b0, cin, temp_b1, s0);
	fa16_2 : fa port map (a1, b1, temp_b1, temp_b2, s1);
	fa16_3 : fa port map (a2, b2, temp_b2, temp_b3, s2);
	fa16_4 : fa port map (a3, b3, temp_b3, temp_b4, s3);
	fa16_5 : fa port map (a4, b4, temp_b4, temp_b5, s4);
	fa16_6 : fa port map (a5, b5, temp_b5, temp_b6, s5);
	fa16_7 : fa port map (a6, b6, temp_b6, temp_b7, s6);
	fa16_8 : fa port map (a7, b7, temp_b7, temp_b8, s7);
	fa16_9 : fa port map (a8, b8, temp_b8, temp_b9, s8);
	fa16_10 : fa port map (a9, b9, temp_b9, temp_b10, s9);
	fa16_11 : fa port map (a10, b10, temp_b10, temp_b11, s10);
	fa16_12 : fa port map (a11, b11, temp_b11, temp_b12, s11);
	fa16_13 : fa port map (a12, b12, temp_b12, temp_b13, s12);
	fa16_14 : fa port map (a13, b13, temp_b13, temp_b14, s13);
	fa16_15 : fa port map (a14, b14, temp_b14, temp_b15, s14);
	fa16_16 : fa port map (a15, b15, temp_b15, cout, s15);

end architecture arch_fa16;