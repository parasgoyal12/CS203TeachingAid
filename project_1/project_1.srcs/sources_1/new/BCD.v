`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 20:43:25
// Design Name: 
// Module Name: BCD
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


module BCD(
    input [7:0]A,
    output [9:0]B
 );
wire [3:0] c1,c2,c3,c4,c5,c6,c7;
wire [3:0] d1,d2,d3,d4,d5,d6,d7;   


assign d1 = {1'b0,A[7:5]};
assign d2 = {c1[2:0],A[4]};
assign d3 = {c2[2:0],A[3]};
assign d4 = {c3[2:0],A[2]};
assign d5 = {c4[2:0],A[1]};
assign d6 = {1'b0,c1[3],c2[3],c3[3]};
assign d7 = {c6[2:0],c4[3]};
adder m1(d1,c1);
adder m2(d2,c2);
adder m3(d3,c3);
adder m4(d4,c4);
adder m5(d5,c5);
adder m6(d6,c6);
adder m7(d7,c7);
assign B[3:0] = {c5[2:0],A[0]};
assign B[7:4] = {c7[2:0],c5[3]};
assign B[9:8] = {c6[3],c7[3]};
endmodule
