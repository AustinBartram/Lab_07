module half_sub(
    input A, 
    input B,
    output Y,
    output Borrow
//    input wire A, 
//    input wire B,
//    output wire Y,
//    output wire Borrow
);

    assign Y = A^B; // XOR
    assign Borrow = (~A) & B; // Borrow when A = 0 and B = 1
    
endmodule