module pc (
input logic clk,
input logic [31:0] prox_pc,
output logic [31:0] pc_atual
);

logic [31:0] pc = 32'b0;

always_comb begin
pc_atual = pc;
end

always_ff @(posedge clk) begin
pc <= prox_pc;
end

endmodule

