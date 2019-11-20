`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 20:24:58
// Design Name: 
// Module Name: equalTo
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


module equalTo(
    input [3:0]A,
    input [3:0]B,
    output C
    );
    
    assign C = !(A[0]^B[0]) & !(A[1]^B[1]) & !(A[2]^B[2]) & !(A[3]^B[3]);
    
endmodule
