##LEDS
set_property -dict { PACKAGE_PIN N20 IOSTANDARD LVCMOS33 } [get_ports { S[0] }];
set_property -dict { PACKAGE_PIN P20 IOSTANDARD LVCMOS33 } [get_ports { S[1] }];
set_property -dict { PACKAGE_PIN R19 IOSTANDARD LVCMOS33 } [get_ports { S[2] }];
set_property -dict { PACKAGE_PIN T20 IOSTANDARD LVCMOS33 } [get_ports { S[3] }];
set_property -dict { PACKAGE_PIN T19 IOSTANDARD LVCMOS33 } [get_ports { Cout }];


#Schematic=LD0
##Switches
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { A[0] }];
set_property -dict { PACKAGE_PIN U20 IOSTANDARD LVCMOS33 } [get_ports { A[1] }];
set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 } [get_ports { A[2] }];
set_property -dict { PACKAGE_PIN N16 IOSTANDARD LVCMOS33 } [get_ports { A[3] }];

set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { B[0] }];
set_property -dict { PACKAGE_PIN L15 IOSTANDARD LVCMOS33 } [get_ports { B[1] }];
set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS33 } [get_ports { B[2] }];
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { B[3] }];
#Schematic=SW0