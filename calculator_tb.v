module calculator_tb;
  reg [3:0] a, b;
  reg [1:0] sel;
  wire [4:0] result;

  // Connect testbench to design (UUT = Unit Under Test)
  calculator uut(a, b, sel, result);

  initial begin
    $monitor("a=%b b=%b sel=%b result=%b", a, b, sel, result);

    // Test cases
    a = 4'b0101; b = 4'b0011; sel = 2'b00; #10;  // add
    sel = 2'b01; #10;                            // sub
    sel = 2'b10; #10;                            // and
    sel = 2'b11; #10;                            // or

    $finish;
  end
endmodule
