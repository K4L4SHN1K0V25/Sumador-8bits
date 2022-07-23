`timescale 1ns/1ns
module Sumador_8bits(
    input [7:0]A8,
    input [7:0]B8,
    input Carry_i,
    output [8:0]D8 
    
    );

wire c_1; 
assign c_1=D8[4];

Sumador_4bits S4_1(
    .A4(A8[3:0]),
    .B4(B8[3:0]),
    .Ci(Carry_i),
    .D4(D8[3:0])
    
    );

Sumador_4bits S4_2(
    .A4(A8[7:4]),
    .B4(B8[7:4]),
    .Ci(c_1),
    .D4(D8[8:4])
    
    );





endmodule
