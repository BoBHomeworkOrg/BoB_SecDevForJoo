library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity fa16_tb is
end entity fa16_tb;

architecture arch_fa16_tb of fa16_tb is
signal a_s0, a_s1, a_s2, a_s3, a_s4, a_s5, a_s6, a_s7, a_s8, a_s9, a_s10, a_s11,
	a_s12, a_s13, a_s14, a_s15,

	b_s0, b_s1, b_s2, b_s3, b_s4, b_s5, b_s6, b_s7, b_s8, b_s9, b_s10, b_s11,
	b_s12, b_s13, b_s14, b_s15,
	
	cin_s,
	
	s_s0, s_s1, s_s2, s_s3, s_s4, s_s5,s_s6, s_s7, s_s8, s_s9, s_s10, s_s11,
	s_s12, s_s13, s_s14, s_s15,
	
	cout_s : std_logic;

component fa16 is
	port ( a0, a1, a2, a3, a4, a5, a6, a7, a8, 
	a9, a10, a11, a12, a13, a14, a15: in std_logic;

	b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, 
	b12, b13, b14, b15 : in std_logic;
	
	cin : in std_logic;
	
	cout : out std_logic;
	
	s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, 
	s12, s13, s14, s15 : out std_logic );
end component fa16;

begin
	map0 : fa16 port map ( a_s0, a_s1, a_s2, a_s3, a_s4, a_s5, a_s6, 
	a_s7, a_s8, a_s9, a_s10, a_s11,a_s12, a_s13, a_s14, a_s15,

        b_s0, b_s1, b_s2, b_s3, b_s4, b_s5, b_s6, b_s7, b_s8, b_s9, b_s10, b_s11,
        b_s12, b_s13, b_s14, b_s15,

        cin_s,

		cout_s,

        s_s0, s_s1, s_s2, s_s3, s_s4, s_s5,s_s6, s_s7, s_s8, s_s9, s_s10, s_s11,
        s_s12, s_s13, s_s14, s_s15);

	input_a0 : process
	begin
		a_s0 <= '0';
		wait for 5 ns;
		a_s0 <= '1';
		wait for 5 ns;
	end process;

	input_a1 : process
	begin
		a_s1 <= '0';
		wait for 10 ns;
		a_s1 <= '1';
		wait for 10 ns;
	end process;

	input_a2 : process
	begin
		a_s2 <= '0';
		wait for 20 ns;
		a_s2 <= '1';
		wait for 20 ns;
	end process;

	input_a3 : process
	begin
		a_s3 <= '0';
		wait for 40 ns;
		a_s3 <= '1';
		wait for 40 ns;
	end process;

	input_a4 : process
	begin
		a_s4 <= '0';
		wait for 80 ns;
		a_s4 <= '1';
		wait for 80 ns;
	end process;

	input_a5 : process
	begin
		a_s5 <= '0';
		wait for 160 ns;
		a_s5 <= '1';
		wait for 160 ns;
	end process;

	input_a6 : process
	begin
		a_s6 <= '0';
		wait for 320 ns;
		a_s6 <= '1';
		wait for 320 ns;
	end process;

	input_a7 : process
	begin
		a_s7 <= '0';
		wait for 640 ns;
		a_s7 <= '1';
		wait for 640 ns;
	end process;

	input_a8 : process
	begin
		a_s8 <= '0';
		wait for 1280 ns;
		a_s8 <= '1';
		wait for 1280 ns;
	end process;

	input_a9 : process
	begin
		a_s9 <= '0';
		wait for 2560 ns;
		a_s9 <= '1';
		wait for 2560 ns;
	end process;

	input_a10 : process
	begin
		a_s10 <= '0';
		wait for 5120 ns;
		a_s10 <= '1';
		wait for 5120 ns;
	end process;

	a_s11 <= '0';
	a_s12 <= '0';
	a_s13 <= '0';
	a_s14 <= '0';
	a_s15 <= '0';

	input_b0 : process
	begin
		b_s0 <= '0';
		wait for 5 ns;
		b_s0 <= '1';
		wait for 5 ns;
	end process;

	input_b1 : process
	begin
		b_s1 <= '0';
		wait for 10 ns;
		b_s1 <= '1';
		wait for 10 ns;
	end process;

	input_b2 : process
	begin
		b_s2 <= '0';
		wait for 20 ns;
		b_s2 <= '1';
		wait for 20 ns;
	end process;

	input_b3 : process
	begin
		b_s3 <= '0';
		wait for 40 ns;
		b_s3 <= '1';
		wait for 40 ns;
	end process;

	input_b4 : process
	begin
		b_s4 <= '0';
		wait for 80 ns;
		b_s4 <= '1';
		wait for 80 ns;
	end process;

	input_b5 : process
	begin
		b_s5 <= '0';
		wait for 160 ns;
		b_s5 <= '1';
		wait for 160 ns;
	end process;

	input_b6 : process
	begin
		b_s6 <= '0';
		wait for 320 ns;
		b_s6 <= '1';
		wait for 320 ns;
	end process;

	input_b7 : process
	begin
		b_s7 <= '0';
		wait for 640 ns;
		b_s7 <= '1';
		wait for 640 ns;
	end process;

	input_b8 : process
	begin
		b_s8 <= '0';
		wait for 1280 ns;
		b_s8 <= '1';
		wait for 1280 ns;
	end process;

	input_b9 : process
	begin
		b_s9 <= '0';
		wait for 2560 ns;
		b_s9 <= '1';
		wait for 2560 ns;
	end process;

	input_b10 : process
	begin
		b_s10 <= '0';
		wait for 5120 ns;
		b_s10 <= '1';
		wait for 5120 ns;
	end process;

	b_s11 <= '0';
	b_s12 <= '0';
	b_s13 <= '0';
	b_s14 <= '0';
	b_s15 <= '0';

	input_cin : process
	begin 
		cin_s <= '0';
		wait for 5 ns;
		cin_s <= '1';
		wait for 10240 ns;
	end process;
end architecture arch_fa16_tb;	
