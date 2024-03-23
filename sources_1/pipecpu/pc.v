`include "macrodefine.v"

module PC(
    input              clk,         // 时钟信号
    input              rst,         // 重置信号
    input       [31:0] PC,          // 当前PC
    input       [31:0] IMM,         // 立即数输入
    input              PCWrite,
    input       [31:0] aluout,      // ALU输出
    input       [2:0]  NPCOp,       // PC操作指令
    input       [31:0] ex_PC,
    input              INT,
    input       [1:0]  INT_data,
    output reg  [31:0] NPC,         // 下一条PC
    output reg         interrupt_tick,
    output reg         in_INT
);

    wire [31:0] PCPLUS4;
    assign PCPLUS4 = PC + 4; // pc + 4
    // reg [31:0] ret_PC;      // 中断的返回地址

    // reg in_INT;

    always @(posedge clk, posedge rst) begin
        if(~INT) in_INT <= 1'b0;
        if (rst)  begin
            NPC <= 32'h0000_0000;
            in_INT <= 1'b0;
            interrupt_tick <= 1'b0;
        end else if(INT && ~in_INT) begin
            case(INT_data)
                2'b00: NPC <= 32'h00000ebc;
                2'b01: NPC <= 32'h00000eec;
                2'b10: NPC <= 32'h00000f1c;
                2'b11: NPC <= 32'h00000f4c;
                // default: NPC <= PCPLUS4;
            endcase
            in_INT <= 1'b1;
            interrupt_tick <= 1'b1;
        end else if(PCWrite) begin
            interrupt_tick <= 1'b0;
            case (NPCOp)
                `NPC_PLUS4:  NPC <= PCPLUS4;
                `NPC_BRANCH: NPC <= ex_PC + IMM;
                `NPC_JUMP:   NPC <= ex_PC + IMM;
                `NPC_JALR:	 NPC <= aluout;
                default:     NPC <= PCPLUS4;
            endcase
            if(NPC >= 32'h00000f78) NPC <= 32'h00000ea8;
        end else if(!PCWrite) begin
            NPC <= PC;
            interrupt_tick <= 1'b0;
        end
    end
endmodule
