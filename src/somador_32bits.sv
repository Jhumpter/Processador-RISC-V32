module somador_32bits(
input logic [31:0] entrada1,
input logic [31:0] entrada2,
output logic [31:0] saida
);

always_comb begin
	saida = entrada1 + entrada2;
end

endmodule