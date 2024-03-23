`include "macrodefine.v"


module SCPU(
    // input         clk,            // clock
    // input         reset,          // reset
    // output [31:0] PC              // PC address
    input         clk,          // clock
    input         reset,        // reset
    input [31:0]  inst_in,      // instruction
    input [31:0]  Data_in,      // data from data memory
    input         MIO_ready,
    input         INT,
    input [1:0]   INT_data,
    output        mem_w,        // output: memory write signal
    output        CPU_MIO,
    output [31:0] PC_out,           // PC address
    output [31:0] Addr_out,     // ALU output
    output [31:0] Data_out,     // data to data memory
    output [2:0]  DMSize,
    output in_INT, interrupt_tick
);



    // <---------- 各阶段变量声明 ---------->

    // <---------- IF 阶段变量声明 ---------->
    // next PC operation
    wire [2:0]  NPCOp;      
    // PC_IN 为 PC 生成器
    wire [31:0] PC_IN, if_pc, PC_OUT;
    // IF 阶段的指令
    wire [31:0] if_instr;
    wire        PCWrite;


    // <---------- IF-ID流水线寄存器变量声明 ---------->
    // id 阶段的指令和pc
    wire [31:0] id_instr, id_pc;
    wire   ifid_flush;
    wire   ifid_write;
    // wire INT, INT_data;


    // <---------- ID 阶段变量声明 ---------->
    // 控制信号线声明
    wire        id_RegWrite;    // control signal to register write
    wire        id_MemWrite;
    wire [5:0]  id_IMMOp;       // control signal to signed extension
    wire [4:0]  id_ALUOp;       // ALU opertion
    wire        id_ALUSrc;
    wire [1:0]  id_WDSel;       // (register) write data selection
    wire [1:0]  id_GPRSel;      // general purpose register selection
    wire [2:0]  id_DMSize;
    // wire        ALUSrc;         // ALU source for A
    wire [`IMM_WIDTH - 1:0] id_IMM;
    wire        id_MemtoReg;

    // 寄存器堆线声明
    wire [4:0]  id_rs1;               // rs1
    wire [4:0]  id_rs2;               // rs2
    wire [4:0]  id_rd;                // rd
    wire [4:0]  A3;                   // rd
    reg  [31:0] WD;                   // register write data
    wire [31:0] id_RD1, id_RD2;       // 寄存器堆输出数据
    wire id_jal, id_jalr, id_sbtype;



    // <---------- ID-EXE 流水线寄存器变量声明 ---------->
    wire idex_write, idex_flush;
    wire ex_ALUSrc, ex_MemWrite, ex_RegWrite, ex_MemtoReg;
    wire [31:0] ex_instr,ex_pc,ex_IMM;
    wire [`DATA_WIDTH - 1:0] ex_RD1, ex_RD2;
    wire [1:0] ex_WDSel;
    wire [2:0] ex_DMSize;
    wire [4:0] ex_rs1, ex_rs2, ex_rd;
    wire [`ALUOp_WIDTH - 1:0] ex_ALUOp;
    wire [31:0] mem_aluout;
    wire ex_jal, ex_jalr, ex_sbtype;

    // <---------- EX 阶段变量声明 ---------->
    wire [`DATA_WIDTH - 1:0] ex_aluout;
    wire [31:0] A,B;           // operator for ALU B
    wire [4:0] mem_rd, wb_rd;
    wire [1:0] forwardA, forwardB;
    wire branch;


    // <---------- EX-MEM 流水线寄存器变量声明 ---------->
    wire exmem_write, exmem_flush;
    wire mem_MemWrite, mem_MemtoReg;
    wire [31:0] mem_instr,mem_pc;
    wire [`DATA_WIDTH - 1:0] mem_RD1, mem_RD2;
    wire [1:0] mem_WDSel;
    wire [2:0] mem_DMSize;
    wire [4:0] mem_rs1, mem_rs2;



    // <---------- MEM 阶段变量声明 ---------->
    wire [`DATA_WIDTH - 1:0] mem_dout;


    // <---------- MEM-WB 流水线寄存器变量声明 ---------->
    wire memwb_write, memwb_flush;
    wire wb_MemWrite;
    wire [31:0] wb_instr,wb_pc;
    wire [`DATA_WIDTH - 1:0] wb_RD1, wb_RD2, wb_aluout, wb_dout;
    wire [1:0] wb_WDSel;
    wire [2:0] wb_DMSize;
    wire [4:0] wb_rs1, wb_rs2;



    // <----------------- 构建 Datapath 数据通路 ---------------->
    // <---------- IF 阶段 ---------->

    // wire interrupt_tick;
    // 实例化程序计数器
	PC U_PC(.clk(clk), .rst(reset), .PC(if_pc), .NPCOp(NPCOp), .NPC(if_pc), .PCWrite(PCWrite), 
            .aluout(ex_aluout), .IMM(ex_IMM), .ex_PC(ex_pc), .INT(INT), .INT_data(INT_data),
            .interrupt_tick(interrupt_tick), .in_INT(in_INT));
    
    // 连接部件
    assign if_pc = PC_OUT;
    assign PC_out = if_pc;
    assign if_instr = inst_in;
    // 实例化指令内存
    // im U_imem (
    //     .addr(PC[`ADDR_WIDTH - 1:2]),      // input:  rom address
    //     .dout(if_instr)                    // output: instruction
    // );

    // <---------- IF-ID 流水线寄存器 ---------->

    // assign ifid_flush = 0;
    // assign ifid_write = 1;


    // 传递 PC
    pipenreg #(`ADDR_WIDTH)   ifidreg_pc(clk, reset, ifid_flush, ifid_write, if_pc, id_pc);
    // 传递指令
    pipenreg #(`ADDR_WIDTH)   ifidreg_instr(clk, reset, ifid_flush, ifid_write, if_instr, id_instr);



    // <---------- ID 阶段 ---------->



    // 实例化控制器controller
    ctrl U_ctrl(
        .instr(id_instr),   // 输入ifid寄存器传来的指令
        .RegWrite(id_RegWrite), .MemWrite(id_MemWrite),
        .IMMOp(id_IMMOp), .ALUOp(id_ALUOp), .ALUSrc(id_ALUSrc),  
        .WDSel(id_WDSel), .DMSize(id_DMSize), .MemtoReg(id_MemtoReg),
        .i_jal(id_jal), .i_jalr(id_jalr), .sbtype(id_sbtype)
    );


    // 实例化立即数生成器 Immediate Generator
	immgen U_immgen(
		.instr(id_instr), .IMMOp(id_IMMOp), .immout(id_IMM)
	);

    assign id_rs1 = id_instr[19:15];  // rs1
    assign id_rs2 = id_instr[24:20];  // rs2
    assign id_rd  = id_instr[11:7];   // rd
    wire idex_flush_hazard, idex_flush_branch;
    hazard_detect U_HD(.idex_MemtoReg(ex_MemtoReg), .idex_rd(ex_rd), .ifid_rs1(id_rs1), .ifid_rs2(id_rs2), .ifid_write(ifid_write), .PCWrite(PCWrite), .idex_flush(idex_flush_hazard));

    // 实例化寄存器堆 register file
	RF U_RF(
		.clk(clk), .rst(reset),
		.RFWr(wb_RegWrite),        // 此处写回的信号应来源于WB阶段
		.A1(id_rs1), .A2(id_rs2), .A3(A3),
		.WD(WD),                   // 此处写回的信号应来源于WB阶段
		.RD1(id_RD1), .RD2(id_RD2)
        // .j_RegWrite(j_RegWrite), .j_Data(ex_pc + 4), .j_rd(ex_rd)
	);


    // <---------- ID-EXE 流水线寄存器 ---------->
    assign idex_write = 1;
    // assign idex_flush = (ex_sbtype && Zero) || ex_jal || ex_jalr;
    // assign idex_flush = idex_flush_branch || idex_flush_hazard;
    assign idex_flush = idex_flush_branch || idex_flush_hazard || interrupt_tick;

    // 传递 PC
    pipenreg #(`ADDR_WIDTH)   idexreg_pc(clk, reset, idex_flush, idex_write, id_pc, ex_pc);
    // 传递指令
    pipenreg #(`ADDR_WIDTH)   idexreg_instr(clk, reset, idex_flush, idex_write, id_instr, ex_instr);
    // 传递 ALUOp
    pipenreg #(`ALUOp_WIDTH)  idexreg_ALUOp(clk, reset, idex_flush, idex_write, id_ALUOp, ex_ALUOp);
    // 传递 IMM
    pipenreg #(`IMM_WIDTH)    idexreg_IMM(clk, reset, idex_flush, idex_write, id_IMM, ex_IMM);
    // 传递 jal
    pipenreg #(1)             idexreg_jal(clk, reset, idex_flush, idex_write, id_jal, ex_jal);
    // 传递 jalr
    pipenreg #(1)             idexreg_jalr(clk, reset, idex_flush, idex_write, id_jalr, ex_jalr);
    // 传递 sbtype
    pipenreg #(1)             idexreg_sbtype(clk, reset, idex_flush, idex_write, id_sbtype, ex_sbtype);
    // 传递 RegWrite
    pipenreg #(1)             idexreg_RegWrite(clk, reset, idex_flush, idex_write, id_RegWrite, ex_RegWrite);
    // 传递 ALUSrc
    pipenreg #(1)             idexreg_ALUSrc(clk, reset, idex_flush, idex_write, id_ALUSrc, ex_ALUSrc);
    // 传递 MemtoReg
    pipenreg #(1)             idexreg_MemtoReg(clk, reset, idex_flush, idex_write, id_MemtoReg, ex_MemtoReg);
    // 传递 MemWrite
    pipenreg #(1)             idexreg_MemWrite(clk, reset, idex_flush, idex_write, id_MemWrite, ex_MemWrite);
    // 传递WDSel
    pipenreg #(2)             idexreg_WDSel(clk, reset, idex_flush, idex_write, id_WDSel, ex_WDSel);
    // 传递 RD1
    pipenreg #(`DATA_WIDTH)   idexreg_RD1(clk, reset, idex_flush, idex_write, id_RD1, ex_RD1);
    // 传递 RD2
    pipenreg #(`DATA_WIDTH)   idexreg_RD2(clk, reset, idex_flush, idex_write, id_RD2, ex_RD2);
    // 传递 DMSize
    pipenreg #(3)            idexreg_DMSize(clk, reset, idex_flush, idex_write, id_DMSize, ex_DMSize);
    // 传递 rs1
    pipenreg #(5)            idexreg_rs1(clk, reset, idex_flush, idex_write, id_rs1, ex_rs1);
    // 传递 rs2
    pipenreg #(5)            idexreg_rs2(clk, reset, idex_flush, idex_write, id_rs2, ex_rs2);
    // 传递 rd
    pipenreg #(5)            idexreg_rd(clk, reset, idex_flush, idex_write, id_rd, ex_rd);



    // <---------- EXE 阶段 ---------->
    mux3 #(32)  muxA(ex_RD1, mem_aluout, WD, forwardA, A);
    mux3 #(32)  muxB(ex_RD2, mem_aluout, WD, forwardB, B);
    // 先选择前递数据或者是其他，在选择是否是立即数。
    // 如果是立即数则不必管是否前递B
	alu U_alu(.A(A), .B(ex_ALUSrc ? ex_IMM : B), .ALUOp(ex_ALUOp), .C(ex_aluout), .Zero(Zero), .PC(ex_pc));

    forwarding U_forward(.exmem_RegWrite(mem_RegWrite), .memwb_RegWrite(wb_RegWrite), .exmem_MemtoReg(mem_MemtoReg),
                         .idex_rs1(ex_rs1), .idex_rs2(ex_rs2), .exmem_rd(mem_rd), .memwb_rd(wb_rd),
                         .forwardA(forwardA), .forwardB(forwardB)
                        );


    // 跳转指令处理
    // 跳转处理单元

    // jalr， jal， 要修改寄存器内容，无条件跳转
    // 从EXE阶段获取sb型指令是否跳转，
    branch U_branch(.Zero(Zero), .i_sb(ex_sbtype), .i_jal(ex_jal), .i_jalr(ex_jalr),
                    .ifid_flush(ifid_flush), .idex_flush(idex_flush_branch), 
                    .NPCOp(NPCOp), .j_RegWrite(j_RegWrite), .interrupt_tick(interrupt_tick)
                    );


    // <---------- EXE-MEM 流水线寄存器 ---------->
    assign exmem_write = 1;
    assign exmem_flush = 0;

    // 传递 PC
    pipenreg #(`ADDR_WIDTH)   exmemreg_pc(clk, reset, exmem_flush, exmem_write, ex_pc, mem_pc);
    // 传递指令
    pipenreg #(`ADDR_WIDTH)   exmemreg_instr(clk, reset, exmem_flush, exmem_write, ex_instr, mem_instr);
    // 传递 RegWrite
    pipenreg #(1)             exmemreg_RegWrite(clk, reset, exmem_flush, exmem_write, ex_RegWrite, mem_RegWrite);
    // 传递 MemWrite
    pipenreg #(1)             exmemreg_MemWrite(clk, reset, exmem_flush, exmem_write, ex_MemWrite, mem_MemWrite);
    // 传递 MemtoReg
    pipenreg #(1)             exmemreg_MemtoReg(clk, reset, exmem_flush, exmem_write, ex_MemtoReg, mem_MemtoReg);
    // 传递WDSel
    pipenreg #(2)             exmemreg_WDSel(clk, reset, exmem_flush, exmem_write, ex_WDSel, mem_WDSel);
    // 传递 RD1
    pipenreg #(`DATA_WIDTH)   exmemreg_RD1(clk, reset, exmem_flush, exmem_write, ex_RD1, mem_RD1);
    // 传递 RD2
    pipenreg #(`DATA_WIDTH)   exmemreg_RD2(clk, reset, exmem_flush, exmem_write, B, mem_RD2);                   // 此处用B替代RD2
    // 传递 aluout
    pipenreg #(`DATA_WIDTH)   exmemreg_aluout(clk, reset, exmem_flush, exmem_write, ex_aluout, mem_aluout);
    // 传递 DMSize
    pipenreg #(3)             exmemreg_DMSize(clk, reset, exmem_flush, exmem_write, ex_DMSize, mem_DMSize);
    // 传递 rs1
    pipenreg #(5)             exmemreg_rs1(clk, reset, exmem_flush, exmem_write, ex_rs1, mem_rs1);
    // 传递 rs2
    pipenreg #(5)             exmemreg_rs2(clk, reset, exmem_flush, exmem_write, ex_rs2, mem_rs2);
    // 传递 rd
    pipenreg #(5)             exmemreg_rd(clk, reset, exmem_flush, exmem_write, ex_rd, mem_rd);


    // <---------- MEM 阶段 ---------->
    // 实例化数据内存
    // dm U_DM(
    //     .clk(clk),           // input:  cpu clock
    //     .DMWr(mem_MemWrite),     // input:  ram write
    //     .addr(mem_aluout[`DM_WIDTH + 1:2]), // input:  ram address
    //     .din(mem_RD2),        // input:  data to ram
    //     .DMSize(mem_DMSize),      // 输入大小控制信号
    //     .pc(mem_pc),
    //     .dout(mem_dout)       // output: data from ram
    // );

    assign mem_w = mem_MemWrite;
    assign Addr_out = mem_aluout;
    assign Data_out = mem_RD2;
    assign DMSize = mem_DMSize;
    assign mem_dout = Data_in;

    // <---------- MEM-WB 流水线寄存器 ---------->
    assign memwb_write = 1;
    assign memwb_flush = 0;

    // 传递 PC
    pipenreg #(`ADDR_WIDTH)   memwbreg_pc(clk, reset, memwb_flush, memwb_write, mem_pc, wb_pc);
    // 传递指令
    pipenreg #(`ADDR_WIDTH)   memwbreg_instr(clk, reset, memwb_flush, memwb_write, mem_instr, wb_instr);
    // 传递 RegWrite
    pipenreg #(1)             memwbreg_RegWrite(clk, reset, memwb_flush, memwb_write, mem_RegWrite, wb_RegWrite);
    // 传递 MemWrite
    pipenreg #(1)             memwbreg_MemWrite(clk, reset, memwb_flush, memwb_write, mem_MemWrite, wb_MemWrite);
    // 传递WDSel
    pipenreg #(2)             memwbreg_WDSel(clk, reset, memwb_flush, memwb_write, mem_WDSel, wb_WDSel);
    // 传递 RD1
    pipenreg #(`DATA_WIDTH)   memwbreg_RD1(clk, reset, memwb_flush, memwb_write, mem_RD1, wb_RD1);
    // 传递 RD2
    pipenreg #(`DATA_WIDTH)   memwbreg_RD2(clk, reset, memwb_flush, memwb_write, mem_RD2, wb_RD2);
    // 传递 aluout
    pipenreg #(`DATA_WIDTH)   memwbreg_aluout(clk, reset, memwb_flush, memwb_write, mem_aluout, wb_aluout);
    // 传递 dout
    pipenreg #(`DATA_WIDTH)   memwbreg_dout(clk, reset, memwb_flush, memwb_write, mem_dout, wb_dout);
    // 传递 DMSize
    pipenreg #(3)             memwbreg_DMSize(clk, reset, memwb_flush, memwb_write, mem_DMSize, wb_DMSize);
    // 传递 rs1
    pipenreg #(5)             memwbreg_rs1(clk, reset, memwb_flush, memwb_write, mem_rs1, wb_rs1);
    // 传递 rs2
    pipenreg #(5)             memwbreg_rs2(clk, reset, memwb_flush, memwb_write, mem_rs2, wb_rs2);
    // 传递 rd
    pipenreg #(5)             memwbreg_rd(clk, reset, memwb_flush, memwb_write, mem_rd, wb_rd);
    // // 传递 rd
    // pipenreg #(`DATA_WIDTH)   memwbreg_dout(clk, reset, memwb_flush, memwb_write, mem_dout, wb_dout);


    // <---------- WB 阶段 ---------->
    always@(*)
        case ( wb_WDSel ) 
            `WDSel_FromALU: WD <= wb_aluout;
            `WDSel_FromMEM: WD <= wb_dout;
            `WDSel_FromPC:  WD <= wb_pc + 4;
        endcase
    assign A3 = wb_rd;


endmodule