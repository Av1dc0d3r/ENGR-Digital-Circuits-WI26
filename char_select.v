`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2026 04:57:17 AM
// Design Name: 
// Module Name: char_select
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


module char_select(
    input [1:0] sel,
    input [1:0] winner,
    output reg [3:0] char   
);

    localparam [3:0] blank = 4'd0,
                     one = 4'd1,
                     two = 4'd2,
                     A = 4'd3,
                     L = 4'd4,
                     P = 4'd5;

    localparam [1:0] Tie = 2'd0,
                     P1 = 2'd1,
                     P2 = 2'd2;

always @(*) begin
    case (winner)

        P1: begin
        case (sel)
            2'd0: char = one;
            2'd1: char = A;
            2'd2: char = L;
            2'd3: char = P;
            default: char = blank;
    endcase
end

        P2: begin
        case (sel)
            2'd0: char = two;
            2'd1: char = A;
            2'd2: char = L;
            2'd3: char = P;
            
            default: 
            
            char = blank;
    endcase
end

    default: begin
        char = blank;
    end
    endcase
end

endmodule
