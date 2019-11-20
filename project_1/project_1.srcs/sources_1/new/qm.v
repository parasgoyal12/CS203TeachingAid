`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 23:20:38
// Design Name: 
// Module Name: qm
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


module qm(
    input [7:0]A,
    input [3:0] num_t,
    input [1:0] cost_t,
    input clk,
    output reg ans,
    output reg new_clk
    );
    reg [32:0]div=0;
    always @(posedge clk)begin
        div<=div+1;
        if (div == 200000000)
        begin 
            div <=0;
            new_clk <=~new_clk;
        end
    end
    
    always @(posedge new_clk)begin
    case(A)
    8'b00000001: ans<= !(num_t^1) & !(cost_t^3); 
    endcase
    end
    
endmodule
