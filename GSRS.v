`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 02:34:12 PM
// Design Name: 
// Module Name: GSRS
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


module GSRS(
    input clk,
    input [1:0] btn,
    input rst,
    output reg [2:0] rgb
    );
    
    localparam [1:0] white = 0,
                     red = 1,
                     green = 2,
                     blue = 3;
    
    reg [1:0] state;       
    
    always @ (posedge clk)
    
        begin
            if (rst) begin
                state = white;
                end
                
            else begin 
            
            case (state)
                white: begin
                    if (btn[0] & ~btn[1]) begin
                        state = red;
                    end
                    
                    else if (~btn[0] & btn[1]) begin
                        state = blue;
                    end
                    
                    else if (btn[0] & btn[1]) begin
                        state = green;
                    end
                end
                
                
                red : begin
                    if (btn[0] & ~btn[1]) begin
                        state = red;
                    end
                    
                    else if (~btn[0] & btn[1]) begin
                        state = red;
                    end
                    
                    else if (btn[0] & btn[1]) begin
                        state = red;
                    end
                end
                
                blue : begin
                    if (btn[0] & ~btn[1]) begin
                        state = blue;
                    end
                    
                    else if (~btn[0] & btn[1]) begin
                        state = blue;
                    end
                    
                    else if (btn[0] & btn[1]) begin
                        state = blue;
                    end
                end
                
                green: begin
                    if (btn[0] & ~btn[1]) begin
                        state = green;
                    end
                    
                    else if (~btn[0] & btn[1]) begin
                        state = green;
                    end
                    
                    else if (btn[0] & btn[1]) begin
                        state = green;
                    end
                end
                
                default: begin
                    state = white;
                end
           endcase
                
           case (state)
                white: begin
                    rgb = 3'b111;
                end
                
                red: begin
                    rgb = 3'b100;
                end
                
                green: begin
                    rgb = 3'b010;
                end
                
                blue: begin
                    rgb = 3'b001;
                end
                default: begin
                    rgb = 3'b000;
                end
            endcase
            end
        end
endmodule
