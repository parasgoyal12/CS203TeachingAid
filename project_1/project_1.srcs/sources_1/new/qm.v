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
    output reg ans
//    output reg new_clk
    );
//    reg [32:0]div=0;
//    always @(posedge clk)begin
//        div<=div+1;
//        if (div == 200000000)
//        begin 
//            div <=0;
//            new_clk <=~new_clk;
//        end
//    end
    
    always @(posedge clk)begin
    case(A)
    8'b00000000: ans<= !(num_t^0) & !(cost_t^0);
8'b10000000: ans<= !(num_t^1) & !(cost_t^3);
8'b01000000: ans<= !(num_t^1) & !(cost_t^3);
8'b00100000: ans<= !(num_t^1) & !(cost_t^3);
8'b00010000: ans<= !(num_t^1) & !(cost_t^3);
8'b00001000: ans<= !(num_t^1) & !(cost_t^3);
8'b00000100: ans<= !(num_t^1) & !(cost_t^3);
8'b00000010: ans<= !(num_t^1) & !(cost_t^3);
8'b00000001: ans<= !(num_t^1) & !(cost_t^3);
8'b11000000: ans<= !(num_t^1) & !(cost_t^2);
8'b10100000: ans<= !(num_t^1) & !(cost_t^2);
8'b10010000: ans<= !(num_t^2) & !(cost_t^3);
8'b10001000: ans<= !(num_t^1) & !(cost_t^2);
8'b10000100: ans<= !(num_t^2) & !(cost_t^3);
8'b10000010: ans<= !(num_t^2) & !(cost_t^3);
8'b10000001: ans<= !(num_t^2) & !(cost_t^3);
8'b01100000: ans<= !(num_t^2) & !(cost_t^3);
8'b01010000: ans<= !(num_t^1) & !(cost_t^2);
8'b01001000: ans<= !(num_t^2) & !(cost_t^3);
8'b01000100: ans<= !(num_t^1) & !(cost_t^2);
8'b01000010: ans<= !(num_t^2) & !(cost_t^3);
8'b01000001: ans<= !(num_t^2) & !(cost_t^3);
8'b00110000: ans<= !(num_t^1) & !(cost_t^2);
8'b00101000: ans<= !(num_t^2) & !(cost_t^3);
8'b00100100: ans<= !(num_t^2) & !(cost_t^3);
8'b00100010: ans<= !(num_t^1) & !(cost_t^2);
8'b00100001: ans<= !(num_t^2) & !(cost_t^3);
8'b00011000: ans<= !(num_t^2) & !(cost_t^3);
8'b00010100: ans<= !(num_t^2) & !(cost_t^3);
8'b00010010: ans<= !(num_t^2) & !(cost_t^3);
8'b00010001: ans<= !(num_t^1) & !(cost_t^2);
8'b00001100: ans<= !(num_t^1) & !(cost_t^2);
8'b00001010: ans<= !(num_t^1) & !(cost_t^2);
8'b00001001: ans<= !(num_t^2) & !(cost_t^3);
8'b00000110: ans<= !(num_t^2) & !(cost_t^3);
8'b00000101: ans<= !(num_t^1) & !(cost_t^2);
8'b00000011: ans<= !(num_t^1) & !(cost_t^2);
8'b11100000: ans<= !(num_t^2) & !(cost_t^2);
8'b11010000: ans<= !(num_t^2) & !(cost_t^2);
8'b11001000: ans<= !(num_t^2) & !(cost_t^2);
8'b11000100: ans<= !(num_t^2) & !(cost_t^2);
8'b11000010: ans<= !(num_t^2) & !(cost_t^3);
8'b11000001: ans<= !(num_t^2) & !(cost_t^3);
8'b10110000: ans<= !(num_t^2) & !(cost_t^2);
8'b10101000: ans<= !(num_t^2) & !(cost_t^2);
8'b10100100: ans<= !(num_t^2) & !(cost_t^3);
8'b10100010: ans<= !(num_t^2) & !(cost_t^2);
8'b10100001: ans<= !(num_t^2) & !(cost_t^3);
8'b10011000: ans<= !(num_t^2) & !(cost_t^3);
8'b10010100: ans<= !(num_t^3) & !(cost_t^3);
8'b10010010: ans<= !(num_t^3) & !(cost_t^3);
8'b10010001: ans<= !(num_t^2) & !(cost_t^3);
8'b10001100: ans<= !(num_t^2) & !(cost_t^2);
8'b10001010: ans<= !(num_t^2) & !(cost_t^2);
8'b10001001: ans<= !(num_t^2) & !(cost_t^3);
8'b10000110: ans<= !(num_t^3) & !(cost_t^3);
8'b10000101: ans<= !(num_t^2) & !(cost_t^3);
8'b10000011: ans<= !(num_t^2) & !(cost_t^3);
8'b01110000: ans<= !(num_t^2) & !(cost_t^2);
8'b01101000: ans<= !(num_t^3) & !(cost_t^3);
8'b01100100: ans<= !(num_t^2) & !(cost_t^3);
8'b01100010: ans<= !(num_t^2) & !(cost_t^3);
8'b01100001: ans<= !(num_t^3) & !(cost_t^3);
8'b01011000: ans<= !(num_t^2) & !(cost_t^3);
8'b01010100: ans<= !(num_t^2) & !(cost_t^2);
8'b01010010: ans<= !(num_t^2) & !(cost_t^3);
8'b01010001: ans<= !(num_t^2) & !(cost_t^2);
8'b01001100: ans<= !(num_t^2) & !(cost_t^2);
8'b01001010: ans<= !(num_t^2) & !(cost_t^3);
8'b01001001: ans<= !(num_t^3) & !(cost_t^3);
8'b01000110: ans<= !(num_t^2) & !(cost_t^3);
8'b01000101: ans<= !(num_t^2) & !(cost_t^2);
8'b01000011: ans<= !(num_t^2) & !(cost_t^3);
8'b00111000: ans<= !(num_t^2) & !(cost_t^3);
8'b00110100: ans<= !(num_t^2) & !(cost_t^3);
8'b00110010: ans<= !(num_t^2) & !(cost_t^2);
8'b00110001: ans<= !(num_t^2) & !(cost_t^2);
8'b00101100: ans<= !(num_t^2) & !(cost_t^3);
8'b00101010: ans<= !(num_t^2) & !(cost_t^2);
8'b00101001: ans<= !(num_t^3) & !(cost_t^3);
8'b00100110: ans<= !(num_t^2) & !(cost_t^3);
8'b00100101: ans<= !(num_t^2) & !(cost_t^3);
8'b00100011: ans<= !(num_t^2) & !(cost_t^2);
8'b00011100: ans<= !(num_t^2) & !(cost_t^3);
8'b00011010: ans<= !(num_t^2) & !(cost_t^3);
8'b00011001: ans<= !(num_t^2) & !(cost_t^3);
8'b00010110: ans<= !(num_t^3) & !(cost_t^3);
8'b00010101: ans<= !(num_t^2) & !(cost_t^2);
8'b00010011: ans<= !(num_t^2) & !(cost_t^2);
8'b00001110: ans<= !(num_t^2) & !(cost_t^2);
8'b00001101: ans<= !(num_t^2) & !(cost_t^2);
8'b00001011: ans<= !(num_t^2) & !(cost_t^2);
8'b00000111: ans<= !(num_t^2) & !(cost_t^2);
8'b11110000: ans<= !(num_t^1) & !(cost_t^1);
8'b11101000: ans<= !(num_t^3) & !(cost_t^2);
8'b11100100: ans<= !(num_t^2) & !(cost_t^2);
8'b11100010: ans<= !(num_t^2) & !(cost_t^2);
8'b11100001: ans<= !(num_t^3) & !(cost_t^3);
8'b11011000: ans<= !(num_t^2) & !(cost_t^2);
8'b11010100: ans<= !(num_t^3) & !(cost_t^2);
8'b11010010: ans<= !(num_t^3) & !(cost_t^3);
8'b11010001: ans<= !(num_t^2) & !(cost_t^2);
8'b11001100: ans<= !(num_t^1) & !(cost_t^1);
8'b11001010: ans<= !(num_t^2) & !(cost_t^2);
8'b11001001: ans<= !(num_t^3) & !(cost_t^3);
8'b11000110: ans<= !(num_t^3) & !(cost_t^3);
8'b11000101: ans<= !(num_t^2) & !(cost_t^2);
8'b11000011: ans<= !(num_t^2) & !(cost_t^2);
8'b10111000: ans<= !(num_t^2) & !(cost_t^2);
8'b10110100: ans<= !(num_t^3) & !(cost_t^3);
8'b10110010: ans<= !(num_t^3) & !(cost_t^2);
8'b10110001: ans<= !(num_t^2) & !(cost_t^2);
8'b10101100: ans<= !(num_t^2) & !(cost_t^2);
8'b10101010: ans<= !(num_t^1) & !(cost_t^1);
8'b10101001: ans<= !(num_t^3) & !(cost_t^3);
8'b10100110: ans<= !(num_t^3) & !(cost_t^3);
8'b10100101: ans<= !(num_t^2) & !(cost_t^2);
8'b10100011: ans<= !(num_t^2) & !(cost_t^2);
8'b10011100: ans<= !(num_t^3) & !(cost_t^3);
8'b10011010: ans<= !(num_t^3) & !(cost_t^3);
8'b10011001: ans<= !(num_t^2) & !(cost_t^2);
8'b10010110: ans<= !(num_t^4) & !(cost_t^3);
8'b10010101: ans<= !(num_t^3) & !(cost_t^3);
8'b10010011: ans<= !(num_t^3) & !(cost_t^3);
8'b10001110: ans<= !(num_t^3) & !(cost_t^2);
8'b10001101: ans<= !(num_t^2) & !(cost_t^2);
8'b10001011: ans<= !(num_t^2) & !(cost_t^2);
8'b10000111: ans<= !(num_t^3) & !(cost_t^3);
8'b01111000: ans<= !(num_t^3) & !(cost_t^3);
8'b01110100: ans<= !(num_t^2) & !(cost_t^2);
8'b01110010: ans<= !(num_t^2) & !(cost_t^2);
8'b01110001: ans<= !(num_t^3) & !(cost_t^2);
8'b01101100: ans<= !(num_t^3) & !(cost_t^3);
8'b01101010: ans<= !(num_t^3) & !(cost_t^3);
8'b01101001: ans<= !(num_t^4) & !(cost_t^3);
8'b01100110: ans<= !(num_t^2) & !(cost_t^2);
8'b01100101: ans<= !(num_t^3) & !(cost_t^3);
8'b01100011: ans<= !(num_t^3) & !(cost_t^3);
8'b01011100: ans<= !(num_t^2) & !(cost_t^2);
8'b01011010: ans<= !(num_t^2) & !(cost_t^2);
8'b01011001: ans<= !(num_t^3) & !(cost_t^3);
8'b01010110: ans<= !(num_t^3) & !(cost_t^3);
8'b01010101: ans<= !(num_t^1) & !(cost_t^1);
8'b01010011: ans<= !(num_t^2) & !(cost_t^2);
8'b01001110: ans<= !(num_t^2) & !(cost_t^2);
8'b01001101: ans<= !(num_t^3) & !(cost_t^2);
8'b01001011: ans<= !(num_t^3) & !(cost_t^3);
8'b01000111: ans<= !(num_t^2) & !(cost_t^2);
8'b00111100: ans<= !(num_t^2) & !(cost_t^2);
8'b00111010: ans<= !(num_t^2) & !(cost_t^2);
8'b00111001: ans<= !(num_t^3) & !(cost_t^3);
8'b00110110: ans<= !(num_t^3) & !(cost_t^3);
8'b00110101: ans<= !(num_t^2) & !(cost_t^2);
8'b00110011: ans<= !(num_t^1) & !(cost_t^1);
8'b00101110: ans<= !(num_t^2) & !(cost_t^2);
8'b00101101: ans<= !(num_t^3) & !(cost_t^3);
8'b00101011: ans<= !(num_t^3) & !(cost_t^2);
8'b00100111: ans<= !(num_t^2) & !(cost_t^2);
8'b00011110: ans<= !(num_t^3) & !(cost_t^3);
8'b00011101: ans<= !(num_t^2) & !(cost_t^2);
8'b00011011: ans<= !(num_t^2) & !(cost_t^2);
8'b00010111: ans<= !(num_t^3) & !(cost_t^2);
8'b00001111: ans<= !(num_t^1) & !(cost_t^1);
8'b11111000: ans<= !(num_t^2) & !(cost_t^2);
8'b11110100: ans<= !(num_t^2) & !(cost_t^2);
8'b11110010: ans<= !(num_t^2) & !(cost_t^2);
8'b11110001: ans<= !(num_t^2) & !(cost_t^2);
8'b11101100: ans<= !(num_t^2) & !(cost_t^2);
8'b11101010: ans<= !(num_t^2) & !(cost_t^2);
8'b11101001: ans<= !(num_t^4) & !(cost_t^3);
8'b11100110: ans<= !(num_t^3) & !(cost_t^2);
8'b11100101: ans<= !(num_t^3) & !(cost_t^2);
8'b11100011: ans<= !(num_t^3) & !(cost_t^2);
8'b11011100: ans<= !(num_t^2) & !(cost_t^2);
8'b11011010: ans<= !(num_t^3) & !(cost_t^2);
8'b11011001: ans<= !(num_t^3) & !(cost_t^2);
8'b11010110: ans<= !(num_t^4) & !(cost_t^3);
8'b11010101: ans<= !(num_t^2) & !(cost_t^2);
8'b11010011: ans<= !(num_t^3) & !(cost_t^2);
8'b11001110: ans<= !(num_t^2) & !(cost_t^2);
8'b11001101: ans<= !(num_t^2) & !(cost_t^2);
8'b11001011: ans<= !(num_t^3) & !(cost_t^2);
8'b11000111: ans<= !(num_t^3) & !(cost_t^2);
8'b10111100: ans<= !(num_t^3) & !(cost_t^2);
8'b10111010: ans<= !(num_t^2) & !(cost_t^2);
8'b10111001: ans<= !(num_t^3) & !(cost_t^2);
8'b10110110: ans<= !(num_t^4) & !(cost_t^3);
8'b10110101: ans<= !(num_t^3) & !(cost_t^2);
8'b10110011: ans<= !(num_t^2) & !(cost_t^2);
8'b10101110: ans<= !(num_t^2) & !(cost_t^2);
8'b10101101: ans<= !(num_t^3) & !(cost_t^2);
8'b10101011: ans<= !(num_t^2) & !(cost_t^2);
8'b10100111: ans<= !(num_t^3) & !(cost_t^2);
8'b10011110: ans<= !(num_t^4) & !(cost_t^3);
8'b10011101: ans<= !(num_t^3) & !(cost_t^2);
8'b10011011: ans<= !(num_t^3) & !(cost_t^2);
8'b10010111: ans<= !(num_t^4) & !(cost_t^3);
8'b10001111: ans<= !(num_t^2) & !(cost_t^2);
8'b01111100: ans<= !(num_t^3) & !(cost_t^2);
8'b01111010: ans<= !(num_t^3) & !(cost_t^2);
8'b01111001: ans<= !(num_t^4) & !(cost_t^3);
8'b01110110: ans<= !(num_t^3) & !(cost_t^2);
8'b01110101: ans<= !(num_t^2) & !(cost_t^2);
8'b01110011: ans<= !(num_t^2) & !(cost_t^2);
8'b01101110: ans<= !(num_t^3) & !(cost_t^2);
8'b01101101: ans<= !(num_t^4) & !(cost_t^3);
8'b01101011: ans<= !(num_t^4) & !(cost_t^3);
8'b01100111: ans<= !(num_t^3) & !(cost_t^2);
8'b01011110: ans<= !(num_t^3) & !(cost_t^2);
8'b01011101: ans<= !(num_t^2) & !(cost_t^2);
8'b01011011: ans<= !(num_t^3) & !(cost_t^2);
8'b01010111: ans<= !(num_t^2) & !(cost_t^2);
8'b01001111: ans<= !(num_t^2) & !(cost_t^2);
8'b00111110: ans<= !(num_t^3) & !(cost_t^2);
8'b00111101: ans<= !(num_t^3) & !(cost_t^2);
8'b00111011: ans<= !(num_t^2) & !(cost_t^2);
8'b00110111: ans<= !(num_t^2) & !(cost_t^2);
8'b00101111: ans<= !(num_t^2) & !(cost_t^2);
8'b00011111: ans<= !(num_t^2) & !(cost_t^2);
8'b11111100: ans<= !(num_t^2) & !(cost_t^1);
8'b11111010: ans<= !(num_t^2) & !(cost_t^1);
8'b11111001: ans<= !(num_t^3) & !(cost_t^2);
8'b11110110: ans<= !(num_t^3) & !(cost_t^2);
8'b11110101: ans<= !(num_t^2) & !(cost_t^1);
8'b11110011: ans<= !(num_t^2) & !(cost_t^1);
8'b11101110: ans<= !(num_t^2) & !(cost_t^1);
8'b11101101: ans<= !(num_t^3) & !(cost_t^2);
8'b11101011: ans<= !(num_t^3) & !(cost_t^2);
8'b11100111: ans<= !(num_t^3) & !(cost_t^2);
8'b11011110: ans<= !(num_t^3) & !(cost_t^2);
8'b11011101: ans<= !(num_t^2) & !(cost_t^1);
8'b11011011: ans<= !(num_t^3) & !(cost_t^2);
8'b11010111: ans<= !(num_t^3) & !(cost_t^2);
8'b11001111: ans<= !(num_t^2) & !(cost_t^1);
8'b10111110: ans<= !(num_t^3) & !(cost_t^2);
8'b10111101: ans<= !(num_t^3) & !(cost_t^2);
8'b10111011: ans<= !(num_t^2) & !(cost_t^1);
8'b10110111: ans<= !(num_t^3) & !(cost_t^2);
8'b10101111: ans<= !(num_t^2) & !(cost_t^1);
8'b10011111: ans<= !(num_t^3) & !(cost_t^2);
8'b01111110: ans<= !(num_t^3) & !(cost_t^2);
8'b01111101: ans<= !(num_t^3) & !(cost_t^2);
8'b01111011: ans<= !(num_t^3) & !(cost_t^2);
8'b01110111: ans<= !(num_t^2) & !(cost_t^1);
8'b01101111: ans<= !(num_t^3) & !(cost_t^2);
8'b01011111: ans<= !(num_t^2) & !(cost_t^1);
8'b00111111: ans<= !(num_t^2) & !(cost_t^1);
8'b11111110: ans<= !(num_t^3) & !(cost_t^1);
8'b11111101: ans<= !(num_t^3) & !(cost_t^1);
8'b11111011: ans<= !(num_t^3) & !(cost_t^1);
8'b11110111: ans<= !(num_t^3) & !(cost_t^1);
8'b11101111: ans<= !(num_t^3) & !(cost_t^1);
8'b11011111: ans<= !(num_t^3) & !(cost_t^1);
8'b10111111: ans<= !(num_t^3) & !(cost_t^1);
8'b01111111: ans<= !(num_t^3) & !(cost_t^1);
8'b11111111: ans<= !(num_t^0) & !(cost_t^0);
    endcase
    end
    
endmodule
