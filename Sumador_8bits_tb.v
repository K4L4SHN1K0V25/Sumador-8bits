`timescale 1ns/1ns
module Sumador_8bits_tb();
reg [7:0]A8_tb;
reg [7:0]B8_tb;
reg C8_tb;
wire [8:0]D8_tb;



initial
begin
	$dumpfile("Sumador_8bits_tb.vcd"); //debe tener el nombre del moduloTB
	$dumpvars(0, Sumador_8bits_tb);

	A8_tb = 8'b00001111;    //31
	B8_tb = 8'b00001111;    //31
	C8_tb = 1'b0;
	#100

	A8_tb = 8'b00110011;     
	B8_tb = 8'b00110011;     
	C8_tb = 1'b0;
	#100
	


	A8_tb = 8'b01110111;     
	B8_tb = 8'b01110111;     
	C8_tb = 1'b0;
	#100
	

    A8_tb = 8'b11111111;     
	B8_tb = 8'b11111111;     
	C8_tb = 1'b0;
    #100
	


	$stop;

end

Sumador_8bits suma8(

	//Entradas 	
	.A8(A8_tb),
    .B8(B8_tb),
    .Carry_i(C8_tb),

	//Salidas
	.D8(D8_tb)
		);

endmodule


