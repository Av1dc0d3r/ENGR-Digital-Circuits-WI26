`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 03:50:29 PM
// Design Name: 
// Module Name: shift_by_N
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


module shift_by_N(
    input [1:0] N,
    input [5:0] D,
    input dir,
    output reg [5:0] Q
    );
    
    always @ (N,D,dir)
        begin
            if (dir == 1)
                Q = D << N;
            else
                Q = D >> N;
                
        end
endmodule
