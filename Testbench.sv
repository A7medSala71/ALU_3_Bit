module ALU_3_bit_tb;
    // ALU inputs and outputs
    logic [2:0] A;
    logic [2:0] B;
    logic [3:0] sel;
    logic [4:0] F;
    logic V;
    logic Z;

    // Instantiate the ALU
ALU_3_bit DUT (
        .A(A),
        .B(B),
        .sel(sel),
        .F(F),
        .V(V),
        .Z(Z)
);

   initial begin
        // Initial values
        A = 3'b110; B = 3'b011;  // example with negative (signed) number
        // Test all operations
        sel = 4'b0000; #10; // ADD
        sel = 4'b0001; #10; // SUB
        sel = 4'b0010; #10; // 2's complement
        sel = 4'b0011; #10; // OR
        sel = 4'b0100; #10; // AND
        sel = 4'b0101; #10; // XOR
        sel = 4'b0110; #10; // NOT
        sel = 4'b0111; #10; // Shift Left Logical
        sel = 4'b1000; #10; // Shift Right Logical
        sel = 4'b1001; #10; // Arithmetic Shift Right
        sel = 4'b1010; #10; // Arithmetic Shift Left

        // Additional case for overflow
   end

endmodule
