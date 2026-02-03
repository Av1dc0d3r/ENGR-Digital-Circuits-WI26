##LEDS
set_property -dict { PACKAGE_PIN N20 IOSTANDARD LVCMOS33 } [get_ports { Y[0] }];
set_property -dict { PACKAGE_PIN P20 IOSTANDARD LVCMOS33 } [get_ports { Y[1] }];

set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports { Eout }];
#Schematic=LD0
##Switches
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { I[0] }];
set_property -dict { PACKAGE_PIN U20 IOSTANDARD LVCMOS33 } [get_ports { I[1] }];
set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 } [get_ports { I[2] }];
set_property -dict { PACKAGE_PIN N16 IOSTANDARD LVCMOS33 } [get_ports { I[3] }];

set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { Ein }];

#Schematic=SW0