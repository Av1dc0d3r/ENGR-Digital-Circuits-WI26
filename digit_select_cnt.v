`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 04:50:58 PM
// Design Name: 
// Module Name: digit_select_cnt
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


module digit_select_cnt(
    input clk,
    input rst,
    output reg [1:0] digit
    );
    
wire disp_clk;

dis_clk_div seg7_digit (.clk(clk), .rst(rst), .disp_clk(disp_clk));

always @(posedge (disp_clk), posedge(rst))
    begin
        if (rst)
            digit <= 0;
            
        else 
            digit <= digit +1;
            
    end
endmodule
