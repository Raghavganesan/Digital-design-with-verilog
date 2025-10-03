`timescale 1ns/1ps

module fulladder_tb;
reg a,b,cin;
wire total_sum,cout;

full_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .total_sum(total_sum),
    .cout(cout)
);
integer i;

  initial begin
    $dumpfile("full_adder.vcd");   // for waveform
    $dumpvars(0, fulladder_tb);

    $display("time | a b cin | sum cout");
    $display("-------------------------");

    
    for (i = 0; i < 8; i = i + 1) begin
      {a, b, cin} = i[2:0];
      #10;
      $display("%4t | %b %b  %b  |  %b    %b",
               $time, a, b, cin, total_sum, cout);
    end

    $finish;
  end
endmodule