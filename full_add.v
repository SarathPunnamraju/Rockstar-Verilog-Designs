module full_add(input a, input b, input c,output sum, output carry);

wire s1,c1,c2;
one_bit_add a1(.a(a),.b(b),.s(s1),.c(c1));
one_bit_add a2(.a(s1),.b(c),.s(sum),.c(c2));
assign carry = c2|c1;

endmodule
