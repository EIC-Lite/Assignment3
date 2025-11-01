--Name: Phuree Plubjui, Norrapat Kesthong, Vacharavich Ekudomsin
--31 October 2025
--Assignment3

-- Import standard library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Create Entity
entity FSB_B_tb is
end entity;


architecture tb of FSB_B_tb is
-- Set Components for testing
component FSM_B is
Port ( reset, clock, x : in STD_LOGIC; --input reset, clock, x
							z : out STD_LOGIC); --output z
end component;
signal reset, clock, x : STD_LOGIC := '0';
signal z : STD_LOGIC; -- observed output


begin
--Instantiate the Unit Under Test (UUT)
uut: FSM_B port map( -- Set each signal to its corresponding input and output
reset => reset,
clock => clock,
x => x,
z => z);


-- Clock period definitions
--constant clk_period : time := 20 ns;
--Clock process definitions


clk_process :process -- generate clock signal
begin
clock <= '0'; -- Low
wait for 10 ns;
clock <= '1'; -- High
wait for 10 ns;
end process;


-- Stimulus process for input"101010011011010"
stim_proc: process
begin
reset <= '0'; -- reset->initial state
wait for 3 ns;
reset <= '1'; -- release reset

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