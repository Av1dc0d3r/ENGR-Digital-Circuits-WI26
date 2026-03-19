`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 04:04:17 PM
// Design Name: 
// Module Name: timer_clk_div
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


module timer_clk_div(
    input clk,
    input rst,
    output reg timer_clk
    );
    
    localparam M = 100000000;
    
    reg [47:0] count;
    
    always @ (posedge (clk), posedge(rst))
        begin
            if (rst)
                begin
                count <= 0;
                timer_clk <= 0;
                
                end
            else if (count == M-1)
                begin
                count <= 0;
                timer_clk <= ~timer_clk;
                
                end
                
            else
                count <= count + 1;
         end
endmodule
