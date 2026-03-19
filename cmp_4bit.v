`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 02:32:36 PM
// Design Name: 
// Module Name: cmp_4bit
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


module cmp_4bit(
    input [3:0] A,
    input [3:0] B,
    output LTO,
    output GTO,
    output EQO
    );
    
    wire [3:0] LTI;
    wire [3:0] GTI;
    wire [3:0] EQI;
    
    cmp_bslice cmp_bit_3 (
    .A(A[3]),
    .B(B[3]),
    .LTI(1'b0),
    .GTI(1'b0),
    .EQI(1'b1),
    .LTO(LTI[3]),
    .GTO(GTI[3]),
    .EQO(EQI[3])
    );
    
    cmp_bslice cmp_bit_2 (
    .A(A[2]),
    .B(B[2]),
    .LTI(LTI[3]),
    .GTI(GTI[3]),
    .EQI(EQI[3]),
    .LTO(LTI[2]),
    .GTO(GTI[2]),
    .EQO(EQI[2])
    );
    
    cmp_bslice cmp_bit_1 (
    .A(A[1]),
    .B(B[1]),
    .LTI(LTI[2]),
    .GTI(GTI[2]),
    .EQI(EQI[2]),
    .LTO(LTI[1]),
    .GTO(GTI[1]),
    .EQO(EQI[1])
    );
    
    cmp_bslice cmp_bit_0 (
    .A(A[0]),
    .B(B[0]),
    .LTI(LTI[1]),
    .GTI(GTI[1]),
    .EQI(EQI[1]),
    .LTO(LTI[0]),
    .GTO(GTI[0]),
    .EQO(EQI[0])
    );
    
    assign LTO = LTI[0];
    assign GTO = GTI[0];
    assign EQO = EQI[0];
    
endmodule
