`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 04:28:18 PM
// Design Name: 
// Module Name: BCD_count
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


module BCD_count(
    input clk,
    input rst,
    input EN,
    output reg [3:0] bcd,
    output tc
    );
    
    localparam tc_limit = 4'b1001;
    
    wire timer_clk;
    
    timer_clk_div timer(.clk(clk), .rst(rst), .timer_clk(timer_clk))  ;
    
    assign tc = bcd == tc_limit;
    
    always @(posedge (timer_clk), posedge (rst))
        begin
            if (rst)
                bcd <=0;
                
            else if (EN & tc)
                bcd <= 0;
            else if (EN)
                bcd <= bcd +1;
            else
                bcd <= bcd;
        end
endmodule
