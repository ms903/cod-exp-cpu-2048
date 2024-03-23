module RF(
    input         clk, 
    input         rst,
    input         RFWr, 
    input  [4:0]  A1, A2, A3, // A1,A2为源寄存器rs1,rs2的寄存器号，A3为目的寄存器rd寄存器号
    input  [31:0] WD, 
    output [31:0] RD1, RD2
    // input         j_RegWrite,
    // input  [31:0] j_Data,
    // input  [4:0]  j_rd
);

    reg [31:0] rf[31:0];

    integer i;

    always @(negedge clk, posedge rst)
        if (rst) 
            begin
                for (i=0; i<32; i=i+1)
                    rf[i] <= 0;
            end
        else if (RFWr && A3 != 0)
            begin
                rf[A3] <= WD;
                $display("x%d = %h", A3, WD);
            end
    // always @(posedge j_RegWrite)
    //     if (j_RegWrite & j_rd != 0)
    //         begin
    //             rf[j_rd] <= j_Data;
    //             $display("x%d = %h", j_rd, j_Data);
    //         end
            
    // always @(negedge clk)



    assign RD1 = (A1 != 0) ? rf[A1] : 0;
    assign RD2 = (A2 != 0) ? rf[A2] : 0;

endmodule 
