`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 05:10:18 PM
// Design Name: 
// Module Name: seg7_disp_anode
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


module seg7_disp_anode(
    input [1:0] S,
    output reg [3:0] anode
    );
    
    always @ (S)
        begin 
            case(S)
                2'd0: anode <= 4'b1110;
                2'd1: anode <= 4'b1101;
                2'd2: anode <= 4'b1011;
                2'd3: anode <= 4'b0111;
                
                default: anode <= 4'b1111;
            endcase
        end
endmodule
