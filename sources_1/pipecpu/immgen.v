`include "macrodefine.v"
module immgen( 
	input       [31:0]  instr,
    input       [5:0]   IMMOp,
	output	reg [31:0]  immout
);

   	wire [4:0]  iimm_shamt;
	wire [11:0] iimm,simm,sbimm;
	wire [19:0] uimm,ujimm;
	// wire [31:0] immout;
    wire [31:0] aluout;

	assign iimm_shamt = instr[24:20];
	assign iimm = instr[31:20];
	assign simm = {instr[31:25],instr[11:7]};
	assign sbimm = {instr[31],instr[7],instr[30:25],instr[11:8]};
	assign uimm = instr[31:12];
	assign ujimm = {instr[31],instr[19:12],instr[20],instr[30:21]};
	
    always  @(*)
		case (IMMOp)
			`IMM_CTRL_ITYPE_SHAMT:  immout <= {27'b0,iimm_shamt[4:0]};
			`IMM_CTRL_ITYPE:		immout <= {{{32-12}{iimm[11]}}, iimm[11:0]};
			`IMM_CTRL_STYPE:		immout <= {{{32-12}{simm[11]}}, simm[11:0]};
			`IMM_CTRL_BTYPE:        immout <= {{{32-13}{sbimm[11]}}, sbimm[11:0], 1'b0};
			`IMM_CTRL_UTYPE:		immout <= {uimm[19:0], 12'b0}; //???????????12??0
			`IMM_CTRL_JTYPE:		immout <= {{{32-21}{ujimm[19]}}, ujimm[19:0], 1'b0};
			default:	        	immout <= 32'b0;
		endcase

       
endmodule
