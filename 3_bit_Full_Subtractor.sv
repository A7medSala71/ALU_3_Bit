module Full_Sub_3_bit (
    input  logic [2:0] A,  // subtrahend
    input  logic [2:0] B,  // minuend
    output logic [3:0] Diff
);
    logic [3:0] A_twos;

    // 2's complement of A
    twos_complement tc (.A(A), .F(A_twos));

    // B + (~A + 1)
    Full_Adder_3_bit adder (.A(B), .B(A_twos[2:0]), .Sum(Diff));
endmodule
