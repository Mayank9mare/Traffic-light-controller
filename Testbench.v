`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:06:38 01/27/2021 
// Design Name: 
// Module Name:    Testbench 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Testbench();
reg clk,reset;
reg stop=0;
wire [2:0]T1;
wire [2:0]T2;
wire [2:0]T3;
wire [2:0]T4;
wire [2:0]T5;
wire [2:0]T6;
wire [2:0]T7;
wire [2:0]T8;
Traffic_Light_Controller Tf(.clk(clk),.reset(reset),.stop(stop),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.T5(T5),.T6(T6),.T7(T7),.T8(T8));
initial begin
    clk=1'b0;
    forever #5 clk=~clk;


end

initial begin
    reset=1;
    #10;
    reset=0;
    #250;
    reset=1;
    #250;
    reset=0;
    #500;
    $finish;

end
endmodule
