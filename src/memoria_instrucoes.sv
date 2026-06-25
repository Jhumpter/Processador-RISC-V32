module memoria_instrucoes (
    input  logic [31:0] endereco,
    output logic [31:0] instrucao
);

    // 16384 palavras de 32 bits (igual ao DEPTH do MIF)
    (* ram_init_file = "dia1nivel1_text.mif" *)
    logic [31:0] mem [0:16383];

    // acesso direto por palavra (MIF já está nesse formato)
    assign instrucao = mem[endereco[15:2]];

endmodule