`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 05:02:16 PM
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
    output reg [6:0] dig_disp
    );
    
always @ (I)
    begin
    
        case(I)
        4'b0000: dig_disp = 7'b1000000;
        4'b0001: dig_disp = 7'b1111001;
        4'b0010: dig_disp = 7'b0100100;
        4'b0011: dig_disp = 7'b0110000;
        4'b0100: dig_disp = 7'b0011001;
        4'b0101: dig_disp = 7'b0010010;
        4'b0110: dig_disp = 7'b0000010;
        4'b0111: dig_disp = 7'b1111000;
        4'b1000: dig_disp = 7'b0000000;
        4'b1001: dig_disp = 7'b0010000;
        
        default: dig_disp = dig_disp;
        
        endcase
     end
endmodule
