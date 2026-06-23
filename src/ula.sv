module ula (
input logic [31:0] entrada_1,
input logic [31:0] entrada_2,
input logic [3:0] controle_ula,
output logic zero,
output logic [31:0] resultado
);

always_comb begin
	case (controle_ula)
		4'b0000:
			resultado = entrada_1 & entrada_2;
		4'b0001:
			resultado = entrada_1 | entrada_2;
		4'b0010:
			resultado = entrada_1 + entrada_2;
		4'b0110:
			resultado = entrada_1 - entrada_2;
		4'b0111:
			resultado = (entrada_1 < entrada_2? 32'b1 : 32'b0);
		4'b1100:
			resultado = entrada_1 << entrada_2;
		4'b0011:
			resultado = entrada_1 >> entrada_2;
		default:
			resultado = 32'b0;
	endcase
	zero = (resultado == 32'b0);
end

endmodule
			