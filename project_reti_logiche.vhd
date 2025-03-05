library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity project_reti_logiche is
    Port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_add : in std_logic_vector(15 downto 0);
        i_k : in std_logic_vector(9 downto 0);
        
        o_done : out std_logic;
        
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_data : out std_logic_vector(7 downto 0);
        o_mem_we : out std_logic;
        o_mem_en : out std_logic
    );
end project_reti_logiche;

architecture Behavioral of project_reti_logiche is

    type S is (S0, S1, S2, S3, S4, S5, S6, SF, SN);
    signal cur_state, next_state : S;

    -- selector of mux and write enable of registry
    
    signal k_sel : std_logic;
    signal k_load : std_logic;
    
    signal add_sel : std_logic;
    signal add_load : std_logic;
    
    signal c_sel : std_logic;
    signal c_reset_sel : std_logic;
    signal c_check_zero_sel : std_logic;
    signal c_load : std_logic;
    
    
    -- registry and mux output
 
    signal reg_k : std_logic_vector(9 downto 0);
    signal mux_reg_k : std_logic_vector(9 downto 0);
    signal o_end : std_logic;
    signal k_sub : std_logic_vector(9 downto 0);
    
    signal o_reg_add : std_logic_vector(15 downto 0);
    signal mux_reg_add : std_logic_vector(15 downto 0);
    signal add_sum : std_logic_vector(15 downto 0);
    
    signal o_reg_c : std_logic_vector(7 downto 0);
    signal mux_reg_c: std_logic_vector(7 downto 0);
    signal mux_c_reset : std_logic_vector(7 downto 0);
    signal c_check_zero : std_logic_vector(7 downto 0);
    signal c_sub : std_logic_vector(7 downto 0);
    
    signal o_reg_data : std_logic_vector(7 downto 0);
    signal data_load : std_logic;
    
    signal my_rst : std_logic;
    
   
    begin
    
    
    -- subtracting k
    process(i_clk, i_rst)
        begin 
        if (i_rst = '1') then
            reg_k <= "0000000000";
        elsif i_clk'event and i_clk = '1' then
            if (k_load = '1') then
                reg_k <= mux_reg_k;
            end if;
        end if;
    end process;
    
    k_sub <= std_logic_vector(unsigned(reg_k) - "0000000001");
    
    with k_sel select
        mux_reg_k <= i_k when '0',
                     k_sub when '1',
                     "XXXXXXXXXX" when others;
                     
    o_end <= '1' when (reg_k = "0000000000") else '0';
    
    
    -- adding address
    process (i_clk, i_rst)
        begin
        if (i_rst = '1') then
            o_reg_add <= "0000000000000000";
        elsif i_clk'event and i_clk ='1' then
            if (add_load = '1') then
                o_reg_add <= mux_reg_add;
            end if;
        end if;
    end process;
    
    add_sum <= std_logic_vector(unsigned(o_reg_add) + "0000000000000010");
    
    with add_sel select
        mux_reg_add <= i_add when '0',
                       add_sum when '1',
                       "XXXXXXXXXXXXXXXX" when others;
    
    -- C managing
    process (i_clk, i_rst)
        begin
        if (i_rst = '1') then
            o_reg_c <= "00000000";
        elsif (i_clk'event and i_clk = '1') then
            if (c_load = '1') then
                o_reg_c <= mux_reg_c;
            end if;
        end if;
    end process;
    
    with c_sel select
        mux_c_reset <= "00000000" when '0',
                     c_sub when '1',
                     "XXXXXXXX" when others;
                     
                     
    with c_reset_sel select
        mux_reg_c <= mux_c_reset when '0',
                     "00011111" when '1',
                     "XXXXXXXX" when others;
                     
    c_check_zero <= std_logic_vector(unsigned(o_reg_c) - "00000001");
    
    c_check_zero_sel <= '1' when (c_check_zero = "11111111") else '0';
    
    with c_check_zero_sel select
        c_sub <= c_check_zero when '0',
                 "00000000" when '1',
                 "XXXXXXXX" when others;
                 
                 
     -- data managing            
     process (i_clk, i_rst)
        begin
        if (i_rst = '1') then
            o_reg_data <= "00000000";
        elsif (my_rst = '1') then
            o_reg_data <= "00000000";
        elsif (i_clk'event and i_clk = '1') then
            if (data_load = '1') then
                o_reg_data <= i_mem_data;
            end if;
        end if;
    end process;
        
     
    -- FSA
    process(i_clk, i_rst)
        begin
        if (i_rst = '1') then
            cur_state <= S0;
        elsif (i_clk'event and i_clk = '1') then
            cur_state <= next_state;
        end if;
    end process;
            
    process(cur_state, i_start, o_end)
        begin
        next_state <= cur_state;
        case cur_state is
            when S0 => 
                if (i_start = '1') then next_state <= S1; end if;
            when S1 => 
                next_state <= S2;
            
            
            when S2 =>
                if (o_end = '1') then
                    next_state <= SF;
                else
                    next_state <= S3;
                end if;
            when S3 =>
                next_state <= S4;
            when S4 =>
                next_state <= S5;
            when S5 =>
                next_state <= S6;
            when S6 =>
                next_state <= S2;
            
            
            when SF =>
                if (i_start = '0') then next_state <= SN; end if;
            when SN =>
                next_state <= S0;
        end case;
    end process;
     
    process(cur_state, i_mem_data)
        begin
        k_sel <= '1';
        k_load <=  '0';
        
        add_sel <= '1';
        add_load <= '0';
        
        c_sel <= '1';
        c_reset_sel <= '0';
        c_load <= '0';
        
        data_load <= '0';
        
        o_mem_we <= '0';
        o_mem_en <= '0';
        o_mem_addr <= o_reg_add;
        o_mem_data <= o_reg_data;
        o_done <= '0';
        
        my_rst <= '0';        
          
        case cur_state is
            when S0 =>
            when S1 => --setup k and add on the registry and c to 0
                k_sel <= '0';
                k_load <= '1';
                add_sel <= '0';
                add_load <= '1';
                c_sel <= '0';
                c_load <= '1';
                
                
            when S2 => --read from memory
                o_mem_en <= '1';
            when S3 => -- choose what to write
                c_load <= '1';
                if (i_mem_data /= "00000000") then --if true I reset c and load, and load data, if not true I don't load data and I decrease c
                    c_reset_sel <= '1';
                    data_load <= '1';
                end if;
            
            when S4 => -- prepare to overwrite
                o_mem_en <= '1';
                o_mem_we <= '1';
            when S5 => -- I have written, now I prepare the writing of credibility
                o_mem_addr <= std_logic_vector(unsigned(o_reg_add) + "0000000000000001");
                o_mem_data <= std_logic_vector(resize(signed(o_reg_c), 8));
                o_mem_en <= '1';
                o_mem_we <= '1';
            when S6 => -- I have finished a cicle, now I have to update k and add and restart or terminate
                k_load <= '1';
                add_load <= '1';
            
            
            when SF =>
                o_done <= '1';           
            when SN => -- reset everything
                my_rst <= '1';
       end case;
   end process;
                
                
end Behavioral;
