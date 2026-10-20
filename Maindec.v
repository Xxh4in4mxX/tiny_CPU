module Maindec (
    input   [6:0]       op,
    output  [1:0]       ResultSrc,
    output              MemWrite,
    output              Branch, ALUSrc,
    output              RegWrite, Jump,
    output  [1:0]       ImmSrc,
    output  [1:0]       ALUOp
);
    reg     [10:0]      controls;
    assign  {RegWrite, ImmSrc, ALUSrc, MemWrite,
    ResultSrc, Branch, ALUOp, Jump} = controls;