module Controller (
    input   [6:0]       op,
    input   [2:0]       funct3,
    input               funct7b5,
    input               Zero,
    output  [1:0]       ResultSrc,
    output              MemWrite,
    output              PCSrc, ALUSrc,
    output              RegWrite, Jump,
    output  [1:0]       ImmSrc,
    output  [2:0]       ALUControl
);
    reg [1:0]   ALUOp;
    reg         Branch;

    Maindec md();
    Aludec  ad();

    assign PCSrc = Branch & Zero | Jump;
endmodule