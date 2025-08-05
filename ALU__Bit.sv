module ALU_3_bit (
    input  logic [2:0] A,
    input  logic [2:0] B,
    input  logic [3:0] sel,
    output logic [4:0] F,
    output logic V,
    output logic Z
);
    logic [3:0] add_out, sub_out, twos_out;
    logic [2:0] and_out, or_out, xor_out, not_out;
    logic [4:0] sll_out, srl_out;
    logic [2:0] asr_out, asl_out;

    // Instantiate all modules
    add_3bit        adder (.A(A), .B(B), .Sum(add_out));
    sub_3bit        subtractor (.A(A), .B(B), .Diff(sub_out));
    twos_complement tc (.A(A), .F(twos_out));
    and_3bit        and_gate (.A(A), .B(B), .F(and_out));
    or_3bit         or_gate (.A(A), .B(B), .F(or_out));
    xor_3bit        xor_gate (.A(A), .B(B), .F(xor_out));
    not_b           not_gate (.B(B), .F(not_out));
    shift_left_2    sll (.A(A), .F(sll_out));
    shift_right_3   srl (.A(A), .F(srl_out));
    shift_right_arith_1 asr (.A(A), .F(asr_out));
    shift_left_arith_1  asl (.A(A), .F(asl_out));

    always_comb begin
        case(sel)
            4'b0000: F = add_out;            // ADD
            4'b0001: F = sub_out;            // SUB
            4'b0010: F = twos_out;           // 2's complement
            4'b0011: F = {2'b00, or_out};    // OR
            4'b0100: F = {2'b00, and_out};   // AND
            4'b0101: F = {2'b00, xor_out};   // XOR
            4'b0110: F = {2'b00, not_out};   // NOT
            4'b0111: F = sll_out;            // Shift Left Logical
            4'b1000: F = srl_out;            // Shift Right Logical
            4'b1001: F = {2'b00, asr_out};   // Arithmetic Shift Right
            4'b1010: F = {2'b00, asl_out};   // Arithmetic Shift Left
            default: F = 5'b00000;
        endcase
    end

    // Flags
    assign V = (sel == 4'b0000) ? add_out[3] : 1'b0;
    assign Z = (F == 0);
endmodule
