`timescale 1ns/1ns
module Sumador_4bits_tb();
reg [3:0]A_tb;
reg [3:0]B_tb;
reg C_tb;
wire [4:0]D_tb;
wire E_tb;



initial
begin
	$dumpfile("Sumador_4bits_tb.vcd"); //debe tener el nombre del moduloTB
	$dumpvars(0, Sumador_4bits_tb);

	A_tb = 4'b0001;     
	B_tb = 4'b0001;     
	C_tb = 1'b0;
	#100

	A_tb = 4'b0011;     
	B_tb = 4'b0011;     
	C_tb = 1'b0;
	#100
	


	A_tb = 4'b0111;     
	B_tb = 4'b0111;     
	C_tb = 1'b0;
	#100
	

    A_tb = 4'b1111;     
	B_tb = 4'b1111;     
	C_tb = 1'b1;
	#100


	$stop;

end

Sumador_4bits suma(

	//Entradas 	
	.A4(A_tb),
    .B4(B_tb),
    .Ci(C_tb),

	//Salidas
	.D4(D_tb),
    .E4(E_tb)
		);

endmodule

