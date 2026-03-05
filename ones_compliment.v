module ones_compliment(
    input wire [3:0] A,
    input wire [3:0] B,
    output wire [3:0] Y
);

// Stage 1: A + B
wire [3:0] sum1;
wire c1, c2, c3, around;

full_adder fa0 (.A(A[0]), .B(B[0]), .carryIn(1'b0), .Y(sum1[0]), .carryOut(c1));
full_adder fa1 (.A(A[1]), .B(B[1]), .carryIn(c1), .Y(sum1[1]), .carryOut(c2));
full_adder fa2 (.A(A[2]), .B(B[2]), .carryIn(c2), .Y(sum1[2]), .carryOut(c3));
full_adder fa3 (.A(A[3]), .B(B[3]), .carryIn(c3), .Y(sum1[3]), .carryOut(around));

// Stage 2: (A + B) + around
// -- adding the end around carry into LSb, ripple forward 
wire sc1, sc2, sc3, sc4_unused;

full_adder fa4 (.A(sum1[0]), .B(around), .carryIn(1'b0), .Y(Y[0]), .carryOut(sc1));
full_adder fa5 (.A(sum1[1]), .B(1'b0), .carryIn(sc1), .Y(Y[1]), .carryOut(sc2));
full_adder fa6 (.A(sum1[2]), .B(1'b0), .carryIn(sc2), .Y(Y[2]), .carryOut(sc3));
full_adder fa7 (.A(sum1[3]), .B(1'b0), .carryIn(sc3), .Y(Y[3]), .carryOut(sc4_unused));


endmodule

