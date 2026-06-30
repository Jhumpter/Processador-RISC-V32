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
		11: lui
		10: tipo R/addi, slti, andi, ori, xori
6 -Escreve na memória?
7 -Fonte da ULA
	0: rs2
	1: imm
8 -Escreve no registrador?
*/

//Tipo R = 0110011 -> 00010001
//lw, lhu = 0000011 -> 10100011
//addi, slti, andi, ori, xori = 0010011 -> 00010011
//jalr = 1100111 -> 010XX0X1
//sw = 0100011 -> 0XX00110
//lui = 0110111 -> 00011011
//auipc = 0010111 -> 011XX0X1
//jal = 1101111 -> 010XX0X1
//beq, bne = 1100011 -> 0XX01000

always_comb begin
	case(opcode)
		7'b0110011:begin//tipo r 00010001
			MemRead = 0;
			RdSrc = 00;
			ALUOp = 10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
		end
		7'b0000011:begin//lw,lhu 10100011
			MemRead = 1;
			RdSrc = 01;
			ALUOp = 00;
			MemWrite = 0;
			ALUSrc = 1;
			RegWrite = 1;
		end
		7'b0010011:begin//addi,slti,andi,ori,xori 00010011
			MemRead = 0;
			RdSrc = 00;
			ALUOp = 10;
			MemWrite = 0;
			ALUSrc = 1;
			RegWrite = 1;
		end
		7'b1100111:begin//jalr 010XX0X1
			MemRead = 0;
			RdSrc = 10;
			ALUOp = 00;//XX
			MemWrite = 0;
			ALUSrc = 0;//X
			RegWrite = 1;
		end
		7'b0100011:begin//sw 0XX00110
			MemRead = 0;
			RdSrc = 00;//XX
			ALUOp = 00;
			MemWrite = 1;
			ALUSrc = 1;
			RegWrite = 0;
		end
		7'b0110111:begin//lui 00011011
			MemRead = 0;
			RdSrc = 00;
			ALUOp = 11;
			MemWrite = 0;
			ALUSrc = 1;
			RegWrite = 1;
		end
		7'b0010111:begin//auipc 011XX0X1
			MemRead = 0;
			RdSrc = 11;
			ALUOp = 00;//XX
			MemWrite = 0;
			ALUSrc = 0;//X
			RegWrite = 1;
		end
		7'b1101111:begin//jal 010XX0X1
			MemRead = 0;
			RdSrc = 10;
			ALUOp = 00;//XX
			MemWrite = 0;
			ALUSrc = 0;//X
			RegWrite = 1;
		end
		7'b1100011:begin//beq, bne 0XX01000
			MemRead = 0;
			RdSrc = 00;//XX
			ALUOp = 01;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 0;
		end
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
