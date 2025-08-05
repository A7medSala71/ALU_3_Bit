module Shift_Right_3 (
    input  logic [2:0] A,
    output logic [4:0] F
);
    assign F[4:1] = 4'b0000;
    assign F[0] = A[2];
endmodule
