module PC #(
    parameter DWIDTH = 32;
)(
    input clk,
    input [DWIDTH-1:0] ins,
    output reg [DWIDTH-1:0] next_ins
);
    always @(posedge clk) begin
        next_ins <= ins + 32'd4;
    end
endmodule