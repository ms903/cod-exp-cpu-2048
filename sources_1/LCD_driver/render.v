`define BOUND_WIDTH 6'd3
`define BOUND_BITS 3'b111
`define BOUND_BLANK 54'b0


module block_render(
    input [5:0] inline_num,             // block内行数
    input [1:0] render_line,            // block行数
    input [31:0] now_num,               // 该block的数字
    output reg [59:0] block
);
    reg [7:0] dots0 [7:0], dots1 [7:0], dots2 [7:0],dots3 [7:0], dots4 [7:0], dots5 [7:0], dots6 [7:0], dots7 [7:0], dots8 [7:0], dots9 [7:0];
    
    // 16*32数字存储模块
    reg [15:0] bitL0[31:0], bitL1[31:0], bitL2[31:0], bitL3[31:0], bitL4[31:0], bitL5[31:0], bitL6[31:0], bitL8[31:0];

    // 12*24数字存储模块
    reg [11:0] bitM1[23:0], bitM0[23:0], bitM2[23:0], bitM4[23:0], bitM8[23:0];
    
    always @(*) begin
        if(inline_num <= `BOUND_WIDTH || inline_num >= 6'd60 - `BOUND_WIDTH) block <= 60'hFFFFFFFFFFFFFFF;    // 如果是边界，则全黑
        else begin
            // now_num <= map[k + 4 * render_line];   // 当前block需要渲染的数字
            block[`BOUND_WIDTH - 1:0] <= `BOUND_BITS;
            block[59:60 - `BOUND_WIDTH] <= `BOUND_BITS;
                // 渲染边界
            // if(inline_num <= 6'd25 || inline_num >= 6'd34) begin block[59 - `BOUND_WIDTH:`BOUND_WIDTH] <= `BOUND_BLANK; end    // 如果当前行数不是显示数字的行，赋0
            // else 
            if(now_num == 32'd2 || now_num == 32'd4 || now_num == 32'd8) begin
                if(inline_num <= 6'd13 || inline_num >= 6'd45) begin 
                    // 如果当前行数不是显示数字的行，赋0
                    block[59 - `BOUND_WIDTH:`BOUND_WIDTH] <= `BOUND_BLANK; 
                end else begin 
                    block[21              : `BOUND_WIDTH] <= 19'b0;
                    block[59-`BOUND_WIDTH : 38]           <= 19'b0;
                    case (now_num) 
                        32'd2: block[37:22] <= bitL2[inline_num - 14];
                        32'd4: block[37:22] <= bitL4[inline_num - 14];
                        32'd8: block[37:22] <= bitL8[inline_num - 14];
                    endcase
                end
            end else if(now_num == 32'd16 || now_num == 32'd32 || now_num == 32'd64) begin
                if(inline_num <= 6'd13 || inline_num >= 6'd45) begin 
                    // 如果当前行数不是显示数字的行，赋0
                    block[59 - `BOUND_WIDTH:`BOUND_WIDTH] <= `BOUND_BLANK; 
                end else begin
                    block[13:`BOUND_WIDTH] <= 11'b0;
                    block[59-`BOUND_WIDTH:46] <= 11'b0;
                    case (now_num)
                        32'd16: block[45:14] <= {bitL1[inline_num - 14], bitL6[inline_num - 14]};
                        32'd32: block[45:14] <= {bitL3[inline_num - 14], bitL2[inline_num - 14]};
                        32'd64: block[45:14] <= {bitL6[inline_num - 14], bitL4[inline_num - 14]};
                    endcase
                end
            end else if(now_num == 32'd128 || now_num == 32'd256 || now_num == 32'd512) begin
                if(inline_num <= 6'd13 || inline_num >= 6'd45) begin 
                    // 如果当前行数不是显示数字的行，赋0
                    block[59 - `BOUND_WIDTH:`BOUND_WIDTH] <= `BOUND_BLANK; 
                end else begin
                    block[5:`BOUND_WIDTH] <= 3'b0;
                    block[59-`BOUND_WIDTH:54] <= 3'b0;
                    case (now_num)
                        32'd128: block[53:6] <= {bitL1[inline_num - 14], bitL2[inline_num - 14], bitL8[inline_num - 14]};
                        32'd256: block[53:6] <= {bitL2[inline_num - 14], bitL5[inline_num - 14], bitL6[inline_num - 14]};
                        32'd512: block[53:6] <= {bitL5[inline_num - 14], bitL1[inline_num - 14], bitL2[inline_num - 14]};
                    endcase
                end
            end else if(now_num == 32'd1024 || now_num == 32'd2048) begin
                if(inline_num <= 6'd5 || inline_num >= 6'd54) begin 
                    // 如果当前行数不是显示数字的行，赋0
                    block[59 - `BOUND_WIDTH:`BOUND_WIDTH] <= `BOUND_BLANK; 
                end else begin
                    block[17:`BOUND_WIDTH] <= 15'b0;
                    block[59-`BOUND_WIDTH:42] <= 15'b0;
                    case (now_num)
                        32'd1024: begin
                                if(inline_num < 6'd30) block[41:18] <= {bitM1[inline_num - 6], bitM0[inline_num - 6]};
                                else block[41:18] <= {bitM2[inline_num - 30], bitM4[inline_num - 30]};
                            end
                        32'd2048: begin
                                if(inline_num < 6'd30) block[41:18] <= {bitM2[inline_num - 6], bitM0[inline_num - 6]};
                                else block[41:18] <= {bitM4[inline_num - 30], bitM8[inline_num - 30]};
                            end
                    endcase
                end
            end else begin block[59-`BOUND_WIDTH : `BOUND_WIDTH] <= 54'b0; end
        end
    end


    initial begin

        bitL1[0] = 16'h0000;
        bitL1[1] = 16'h0000;
        bitL1[2] = 16'h0000;
        bitL1[3] = 16'h0000;
        bitL1[4] = 16'h0000;
        bitL1[5] = 16'h0000;
        bitL1[6] = 16'h01C0;
        bitL1[7] = 16'h01C0;
        bitL1[8] = 16'h03C0;
        bitL1[9] = 16'h07C0;
        bitL1[10] = 16'h1DC0;
        bitL1[11] = 16'h19C0;
        bitL1[12] = 16'h11C0;
        bitL1[13] = 16'h01C0;
        bitL1[14] = 16'h01C0;
        bitL1[15] = 16'h01C0;
        bitL1[16] = 16'h01C0;
        bitL1[17] = 16'h01C0;
        bitL1[18] = 16'h01C0;
        bitL1[19] = 16'h01C0;
        bitL1[20] = 16'h01C0;
        bitL1[21] = 16'h01C0;
        bitL1[22] = 16'h01C0;
        bitL1[23] = 16'h01C0;
        bitL1[24] = 16'h01C0;
        bitL1[25] = 16'h01C0;
        bitL1[26] = 16'h01C0;
        bitL1[27] = 16'h0000;
        bitL1[28] = 16'h0000;
        bitL1[29] = 16'h0000;
        bitL1[30] = 16'h0000;
        bitL1[31] = 16'h0000;

        bitL2[0] = 16'h0000;
        bitL2[1] = 16'h0000;
        bitL2[2] = 16'h0000;
        bitL2[3] = 16'h0000;
        bitL2[4] = 16'h0000;
        bitL2[5] = 16'h0000;
        bitL2[6] = 16'h0FE0;
        bitL2[7] = 16'h1FF8;
        bitL2[8] = 16'h3C38;
        bitL2[9] = 16'h381C;
        bitL2[10] = 16'h701C;
        bitL2[11] = 16'h001C;
        bitL2[12] = 16'h001C;
        bitL2[13] = 16'h0018;
        bitL2[14] = 16'h0038;
        bitL2[15] = 16'h0038;
        bitL2[16] = 16'h0070;
        bitL2[17] = 16'h00E0;
        bitL2[18] = 16'h00C0;
        bitL2[19] = 16'h01C0;
        bitL2[20] = 16'h0380;
        bitL2[21] = 16'h0700;
        bitL2[22] = 16'h0E00;
        bitL2[23] = 16'h1C00;
        bitL2[24] = 16'h3C00;
        bitL2[25] = 16'h3FFC;
        bitL2[26] = 16'h3FFC;
        bitL2[27] = 16'h0000;
        bitL2[28] = 16'h0000;
        bitL2[29] = 16'h0000;
        bitL2[30] = 16'h0000;
        bitL2[31] = 16'h0000;


        bitL3[0] = 16'h0000;
        bitL3[1] = 16'h0000;
        bitL3[2] = 16'h0000;
        bitL3[3] = 16'h0000;
        bitL3[4] = 16'h0000;
        bitL3[5] = 16'h0000;
        bitL3[6] = 16'h07E0;
        bitL3[7] = 16'h0FF8;
        bitL3[8] = 16'h1C38;
        bitL3[9] = 16'h381C;
        bitL3[10] = 16'h301C;
        bitL3[11] = 16'h101C;
        bitL3[12] = 16'h001C;
        bitL3[13] = 16'h0018;
        bitL3[14] = 16'h0078;
        bitL3[15] = 16'h03E0;
        bitL3[16] = 16'h03F0;
        bitL3[17] = 16'h0078;
        bitL3[18] = 16'h001C;
        bitL3[19] = 16'h001C;
        bitL3[20] = 16'h001C;
        bitL3[21] = 16'h100C;
        bitL3[22] = 16'h701C;
        bitL3[23] = 16'h381C;
        bitL3[24] = 16'h3C38;
        bitL3[25] = 16'h1FF8;
        bitL3[26] = 16'h0FE0;
        bitL3[27] = 16'h0180;
        bitL3[28] = 16'h0000;
        bitL3[29] = 16'h0000;
        bitL3[30] = 16'h0000;
        bitL3[31] = 16'h0000;

        bitL4[0] = 16'h0000;
        bitL4[1] = 16'h0000;
        bitL4[2] = 16'h0000;
        bitL4[3] = 16'h0000;
        bitL4[4] = 16'h0000;
        bitL4[5] = 16'h0000;
        bitL4[6] = 16'h0030;
        bitL4[7] = 16'h0070;
        bitL4[8] = 16'h0070;
        bitL4[9] = 16'h00F0;
        bitL4[10] = 16'h01F0;
        bitL4[11] = 16'h01B0;
        bitL4[12] = 16'h03B0;
        bitL4[13] = 16'h0730;
        bitL4[14] = 16'h0E30;
        bitL4[15] = 16'h0C30;
        bitL4[16] = 16'h1C30;
        bitL4[17] = 16'h3830;
        bitL4[18] = 16'h3030;
        bitL4[19] = 16'h7030;
        bitL4[20] = 16'hFFFE;
        bitL4[21] = 16'hFFFE;
        bitL4[22] = 16'hFFFE;
        bitL4[23] = 16'h0030;
        bitL4[24] = 16'h0030;
        bitL4[25] = 16'h0030;
        bitL4[26] = 16'h0030;
        bitL4[27] = 16'h0000;
        bitL4[28] = 16'h0000;
        bitL4[29] = 16'h0000;
        bitL4[30] = 16'h0000;
        bitL4[31] = 16'h0000;

        bitL5[0] = 16'h0000;
        bitL5[1] = 16'h0000;
        bitL5[2] = 16'h0000;
        bitL5[3] = 16'h1FF8;
        bitL5[4] = 16'h1FF8;
        bitL5[5] = 16'h1800;
        bitL5[6] = 16'h1800;
        bitL5[7] = 16'h1800;
        bitL5[8] = 16'h1800;
        bitL5[9] = 16'h1800;
        bitL5[10] = 16'h1800;
        bitL5[11] = 16'h1800;
        bitL5[12] = 16'h1BE0;
        bitL5[13] = 16'h3FF0;
        bitL5[14] = 16'h3C78;
        bitL5[15] = 16'h3838;
        bitL5[16] = 16'h1818;
        bitL5[17] = 16'h001C;
        bitL5[18] = 16'h001C;
        bitL5[19] = 16'h001C;
        bitL5[20] = 16'h001C;
        bitL5[21] = 16'h001C;
        bitL5[22] = 16'h001C;
        bitL5[23] = 16'h001C;
        bitL5[24] = 16'h0018;
        bitL5[25] = 16'h1038;
        bitL5[26] = 16'h3870;
        bitL5[27] = 16'h1FE0;
        bitL5[28] = 16'h07C0;
        bitL5[29] = 16'h0000;
        bitL5[30] = 16'h0000;
        bitL5[31] = 16'h0000;

        bitL6[0] = 16'h0000;
        bitL6[1] = 16'h0000;
        bitL6[2] = 16'h0000;
        bitL6[3] = 16'h0000;
        bitL6[4] = 16'h0000;
        bitL6[5] = 16'h0000;
        bitL6[6] = 16'h00E0;
        bitL6[7] = 16'h00E0;
        bitL6[8] = 16'h01C0;
        bitL6[9] = 16'h0380;
        bitL6[10] = 16'h0380;
        bitL6[11] = 16'h0700;
        bitL6[12] = 16'h0E00;
        bitL6[13] = 16'h0E00;
        bitL6[14] = 16'h1FF0;
        bitL6[15] = 16'h1FF8;
        bitL6[16] = 16'h3C1C;
        bitL6[17] = 16'h380E;
        bitL6[18] = 16'h700E;
        bitL6[19] = 16'h700E;
        bitL6[20] = 16'h700E;
        bitL6[21] = 16'h700E;
        bitL6[22] = 16'h700E;
        bitL6[23] = 16'h380E;
        bitL6[24] = 16'h3C1C;
        bitL6[25] = 16'h1FF8;
        bitL6[26] = 16'h0FF0;
        bitL6[27] = 16'h01C0;
        bitL6[28] = 16'h0000;
        bitL6[29] = 16'h0000;
        bitL6[30] = 16'h0000;
        bitL6[31] = 16'h0000;


        bitL8[0] = 16'h0000;
        bitL8[1] = 16'h0000;
        bitL8[2] = 16'h0000;
        bitL8[3] = 16'h0000;
        bitL8[4] = 16'h0000;
        bitL8[5] = 16'h0000;
        bitL8[6] = 16'h0FE0;
        bitL8[7] = 16'h1FF0;
        bitL8[8] = 16'h3838;
        bitL8[9] = 16'h301C;
        bitL8[10] = 16'h301C;
        bitL8[11] = 16'h301C;
        bitL8[12] = 16'h301C;
        bitL8[13] = 16'h3838;
        bitL8[14] = 16'h3C78;
        bitL8[15] = 16'h0FE0;
        bitL8[16] = 16'h1FF0;
        bitL8[17] = 16'h3C78;
        bitL8[18] = 16'h781C;
        bitL8[19] = 16'h701C;
        bitL8[20] = 16'h600C;
        bitL8[21] = 16'h600C;
        bitL8[22] = 16'h700C;
        bitL8[23] = 16'h701C;
        bitL8[24] = 16'h783C;
        bitL8[25] = 16'h3FF8;
        bitL8[26] = 16'h1FF0;
        bitL8[27] = 16'h0380;
        bitL8[28] = 16'h0000;
        bitL8[29] = 16'h0000;
        bitL8[30] = 16'h0000;
        bitL8[31] = 16'h0000;

        bitM0[0] = 12'h000;
        bitM0[1] = 12'h000;
        bitM0[2] = 12'h0F0;
        bitM0[3] = 12'h1F8;
        bitM0[4] = 12'h39C;
        bitM0[5] = 12'h30C;
        bitM0[6] = 12'h30C;
        bitM0[7] = 12'h30C;
        bitM0[8] = 12'h706;
        bitM0[9] = 12'h606;
        bitM0[10] = 12'h606;
        bitM0[11] = 12'h606;
        bitM0[12] = 12'h606;
        bitM0[13] = 12'h606;
        bitM0[14] = 12'h606;
        bitM0[15] = 12'h706;
        bitM0[16] = 12'h30C;
        bitM0[17] = 12'h30C;
        bitM0[18] = 12'h30C;
        bitM0[19] = 12'h39C;
        bitM0[20] = 12'h1F8;
        bitM0[21] = 12'h0F0;
        bitM0[22] = 12'h000;
        bitM0[23] = 12'h000;

        bitM1[0] = 12'h000;
        bitM1[1] = 12'h000;
        bitM1[2] = 12'h060;
        bitM1[3] = 12'h1E0;
        bitM1[4] = 12'h3E0;
        bitM1[5] = 12'h260;
        bitM1[6] = 12'h060;
        bitM1[7] = 12'h060;
        bitM1[8] = 12'h060;
        bitM1[9] = 12'h060;
        bitM1[10] = 12'h060;
        bitM1[11] = 12'h060;
        bitM1[12] = 12'h060;
        bitM1[13] = 12'h060;
        bitM1[14] = 12'h060;
        bitM1[15] = 12'h060;
        bitM1[16] = 12'h060;
        bitM1[17] = 12'h060;
        bitM1[18] = 12'h060;
        bitM1[19] = 12'h060;
        bitM1[20] = 12'h060;
        bitM1[21] = 12'h060;
        bitM1[22] = 12'h000;
        bitM1[23] = 12'h000;

        bitM2[0] = 12'h000;
        bitM2[1] = 12'h000;
        bitM2[2] = 12'h0F0;
        bitM2[3] = 12'h3F8;
        bitM2[4] = 12'h31C;
        bitM2[5] = 12'h60C;
        bitM2[6] = 12'h00C;
        bitM2[7] = 12'h00C;
        bitM2[8] = 12'h00C;
        bitM2[9] = 12'h00C;
        bitM2[10] = 12'h018;
        bitM2[11] = 12'h038;
        bitM2[12] = 12'h030;
        bitM2[13] = 12'h060;
        bitM2[14] = 12'h0C0;
        bitM2[15] = 12'h180;
        bitM2[16] = 12'h180;
        bitM2[17] = 12'h300;
        bitM2[18] = 12'h300;
        bitM2[19] = 12'h300;
        bitM2[20] = 12'h3FC;
        bitM2[21] = 12'h3FC;
        bitM2[22] = 12'h000;
        bitM2[23] = 12'h000;

        bitM4[0] = 12'h000;
        bitM4[1] = 12'h000;
        bitM4[2] = 12'h018;
        bitM4[3] = 12'h038;
        bitM4[4] = 12'h028;
        bitM4[5] = 12'h068;
        bitM4[6] = 12'h068;
        bitM4[7] = 12'h0C8;
        bitM4[8] = 12'h0C8;
        bitM4[9] = 12'h188;
        bitM4[10] = 12'h188;
        bitM4[11] = 12'h308;
        bitM4[12] = 12'h308;
        bitM4[13] = 12'h608;
        bitM4[14] = 12'h608;
        bitM4[15] = 12'h7FE;
        bitM4[16] = 12'h7FE;
        bitM4[17] = 12'h018;
        bitM4[18] = 12'h018;
        bitM4[19] = 12'h018;
        bitM4[20] = 12'h018;
        bitM4[21] = 12'h018;
        bitM4[22] = 12'h000;
        bitM4[23] = 12'h000;

        bitM8[0] = 12'h000;
        bitM8[1] = 12'h000;
        bitM8[2] = 12'h0F0;
        bitM8[3] = 12'h1F8;
        bitM8[4] = 12'h39C;
        bitM8[5] = 12'h30C;
        bitM8[6] = 12'h30C;
        bitM8[7] = 12'h30C;
        bitM8[8] = 12'h30C;
        bitM8[9] = 12'h30C;
        bitM8[10] = 12'h198;
        bitM8[11] = 12'h0F0;
        bitM8[12] = 12'h198;
        bitM8[13] = 12'h30C;
        bitM8[14] = 12'h20C;
        bitM8[15] = 12'h606;
        bitM8[16] = 12'h606;
        bitM8[17] = 12'h60E;
        bitM8[18] = 12'h70C;
        bitM8[19] = 12'h31C;
        bitM8[20] = 12'h3F8;
        bitM8[21] = 12'h0F0;
        bitM8[22] = 12'h000;
        bitM8[23] = 12'h000;

    end


endmodule

module render (
    input clk,
    input rstn,
    input [31:0] map_data,
    input render_en,
    output reg [31:0] addr,
    output [239:0] render_out,
    output reg [1:0] block_num,
    output reg [5:0] inblock_num,
    output reg [31:0] now_num,
    output [31:0] mapsam
);
    reg [31:0] map [15:0];
    reg [3:0] mapcnt;
    reg [31:0] baseaddr = 32'b0;
    // reg [1:0] render_line;
    reg [59:0] block [3:0];
    // reg [5:0] inline_num;
    // reg [31:0] now_num;

    assign mapsam = map[9];
    integer i;

    // 循环向内存读取当前棋盘数据
    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            for (i = 0; i < 16; i = i+1) map[i] <= 32'b0;
            mapcnt <= 4'b0;
            addr <= baseaddr;
        end
        else begin
            map[mapcnt] = map_data;
            mapcnt =  mapcnt + 1'b1;          
            addr = baseaddr + (mapcnt << 2);
        end
    end
    wire [59:0] block0, block1, block2, block3;
    block_render U_R0(.inline_num(inblock_num), .render_line(block_num), .now_num(map[4 * block_num]), .block(block0));
    block_render U_R1(.inline_num(inblock_num), .render_line(block_num), .now_num(map[4 * block_num + 1]), .block(block1));
    block_render U_R2(.inline_num(inblock_num), .render_line(block_num), .now_num(map[4 * block_num + 2]), .block(block2));
    block_render U_R3(.inline_num(inblock_num), .render_line(block_num), .now_num(map[4 * block_num + 3]), .block(block3));


    always @ (posedge render_en or negedge rstn) begin
        if(!rstn) begin
            inblock_num <= 6'b0;
            block_num <= 2'b00;
        end else begin
            inblock_num <= inblock_num + 1'b1;
            if(inblock_num >= 6'd59) begin
                inblock_num <= 6'b0;
                block_num <= block_num + 1'b1;
            end
        end
        
    end
    
    assign render_out = {block0, block1, block2, block3};




endmodule //reader