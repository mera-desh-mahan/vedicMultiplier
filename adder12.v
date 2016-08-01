`timescale 1ns/1ps
module adder12(a,b,sum);

input [11:0] a,b;
output [11:0] sum;
wire [11:0] sum;

assign sum = a + b;

endmodule

