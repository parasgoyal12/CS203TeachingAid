`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 20:59:49
// Design Name: 
// Module Name: BCDcheck
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


module BCDcheck(
    input [7:0]A,
    input [9:0]B,
    output C
    );
    
    wire [9:0]D;
    BCD U1(A,D);
    
    assign C= (!(D[0]^B[0]))&(!(D[1]^B[1]))&(!(D[2]^B[2]))&(!(D[3]^B[3]))&(!(D[4]^B[4]))&(!(D[5]^B[5]))&(!(D[6]^B[6]))&(!(D[7]^B[7]))&(!(D[8]^B[8]))&(!(D[9]^B[9]));

endmodule