`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 03:35:18 PM
// Design Name: 
// Module Name: cmp_bhav
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


module cmp_bhav(
    input [3:0] A,
    input [3:0] B,
    output LTO,
    output GTO,
    output EQO
    );
    
    assign GTO = A > B;
    assign LTO = A < B;
    assign EQO = A == B;
endmodule
