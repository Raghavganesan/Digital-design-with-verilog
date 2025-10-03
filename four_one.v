module two_one_mux(
    input  i0, i1, s0,
    output y
);
  assign y = (~s0 & i0) | (s0 & i1);
endmodule

module four_one_mux_2x1 (
    input  i0, i1, i2, i3,   // data inputs
    input  s1, s0,           // select lines
    output y                 // output
);
  wire y0, y1;
  two_one_mux m1 (.i0(i0), .i1(i1), .s0(s0), .y(y0));
  two_one_mux m2 (.i0(i2), .i1(i3), .s0(s0), .y(y1));
 two_one_mux m3 (.i0(y0), .i1(y1), .s0(s1), .y(y));
endmodule