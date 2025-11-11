
# set_clock_gating_check -rise -setup 0
# set_clock_gating_check -fall -setup 0
create_clock [get_ports {clk}]  -name clk -period 3
set_clock_transition  -rise -min 0.01 [get_clocks {clk}]
set_clock_transition  -rise -max 0.01 [get_clocks {clk}]
set_clock_transition  -fall -min 0.01 [get_clocks {clk}]
set_clock_transition  -fall -max 0.01 [get_clocks {clk}]
# set_wire_load_mode enclosed

set_ideal_network  [get_ports {clk}]

set_max_fanout 128 [current_design]

set_load 0.001 [all_outputs]
set_input_transition 0.01 [all_inputs]
set_input_delay 0 [all_inputs]

