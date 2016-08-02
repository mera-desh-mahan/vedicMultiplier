`timescale 1ns/1ps

module adder24(a,b,sum);

input [23:0] a,b;
output [23:0] sum;
wire [23:0] sum;

assign sum = a + b;

endmodule
