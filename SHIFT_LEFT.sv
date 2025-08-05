module Shift_Left_2 (
    input  logic [2:0] A,
    output logic [4:0] F
);
    assign F[4:2] = A;
    assign F[1:0] = 2'b00;
endmodule
