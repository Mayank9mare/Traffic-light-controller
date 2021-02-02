`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:28:08 01/26/2021 
// Design Name: 
// Module Name:    Traffic_Light_Controller 
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
module Traffic_Light_Controller(
    input clk,reset,stop,
    output reg [2:0] T1,
    output reg [2:0] T2,
    output reg [2:0] T3,
    output reg [2:0] T4,
    output reg [2:0] T5,
    output reg [2:0] T6,
    output reg [2:0] T7,
    output reg [2:0] T8

    );
    parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7,s8=8;
    parameter red_time =8,yellow_time=4;
    reg[3:0] count;
    reg[3:0] ps=s0;
    always@(posedge clk or posedge reset)
         begin
             if(reset==1)
             begin
                 ps<=s0;
                 count<=0;
             end
             else
                begin
                    case(ps)
                    s0:if(count<red_time)begin
                        ps<=s0;
                        count<=count+1;
                        end
                        else begin
                            ps<=s1;
                            count<=0;
                        end
                    s1:if(count<yellow_time)begin
                        ps<=s1;
                        count<=count+1;
                        end
                        else begin
                            ps<=s2;
                            count<=0;
                        end
                    s2:if(count<red_time)begin
                        ps<=s2;
                        count<=count+1;
                        end
                        else begin
                            ps<=s3;
                            count<=0;
                        end
                    s3:if(count<yellow_time)begin
                        ps<=s3;
                        count<=count+1;
                        end
                        else begin
                            ps<=s4;
                            count<=0;
                        end
                    s4:if(count<red_time)begin
                        ps<=s4;
                        count<=count+1;
                        end
                        else begin
                            ps<=s5;
                            count<=0;
                        end
                    s5:if(count<yellow_time)begin
                        ps<=s5;
                        count<=count+1;
                        end
                        else begin
                            ps<=s6;
                            count<=0;
                        end
                    s6:if(count<red_time)begin
                        ps<=s6;
                        count<=count+1;
                        end
                        else begin
                            ps<=s7;
                            count<=0;
                        end
                    s7:if(count<yellow_time)begin
                        ps<=s7;
                        count<=count+1;
                        end
                        else begin
                            ps<=s0;
                            count<=0;
                        end
                    default: ps<=s0;
                    endcase                       



                 
                end
         end
			always@(posedge stop)
			begin
			ps<=s8;
			end
    always@(ps)
    begin
        case(ps)

        s0:begin
            T1=3'b000;
            T2=3'b000;
            T3=3'b000;
            T4=3'b100;
            T5=3'b000;
            T6=3'b000;
            T7=3'b000;
            T8=3'b100;
            
        end
        s1:begin
            T1=3'b000;
            T2=3'b000;
            T3=3'b000;
            T4=3'b010;
            T5=3'b000;
            T6=3'b000;
            T7=3'b000;
            T8=3'b010;
            
        end
        s2:begin
            T1=3'b000;
            T2=3'b000;
            T3=3'b100;
            T4=3'b000;
            T5=3'b000;
            T6=3'b000;
            T7=3'b100;
            T8=3'b000;
        end
        s3:begin
            T1=3'b000;
            T2=3'b000;
            T3=3'b010;
            T4=3'b000;
            T5=3'b000;
            T6=3'b000;
            T7=3'b010;
            T8=3'b000;
        end
        s4:begin
            T1=3'b000;
            T2=3'b100;
            T3=3'b000;
            T4=3'b000;
            T5=3'b000;
            T6=3'b100;
            T7=3'b000;
            T8=3'b000;
        end
        s5:begin
            T1=3'b000;
            T2=3'b010;
            T3=3'b000;
            T4=3'b000;
            T5=3'b000;
            T6=3'b010;
            T7=3'b000;
            T8=3'b000;
        end
        s6:begin
            T1=3'b100;
            T2=3'b000;
            T3=3'b000;
            T4=3'b000;
            T5=3'b100;
            T6=3'b000;
            T7=3'b000;
            T8=3'b000;
        end
        s7:begin
            T1=3'b010;
            T2=3'b000;
            T3=3'b000;
            T4=3'b000;
            T5=3'b010;
            T6=3'b000;
            T7=3'b000;
            T8=3'b000;
            
        end
        default:begin
            T1=3'b000;
            T2=3'b000;
            T3=3'b000;
            T4=3'b000;
            T5=3'b000;
            T6=3'b000;
            T7=3'b000;
            T8=3'b000;
            
        end

        endcase
    end






endmodule
