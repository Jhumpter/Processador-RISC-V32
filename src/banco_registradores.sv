module banco_registradores (
input logic clk,
input logic escreve_reg,
input logic [4:0] rs1,
input logic [4:0] rs2,
input logic [4:0] rd,
input logic [31:0] entrada_dado,
output logic [31:0] dado_saida1, 
output logic [31:0] dado_saida2
);

logic [31:0] x0;
assign x0 = 32'b0;
logic [31:0] x1;
logic [31:0] x2;
logic [31:0] x3;
logic [31:0] x4;
logic [31:0] x5;
logic [31:0] x6;
logic [31:0] x7;
logic [31:0] x8;
logic [31:0] x9;
logic [31:0] x10;
logic [31:0] x11;
logic [31:0] x12;
logic [31:0] x13;
logic [31:0] x14;
logic [31:0] x15;
logic [31:0] x16;
logic [31:0] x17;
logic [31:0] x18;
logic [31:0] x19;
logic [31:0] x20;
logic [31:0] x21;
logic [31:0] x22;
logic [31:0] x23;
logic [31:0] x24;
logic [31:0] x25;
logic [31:0] x26;
logic [31:0] x27;
logic [31:0] x28;
logic [31:0] x29;
logic [31:0] x30;
logic [31:0] x31;

//Passando dados para dado_saida1
always_comb begin
    case(rs1)
        5'b0: begin
            dado_saida1 = x0;
        end
        5'd1: begin
            dado_saida1 = x1;
        end
        5'd2: begin
            dado_saida1 = x2;
        end
        5'd3: begin
            dado_saida1 = x3;
        end
        5'd4: begin
            dado_saida1 = x4;
        end
        5'd5: begin
            dado_saida1 = x5;
        end
        5'd6: begin
            dado_saida1 = x6;
        end
        5'd7: begin
            dado_saida1 = x7;
        end
        5'd8: begin
            dado_saida1 = x8;
        end
        5'd9: begin
            dado_saida1 = x9;
        end
        5'd10: begin
            dado_saida1 = x10;
        end
        5'd11: begin
            dado_saida1 = x11;
        end
        5'd12: begin
            dado_saida1 = x12;
        end
        5'd13: begin
            dado_saida1 = x13;
        end
        5'd14: begin
            dado_saida1 = x14;
        end
        5'd15: begin
            dado_saida1 = x15;
        end
        5'd16: begin
            dado_saida1 = x16;
        end
        5'd17: begin
            dado_saida1 = x17;
        end
        5'd18: begin
            dado_saida1 = x18;
        end
        5'd19: begin
            dado_saida1 = x19;
        end
        5'd20: begin
            dado_saida1 = x20;
        end
        5'd21: begin
            dado_saida1 = x21;
        end
        5'd22: begin
            dado_saida1 = x22;
        end
        5'd23: begin
            dado_saida1 = x23;
        end
        5'd24: begin
            dado_saida1 = x24;
        end
        5'd25: begin
            dado_saida1 = x25;
        end
        5'd26: begin
            dado_saida1 = x26;
        end
        5'd27: begin
            dado_saida1 = x27;
        end
        5'd28: begin
            dado_saida1 = x28;
        end
        5'd29: begin
            dado_saida1 = x29;
        end
        5'd30: begin
            dado_saida1 = x30;
        end
        5'd31: begin
            dado_saida1 = x31;
        end
        default: begin
            dado_saida1 = 32'b0;
        end
    endcase
end

//Passando dados para dado_saida2
always_comb begin
    case(rs2)
        5'b0: begin
            dado_saida2 = x0;
        end
        5'd1: begin
            dado_saida2 = x1;
        end
        5'd2: begin
            dado_saida2 = x2;
        end
        5'd3: begin
            dado_saida2 = x3;
        end
        5'd4: begin
            dado_saida2 = x4;
        end
        5'd5: begin
            dado_saida2 = x5;
        end
        5'd6: begin
            dado_saida2 = x6;
        end
        5'd7: begin
            dado_saida2 = x7;
        end
        5'd8: begin
            dado_saida2 = x8;
        end
        5'd9: begin
            dado_saida2 = x9;
        end
        5'd10: begin
            dado_saida2 = x10;
        end
        5'd11: begin
            dado_saida2 = x11;
        end
        5'd12: begin
            dado_saida2 = x12;
        end
        5'd13: begin
            dado_saida2 = x13;
        end
        5'd14: begin
            dado_saida2 = x14;
        end
        5'd15: begin
            dado_saida2 = x15;
        end
        5'd16: begin
            dado_saida2 = x16;
        end
        5'd17: begin
            dado_saida2 = x17;
        end
        5'd18: begin
            dado_saida2 = x18;
        end
        5'd19: begin
            dado_saida2 = x19;
        end
        5'd20: begin
            dado_saida2 = x20;
        end
        5'd21: begin
            dado_saida2 = x21;
        end
        5'd22: begin
            dado_saida2 = x22;
        end
        5'd23: begin
            dado_saida2 = x23;
        end
        5'd24: begin
            dado_saida2 = x24;
        end
        5'd25: begin
            dado_saida2 = x25;
        end
        5'd26: begin
            dado_saida2 = x26;
        end
        5'd27: begin
            dado_saida2 = x27;
        end
        5'd28: begin
            dado_saida2 = x28;
        end
        5'd29: begin
            dado_saida2 = x29;
        end
        5'd30: begin
            dado_saida2 = x30;
        end
        5'd31: begin
            dado_saida2 = x31;
        end
        default: begin
            dado_saida2 = 32'b0;
        end
    endcase
end

//Escrevendo no registrador (se escreve_reg for 1)
always_ff @(posedge clk) begin
	if (escreve_reg == 1'b1)begin
		case(rd)
        5'd0: begin
        end
        5'd1: begin
            x1 <= entrada_dado;
        end
        5'd2: begin
            x2 <= entrada_dado;
        end
        5'd3: begin
            x3 <= entrada_dado;
        end
        5'd4: begin
            x4 <= entrada_dado;
        end
        5'd5: begin
            x5 <= entrada_dado;
        end
        5'd6: begin
            x6 <= entrada_dado;
        end
        5'd7: begin
            x7 <= entrada_dado;
        end
        5'd8: begin
            x8 <= entrada_dado;
        end
        5'd9: begin
            x9 <= entrada_dado;
        end
        5'd10: begin
            x10 <= entrada_dado;
        end
        5'd11: begin
            x11 <= entrada_dado;
        end
        5'd12: begin
            x12 <= entrada_dado;
        end
        5'd13: begin
            x13 <= entrada_dado;
        end
        5'd14: begin
            x14 <= entrada_dado;
        end
        5'd15: begin
            x15 <= entrada_dado;
        end
        5'd16: begin
            x16 <= entrada_dado;
        end
        5'd17: begin
            x17 <= entrada_dado;
        end
        5'd18: begin
            x18 <= entrada_dado;
        end
        5'd19: begin
            x19 <= entrada_dado;
        end
        5'd20: begin
            x20 <= entrada_dado;
        end
        5'd21: begin
            x21 <= entrada_dado;
        end
        5'd22: begin
            x22 <= entrada_dado;
        end
        5'd23: begin
            x23 <= entrada_dado;
        end
        5'd24: begin
            x24 <= entrada_dado;
        end
        5'd25: begin
            x25 <= entrada_dado;
        end
        5'd26: begin
            x26 <= entrada_dado;
        end
        5'd27: begin
            x27 <= entrada_dado;
        end
        5'd28: begin
            x28 <= entrada_dado;
        end
        5'd29: begin
            x29 <= entrada_dado;
        end
        5'd30: begin
            x30 <= entrada_dado;
        end
        5'd31: begin
            x31 <= entrada_dado;
        end
        default: begin
        end
		endcase
	 end
end


endmodule