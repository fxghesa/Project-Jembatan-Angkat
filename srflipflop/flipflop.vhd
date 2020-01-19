library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity SR_FF is
PORT( S,R,CLOCK: in std_logic;
Q, QBAR: out std_logic);
end SR_FF;
 
Architecture behavioral of SR_FF is
begin
PROCESS(CLOCK)
	variable tmp: std_logic;
begin
	if(CLOCK='1' and CLOCK'EVENT) then
		if(S='0' and R='0')then
			Q <= '0';
			QBAR <= '0';
		elsif(S='1' and R='1')then
			Q <= 'Z';
			QBAR <= 'Z';
		elsif(S='0' and R='1')then
			Q <= '0';
			QBAR <= '0';
		elsif(S='1' and R='0')then
			Q <= '0';
			QBAR <= '0';
		end if;
	end if;
end PROCESS;
end behavioral;