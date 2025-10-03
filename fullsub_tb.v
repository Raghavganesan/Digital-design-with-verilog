`timescale 1ns/1ps

module fullsub_tb;
reg a, b, bin;
wire diff, bout;

full_subtractor uut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);

integer i;

initial begin
    $dumpfile("full_subtractor.vcd");   // for waveform
    $dumpvars(0, fullsub_tb);

    $display("time | a b bin | diff bout");
    $display("--------------------------");

    for (i = 0; i < 8; i = i + 1) begin
      {a, b, bin} = i[2:0];
      #10;
      $display("%4t | %b %b  %b  |   %b    %b",
               $time, a, b, bin, diff, bout);
    end

    $finish;
end
endmodule
