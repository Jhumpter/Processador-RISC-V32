module tamanho_mem(
input logic [2:0] funct3,
output [1:0] tamanho
);

always_comb begin
	case(funct3)
		3'b000:
			tamanho = 2'b00;//byte
		3'b001:
			tamanho = 2'b01;//halfword
		3'b010:
			tamanho = 2'b10;//word
		default:
			tamanho = 2'b11;
	endcase
end

endmodule	
		