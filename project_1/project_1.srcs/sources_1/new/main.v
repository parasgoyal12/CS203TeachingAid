`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 21:17:37
// Design Name: 
// Module Name: main
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


module main(
    input [13:0]sw,
    input [1:0]fx,
    input clk,
    output reg [14:0] led,
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
    reg dummybin,dummyreset;
    wire dummyoutp;
    reg [9:0]dummybcdin;
    wire [7:0]dummyent;
    bcdmain U1(new_clk,dummybin,dummybcdin,dummyreset,dummyoutp,dummyent);
    
    reg [3:0] dummyA, dummyB;
    reg dummylock, dummyin;
    wire [3:0] dummyparin;
    wire dummyans;
    sequence U2(dummyA, dummyB, dummylock, new_clk,dummyin, dummyparin, dummyans);
    
    always @(posedge clk) begin
    case(fx)
    2'b00:led[14:0]<=32767;
    2'b01:begin
        led[14:0]<=0;
        dummybin <= sw[12];
        dummybcdin <= sw[9:0];
        dummyreset<= sw[13];
        led[13]<= dummyoutp;
        led[7:0] <= dummyent;
    end
    
    2'b10:begin
        led[14:0]<=0;
        dummyA <= sw[3:0];
        dummyB <= sw[7:4];
        dummylock <= sw[13];
        dummyin <= sw[12];
        led[3:0] <= dummyparin;
        led[13] <= dummyans;
    end
    
    endcase
    end
endmodule
