`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 02:17:19 PM
// Design Name: 
// Module Name: adder_4bit_tb
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


module adder_4bit_tb;

reg [3:0] A;
reg [3:0] B;

wire [3:0] S;
wire Cout;

adder_4bit adder_cut (.A(A), .B(B), .S(S), .Cout(Cout));

integer k;

initial
begin

A = 0;
B = 0;

for (k=0; k<16; k=k+1)
begin
    #10 A = k;
        B = k+1;
end #10 $finish;

end
endmodule
