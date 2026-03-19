`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2026 04:53:37 AM
// Design Name: 
// Module Name: dis_clk_div
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


module dis_clk_div(
    input clk,
    input rst,
    output reg disp_clk
    );
    
    localparam M = 10000;
    
    reg [14:0] count;
    
    always @ (posedge (clk), posedge(rst))
        begin
            if (rst)
                begin
                count <= 0;
                disp_clk <= 0;
                
                end
            else if (count == M-1)
                begin
                count <= 0;
                disp_clk <= ~disp_clk;
                
                end
                
            else
                count <= count + 1;
         end
endmodule
