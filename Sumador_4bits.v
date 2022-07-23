`timescale 1ns/1ns
module Sumador_4bits(
    input [3:0]A4,
    input [3:0]B4,
    input Ci,
    output [4:0]D4
    
    );
wire c1, c2, c3, c4;


Sumador_completo Fa1(
    .A(A4[0]),
    .B(B4[0]),
    .C(Ci),
    .D(D4[0]),
    .E(c1)
    );

Sumador_completo Fa2(
    .A(A4[1]),
    .B(B4[1]),
    .C(c1),
    .D(D4[1]),
    .E(c2)
    );

Sumador_completo Fa3(
    .A(A4[2]),
    .B(B4[2]),
    .C(c2),
    .D(D4[2]),
    .E(c3)
    );

Sumador_completo Fa4(
    
    .A(A4[3]),
    .B(B4[3]),
    .C(c3),
    .D(D4[3]),
    .E(D4[4])
    );



endmodule
