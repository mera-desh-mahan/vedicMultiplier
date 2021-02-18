`timescale 1ns/1ps
module adder8(a,b,sum);

input [7:0] a,b;
output [7:0] sum;
wire [7:0] sum;

assign sum = a + b;

endmodule
