module shift_left_arith_1 (
    input  logic [2:0] A,
    output logic [2:0] F
);
    assign F[2] = A[1];
    assign F[1] = A[0];
    assign F[0] = 1'b0;
endmodule
