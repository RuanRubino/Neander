library ieee;
use ieee.std_logic_1164.all;
entity mux5x8 is
    port(
        c0  : in  std_logic_vector(7 downto 0);
        c1  : in  std_logic_vector(7 downto 0);
        c2  : in  std_logic_vector(7 downto 0);
        c3  : in  std_logic_vector(7 downto 0);
        c4  : in  std_logic_vector(7 downto 0);
        sel : in  std_logic_vector(2 downto 0);
        zc  : out std_logic_vector(7 downto 0)
    );
end entity;

architecture comuta of mux5x8 is
begin
   
     zc  <= c0 when sel = "000" else
            c1 when sel = "001" else
            c2 when sel = "010" else
            c3 when sel = "011" else 
            c4 when sel = "100" else( others =>'Z');
      
end architecture;
