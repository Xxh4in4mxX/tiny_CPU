module Flopenr #(parameter WIDTH = 8)
(
    input       clk, reset, en,
    input       [WIDTH-1:0] d,
    output      [WIDTH-1:0] q
);
    always @(posedge clk or reset) begin
        if (reset) begin
            q <= {WIDTH{1'b0}};
        end else begin
            if (en) q <= d;
            else q <= d;
        end
    end
endmodule