# Clock definition
set_property PACKAGE_PIN V17 [get_ports i_clk]
set_property IOSTANDARD LVCMOS33 [get_ports i_clk]
create_clock -period 20 [get_ports i_clk] # 50 MHz clock (20 ns period)

# Input signals (4-bit digit inputs)
set_property PACKAGE_PIN W14 [get_ports i_digit[0]] 
set_property IOSTANDARD LVCMOS33 [get_ports i_digit[0]]
set_property PACKAGE_PIN W15 [get_ports i_digit[1]] 
set_property IOSTANDARD LVCMOS33 [get_ports i_digit[1]]
set_property PACKAGE_PIN W16 [get_ports i_digit[2]] 
set_property IOSTANDARD LVCMOS33 [get_ports i_digit[2]]
set_property PACKAGE_PIN W17 [get_ports i_digit[3]] 
set_property IOSTANDARD LVCMOS33 [get_ports i_digit[3]]

# Confirm signals
set_property PACKAGE_PIN T14 [get_ports i_confirm_getter] 
set_property IOSTANDARD LVCMOS33 [get_ports i_confirm_getter]
set_property PACKAGE_PIN U15 [get_ports i_confirm_FSM] 
set_property IOSTANDARD LVCMOS33 [get_ports i_confirm_FSM]

# Reset and switch inputs
set_property PACKAGE_PIN T18 [get_ports i_hard_reset] 
set_property IOSTANDARD LVCMOS33 [get_ports i_hard_reset]
set_property PACKAGE_PIN U18 [get_ports i_switch] 
set_property IOSTANDARD LVCMOS33 [get_ports i_switch]

# Display enable signal
set_property PACKAGE_PIN V16 [get_ports i_enable_display] 
set_property IOSTANDARD LVCMOS33 [get_ports i_enable_display]

# Output signals

# LEDs
set_property PACKAGE_PIN U16 [get_ports o_LED_correct] 
set_property IOSTANDARD LVCMOS33 [get_ports o_LED_correct]
set_property PACKAGE_PIN V15 [get_ports o_LED_incorrect] 
set_property IOSTANDARD LVCMOS33 [get_ports o_LED_incorrect]

# 7-segment displays
# For trials 7-segment
set_property PACKAGE_PIN P16 [get_ports o_trials_7seg] 
set_property IOSTANDARD LVCMOS33 [get_ports o_trials_7seg]

# Password 7-segment displays
set_property PACKAGE_PIN T17 [get_ports o_pass_7seg_0] 
set_property IOSTANDARD LVCMOS33 [get_ports o_pass_7seg_0]
set_property PACKAGE_PIN R17 [get_ports o_pass_7seg_1] 
set_property IOSTANDARD LVCMOS33 [get_ports o_pass_7seg_1]
set_property PACKAGE_PIN P17 [get_ports o_pass_7seg_2] 
set_property IOSTANDARD LVCMOS33 [get_ports o_pass_7seg_2]

# Input 7-segment display
set_property PACKAGE_PIN P15 [get_ports o_input_7seg] 
set_property IOSTANDARD LVCMOS33 [get_ports o_input_7seg]

# State 7-segment display
set_property PACKAGE_PIN N16 [get_ports o_state_7seg] 
set_property IOSTANDARD LVCMOS33 [get_ports o_state_7seg]

# Posedge detectors (for the edge detection on inputs)
set_property PACKAGE_PIN R14 [get_ports i_confirm_getter_pe] 
set_property IOSTANDARD LVCMOS33 [get_ports i_confirm_getter_pe]

set_property PACKAGE_PIN N14 [get_ports i_confirm_FSM_pe] 
set_property IOSTANDARD LVCMOS33 [get_ports i_confirm_FSM_pe]

set_property PACKAGE_PIN P14 [get_ports i_hard_reset_pe] 
set_property IOSTANDARD LVCMOS33 [get_ports i_hard_reset_pe]

set_property PACKAGE_PIN M14 [get_ports i_switch_pe] 
set_property IOSTANDARD LVCMOS33 [get_ports i_switch_pe]
