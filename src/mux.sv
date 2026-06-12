module mux(
input logic [31:0] entrada_0,
input logic [31:0] entrada_1,
input logic seletor,
output logic [31:0] saida
);

always_comb begin
	case(seletor)
		1'b0:begin
			saida = entrada_0;
		end
		1'b1:begin
			saida = entrada_1;
		end
	endcase
end

endmodule