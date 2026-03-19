`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 02:21:32 PM
// Design Name: 
// Module Name: cmp_bslice
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


module cmp_bslice(
    input A,
    input B,
    input LTI,
    input GTI,
    input EQI,
    output LTO,
    output GTO,
    output EQO
    );
    
    assign GTO = GTI | (A & ~B & EQI);
    
    assign LTO = LTI | (~A & B & EQI);
    
    assign EQO = EQI & ((A & B) | (~A & ~B));
    
endmodule
