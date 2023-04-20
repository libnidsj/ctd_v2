LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY demux1para4 IS PORT (
    f : IN std_logic;
    sel : IN std_logic_vector (1 DOWNTO 0);
    a, b, c, d : OUT std_logic
    );
END demux1para4;

ARCHITECTURE arch OF demux1para4 IS
BEGIN

    -- WITH sel SELECT
    -- a <= f when "00";
    -- b <= f when "01";
    -- c <= f when "10";
    -- d <= f when "11";
    
    if (sel = "00") then
        a <= f;
    elsif (sel = "01") then
        b <= f;
    elsif (sel = "10") then
        c <= f;
    else
        d <= f;
    end if;
    
    -- a <= f when sel = "00" else
    --      0;
    
    -- b <= f when sel = "01" else
    --      0;
         
    -- c <= f when sel = "10" else
    --      0;
         
    -- d <= f when sel = "11" else
    --      0;
         
END arch;
