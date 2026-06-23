module controle(
input logic [6:0] opcode,
output logic MemRead,
output logic [1:0] RdSrc,
output logic [1:0] ALUOp,
output logic MemWrite,
output logic ALUSrc,
output logic RegWrite
);
/*
1- Lê da memória?
2,3 -O que vai guardar em rd?
		00: saída da ula
		01: dado da memória
		10: PC+4
		11: PC+imm
4,5 -Operação da ULA
		00: sw, lw
		01: beq, bne
		11: lhu
		10: tipo R
6 -Escreve na memória?
7 -Fonte da ULA
	0: rs2
	1: imm
8 -Escreve no registrador?
*/

//Tipo R = 0110011 -> 
//lw, lhu = 0000011 -> 
//addi, slti, andi, ori, xori = 0010011 -> 
//jalr = 1100111 -> 
//sw = 0100011 -> 
//lui = 0110111 -> 
//auipc = 0010111 -> 
//jal = 1101111 -> 
//beq, bne = 1100011 -> 

always_comb begin
	case(opcode)
		default: begin
			MemRead = 0;
			RdSrc = 00;
			ALUOp = 00;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 0;
	  end
  endcase
end

endmodule
