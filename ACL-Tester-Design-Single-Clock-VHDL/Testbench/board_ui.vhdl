--------------------------------------------------------------------------------
-- \file board_ui.vhdl
--
-- \brief OSVVM testbench component: FPGA development board User Interface
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
--------------------------------------------------------------------------------
entity tbc_board_ui is
	generic(
        parm_button_count : positive := 4;
        parm_switch_count : positive := 4;
        parm_rgb_led_count : positive := 4;
        parm_basic_led_count : positive := 4;
        parm_pwm_period_milliseconds : natural := 10;
        parm_pwm_color_max_duty_cycle : natural := 8;
        parm_pwm_basic_max_duty_cycle : natural := 9
        );
    port(
        ci_main_clock : in std_logic;
        cin_main_reset : in std_logic;
        co_buttons : out std_logic_vector((parm_button_count - 1) downto 0);
        co_switches : out std_logic_vector((parm_switch_count - 1) downto 0);
        ci_led_blue : in std_logic_vector((parm_rgb_led_count - 1) downto 0);
        ci_led_red : in std_logic_vector((parm_rgb_led_count - 1) downto 0);
        ci_led_green : in std_logic_vector((parm_rgb_led_count - 1) downto 0);
        ci_led_basic : in std_logic_vector((parm_basic_led_count - 1) downto 0)
        );
end entity tbc_board_ui;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_board_ui is
    type t_rgb_led_arrray is array (natural range <>) of
        std_logic_vector(2 downto 0);

    signal so_buttons : std_logic_vector(co_buttons'range);
    signal so_switches : std_logic_vector(co_switches'range);
    signal si_rbg_leds : t_rgb_led_arrray((parm_rgb_led_count - 1) downto 0);

begin
    -- Input the RGB lEDs
    g_rgb_leds : for i_rgb in ci_led_red'range generate
    begin
        si_rbg_leds(i_rgb) <= (ci_led_red(i_rgb),
                                ci_led_green(i_rgb),
                                ci_led_blue(i_rgb));
    end generate g_rgb_leds;

    -- Default initialization of the buttons on the board.
    p_set_buttons : process
    begin
        WaitForClock(ci_main_clock, 1);
        WaitForLevel(cin_main_reset, '0');
        WaitForClock(ci_main_clock, 1);
        
        so_buttons <= (others => '0');
        wait;
    end process p_set_buttons;

    -- Default initialization of the switches on the board.
    p_set_switches : process
    begin
        WaitForClock(ci_main_clock, 1);
        WaitForLevel(cin_main_reset, '0');
        WaitForClock(ci_main_clock, 1);
        
        so_switches <= (others => '0');
        so_switches(0) <= '1';
        wait;
    end process p_set_switches;

    -- Log the changes on the RGB LEDs
    g_log_rgb_leds : for i_rgb in ci_led_red'range generate
    begin
        p_log_rgb_leds : process
            type t_have_filament is array(2 downto 0) of boolean;
            type t_have_time is array(2 downto 0) of time;

            constant c_pwm_period : time := parm_pwm_color_max_duty_cycle * 1 ms;
            variable v_have_on : t_have_filament := (false, false, false);
            variable v_have_off : t_have_filament := (false, false, false);
            variable v_time_on : t_have_time := (0 ms, 0 ms, 0 ms);
            variable v_time_off : t_have_time := (0 ms, 0 ms, 0 ms);
            variable v_time_delta : t_have_time := (0 ms, 0 ms, 0 ms);
        begin
            wait on si_rbg_leds(i_rgb);

            if cin_main_reset /= '0' then
                Log("RGB LED Filament " & to_string(i_rgb) & " changed to:" &
                " R:" & to_string(si_rbg_leds(i_rgb)(2)) &
                " G:" & to_string(si_rbg_leds(i_rgb)(1)) &
                " B:" & to_string(si_rbg_leds(i_rgb)(0)),
                INFO);

                for i_idx in 2 downto 0 loop
                    if si_rbg_leds(i_rgb)(i_idx) = '1' then
                        if not v_have_on(i_idx) then
                            v_have_on(i_idx) := true;
                            v_time_on(i_idx) := NOW;
                        end if;
                    else
                        if not v_have_off(i_idx) then
                            v_have_off(i_idx) := true;
                            v_time_off(i_idx) := NOW;
                        end if;
                    end if;
                end loop;

                if (v_have_on(2) and v_have_on(1) and v_have_on(0) and v_have_off(2) and v_have_off(1) and v_have_off(0)) then
                    for i_idx in 2 downto 0 loop
                        v_time_delta(i_idx) := abs(v_time_off(i_idx) - v_time_on(i_idx));
                        v_have_on(i_idx) := false;
                        v_have_off(i_idx) := false;
                        v_time_on(i_idx) := 0 ms;
                        v_time_off(i_idx) := 0 ms;
                    end loop;

                    Log("RGB LED PWM " & to_string(i_rgb) & " lasted for:" &
                    " R:" & to_string(v_time_delta(2)) &
                    " G:" & to_string(v_time_delta(1)) &
                    " B:" & to_string(v_time_delta(0)), INFO);

                    Log("RGB LED PWM " & to_string(i_rgb) & " changed to:" &
                    " R:" & to_string(integer(real(v_time_delta(2) / c_pwm_period)) * 256) &
                    " G:" & to_string(integer(real(v_time_delta(1) / c_pwm_period)) * 256) &
                    " B:" & to_string(integer(real(v_time_delta(0) / c_pwm_period)) * 256), INFO);
                end if;
            end if;
        end process p_log_rgb_leds;
    end generate g_log_rgb_leds;

    -- Log the changes on the Basic LEDs
    p_log_basic_leds : process
    begin
        wait on ci_led_basic;
        Log("BASIC Leds: (" & to_string(parm_basic_led_count - 1) & ":0) " &
        "changed to: " & to_string(ci_led_basic),
        INFO);
    end process p_log_basic_leds;

end architecture simulation_default;
--------------------------------------------------------------------------------
