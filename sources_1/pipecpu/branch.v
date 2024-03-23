`include "macrodefine.v"


module branch(
    input               Zero,                 // alu 结果是否是
    input               i_sb,                 // 是否是SB型指令
    input               i_jal,                // 是否是 jal 指令
    input               i_jalr,               // 是否是 jalr 指令
    input               interrupt_tick,
    output reg          ifid_flush,           // 是否清空 IF-ID 流水线寄存器
    output reg          idex_flush,           // 是否清空 ID-EX 流水线寄存器
    output reg   [2:0]  NPCOp,                // 输出 NPCOp 控制以控制下一条 PC
    output reg          j_RegWrite            // 是否写寄存器信号
);  

    always @ (*) begin
        if(i_sb && Zero && !interrupt_tick) begin
            // 如果SB跳转指令条件成立
            ifid_flush <= 1'b1;
            idex_flush <= 1'b1;
            j_RegWrite <= 1'b0;
            NPCOp      <= `NPC_BRANCH;
        end
        else if(i_jal && !interrupt_tick) begin
            ifid_flush <= 1'b1;
            idex_flush <= 1'b1;
            j_RegWrite <= 1'b1;
            NPCOp      <= `NPC_JUMP;
        end
        else if(i_jalr && !interrupt_tick) begin
            ifid_flush <= 1'b1;
            idex_flush <= 1'b1;
            j_RegWrite <= 1'b1;
            NPCOp      <= `NPC_JALR;
        end
        else begin
            ifid_flush <= 1'b0;
            idex_flush <= 1'b0;
            j_RegWrite <= 1'b0;
            NPCOp      <= `NPC_PLUS4;
        end
    end

endmodule