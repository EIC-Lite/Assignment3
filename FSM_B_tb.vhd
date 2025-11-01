--Name: Phuree Plubjui, Norrapat Kesthong, Vacharavich Ekudomsin
--31 October 2025
--Assignment3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity FSB_B_tb is
end entity;
architecture tb of FSB_B_tb is
component FSM_B is
Port ( reset, clock, x : in STD_LOGIC;
z: out STD_LOGIC);
end component;
signal reset, clock, x : STD_LOGIC := '0';
signal z : STD_LOGIC;
begin
--Instantiate the Unit Under Test (UUT)
uut: FSM_B port map(
reset => reset,
clock => clock,
x => x,
z => z);
-- Clock period definitions
--constant clk_period : time := 20 ns;
--Clock process definitions
clk_process :process
begin
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
end process;
-- Stimulus process for input"101010011011010"
stim_proc: process
begin
reset <= '0';
wait for 3 ns;
reset <= '1';
x <= '0';
wait for 5 ns;
x <= '1';
wait for 20 ns;
x <= '0';
wait for 20 ns;
x <= '1';
wait for 20 ns;
x <= '0';
wait for 20 ns;
x <= '1';
wait for 20 ns;
x <= '0';
wait for 20 ns;
x <= '0';
wait for 20 ns;
x <= '1';
wait for 20 ns;
x <= '1';
wait for 20 ns;
x <= '0';
wait for 20 ns;
x <= '1';
wait for 20 ns;
x <= '1';
wait for 20 ns;
x <= '0';
wait for 20 ns;
x <= '1';
wait for 20 ns;
x <= '0';
wait for 20 ns;
end process;
END;