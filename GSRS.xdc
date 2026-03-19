# clk is from the 100 MHz oscillator on Blackboard
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]
# Buttons
set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33 } [get_ports { btn[0] }];
set_property -dict { PACKAGE_PIN W13 IOSTANDARD LVCMOS33 } [get_ports { btn[1] }];
set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports { rst }];
# add remaining buttons
# RGB LEDs
set_property -dict { PACKAGE_PIN W18 IOSTANDARD LVCMOS33 } [get_ports { rgb[2] }]; #LD10_R
set_property -dict { PACKAGE_PIN W16 IOSTANDARD LVCMOS33 } [get_ports { rgb[1] }]; #LD10_G
set_property -dict { PACKAGE_PIN Y18 IOSTANDARD LVCMOS33 } [get_ports { rgb[0] }]; #LD10_B