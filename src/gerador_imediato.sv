module gerador_imediato(
input logic [31:0] instruction,
output logic [31:0] imediato
);

//assign instruction = 32'b10101010101000000111000001100111; //Imediato esperado : 101010101010
//assign instruction = 32'b11111110100001001010111110100011; //Imediato esperado : 111111111111
//assign instruction = 32'b11111111100111111111000011101111; //Imediato esperado : 111111111111111111000
//assign instruction = 32'b11111110011000101000101011100011; //Imediato esperado : 1111111110100
//assign instruction = 32'b00010010001101000101001010110111; //Imediato esperado : 00010010001101000101000000000000

always_comb begin
	case (instruction[6:0])
		//Tipo I
		7'b0000011,7'b0010011,7'b1100111: begin
			imediato = instruction[31:20];
		end
		//Tipo S
		7'b0100011:begin
			imediato = (instruction[31:25]<<5) + instruction[11:7];
		end
		//Tipo J
		7'b1101111:begin
			imediato = ((instruction[31]<<19) + instruction[30:21] + (instruction[20]<<10) + (instruction[19:12]<<11))<<1;
		end
		//Tipo B
		7'b1100011:begin
			imediato = ((instruction[31]<<11) + (instruction[30:25]<<4) + instruction[11:8] + (instruction[7]<<10))<<1;
		end
		//Tipo U
		7'b0110111,7'b0010111:begin
			imediato = instruction[31:12]<<12;
		end
		default: begin
			imediato = 32'b0;
		end
	endcase
end

endmodule