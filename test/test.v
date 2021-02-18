`timescale 1ns/1ps

module test();
reg [15:0] a,b;
wire [31:0] result;



vedic_16x16 V0(a, b, result);
initial begin
$dumpfile("vedicmultiplier.vcd");
$dumpvars(0, test);
end

initial begin
    #10 a= 16'b1111111111111111; b= 16'b0000000011111111;
    #20 a= 16'd11; b= 16'd11;
    #20 a= 16'd8; b= 16'd9;
    #20 a= 16'd7; b= 16'd7;
    
    #50 $finish; 
end





endmodule
