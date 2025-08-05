module twos_complement (
    input  logic [2:0] A,
    output logic [3:0] F
);
    logic [2:0] A_inv;
    NOT_3bit inv (.A(A), .Y(A_inv));

    // Add 1 to A_inv
    Full_Adder_3_bit add_one (.A(A_inv), .B(3'b001), .Sum(F));
endmodule
