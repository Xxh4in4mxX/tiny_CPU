module top(
    input               clk, reset,
    output  reg [31:0]  PC,
    input   [31:0]      Instr,
    output
);