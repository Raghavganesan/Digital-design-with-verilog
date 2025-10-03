`timescale 1ns/1ps

module two_one_mux_tb;
  reg  i0, i1, s0;
  wire y;

  // DUT
  two_one_mux uut(.i0(i0), .i1(i1), .s0(s0), .y(y));

  integer i;
  reg exp;

  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, two_one_mux_tb);

    $display(" time | i0 i1 s0 | y  exp | pass?");
    $display("-----------------------------------");

    for (i = 0; i < 8; i = i + 1) begin
      {i0, i1, s0} = i[2:0];   // iterate all combinations
      #1;                      // allow signals to settle
      exp = s0 ? i1 : i0;      // golden model

      $display("%4t |  %b  %b  %b | %b   %b  | %s",
               $time, i0, i1, s0, y, exp, (y===exp) ? "PASS" : "FAIL");

      #9;                      // step to next 10ns boundary
    end

    $finish;
  end
endmodule
