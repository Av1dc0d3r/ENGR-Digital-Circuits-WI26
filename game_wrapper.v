`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2026 06:29:59 AM
// Design Name: 
// Module Name: game_wrapper
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


module game_wrapper(
    input clk,
    input rst,
    input bgn,
    input [1:0] btn,
    output [2:0] rgb,
    output [3:0] anode,
    output [6:0] cath
    );
    
    wire [1:0] sel;
    wire [3:0] char;
    wire [1:0] winner;
    
    Game gamin (
        .clk(clk),
        .btn(btn),
        .bgn(bgn),
        .rst(rst),
        .rgb(rgb),
        .winner(winner)
    );

    digit_select digit_sel (
        .clk(clk),
        .rst(rst),
        .digit(sel)
    );

    char_select char_value (
        .sel(sel),
        .winner(winner),
        .char(char)
    );

    seg_7_disp_cath cath_value (
        .I(char),
        .char_disp(cath)
    );

    seg_7_disp_anode anode_value (
        .S(sel),
        .anode(anode)
    );
endmodule
