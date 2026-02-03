`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Thaknin Hor
// 
// Create Date: 01/28/2026 02:50:28 PM
// Design Name: 
// Module Name: mux_4x1
// Project Name: Lab_3
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


module mux_4x1(
    input [3:0] I,
    input [1:0] Sel,
    output Y
    );
    
    assign Y= (Sel ==2'd0) ? I[0] : (
                    (Sel ==2'd1) ? I[1] : (
                    (Sel ==2'd2) ? I[2] : I[3])
                    );
endmodule
