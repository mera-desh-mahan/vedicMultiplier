`timescale 1ns/1ps

module vedic_4x4(a, b, result);
    input  [3:0] a,b;
    output [7:0] result;
    wire [7:0] result;

wire w1, w2, w3, w4, w5;
wire [3:0] temp1;
wire [5:0] temp2;
wire [5:0] temp3;
wire [5:0] temp4;
wire [3:0] q0;
wire [3:0] q1;
wire [3:0] q2;
wire [3:0] q3;
wire [3:0] q4;
wire [5:0] q5;
wire [5:0] q6;

vedic_2x2 V1(a[1:0], b[1:0], q0[3:0]);
vedic_2x2 V2(a[3:2], b[1:0], q1[3:0]);
vedic_2x2 V3(a[1:0], b[3:2], q2[3:0]);
vedic_2x2 V4(a[3:2], b[3:2], q3[3:0]);

assign temp1= {2'b00, q0[3:2]};
adder4 A0(q1[3:0], temp1, q4);

assign temp2= {2'b00, q2[3:0]};
assign temp3= {q3[3:0], 2'b00};
adder6 A1(temp2, temp3, q5);
assign temp4= {2'b00, q4[3:0]};

adder6 A2(temp4, q5, q6);


assign result[1:0] = q0[1:0];
assign result[7:2] = q6[5:0];
    
endmodule
