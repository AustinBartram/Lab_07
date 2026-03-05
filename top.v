module top (
      input [9:0] sw,
      output [13:0] led
);


// Ones' complement A = sw[5:2], B = sw [9:6]  Y= led[5:2]
ones_compliment u_ones (
    .A(sw[5:2]),
    .B(sw[9:6]),
    .Y(led[5:2])
);

// Two's complement converter: X = sw[9:2], Y = led[13:6]
twos_compliment u_twos (
    .X(sw[9:2]),
    .Y(led[13:6])
    //    .X(sw[9:2]),
    //    .Y(led[13:6])
);

half_sub u_half_sub (
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
);
    
endmodule