module halfsub_tb;
reg a,b;
wire difference,borrow;

half_sub uut(.a(a),.b(b),.difference(difference),.borrow(borrow));

 initial begin
    $dumpfile("half_sub.vcd");   // for waveform
    $dumpvars(0, halfsub_tb);

    $monitor("time=%0t a=%b b=%b | difference=%b borrow=%b", $time, a, b, difference, borrow);

  
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;
  end
endmodule