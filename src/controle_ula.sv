module controle_ula(
input logic [6:0] funct7,
input logic [2:0] funct3,
input logic [1:0] alu_op,
output logic [3:0] controle_ula
);

always_comb begin
	case(alu_op)
		2'b00://sw, lw
			controle_ula = 4'b0010;
		2'b01://beq
			controle_ula = 4'b0110;
		2'b11://lui
			controle_ula = 4'b1110;
		2'b10:begin//tipo R
			case(funct7)
				7'b0100000:
					controle_ula = 4'b0110;
				7'b0000000:begin
					case (funct3)
						3'b000://add
							controle_ula = 4'b0010;
						3'b111://and
							controle_ula = 4'b0000;
						3'b110://or
							controle_ula = 4'b0001;
						3'b010://slt
							controle_ula = 4'b0111;
						3'b001://sll
							controle_ula = 4'b1100;
						3'b101://srl
							controle_ula = 4'b0011;
						default:
							controle_ula = 4'b1111;
					endcase
				end
				default:
					controle_ula = 4'b1111;
			endcase
		end
		default:
			controle_ula = 4'b1111;
	endcase
end

endmodule
