##LEDS
set_property -dict { PACKAGE_PIN N20 IOSTANDARD LVCMOS33 } [get_ports { Y }]; #Schematic=LD0
##Switches
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { I[0] }];
set_property -dict { PACKAGE_PIN U20 IOSTANDARD LVCMOS33 } [get_ports { I[1] }];
set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 } [get_ports { I[2] }];
set_property -dict { PACKAGE_PIN N16 IOSTANDARD LVCMOS33 } [get_ports { I[3] }];
#Schematic=SW0
##Buttons
set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33 } [get_ports { Sel[0] }];
set_property -dict { PACKAGE_PIN W13 IOSTANDARD LVCMOS33 } [get_ports { Sel[1] }];
#Schematic=BTN0