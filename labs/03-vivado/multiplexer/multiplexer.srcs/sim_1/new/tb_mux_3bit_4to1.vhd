----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2022 04:29:34 PM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mux_3bit_4to1 is
--  Port ( );
end tb_mux_3bit_4to1;

architecture testbench of tb_mux_3bit_4to1 is
        signal s_sel_i         :std_logic_vector(2 - 1 downto 0);        
        signal s_a_i           :std_logic_vector(3 - 1 downto 0);
        signal s_b_i           :std_logic_vector(3 - 1 downto 0); 
        signal s_c_i           :std_logic_vector(3 - 1 downto 0);
        signal s_d_i           :std_logic_vector(3 - 1 downto 0);
        signal s_f_o           :std_logic_vector(3 - 1 downto 0);
         
begin
     uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
        port map(
            sel_i           => s_sel_i,
            a_i           => s_a_i,
            b_i           => s_b_i,
            c_i           => s_c_i,
            d_i           => s_d_i,
            f_o           => s_f_o
        );
        
        -- Connecting testbench signals with comparator_4bit
    -- entity (Unit Under Test)
   

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

      
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

end Behavioral;
