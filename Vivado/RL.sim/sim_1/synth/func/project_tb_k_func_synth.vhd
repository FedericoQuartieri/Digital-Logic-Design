-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
-- Date        : Sat Jun 15 16:31:24 2024
-- Host        : federico-MacBookAir running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /media/federico/Shared/Projects/reti_logiche_project/RL.sim/sim_1/synth/func/project_tb_k_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_add : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_k : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_done : out STD_LOGIC;
    o_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_mem_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_we : out STD_LOGIC;
    o_mem_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal \FSM_sequential_cur_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_2_n_0\ : STD_LOGIC;
  signal RESIZE : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal c_load : STD_LOGIC;
  signal c_reset_sel : STD_LOGIC;
  signal cur_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of cur_state : signal is "yes";
  signal i_add_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_k_IBUF : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal i_mem_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal k_load : STD_LOGIC;
  signal k_sel : STD_LOGIC;
  signal mux_reg_c : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mux_reg_k : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_mem_addr_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_4\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_5\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_6\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_7\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_2_n_5\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_2_n_6\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_2_n_7\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_4\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_5\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_6\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_7\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_4\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_5\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_6\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_7\ : STD_LOGIC;
  signal o_mem_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_mem_en_OBUF : STD_LOGIC;
  signal o_mem_we_OBUF : STD_LOGIC;
  signal \o_reg_add[0]_i_3_n_0\ : STD_LOGIC;
  signal \o_reg_add[0]_i_4_n_0\ : STD_LOGIC;
  signal \o_reg_add[0]_i_5_n_0\ : STD_LOGIC;
  signal \o_reg_add[0]_i_6_n_0\ : STD_LOGIC;
  signal \o_reg_add[12]_i_2_n_0\ : STD_LOGIC;
  signal \o_reg_add[12]_i_3_n_0\ : STD_LOGIC;
  signal \o_reg_add[12]_i_4_n_0\ : STD_LOGIC;
  signal \o_reg_add[12]_i_5_n_0\ : STD_LOGIC;
  signal \o_reg_add[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_reg_add[4]_i_3_n_0\ : STD_LOGIC;
  signal \o_reg_add[4]_i_4_n_0\ : STD_LOGIC;
  signal \o_reg_add[4]_i_5_n_0\ : STD_LOGIC;
  signal \o_reg_add[8]_i_2_n_0\ : STD_LOGIC;
  signal \o_reg_add[8]_i_3_n_0\ : STD_LOGIC;
  signal \o_reg_add[8]_i_4_n_0\ : STD_LOGIC;
  signal \o_reg_add[8]_i_5_n_0\ : STD_LOGIC;
  signal o_reg_add_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_reg_add_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_reg_add_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \o_reg_add_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \o_reg_add_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \o_reg_add_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \o_reg_add_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \o_reg_add_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \o_reg_add_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \o_reg_add_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \o_reg_add_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \o_reg_add_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \o_reg_add_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \o_reg_add_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \o_reg_add_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \o_reg_add_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \o_reg_add_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_reg_add_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \o_reg_add_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \o_reg_add_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \o_reg_add_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \o_reg_add_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \o_reg_add_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \o_reg_add_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \o_reg_add_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_reg_add_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \o_reg_add_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \o_reg_add_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \o_reg_add_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \o_reg_add_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \o_reg_add_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \o_reg_add_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \o_reg_c[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_reg_c[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_reg_c[4]_i_3_n_0\ : STD_LOGIC;
  signal o_reg_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_reg_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_reg_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_reg_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_k[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_k[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_k[8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_k_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_o_mem_addr_OBUF[15]_inst_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_mem_addr_OBUF[15]_inst_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_reg_add_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_cur_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_cur_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_cur_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_cur_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_reg_c[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_reg_c[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_reg_c[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_reg_c[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_reg_c[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_reg_c[4]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_k[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_k[5]_i_2\ : label is "soft_lutpair1";
begin
\FSM_sequential_cur_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(0),
      O => \FSM_sequential_cur_state[0]_i_1_n_0\
    );
\FSM_sequential_cur_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0F0F0100F0"
    )
        port map (
      I0 => \reg_k_reg__0\(9),
      I1 => \FSM_sequential_cur_state[2]_i_2_n_0\,
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => cur_state(0),
      O => \FSM_sequential_cur_state[1]_i_1_n_0\
    );
\FSM_sequential_cur_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055AAFE00"
    )
        port map (
      I0 => cur_state(2),
      I1 => \reg_k_reg__0\(9),
      I2 => \FSM_sequential_cur_state[2]_i_2_n_0\,
      I3 => cur_state(1),
      I4 => cur_state(0),
      I5 => cur_state(3),
      O => \FSM_sequential_cur_state[2]_i_1_n_0\
    );
\FSM_sequential_cur_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reg_k_reg__0\(7),
      I1 => \reg_k[8]_i_2_n_0\,
      I2 => \reg_k_reg__0\(6),
      I3 => \reg_k_reg__0\(8),
      O => \FSM_sequential_cur_state[2]_i_2_n_0\
    );
\FSM_sequential_cur_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555155E"
    )
        port map (
      I0 => cur_state(3),
      I1 => i_start_IBUF,
      I2 => cur_state(1),
      I3 => cur_state(0),
      I4 => cur_state(2),
      O => \FSM_sequential_cur_state[3]_i_1_n_0\
    );
\FSM_sequential_cur_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(0),
      I3 => cur_state(1),
      O => \FSM_sequential_cur_state[3]_i_2_n_0\
    );
\FSM_sequential_cur_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \FSM_sequential_cur_state[0]_i_1_n_0\,
      Q => cur_state(0)
    );
\FSM_sequential_cur_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \FSM_sequential_cur_state[1]_i_1_n_0\,
      Q => cur_state(1)
    );
\FSM_sequential_cur_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \FSM_sequential_cur_state[2]_i_1_n_0\,
      Q => cur_state(2)
    );
\FSM_sequential_cur_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \FSM_sequential_cur_state[3]_i_2_n_0\,
      Q => cur_state(3)
    );
\i_add_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(0),
      O => i_add_IBUF(0)
    );
\i_add_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(10),
      O => i_add_IBUF(10)
    );
\i_add_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(11),
      O => i_add_IBUF(11)
    );
\i_add_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(12),
      O => i_add_IBUF(12)
    );
\i_add_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(13),
      O => i_add_IBUF(13)
    );
\i_add_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(14),
      O => i_add_IBUF(14)
    );
\i_add_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(15),
      O => i_add_IBUF(15)
    );
\i_add_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(1),
      O => i_add_IBUF(1)
    );
\i_add_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(2),
      O => i_add_IBUF(2)
    );
\i_add_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(3),
      O => i_add_IBUF(3)
    );
\i_add_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(4),
      O => i_add_IBUF(4)
    );
\i_add_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(5),
      O => i_add_IBUF(5)
    );
\i_add_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(6),
      O => i_add_IBUF(6)
    );
\i_add_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(7),
      O => i_add_IBUF(7)
    );
\i_add_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(8),
      O => i_add_IBUF(8)
    );
\i_add_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(9),
      O => i_add_IBUF(9)
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_k_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(0),
      O => i_k_IBUF(0)
    );
\i_k_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(1),
      O => i_k_IBUF(1)
    );
\i_k_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(2),
      O => i_k_IBUF(2)
    );
\i_k_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(3),
      O => i_k_IBUF(3)
    );
\i_k_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(4),
      O => i_k_IBUF(4)
    );
\i_k_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(5),
      O => i_k_IBUF(5)
    );
\i_k_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(6),
      O => i_k_IBUF(6)
    );
\i_k_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(7),
      O => i_k_IBUF(7)
    );
\i_k_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(8),
      O => i_k_IBUF(8)
    );
\i_k_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(9),
      O => i_k_IBUF(9)
    );
\i_mem_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(0),
      O => i_mem_data_IBUF(0)
    );
\i_mem_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(1),
      O => i_mem_data_IBUF(1)
    );
\i_mem_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(2),
      O => i_mem_data_IBUF(2)
    );
\i_mem_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(3),
      O => i_mem_data_IBUF(3)
    );
\i_mem_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(4),
      O => i_mem_data_IBUF(4)
    );
\i_mem_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(5),
      O => i_mem_data_IBUF(5)
    );
\i_mem_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(6),
      O => i_mem_data_IBUF(6)
    );
\i_mem_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(7),
      O => i_mem_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(2),
      I2 => cur_state(0),
      I3 => cur_state(1),
      O => o_done_OBUF
    );
\o_mem_addr_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(0),
      O => o_mem_addr(0)
    );
\o_mem_addr_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13372000"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(3),
      I2 => cur_state(2),
      I3 => cur_state(1),
      I4 => o_reg_add_reg(0),
      O => o_mem_addr_OBUF(0)
    );
\o_mem_addr_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(10),
      O => o_mem_addr(10)
    );
\o_mem_addr_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[12]_inst_i_2_n_6\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(10),
      O => o_mem_addr_OBUF(10)
    );
\o_mem_addr_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(11),
      O => o_mem_addr(11)
    );
\o_mem_addr_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[12]_inst_i_2_n_5\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(11),
      O => o_mem_addr_OBUF(11)
    );
\o_mem_addr_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(12),
      O => o_mem_addr(12)
    );
\o_mem_addr_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[12]_inst_i_2_n_4\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(12),
      O => o_mem_addr_OBUF(12)
    );
\o_mem_addr_OBUF[12]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[8]_inst_i_2_n_0\,
      CO(3) => \o_mem_addr_OBUF[12]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[12]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[12]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[12]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_mem_addr_OBUF[12]_inst_i_2_n_4\,
      O(2) => \o_mem_addr_OBUF[12]_inst_i_2_n_5\,
      O(1) => \o_mem_addr_OBUF[12]_inst_i_2_n_6\,
      O(0) => \o_mem_addr_OBUF[12]_inst_i_2_n_7\,
      S(3 downto 0) => o_reg_add_reg(12 downto 9)
    );
\o_mem_addr_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(13),
      O => o_mem_addr(13)
    );
\o_mem_addr_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[15]_inst_i_2_n_7\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(13),
      O => o_mem_addr_OBUF(13)
    );
\o_mem_addr_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(14),
      O => o_mem_addr(14)
    );
\o_mem_addr_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[15]_inst_i_2_n_6\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(14),
      O => o_mem_addr_OBUF(14)
    );
\o_mem_addr_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(15),
      O => o_mem_addr(15)
    );
\o_mem_addr_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[15]_inst_i_2_n_5\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(15),
      O => o_mem_addr_OBUF(15)
    );
\o_mem_addr_OBUF[15]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[12]_inst_i_2_n_0\,
      CO(3 downto 2) => \NLW_o_mem_addr_OBUF[15]_inst_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \o_mem_addr_OBUF[15]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[15]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_o_mem_addr_OBUF[15]_inst_i_2_O_UNCONNECTED\(3),
      O(2) => \o_mem_addr_OBUF[15]_inst_i_2_n_5\,
      O(1) => \o_mem_addr_OBUF[15]_inst_i_2_n_6\,
      O(0) => \o_mem_addr_OBUF[15]_inst_i_2_n_7\,
      S(3) => '0',
      S(2 downto 0) => o_reg_add_reg(15 downto 13)
    );
\o_mem_addr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(1),
      O => o_mem_addr(1)
    );
\o_mem_addr_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[4]_inst_i_2_n_7\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(1),
      O => o_mem_addr_OBUF(1)
    );
\o_mem_addr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(2),
      O => o_mem_addr(2)
    );
\o_mem_addr_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[4]_inst_i_2_n_6\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(2),
      O => o_mem_addr_OBUF(2)
    );
\o_mem_addr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(3),
      O => o_mem_addr(3)
    );
\o_mem_addr_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[4]_inst_i_2_n_5\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(3),
      O => o_mem_addr_OBUF(3)
    );
\o_mem_addr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(4),
      O => o_mem_addr(4)
    );
\o_mem_addr_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[4]_inst_i_2_n_4\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(4),
      O => o_mem_addr_OBUF(4)
    );
\o_mem_addr_OBUF[4]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_mem_addr_OBUF[4]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[4]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[4]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[4]_inst_i_2_n_3\,
      CYINIT => o_reg_add_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => \o_mem_addr_OBUF[4]_inst_i_2_n_4\,
      O(2) => \o_mem_addr_OBUF[4]_inst_i_2_n_5\,
      O(1) => \o_mem_addr_OBUF[4]_inst_i_2_n_6\,
      O(0) => \o_mem_addr_OBUF[4]_inst_i_2_n_7\,
      S(3 downto 0) => o_reg_add_reg(4 downto 1)
    );
\o_mem_addr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(5),
      O => o_mem_addr(5)
    );
\o_mem_addr_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[8]_inst_i_2_n_7\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(5),
      O => o_mem_addr_OBUF(5)
    );
\o_mem_addr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(6),
      O => o_mem_addr(6)
    );
\o_mem_addr_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[8]_inst_i_2_n_6\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(6),
      O => o_mem_addr_OBUF(6)
    );
\o_mem_addr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(7),
      O => o_mem_addr(7)
    );
\o_mem_addr_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[8]_inst_i_2_n_5\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(7),
      O => o_mem_addr_OBUF(7)
    );
\o_mem_addr_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(8),
      O => o_mem_addr(8)
    );
\o_mem_addr_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[8]_inst_i_2_n_4\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(8),
      O => o_mem_addr_OBUF(8)
    );
\o_mem_addr_OBUF[8]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[4]_inst_i_2_n_0\,
      CO(3) => \o_mem_addr_OBUF[8]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[8]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[8]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[8]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_mem_addr_OBUF[8]_inst_i_2_n_4\,
      O(2) => \o_mem_addr_OBUF[8]_inst_i_2_n_5\,
      O(1) => \o_mem_addr_OBUF[8]_inst_i_2_n_6\,
      O(0) => \o_mem_addr_OBUF[8]_inst_i_2_n_7\,
      S(3 downto 0) => o_reg_add_reg(8 downto 5)
    );
\o_mem_addr_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(9),
      O => o_mem_addr(9)
    );
\o_mem_addr_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[12]_inst_i_2_n_7\,
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_add_reg(9),
      O => o_mem_addr_OBUF(9)
    );
\o_mem_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(0),
      O => o_mem_data(0)
    );
\o_mem_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => RESIZE(0),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_data(0),
      O => o_mem_data_OBUF(0)
    );
\o_mem_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(1),
      O => o_mem_data(1)
    );
\o_mem_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => RESIZE(1),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_data(1),
      O => o_mem_data_OBUF(1)
    );
\o_mem_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(2),
      O => o_mem_data(2)
    );
\o_mem_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => RESIZE(2),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_data(2),
      O => o_mem_data_OBUF(2)
    );
\o_mem_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(3),
      O => o_mem_data(3)
    );
\o_mem_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => RESIZE(3),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_data(3),
      O => o_mem_data_OBUF(3)
    );
\o_mem_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(4),
      O => o_mem_data(4)
    );
\o_mem_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0F3F08000000"
    )
        port map (
      I0 => RESIZE(4),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => o_reg_data(4),
      O => o_mem_data_OBUF(4)
    );
\o_mem_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(5),
      O => o_mem_data(5)
    );
\o_mem_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A02AA"
    )
        port map (
      I0 => o_reg_data(5),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => cur_state(0),
      O => o_mem_data_OBUF(5)
    );
\o_mem_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(6),
      O => o_mem_data(6)
    );
\o_mem_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A02AA"
    )
        port map (
      I0 => o_reg_data(6),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => cur_state(0),
      O => o_mem_data_OBUF(6)
    );
\o_mem_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(7),
      O => o_mem_data(7)
    );
\o_mem_data_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A02AA"
    )
        port map (
      I0 => o_reg_data(7),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => cur_state(0),
      O => o_mem_data_OBUF(7)
    );
o_mem_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_en_OBUF,
      O => o_mem_en
    );
o_mem_en_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4500"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(2),
      I2 => cur_state(0),
      I3 => cur_state(1),
      O => o_mem_en_OBUF
    );
o_mem_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_we_OBUF,
      O => o_mem_we
    );
o_mem_we_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(1),
      I2 => cur_state(2),
      O => o_mem_we_OBUF
    );
\o_reg_add[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(0),
      I2 => cur_state(2),
      I3 => cur_state(1),
      O => k_load
    );
\o_reg_add[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(3),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(3),
      O => \o_reg_add[0]_i_3_n_0\
    );
\o_reg_add[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(2),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(2),
      O => \o_reg_add[0]_i_4_n_0\
    );
\o_reg_add[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A3A3AAA3A3A333"
    )
        port map (
      I0 => i_add_IBUF(1),
      I1 => o_reg_add_reg(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      I4 => cur_state(1),
      I5 => cur_state(0),
      O => \o_reg_add[0]_i_5_n_0\
    );
\o_reg_add[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(0),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(0),
      O => \o_reg_add[0]_i_6_n_0\
    );
\o_reg_add[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(15),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(15),
      O => \o_reg_add[12]_i_2_n_0\
    );
\o_reg_add[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(14),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(14),
      O => \o_reg_add[12]_i_3_n_0\
    );
\o_reg_add[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(13),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(13),
      O => \o_reg_add[12]_i_4_n_0\
    );
\o_reg_add[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(12),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(12),
      O => \o_reg_add[12]_i_5_n_0\
    );
\o_reg_add[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(7),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(7),
      O => \o_reg_add[4]_i_2_n_0\
    );
\o_reg_add[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(6),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(6),
      O => \o_reg_add[4]_i_3_n_0\
    );
\o_reg_add[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(5),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(5),
      O => \o_reg_add[4]_i_4_n_0\
    );
\o_reg_add[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(4),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(4),
      O => \o_reg_add[4]_i_5_n_0\
    );
\o_reg_add[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(11),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(11),
      O => \o_reg_add[8]_i_2_n_0\
    );
\o_reg_add[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(10),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(10),
      O => \o_reg_add[8]_i_3_n_0\
    );
\o_reg_add[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(9),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(9),
      O => \o_reg_add[8]_i_4_n_0\
    );
\o_reg_add[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAE0002AAA2"
    )
        port map (
      I0 => o_reg_add_reg(8),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_add_IBUF(8),
      O => \o_reg_add[8]_i_5_n_0\
    );
\o_reg_add_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[0]_i_2_n_7\,
      Q => o_reg_add_reg(0)
    );
\o_reg_add_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_reg_add_reg[0]_i_2_n_0\,
      CO(2) => \o_reg_add_reg[0]_i_2_n_1\,
      CO(1) => \o_reg_add_reg[0]_i_2_n_2\,
      CO(0) => \o_reg_add_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => k_sel,
      DI(0) => '0',
      O(3) => \o_reg_add_reg[0]_i_2_n_4\,
      O(2) => \o_reg_add_reg[0]_i_2_n_5\,
      O(1) => \o_reg_add_reg[0]_i_2_n_6\,
      O(0) => \o_reg_add_reg[0]_i_2_n_7\,
      S(3) => \o_reg_add[0]_i_3_n_0\,
      S(2) => \o_reg_add[0]_i_4_n_0\,
      S(1) => \o_reg_add[0]_i_5_n_0\,
      S(0) => \o_reg_add[0]_i_6_n_0\
    );
\o_reg_add_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[8]_i_1_n_5\,
      Q => o_reg_add_reg(10)
    );
\o_reg_add_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[8]_i_1_n_4\,
      Q => o_reg_add_reg(11)
    );
\o_reg_add_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[12]_i_1_n_7\,
      Q => o_reg_add_reg(12)
    );
\o_reg_add_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_reg_add_reg[8]_i_1_n_0\,
      CO(3) => \NLW_o_reg_add_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \o_reg_add_reg[12]_i_1_n_1\,
      CO(1) => \o_reg_add_reg[12]_i_1_n_2\,
      CO(0) => \o_reg_add_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_reg_add_reg[12]_i_1_n_4\,
      O(2) => \o_reg_add_reg[12]_i_1_n_5\,
      O(1) => \o_reg_add_reg[12]_i_1_n_6\,
      O(0) => \o_reg_add_reg[12]_i_1_n_7\,
      S(3) => \o_reg_add[12]_i_2_n_0\,
      S(2) => \o_reg_add[12]_i_3_n_0\,
      S(1) => \o_reg_add[12]_i_4_n_0\,
      S(0) => \o_reg_add[12]_i_5_n_0\
    );
\o_reg_add_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[12]_i_1_n_6\,
      Q => o_reg_add_reg(13)
    );
\o_reg_add_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[12]_i_1_n_5\,
      Q => o_reg_add_reg(14)
    );
\o_reg_add_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[12]_i_1_n_4\,
      Q => o_reg_add_reg(15)
    );
\o_reg_add_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[0]_i_2_n_6\,
      Q => o_reg_add_reg(1)
    );
\o_reg_add_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[0]_i_2_n_5\,
      Q => o_reg_add_reg(2)
    );
\o_reg_add_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[0]_i_2_n_4\,
      Q => o_reg_add_reg(3)
    );
\o_reg_add_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[4]_i_1_n_7\,
      Q => o_reg_add_reg(4)
    );
\o_reg_add_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_reg_add_reg[0]_i_2_n_0\,
      CO(3) => \o_reg_add_reg[4]_i_1_n_0\,
      CO(2) => \o_reg_add_reg[4]_i_1_n_1\,
      CO(1) => \o_reg_add_reg[4]_i_1_n_2\,
      CO(0) => \o_reg_add_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_reg_add_reg[4]_i_1_n_4\,
      O(2) => \o_reg_add_reg[4]_i_1_n_5\,
      O(1) => \o_reg_add_reg[4]_i_1_n_6\,
      O(0) => \o_reg_add_reg[4]_i_1_n_7\,
      S(3) => \o_reg_add[4]_i_2_n_0\,
      S(2) => \o_reg_add[4]_i_3_n_0\,
      S(1) => \o_reg_add[4]_i_4_n_0\,
      S(0) => \o_reg_add[4]_i_5_n_0\
    );
\o_reg_add_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[4]_i_1_n_6\,
      Q => o_reg_add_reg(5)
    );
\o_reg_add_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[4]_i_1_n_5\,
      Q => o_reg_add_reg(6)
    );
\o_reg_add_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[4]_i_1_n_4\,
      Q => o_reg_add_reg(7)
    );
\o_reg_add_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[8]_i_1_n_7\,
      Q => o_reg_add_reg(8)
    );
\o_reg_add_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_reg_add_reg[4]_i_1_n_0\,
      CO(3) => \o_reg_add_reg[8]_i_1_n_0\,
      CO(2) => \o_reg_add_reg[8]_i_1_n_1\,
      CO(1) => \o_reg_add_reg[8]_i_1_n_2\,
      CO(0) => \o_reg_add_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \o_reg_add_reg[8]_i_1_n_4\,
      O(2) => \o_reg_add_reg[8]_i_1_n_5\,
      O(1) => \o_reg_add_reg[8]_i_1_n_6\,
      O(0) => \o_reg_add_reg[8]_i_1_n_7\,
      S(3) => \o_reg_add[8]_i_2_n_0\,
      S(2) => \o_reg_add[8]_i_3_n_0\,
      S(1) => \o_reg_add[8]_i_4_n_0\,
      S(0) => \o_reg_add[8]_i_5_n_0\
    );
\o_reg_add_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => \o_reg_add_reg[8]_i_1_n_6\,
      Q => o_reg_add_reg(9)
    );
\o_reg_c[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00E0"
    )
        port map (
      I0 => \o_reg_c[1]_i_2_n_0\,
      I1 => RESIZE(1),
      I2 => k_sel,
      I3 => RESIZE(0),
      I4 => c_reset_sel,
      O => mux_reg_c(0)
    );
\o_reg_c[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAAAAEA"
    )
        port map (
      I0 => c_reset_sel,
      I1 => \o_reg_c[1]_i_2_n_0\,
      I2 => k_sel,
      I3 => RESIZE(1),
      I4 => RESIZE(0),
      O => mux_reg_c(1)
    );
\o_reg_c[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => RESIZE(4),
      I1 => RESIZE(3),
      I2 => RESIZE(2),
      O => \o_reg_c[1]_i_2_n_0\
    );
\o_reg_c[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAAAAAAAFEAA"
    )
        port map (
      I0 => c_reset_sel,
      I1 => RESIZE(3),
      I2 => RESIZE(4),
      I3 => k_sel,
      I4 => RESIZE(2),
      I5 => \o_reg_c[2]_i_2_n_0\,
      O => mux_reg_c(2)
    );
\o_reg_c[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RESIZE(0),
      I1 => RESIZE(1),
      O => \o_reg_c[2]_i_2_n_0\
    );
\o_reg_c[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAAAAEA"
    )
        port map (
      I0 => c_reset_sel,
      I1 => RESIZE(4),
      I2 => k_sel,
      I3 => RESIZE(3),
      I4 => \o_reg_c[4]_i_3_n_0\,
      O => mux_reg_c(3)
    );
\o_reg_c[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(3),
      I2 => cur_state(1),
      O => c_load
    );
\o_reg_c[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAAAAA"
    )
        port map (
      I0 => c_reset_sel,
      I1 => \o_reg_c[4]_i_3_n_0\,
      I2 => RESIZE(3),
      I3 => k_sel,
      I4 => RESIZE(4),
      O => mux_reg_c(4)
    );
\o_reg_c[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => RESIZE(1),
      I1 => RESIZE(0),
      I2 => RESIZE(2),
      O => \o_reg_c[4]_i_3_n_0\
    );
\o_reg_c[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FD"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => cur_state(3),
      O => k_sel
    );
\o_reg_c_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_load,
      CLR => i_rst_IBUF,
      D => mux_reg_c(0),
      Q => RESIZE(0)
    );
\o_reg_c_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_load,
      CLR => i_rst_IBUF,
      D => mux_reg_c(1),
      Q => RESIZE(1)
    );
\o_reg_c_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_load,
      CLR => i_rst_IBUF,
      D => mux_reg_c(2),
      Q => RESIZE(2)
    );
\o_reg_c_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_load,
      CLR => i_rst_IBUF,
      D => mux_reg_c(3),
      Q => RESIZE(3)
    );
\o_reg_c_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_load,
      CLR => i_rst_IBUF,
      D => mux_reg_c(4),
      Q => RESIZE(4)
    );
\o_reg_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000400040"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(2),
      I2 => cur_state(0),
      I3 => cur_state(1),
      I4 => \o_reg_data[7]_i_3_n_0\,
      I5 => \o_reg_data[7]_i_4_n_0\,
      O => c_reset_sel
    );
\o_reg_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(2),
      I2 => cur_state(0),
      I3 => cur_state(3),
      I4 => i_rst_IBUF,
      O => \o_reg_data[7]_i_2_n_0\
    );
\o_reg_data[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => i_mem_data_IBUF(7),
      I2 => i_mem_data_IBUF(5),
      I3 => i_mem_data_IBUF(4),
      O => \o_reg_data[7]_i_3_n_0\
    );
\o_reg_data[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => i_mem_data_IBUF(3),
      I1 => i_mem_data_IBUF(2),
      I2 => i_mem_data_IBUF(1),
      I3 => i_mem_data_IBUF(0),
      O => \o_reg_data[7]_i_4_n_0\
    );
\o_reg_data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_reset_sel,
      CLR => \o_reg_data[7]_i_2_n_0\,
      D => i_mem_data_IBUF(0),
      Q => o_reg_data(0)
    );
\o_reg_data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_reset_sel,
      CLR => \o_reg_data[7]_i_2_n_0\,
      D => i_mem_data_IBUF(1),
      Q => o_reg_data(1)
    );
\o_reg_data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_reset_sel,
      CLR => \o_reg_data[7]_i_2_n_0\,
      D => i_mem_data_IBUF(2),
      Q => o_reg_data(2)
    );
\o_reg_data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_reset_sel,
      CLR => \o_reg_data[7]_i_2_n_0\,
      D => i_mem_data_IBUF(3),
      Q => o_reg_data(3)
    );
\o_reg_data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_reset_sel,
      CLR => \o_reg_data[7]_i_2_n_0\,
      D => i_mem_data_IBUF(4),
      Q => o_reg_data(4)
    );
\o_reg_data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_reset_sel,
      CLR => \o_reg_data[7]_i_2_n_0\,
      D => i_mem_data_IBUF(5),
      Q => o_reg_data(5)
    );
\o_reg_data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_reset_sel,
      CLR => \o_reg_data[7]_i_2_n_0\,
      D => i_mem_data_IBUF(6),
      Q => o_reg_data(6)
    );
\o_reg_data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => c_reset_sel,
      CLR => \o_reg_data[7]_i_2_n_0\,
      D => i_mem_data_IBUF(7),
      Q => o_reg_data(7)
    );
\reg_k[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD555D00015551"
    )
        port map (
      I0 => \reg_k_reg__0\(0),
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => i_k_IBUF(0),
      O => mux_reg_k(0)
    );
\reg_k[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => i_k_IBUF(1),
      I1 => k_sel,
      I2 => \reg_k_reg__0\(0),
      I3 => \reg_k_reg__0\(1),
      O => mux_reg_k(1)
    );
\reg_k[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC03AAAA"
    )
        port map (
      I0 => i_k_IBUF(2),
      I1 => \reg_k_reg__0\(1),
      I2 => \reg_k_reg__0\(0),
      I3 => \reg_k_reg__0\(2),
      I4 => k_sel,
      O => mux_reg_k(2)
    );
\reg_k[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0003AAAAAAAA"
    )
        port map (
      I0 => i_k_IBUF(3),
      I1 => \reg_k_reg__0\(2),
      I2 => \reg_k_reg__0\(0),
      I3 => \reg_k_reg__0\(1),
      I4 => \reg_k_reg__0\(3),
      I5 => k_sel,
      O => mux_reg_k(3)
    );
\reg_k[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => i_k_IBUF(4),
      I1 => \reg_k[4]_i_2_n_0\,
      I2 => \reg_k_reg__0\(4),
      I3 => k_sel,
      O => mux_reg_k(4)
    );
\reg_k[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reg_k_reg__0\(2),
      I1 => \reg_k_reg__0\(0),
      I2 => \reg_k_reg__0\(1),
      I3 => \reg_k_reg__0\(3),
      O => \reg_k[4]_i_2_n_0\
    );
\reg_k[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => i_k_IBUF(5),
      I1 => \reg_k[5]_i_2_n_0\,
      I2 => \reg_k_reg__0\(5),
      I3 => k_sel,
      O => mux_reg_k(5)
    );
\reg_k[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reg_k_reg__0\(3),
      I1 => \reg_k_reg__0\(1),
      I2 => \reg_k_reg__0\(0),
      I3 => \reg_k_reg__0\(2),
      I4 => \reg_k_reg__0\(4),
      O => \reg_k[5]_i_2_n_0\
    );
\reg_k[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => i_k_IBUF(6),
      I1 => \reg_k[8]_i_2_n_0\,
      I2 => \reg_k_reg__0\(6),
      I3 => k_sel,
      O => mux_reg_k(6)
    );
\reg_k[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC03AAAA"
    )
        port map (
      I0 => i_k_IBUF(7),
      I1 => \reg_k_reg__0\(6),
      I2 => \reg_k[8]_i_2_n_0\,
      I3 => \reg_k_reg__0\(7),
      I4 => k_sel,
      O => mux_reg_k(7)
    );
\reg_k[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0003AAAAAAAA"
    )
        port map (
      I0 => i_k_IBUF(8),
      I1 => \reg_k_reg__0\(7),
      I2 => \reg_k[8]_i_2_n_0\,
      I3 => \reg_k_reg__0\(6),
      I4 => \reg_k_reg__0\(8),
      I5 => k_sel,
      O => mux_reg_k(8)
    );
\reg_k[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \reg_k_reg__0\(4),
      I1 => \reg_k_reg__0\(2),
      I2 => \reg_k_reg__0\(0),
      I3 => \reg_k_reg__0\(1),
      I4 => \reg_k_reg__0\(3),
      I5 => \reg_k_reg__0\(5),
      O => \reg_k[8]_i_2_n_0\
    );
\reg_k[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA3A"
    )
        port map (
      I0 => i_k_IBUF(9),
      I1 => \FSM_sequential_cur_state[2]_i_2_n_0\,
      I2 => k_sel,
      I3 => \reg_k_reg__0\(9),
      O => mux_reg_k(9)
    );
\reg_k_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(0),
      Q => \reg_k_reg__0\(0)
    );
\reg_k_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(1),
      Q => \reg_k_reg__0\(1)
    );
\reg_k_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(2),
      Q => \reg_k_reg__0\(2)
    );
\reg_k_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(3),
      Q => \reg_k_reg__0\(3)
    );
\reg_k_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(4),
      Q => \reg_k_reg__0\(4)
    );
\reg_k_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(5),
      Q => \reg_k_reg__0\(5)
    );
\reg_k_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(6),
      Q => \reg_k_reg__0\(6)
    );
\reg_k_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(7),
      Q => \reg_k_reg__0\(7)
    );
\reg_k_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(8),
      Q => \reg_k_reg__0\(8)
    );
\reg_k_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => k_load,
      CLR => i_rst_IBUF,
      D => mux_reg_k(9),
      Q => \reg_k_reg__0\(9)
    );
end STRUCTURE;
