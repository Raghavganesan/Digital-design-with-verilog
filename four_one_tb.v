`timescale 1ns/1ps

module four_one_mux_tb;
  reg  i0, i1, i2, i3;
  reg  s1, s0;
  wire y;

  // DUT instance
  four_one_mux_2x1 dut(
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .s1(s1), .s0(s0),
    .y(y)
  );

  initial begin
    $dumpfile("mux4.vcd");
    $dumpvars(0, four_one_mux_tb);

    $display(" time | s1 s0 | i0 i1 i2 i3 | y");
    $display("---------------------------------");

    // Case 1: s1s0 = 00 → expect y = i0
    {i0,i1,i2,i3} = 4'b1000; {s1,s0} = 2'b00; #5;
    $display("%4t |  %b  %b |  %b  %b  %b  %b | %b", 
              $time, s1,s0,i0,i1,i2,i3,y);

    // Case 2: s1s0 = 01 → expect y = i1
    {i0,i1,i2,i3} = 4'b0100; {s1,s0} = 2'b01; #5;
    $display("%4t |  %b  %b |  %b  %b  %b  %b | %b", 
              $time, s1,s0,i0,i1,i2,i3,y);

    // Case 3: s1s0 = 10 → expect y = i2
    {i0,i1,i2,i3} = 4'b0010; {s1,s0} = 2'b10; #5;
    $display("%4t |  %b  %b |  %b  %b  %b  %b | %b", 
              $time, s1,s0,i0,i1,i2,i3,y);

    // Case 4: s1s0 = 11 → expect y = i3
    {i0,i1,i2,i3} = 4'b0001; {s1,s0} = 2'b11; #5;
    $display("%4t |  %b  %b |  %b  %b  %b  %b | %b", 
              $time, s1,s0,i0,i1,i2,i3,y);

    $finish;
  end
endmodule
