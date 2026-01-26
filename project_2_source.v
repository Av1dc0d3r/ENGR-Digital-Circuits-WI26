`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: H, Thaknin
// 
// Create Date: 01/21/2026 02:54:36 PM
// Design Name: 
// Module Name: project_2_source
// Project Name: project_2
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


module project_2_source(
    input [3:0] sw,
    output led
    );
    
    assign led = (~sw[3] & ~sw[2] & ~sw[1] & sw[0]) |
                 (~sw[3] & ~sw[2] & sw[1] & ~sw[0]) |
                 (~sw[3] & sw[2] & ~sw[1] & ~sw[0]) |
                 (sw[3] & ~sw[2] & ~sw[1] & ~sw[0]) |
                 (~sw[3] & sw[2] & sw[1] & sw[0]) |
                 (sw[3] & ~sw[2] & sw[1] & sw[0]) |
                 (sw[3] & sw[2] & ~sw[1] & sw[0]) |
                 (sw[3] & sw[2] & sw[1] & ~sw[0]);
endmodule
