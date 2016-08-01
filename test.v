`timescale 1ns/1ps

module test();
reg [7:0] a,b;
wire [15:0] result;



vedic_8x8 V0(a, b, result);
initial begin
$dumpfile("vedicmultiplier.vcd");
$dumpvars(0, test);
end

initial begin
    #10 a= 8'b11111111; b= 8'b11111111;
    #20 a= 8'd11; b= 8'd11;
    #20 a= 8'd8; b= 8'd9;
    #20 a= 8'd7; b= 8'd7;
    
    #50 $finish; 
end





endmodule
