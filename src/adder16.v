`timescale 1ns/1ps

module adder16(a,b,sum);

input [15:0] a,b;
output [15:0] sum;
wire [15:0] sum;

assign sum = a + b;

endmodule
