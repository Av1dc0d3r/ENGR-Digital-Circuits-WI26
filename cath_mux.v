`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 04:57:11 PM
// Design Name: 
// Module Name: cath_mux
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


module cath_mux(
    input [15:0] I,
    input [1:0] Sel,
    output reg [3:0] Y
    );
    
    always @(I, Sel)
        begin
            case (Sel)
                2'b00: Y <= I[3:0];
                2'b01: Y <= I[7:4];
                2'b10: Y <= I[11:8];
                2'b11: Y <= I[15:12];
                
            default
                Y <= Y;
            endcase
        end
endmodule
