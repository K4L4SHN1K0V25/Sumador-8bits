`timescale 1ns/1ns
module Sumador_completo(
    input A,
    input B,
    input C,
    output D, 
    output E
    );

wire c1, c2, c3;

assign E=c2|c3;

Medio_sumador HA1(
    .B1(A),
    .B2(B),
    .S1(c1),
    .Ca1(c2)
    );

Medio_sumador HA2(
    .B1(c1),
    .B2(C),
    .S1(D),
    .Ca1(c3)
    );


endmodule
