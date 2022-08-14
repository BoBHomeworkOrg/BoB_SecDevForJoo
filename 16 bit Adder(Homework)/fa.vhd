-- Comment is started with --
-- library : 라이브러리를 불러온다. IP(반도체 지적재산 설계회로
-- example : altera, xilinx 등 라이브러리 패키지 이름이 존재함.

library ieee;
-- use : 불러온 라이브러리 내의 패키지 묶음을 사용하도록 불러옴
use ieee.std_logic_1164.all;

entity fa is
port ( a, b, cin : in std_logic; -- std_logic : 1, 0, x, z, u
	s, cout : out std_logic );
end entity fa;

-- temp_b : 전기적인 신호의 변수
architecture arch_fa of fa is
signal temp_b : std_logic;
begin
	temp_b <= b xor cin; -- <= : connect signal stream 디지털 로직 신호를 연결 해준다.
	s <= a xor temp_b;
	cout <= (temp_b and a) or (b and cin);

end architecture arch_fa;
