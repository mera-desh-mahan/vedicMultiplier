`timescale 1ns/1ps
module adder6(a,b,sum);

input [5:0] a,b;
output [5:0] sum;
wire [5:0] sum;

assign sum = a + b;

endmodule
