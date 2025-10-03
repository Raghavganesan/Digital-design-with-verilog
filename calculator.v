module calculator(a, b, sel, result);
  input [3:0] a, b;
  input [1:0] sel;      // 00:add, 01:sub, 10:and, 11:or
  output reg [4:0] result;

  always @(*) begin
    case(sel)
      2'b00: result = a + b;
      2'b01: result = a - b;
      2'b10: result = a & b;
      2'b11: result = a | b;
    endcase
  end
endmodule
