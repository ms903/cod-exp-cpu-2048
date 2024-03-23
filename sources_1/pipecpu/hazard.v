`include "macrodefine.v"

module forwarding(
    input            exmem_RegWrite, memwb_RegWrite, exmem_MemtoReg,
    input  [4:0]     idex_rs1, idex_rs2, exmem_rd, memwb_rd,
    output reg [1:0] forwardA, forwardB 
);
    reg forward_EX, forward_MEM;
    
    always@(*) begin
        // 是否构成EM旁路，由于load指令前递的数据必须来自memwb流水线寄存器，故此处要排除load指令前递数据的情况
        // mem阶段指令写寄存器，且构成数据冒险，则前递成立
        forward_EX  <= (!exmem_MemtoReg && exmem_RegWrite && exmem_rd != 5'b0 && (idex_rs1 == exmem_rd || idex_rs2 == exmem_rd));

        // 是否构成MEM旁路
        forward_MEM <= (memwb_RegWrite && memwb_rd != 5'b0 && (idex_rs1 == memwb_rd || idex_rs2 == memwb_rd));
        
        // 初始化为不选择旁路
        forwardA <= `not_forward;
        forwardB <= `not_forward;

        // 
        if(forward_EX) begin
            if(idex_rs1 == exmem_rd) forwardA <= `forward_from_EXE;
            if(idex_rs2 == exmem_rd) forwardB <= `forward_from_EXE;
        end

        // 如果要前递memwb流水线寄存器的数据，则要判断不需要前递exmem流水线寄存器数据，否则前递exmem流水线寄存器数据
        if(forward_MEM)begin
            if(idex_rs1 == memwb_rd && idex_rs1 != exmem_rd) forwardA <= `forward_from_MEM;
            if(idex_rs2 == memwb_rd && idex_rs2 != exmem_rd) forwardB <= `forward_from_MEM;
        end

    end

endmodule


module hazard_detect(
    input idex_MemtoReg,
    input [4:0] idex_rd,
    input [4:0] ifid_rs1, ifid_rs2,
    output reg ifid_write,
    output reg PCWrite,
    output reg idex_flush
);
    // load指令数据冒险检测、阻塞单元
    always @(*)
        if(idex_MemtoReg && ((idex_rd == ifid_rs1) || (idex_rd == ifid_rs2))) begin
            // 如果是exe阶段是load指令，且构成数据冒险，阻塞一个周期，不写ifid流水线寄存器(ifid_write)，不取值(PCWrite)。
            ifid_write <= 1'b0;
            idex_flush <= 1'b1;
            PCWrite <= 1'b0;
        end
        else begin
            // 反之，正常运行
            idex_flush <= 1'b0;
            ifid_write <= 1'b1;
            PCWrite <= 1'b1;
        end


endmodule

