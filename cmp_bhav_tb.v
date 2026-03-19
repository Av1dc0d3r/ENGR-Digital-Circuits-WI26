`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 03:41:31 PM
// Design Name: 
// Module Name: cmp_bhav_tb
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


module cmp_bhav_tb;
    reg [3:0] A;
    reg [3:0] B;
    
    wire LTO, GTO, EQO;
    
    cmp_bhav cmp_bhav_cut (.A(A), .B(B), .LTO(LTO), .GTO(GTO), .EQO(EQO));
    
    integer k;
    integer h;
    
    initial
    begin
    
    A = 0;
    B = 0;
    k = 0;
    h = 0;
    
    for (k=0; k<16; k=k+1)
        begin #10
        for (h=0; h<16; h=h+1)
            begin 
           #5 A = k;
            B = h;
        end
    end
    
    $finish;
    end 
    
    
endmodule
