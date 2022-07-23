`timescale 1ns/1ns
module Medio_sumador(
    input B1,
    input B2,
    output S1, 
    output Ca1
    );

assign S1=B1 ^ B2;
assign Ca1=B1 & B2;

endmodule