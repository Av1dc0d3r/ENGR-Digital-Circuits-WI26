`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2026 08:14:35 PM
// Design Name: 
// Module Name: mof_tb
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


module mof_tb;
    
    //Inputs
    reg [4:0] sw;
    //Outputs
    wire led;
    
    mof_source cut(.sw(sw), .led(led));
    
    // Declare loop index variable
        integer k;
        
initial
begin 
    sw=0;
        
    for (k=0; k<32; k=k+1)
        #10 sw = k;
            
    #10 $finish;
        
end
endmodule
