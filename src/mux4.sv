module mux4(
input logic [31:0] entrada_0,
input logic [31:0] entrada_1,
input logic [31:0] entrada_2,
input logic [31:0] entrada_3,
input logic [1:0] seletor,
output logic [31:0] saida
);

always_comb begin
	case(seletor)
		2'b00:
			saida = entrada_0;
		2'b01:
			saida = entrada_1;
		2'b10:
			saida = entrada_2;
		2'b11:
			saida = entrada_3;
	endcase
end

endmodule