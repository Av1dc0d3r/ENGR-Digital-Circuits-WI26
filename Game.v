    `timescale 1ns / 1ps
    //////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 
    // 
    // Create Date: 03/18/2026 05:25:32 AM
    // Design Name: 
    // Module Name: Game
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
    
    
    module Game(
        input clk,
        input [1:0] btn,
        input bgn,
        input rst,
        output reg [2:0] rgb,
        output reg [1:0] winner
        );
        
        wire timer_clk;
        
        timer_clk_div game_clk (.clk(clk), .rst(rst), .timer_clk(timer_clk));
        
        localparam [1:0] white = 0,
                         red = 1,
                         green = 2,
                         yellow = 3;
                        
        localparam [1:0] P1 = 2'd1,
                         P2 = 2'd2,
                         Tie = 2'd0;
        
        reg [1:0] state;       
        
        always @ (posedge timer_clk or posedge rst)
        
            begin
                if (rst) begin
                    state = white;
                    winner = Tie;
                    end
                    
                else begin 
                
                case (state)
                    white: begin
                        if (bgn) begin
                            state = red;
                        end
                        else begin
                            state = white;
                        end
                    end
                    red: begin
                            state = yellow;
                    end
                    
                    yellow: begin
                            state = green;
                    end
                    
                    green: begin
                        if (~btn[1] & btn[0]) begin
                            winner <= P1;
                        end
                        else if (btn[1] & ~btn[0]) begin
                            winner <= P2;
                        end
                        else begin
                            winner <= Tie;
                        end
                    end
                    
                    default: begin
                        state <= white;
                        winner <= Tie;
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
                    
                    yellow: begin
                        rgb = 3'b110;
                    end
                    default: begin
                        rgb = 3'b000;
                    end
                endcase
                end
            end
    endmodule
