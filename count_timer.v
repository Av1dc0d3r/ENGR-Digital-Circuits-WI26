`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 04:37:16 PM
// Design Name: 
// Module Name: count_timer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module count_timer(
    input clk,
    input rst,
    input EN,
    output [15:0] seg7_data
    );
    
wire [3:0] tc;
wire tci_1;
wire tci_2;
wire tci_3;
wire [15:0] seg7_dig;

BCD_count dig0 (.clk(clk), .rst(rst),.EN(EN), .tc(tc[0]), .bcd(seg7_dig[3:0]));

assign tci_1 = tc[0] & EN;

BCD_count dig1 (.clk(clk), .rst(rst),.EN(tci_1), .tc(tc[1]), .bcd(seg7_dig[7:4]));

assign tci_2 = tci_1 & tc[1];

BCD_count dig2 (.clk(clk), .rst(rst),.EN(tci_2), .tc(tc[2]), .bcd(seg7_dig[11:8]));

assign tci_3 = tci_2 & tc[2];

BCD_count dig3 (.clk(clk), .rst(rst), .EN(tci_3),.tc(tc[3]), .bcd(seg7_dig[15:12]));

assign seg7_data = seg7_dig;

endmodule
