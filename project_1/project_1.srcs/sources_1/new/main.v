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
    reg new_clk2;
    reg [32:0]div2=0;
    always @(posedge clk)begin
        div2<=div2+1;
        if (div2 == 50000000)
        begin 
            div2 <=0;
            new_clk2 <=~new_clk2;
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
    
    reg[7:0] dummyAQM;
    reg [3:0] dummynum_t;
    reg[1:0]dummycost_t;
    wire ans;
    
    qm U3(dummyAQM,dummynum_t,dummycost_t,new_clk,ans);
    always @(posedge clk) begin
    case(fx)
    2'b00:begin
//        led[0] <= !(sw[0] & sw[1]);
//        led[2] <= !(sw[2] | sw[3]);
        if(new_clk2) led[14:0] <= 15'b010101010101010;
        else led[14:0] <= 15'b101010101010101;
    end
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
    2'b11:begin
        led[14:0] <=0;
        dummyAQM <= sw[7:0];
        dummynum_t <= sw[11:8];
        dummycost_t <= sw[13:12];
        
        led[13]<=ans;
    end
    endcase
    end
endmodule
