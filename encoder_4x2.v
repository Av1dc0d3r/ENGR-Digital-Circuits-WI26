`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Thaknin Hor
// 
// Create Date: 01/28/2026 03:53:30 PM
// Design Name: 
// Module Name: encoder_4x2
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


module encoder_4x2(
    input [3:0] I,
    input Ein,
    output reg [1:0] Y,
    output reg Eout
    );
    
always @ (I, Ein)
begin
    if(Ein == 1)
        Y = (I[3] == 1) ? 2'd3 : (
                (I[2] == 1) ? 2'd2 : (
                    (I[1] == 1) ? 2'd1 : 2'd0
                    )
            );
    else
        Y = 2'd0;
        
//Turn on LED Eout if Ein is true and I=0
    if (Ein == 1 && I == 0)
        Eout = 1'b1;
    else 
        Eout = 1'b0;

end
endmodule
