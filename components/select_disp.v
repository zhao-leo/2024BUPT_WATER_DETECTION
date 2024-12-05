module select_disp (    //选位信号
    input wire clk,       // Input clock
    input wire rst_n,     // Active low reset
    output reg [2:0] out  // 2-bit output
);

initial begin
    out = 3'b011;    // Initialize output to 1
end

always @(posedge clk) begin
    if (!rst_n) begin
        out <= 3'b011;      // Reset output to 0
    end else begin
        out <= {out[1:0], out[2]}; // Shift output left by 1
    end
end

endmodule