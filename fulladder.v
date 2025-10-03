module half_adder(
    input a,b,
    output sum,carry
);
assign sum = a^b;
assign carry = a&b;

endmodule

module full_adder(
    input a,b,cin,
    output total_sum,cout
);
assign total_sum = a^b^cin;
assign cout = (a&b)|(cin & (a ^ b));
endmodule
