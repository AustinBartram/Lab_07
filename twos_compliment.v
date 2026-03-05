module twos_compliment(
    input wire[7:0] X,
    output wire [7:0] Y
);

    wire [7:0] inv;
    assign inv = ~X;
    
    wire c1, c2, c3, c4, c5, c6, c7, c8_unused;
    
    // Add 1 by setting carryIn = 1 for bit0, with B = 0 on all bits
    full_adder fa0 (.A(inv[0]), .B(1'b0), .carryIn(1'b1), .Y(Y[0]), .carryOut(c1));
    full_adder fa1 (.A(inv[1]), .B(1'b0), .carryIn(c1), .Y(Y[1]), .carryOut(c2));
    full_adder fa2 (.A(inv[2]), .B(1'b0), .carryIn(c2), .Y(Y[2]), .carryOut(c3));
    full_adder fa3 (.A(inv[3]), .B(1'b0), .carryIn(c3), .Y(Y[3]), .carryOut(c4));
    full_adder fa4 (.A(inv[4]), .B(1'b0), .carryIn(c4), .Y(Y[4]), .carryOut(c5));
    full_adder fa5 (.A(inv[5]), .B(1'b0), .carryIn(c5), .Y(Y[5]), .carryOut(c6));
    full_adder fa6 (.A(inv[6]), .B(1'b0), .carryIn(c6), .Y(Y[6]), .carryOut(c7));
    full_adder fa7 (.A(inv[7]), .B(1'b0), .carryIn(c7), .Y(Y[7]), .carryOut(c8_unused));

endmodule
