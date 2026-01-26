`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: H, Thaknin
// 
// Create Date: 01/21/2026 03:02:34 PM
// Design Name: 
// Module Name: project_2_tb
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


module project_2_tb;
    //Inputs
    reg [3:0] sw;
    //Outputs
    wire led;
    
    project_2_source cut(.sw(sw), .led(led));
    
    integer k;
    
initial 
begin

    sw=0;
    //Loop
    for (k=0;k<16;k=k+1)
        #10 sw=k;
    #10 $finish;
    
end
endmodule
