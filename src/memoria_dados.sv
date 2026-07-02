module memoria_dados (
input logic clk,
input logic MemRead,
input logic MemWrite,
input logic [1:0] lhu,
input logic [31:0] adress,
input logic [31:0] entrada,
output logic [31:0] saida
);
(* ram_init_file = "dia2nivel3_data.mif" *)
logic [31:0] memoria [0:128];
//Escrevendo na memoria de dados (se MemWrite for 1)
always_ff @(posedge clk) begin
	if (MemWrite == 1'b1)begin
		memoria[adress[31:2]] = entrada;
	end
end
logic [31:0] dado;
always_comb begin
	if (MemRead == 1'b1) begin
		dado = memoria[adress[31:2]];
		if (lhu == 2'b1) begin
			saida = {16'b0, dado[15:0]};
		end else begin
			saida = dado[31:0];
		end
	end else begin
			saida = 32'b0;
			dado = 32'b0;
	end 
end

endmodule
