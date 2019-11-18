`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 21:19:08
// Design Name: 
// Module Name: bcdmain
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


module bcdmain(
        input clk, inp,
        input [9:0]bcdin,
        input reset,
        output outp,
        output reg [7:0] ent,
        output reg new_clk
    );
    
//    reg [7:0] ent;
    
    reg [7:0]bin;
    reg[9:0]dummybcd;
    BCDcheck U1(ent,dummybcd,outp);
    reg [9:0]bcd;
    reg [7:0]ctr;
    reg [1:0]state;
    
    
    
    initial begin
        ctr <= 0;
        bin <= 0;
        dummybcd <=0;
        state <=0;
        new_clk=0;
        
    end
    
    always @(posedge new_clk)
    begin
        if(reset==0)
        begin
            case( state )
            2'b00:
            begin
                bin <= bin<<1;
                bin[0] <= inp;
                ctr <= ctr+1;
                if(ctr==10)begin
                    ent <= bin;
                    state <= 2'b01;
                    
                end
            end
    
           2'b01:
           begin
                 dummybcd<=bcdin;
                 
           end
    
           
           endcase
        end
        
        else begin
            ctr <= 0;
            bin <= 0;
            state <=0;
            ent <= 0;
            dummybcd <=0;
//            new_clk=0;
        end        
    end
    
    reg [32:0]div=0;
    always @(posedge clk)begin
        div<=div+1;
        if (div == 200000000)
        begin 
            div <=0;
            new_clk <=~new_clk;
        end
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2019 09:26:56
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


//module sequ(
//    input clk,
//    input seq,
////    input rst,
//    output reg new_clk,
//    output reg outp
//    );
    
//    reg [32:0]div=0;
//    reg [1:0]state;
////    reg new_clk;
////        assign new_clk=0;
//    initial begin
//    div=0;
//     new_clk=0;
//     state=0;
//    end
//    always @(posedge clk)begin
//    div<=div+1;
//    if (div == 200000000)
//    begin 
//    div <=0;
//    new_clk <=~new_clk;
//    end
//    end
    
//    always @(posedge new_clk ) begin
//    begin
//       case( state )
//       2'b00:
//       begin
//            if( seq ) state <= 2'b01;
//            else state <= 2'b00;
//       end

//       2'b01:
//       begin
//            if( seq ) state <= 2'b01;
//            else state <= 2'b10;
//       end

//       2'b10:
//       begin
//            if( seq ) state <= 2'b11;
//            else state <= 2'b00;
//       end

//       2'b11:
//       begin
//            if( seq ) state <= 2'b01;
//            else state <= 2'b10;
//       end
//       endcase
//   end
//    end
//    always @(posedge new_clk )begin
////    if( rst )
////       outp <= 0;
//     if( state == 2'b11 )
//       outp <= 1;
//    else outp <= 0;
//    end
//endmodule

//module sisomod(clk,clear,si,so);

//input clk,si,clear;

//output so;

//reg so;

//reg [3:0] tmp;

//always @(posedge clk )

//begin

//if (clear)

//tmp <= 4'b0000;

//else

//tmp <= tmp << 1;

//tmp[0] <= si;

//so = tmp[3];

//end

//endmodule

//module fsm( clk, rst, inp, outp);

//   input clk, rst, inp;
//   output outp;

//   reg [1:0] state;
//   reg outp;

//   always @( posedge clk, posedge rst )
//   begin
//   if( rst )
//       state <= 2'b00;
//   else
//   begin
//       case( state )
//       2'b00:
//       begin
//            if( inp ) state <= 2'b01;
//            else state <= 2'b10;
//       end

//       2'b01:
//       begin
//            if( inp ) state <= 2'b11;
//            else state <= 2'b10;
//       end

//       2'b10:
//       begin
//            if( inp ) state <= 2'b01;
//            else state <= 2'b11;
//       end

//       2'b11:
//       begin
//            if( inp ) state <= 2'b01;
//            else state <= 2'b10;
//       end
//       endcase
//   end
//end


//always @(posedge clk, posedge rst)
//begin
//    if( rst )
//       outp <= 0;
//    else if( state == 2'b11 )
//       outp <= 1;
//    else outp <= 0;

//end

//endmodule
