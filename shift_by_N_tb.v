`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 03:53:22 PM
// Design Name: 
// Module Name: shift_by_N_tb
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


module shift_by_N_tb;
    
    reg [1:0] N;
    reg [5:0] D;
    reg dir;
    
    wire [5:0] Q;
    
    shift_by_N shift_by_N_cut (.N(N), .D(D), .dir(dir), .Q(Q));
    
    integer k;
    
    initial
    begin
        N = 0;
        D = 0;
        dir = 0;
        
        #10 dir = 1;
            D = 6'b011010;
        for (k = 0; k<4; k=k+1)
            begin
            #10 N = k;
            end
            
        #10 dir = 0;
        N=0;
        D=6'b011010;
        
        for (k=0; k<4; k=k+1)
            begin
            #10 N = k;
            end
        #10 $finish;
end

endmodule
