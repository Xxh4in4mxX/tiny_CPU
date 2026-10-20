module Alu #(
    parameter DWIDTH = 32,
    parameter SELWIDTH = 2
)(
    input [DWIDTH-1:0]      a,
    input [DWIDTH-1:0]      b,
    input [SELWIDTH-1:0]    sel,
    output [DWIDTH-1:0]     out
);
    always @(*) begin
        case (sel)
        2'd0:out = a + b;
        2'd1:out = a - b;
        2'd2:out = a >> b;
        2'd3:out = a << b;
    end
endmodule