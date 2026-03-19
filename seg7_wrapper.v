`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 05:14:44 PM
// Design Name: 
// Module Name: seg7_wrapper
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


module seg7_wrapper(
    input clk,
    input rst,
    input EN,
    output [6:0] cathodes,
    output [3:0] anodes
    );
    
wire[15:0] cnt_time;
wire[1:0] digit;
wire[3:0] cath_Y;
wire[6:0] cath;
wire[3:0] ano;

digit_select_cnt disp_digit(.clk(clk), .rst(rst), .digit(digit));

count_timer count_timer(.clk(clk), .rst(rst), .EN(EN), .seg7_data(cnt_time));

cath_mux cath_mux(.I(cnt_time), .Sel(digit), .Y(cath_Y));

seg_7_disp_cath cath_value (.I(cath_Y), .dig_disp(cath));

seg7_disp_anode anode_value (.S(digit), .anode(ano));

assign cathodes = cath;
assign anodes = ano;

endmodule
