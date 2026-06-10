module gerador_imediato(
output logic [31:0] imediato
);

logic [31:0] instruction;
assign instruction = 32'b10101010101000000111000001100111;

always_comb begin
	case (instruction[6:0])
		//Tipo I
		7'b0000011,7'b0010011,7'b1100111: begin
			imediato = instruction[31:20];
		end
		default: begin
			imediato = 32'b0;
		end
	endcase
end

endmodule