module shift_right_arith_1 (
    input  logic [2:0] A,
    output logic [2:0] F
);
    assign F[2] = A[2];      // preserve sign bit
    assign F[1] = A[2];      // shift into position
    assign F[0] = A[1];
endmodule
