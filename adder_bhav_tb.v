`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 03:02:50 PM
// Design Name: 
// Module Name: adder_bhav_tb
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


module adder_bhav_tb;

reg [3:0] C;
reg [3:0] D;

wire [3:0] S;
wire Cout;

adder_bhav adder_bhav_cut (.A(C), .B(D), .S(S), .Cout(Cout));

integer k;

initial
begin

C = 0;
D = 0;

for (k=0; k<16; k=k+1)
begin
    #10 C = k;
        D = k+1;
end #10 $finish;

end
endmodule
