--Legal Notice: (C)2007 Altera Corporation. All rights reserved.  Your
--use of Altera Corporation's design tools, logic functions and other
--software and tools, and its AMPP partner logic functions, and any
--output files any of the foregoing (including device programming or
--simulation files), and any associated documentation or information are
--expressly subject to the terms and conditions of the Altera Program
--License Subscription Agreement or other applicable license agreement,
--including, without limitation, that your use is for the sole purpose
--of programming logic devices manufactured by Altera and sold by Altera
--or its authorized distributors.  Please refer to the applicable
--agreement for further details.


-- turn off superfluous VHDL processor warnings 
-- altera message_level Level1 
-- altera message_off 10034 10035 10036 10037 10230 10240 10030 

library altera;
use altera.altera_europa_support_lib.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity nespad_0 is 
        port (
              -- inputs:
                 signal address : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
                 signal chipselect : IN STD_LOGIC;
                 signal clk : IN STD_LOGIC;
                 signal in_port : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal reset_n : IN STD_LOGIC;
                 signal write_n : IN STD_LOGIC;
                 signal writedata : IN STD_LOGIC_VECTOR (7 DOWNTO 0);

              -- outputs:
                 signal readdata : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
              );
end entity nespad_0;


architecture europa of nespad_0 is
                signal clk_en :  STD_LOGIC;
                signal d1_data_in :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal d2_data_in :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal data_in :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal edge_capture :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal edge_capture_wr_strobe :  STD_LOGIC;
                signal edge_detect :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal read_mux_out :  STD_LOGIC_VECTOR (7 DOWNTO 0);

begin

  clk_en <= std_logic'('1');
  --s1, which is an e_avalon_slave
  read_mux_out <= ((A_REP(to_std_logic((((std_logic_vector'("000000000000000000000000000000") & (address)) = std_logic_vector'("00000000000000000000000000000000")))), 8) AND data_in)) OR ((A_REP(to_std_logic((((std_logic_vector'("000000000000000000000000000000") & (address)) = std_logic_vector'("00000000000000000000000000000011")))), 8) AND edge_capture));
  process (clk, reset_n)
  begin
    if reset_n = '0' then
      readdata <= std_logic_vector'("00000000");
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        readdata <= read_mux_out;
      end if;
    end if;

  end process;

  data_in <= in_port;
  edge_capture_wr_strobe <= (chipselect AND NOT write_n) AND to_std_logic((((std_logic_vector'("000000000000000000000000000000") & (address)) = std_logic_vector'("00000000000000000000000000000011"))));
  process (clk, reset_n)
  begin
    if reset_n = '0' then
      edge_capture(0) <= std_logic'('0');
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        if std_logic'(edge_capture_wr_strobe) = '1' then 
          edge_capture(0) <= std_logic'('0');
        elsif std_logic'(edge_detect(0)) = '1' then 
          edge_capture(0) <= Vector_To_Std_Logic(-SIGNED(std_logic_vector'("00000000000000000000000000000001")));
        end if;
      end if;
    end if;

  end process;

  process (clk, reset_n)
  begin
    if reset_n = '0' then
      edge_capture(1) <= std_logic'('0');
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        if std_logic'(edge_capture_wr_strobe) = '1' then 
          edge_capture(1) <= std_logic'('0');
        elsif std_logic'(edge_detect(1)) = '1' then 
          edge_capture(1) <= Vector_To_Std_Logic(-SIGNED(std_logic_vector'("00000000000000000000000000000001")));
        end if;
      end if;
    end if;

  end process;

  process (clk, reset_n)
  begin
    if reset_n = '0' then
      edge_capture(2) <= std_logic'('0');
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        if std_logic'(edge_capture_wr_strobe) = '1' then 
          edge_capture(2) <= std_logic'('0');
        elsif std_logic'(edge_detect(2)) = '1' then 
          edge_capture(2) <= Vector_To_Std_Logic(-SIGNED(std_logic_vector'("00000000000000000000000000000001")));
        end if;
      end if;
    end if;

  end process;

  process (clk, reset_n)
  begin
    if reset_n = '0' then
      edge_capture(3) <= std_logic'('0');
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        if std_logic'(edge_capture_wr_strobe) = '1' then 
          edge_capture(3) <= std_logic'('0');
        elsif std_logic'(edge_detect(3)) = '1' then 
          edge_capture(3) <= Vector_To_Std_Logic(-SIGNED(std_logic_vector'("00000000000000000000000000000001")));
        end if;
      end if;
    end if;

  end process;

  process (clk, reset_n)
  begin
    if reset_n = '0' then
      edge_capture(4) <= std_logic'('0');
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        if std_logic'(edge_capture_wr_strobe) = '1' then 
          edge_capture(4) <= std_logic'('0');
        elsif std_logic'(edge_detect(4)) = '1' then 
          edge_capture(4) <= Vector_To_Std_Logic(-SIGNED(std_logic_vector'("00000000000000000000000000000001")));
        end if;
      end if;
    end if;

  end process;

  process (clk, reset_n)
  begin
    if reset_n = '0' then
      edge_capture(5) <= std_logic'('0');
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        if std_logic'(edge_capture_wr_strobe) = '1' then 
          edge_capture(5) <= std_logic'('0');
        elsif std_logic'(edge_detect(5)) = '1' then 
          edge_capture(5) <= Vector_To_Std_Logic(-SIGNED(std_logic_vector'("00000000000000000000000000000001")));
        end if;
      end if;
    end if;

  end process;

  process (clk, reset_n)
  begin
    if reset_n = '0' then
      edge_capture(6) <= std_logic'('0');
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        if std_logic'(edge_capture_wr_strobe) = '1' then 
          edge_capture(6) <= std_logic'('0');
        elsif std_logic'(edge_detect(6)) = '1' then 
          edge_capture(6) <= Vector_To_Std_Logic(-SIGNED(std_logic_vector'("00000000000000000000000000000001")));
        end if;
      end if;
    end if;

  end process;

  process (clk, reset_n)
  begin
    if reset_n = '0' then
      edge_capture(7) <= std_logic'('0');
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        if std_logic'(edge_capture_wr_strobe) = '1' then 
          edge_capture(7) <= std_logic'('0');
        elsif std_logic'(edge_detect(7)) = '1' then 
          edge_capture(7) <= Vector_To_Std_Logic(-SIGNED(std_logic_vector'("00000000000000000000000000000001")));
        end if;
      end if;
    end if;

  end process;

  process (clk, reset_n)
  begin
    if reset_n = '0' then
      d1_data_in <= std_logic_vector'("00000000");
      d2_data_in <= std_logic_vector'("00000000");
    elsif clk'event and clk = '1' then
      if std_logic'(clk_en) = '1' then 
        d1_data_in <= data_in;
        d2_data_in <= d1_data_in;
      end if;
    end if;

  end process;

  edge_detect <= d1_data_in AND NOT d2_data_in;

end europa;

