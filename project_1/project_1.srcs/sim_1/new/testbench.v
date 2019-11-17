`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 21:07:01
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    reg [7:0]A;
    reg [9:0]B;
    
    wire C;
    
    BCDcheck U2(A,B,C);
    
    initial begin
    A=126;
    B=10'b0100100111;
    #100
    $display("A= %b B=%b C=%b",A,B,C);
    
    end
endmodule
