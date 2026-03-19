##clock]
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { clk }];
#IO_L13P_T2_MRCC_35 Schematic=SYSCLK
##7 segment anode
set_property -dict { PACKAGE_PIN K19 IOSTANDARD LVCMOS33 } [get_ports { anodes[0] }];
#SSEG_AN0
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { anodes[1] }];
#SSEG_AN1
set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33 } [get_ports { anodes[2] }];
#SSEG_AN2
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { anodes[3] }];
#SSEG_AN3
##7 segment cathode
set_property -dict { PACKAGE_PIN K14 IOSTANDARD LVCMOS33 } [get_ports { cathodes[0] }];
#Schematic=CA
set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports { cathodes[1] }];
#Schematic=CB
set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports { cathodes[2] }];
#Schematic=CC
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { cathodes[3] }];
#Schematic=CD
set_property -dict { PACKAGE_PIN M17 IOSTANDARD LVCMOS33 } [get_ports { cathodes[4] }];
#Schematic=CE
set_property -dict { PACKAGE_PIN J16 IOSTANDARD LVCMOS33 } [get_ports { cathodes[5] }];
#Schematic=CF
set_property -dict { PACKAGE_PIN H18 IOSTANDARD LVCMOS33 } [get_ports { cathodes[6] }];
#Schematic=CG
##buttons
set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33 } [get_ports { rst }];
#Schematic=BTN0
##switches
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { EN }]; #SW0