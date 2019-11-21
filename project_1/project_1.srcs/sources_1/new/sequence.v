`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 20:28:13
// Design Name: 
// Module Name: sequence
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


module sequence(
    input [3:0]A,
    input [3:0]B,
    input lock,
    input clk,
    input serialin,
    output reg [3:0]parallelin,
    output wire ans
//    input new_clk
//    output reg new_clk
    );
//    reg ans2A, ans2B;
    
//    reg [32:0]div=0;
//    always @(posedge clk)begin
//        div<=div+1;
//        if (div == 200000000)
//        begin 
//            div <=0;
//            new_clk <=~new_clk;
//        end
//    end
//    reg [3:0] dummyA,dummyB;
assign ans=(!(A^parallelin))| (!(B^parallelin));
    initial begin
     parallelin <=0;
//    dummyA=0;
//    dummyB=0;
//   assign ans=0;
//   ans2A =0;
//   ans2B = 0;
    
    end
//    wire out1,out2;
//    equalTo u1(A,parallelin,out1);
//    equalTo u2(B,parallelin,out2);
    always @(posedge clk) begin
    case(lock) 
        1'b0: begin
        parallelin=0;
//        ans=0;
        end
        1'b1: begin
               parallelin <= parallelin<<1;
               parallelin[0] <= serialin;
               
//                    if(ans2A && serialin == A[0]) ans<=1;
//                    else if(ans2B && serialin == B[0]) ans<= 1;
//                    else ans<= 0;
                              
//               ans<= (!(A^parallelin))| (!(B^parallelin));
//                ans <= (A==parallelin) | (B==parallelin);
//                if(A[3:1]==parallelin[2:0]) begin
//                    ans2A <= 1;
//                end
//                else ans2A<=0;
                
//                if(B[3:1]==parallelin[2:0]) ans2B<=1;
//                else ans2B<=0;
                
        end
    endcase
    end
//    always @(posedge clk)begin
//    case(lock)
//    1'b0: ans<= 0;
//    1'b1: ans
//    endcase
//    end
//    always @(posedge new_clk)begin
//    ans<= (!(A^parallelin))| (!(B^parallelin));
//    end
endmodule
