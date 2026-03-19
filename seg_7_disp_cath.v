`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2026 05:12:54 AM
// Design Name: 
// Module Name: seg_7_disp_cath
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


module seg_7_disp_cath(
    input [3:0] I,
    output reg [6:0] char_disp
    );
    
always @ (I)
    begin
        case(I)
        4'd0: char_disp = 7'b0000000;
        
        4'd1: char_disp = 7'b1111001; //1
        4'd2: char_disp = 7'b0100100; //2
        4'd3: char_disp = 7'b0001000; //A
        4'd4: char_disp = 7'b1000111; //L
        4'd5: char_disp = 7'b0001100; //P
        
        default: char_disp = 7'b0000000;
        
        endcase
     end
endmodule
