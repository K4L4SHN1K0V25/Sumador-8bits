`timescale 1ns/1ns
module Sumador_completo_tb();
reg A_tb;
reg B_tb;
reg C_tb;
wire D_tb;
wire E_tb;



initial
begin
	$dumpfile("Sumador_completo_tb.vcd"); //debe tener el nombre del moduloTB
	$dumpvars(0, Sumador_completo_tb);

	A_tb = 1'b0;
	B_tb = 1'b0;
	C_tb = 1'b1;
	#100

	A_tb = 1'b1;
	B_tb = 1'b0;
	C_tb = 1'b1;
	#100


	A_tb = 1'b1;
	B_tb = 1'b1;
	C_tb = 1'b0;
	#100
	$stop;

end

Sumador_completo suma(

	//Entradas 	
	.A(A_tb),
    .B(B_tb),
    .C(C_tb),

	//Salidas
	.D(D_tb),
    .E(E_tb)
		);

endmodule
