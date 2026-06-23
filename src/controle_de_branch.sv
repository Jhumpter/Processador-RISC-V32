module controle_de_branch(
input logic [6:0] opcode,
input logic [2:0] funct3,
input logic [31:0] imediato,
input logic [31:0] pc,
input logic [31:0] rs1,
input logic zero,
output logic branch,
output logic [31:0] endereco_destino
);



always_comb begin
	branch = 0;
   endereco_destino = pc + imediato;
	case(opcode)
		7'b1101111://jal
			branch = 1;
		7'b1100111:begin//jalr
			branch = 1;
			endereco_destino = rs1 + imediato;
		end
		7'b1100011:begin//beq e bne
			case(funct3)
				3'b000:begin//beq
					if (zero == 1'b1)
						branch = 1;
				end
				3'b001:begin//bne
					if (zero == 1'b0)
						branch = 1;
				end
				default:
					branch = 0;
			endcase
		end
		default: 
         branch = 0;
  endcase
end

endmodule