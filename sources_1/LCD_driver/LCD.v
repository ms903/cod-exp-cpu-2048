//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/02 16:56:56
// Design Name: 
// Module Name: LCD
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LCD(
    input clk_in,
    input rstn,
    input [15:0] sw_i,
    // output LCD_GND,     // GROUND
    // output LCD_3V3,     // VCC
    input [239:0] data_in,
    output LCD_PWR,     // 背光�???关，1打开�???0关闭，也可用PWM控制
    output reg LCD_CS,      // 片�?�信号，低电平有�???
    output reg LCD_SCK,     // 时钟信号
    output reg LCD_SDA,     // 数据信号�???
    output reg LCD_WR,      // 写使能，1为写数据�???0为写命令
    output reg LCD_RST,      // 重置信号，低电平有效
    output reg LCD_CLK,
    output reg render_en
    // output [15:0] led_o,
    // output [7:0] disp_an_o, disp_seg_o
);
    reg			[8:0]	reg_setxy	[12:0];
	reg			[8:0]	reg_init	[78:0];
    reg [15:0] colors [7:0];

	initial	//设定显示区域指令及数�?
		begin
			reg_setxy[0]	=	{1'b0,8'h2a};
			reg_setxy[1]	=	{1'b1,8'h00};
			reg_setxy[2]	=	{1'b1,8'h00};
			reg_setxy[3]	=	{1'b1,8'h00};
			reg_setxy[4]	=	{1'b1,8'hEF};
			reg_setxy[5]	=	{1'b0,8'h2b};
			reg_setxy[6]	=	{1'b1,8'h00};
			reg_setxy[7]	=	{1'b1,8'h00};
			reg_setxy[8]	=	{1'b1,8'h00};
			reg_setxy[9]	=	{1'b1,8'hEF};
			reg_setxy[10]	=	{1'b0,8'h29};
			reg_setxy[11]	=	{1'b0,8'h2c};
		end
 
	// data for init
	initial	//LCD初始化的命令及数�?
		begin
            /* Sleep Out (11h)  */
            reg_init[0] =  {1'b0, 8'h11 };	  //Exit Sleep

            reg_init[1] =  {1'b0, 8'hCF  };
            reg_init[2] =  {1'b1, 8'h00  };
            reg_init[3] =  {1'b1, 8'hC1  };
            reg_init[4] =  {1'b1, 8'h30  };

            /*  Power on sequence control (EDh) */

            reg_init[5] =  {1'b0, 8'hED };
            reg_init[6] =  {1'b1, 8'h64 };
            reg_init[7] =  {1'b1, 8'h03 };
            reg_init[8] =  {1'b1, 8'h12 };
            reg_init[9] =  {1'b1, 8'h81 };

            /*  Driver timing control A (E8h) */

            reg_init[10] =  {1'b0, 8'hE8 };
            reg_init[11] =  {1'b1, 8'h85 };
            reg_init[12] =  {1'b1, 8'h10 };
            reg_init[13] =  {1'b1, 8'h78 };

            /*  Power control A (CBh) */

            reg_init[14] =  {1'b0, 8'hCB };
            reg_init[15] =  {1'b1, 8'h39 };
            reg_init[16] =  {1'b1, 8'h2C };
            reg_init[17] =  {1'b1, 8'h00 };
            reg_init[18] =  {1'b1, 8'h34 };
            reg_init[19] =  {1'b1, 8'h02 };

            /* Pump ratio control (F7h) */

            reg_init[20] =  {1'b0, 8'hF7 };
            reg_init[21] =  {1'b1, 8'h20 };

            /* Driver timing control B */

            reg_init[22] =  {1'b0, 8'hEA };
            reg_init[23] =  {1'b1, 8'h00 };
            reg_init[24] =  {1'b1, 8'h00 };


            /* Power Control 1 (C0h) */

            reg_init[25] =  {1'b0, 8'hC0 };   //Power control
            reg_init[26] =  {1'b1, 8'h21 };  //VRH[5:0]

            /* Power Control 2 (C1h) */

            reg_init[27] =  {1'b0, 8'hC1 };   //Power control
            reg_init[28] =  {1'b1, 8'h11 };  //SAP[2:0];BT[3:0]

            /* VCOM Control 1 (C5h) */
            reg_init[29] =  {1'b0, 8'hC5 };
            reg_init[30] =  {1'b1, 8'h2D };
            reg_init[31] =  {1'b1, 8'h33 };


            /* memory access control set */

            reg_init[32] =  {1'b0, 8'h36 };   //Memory Access Control
            reg_init[33] =  {1'b1, 8'h40 };  /*竖屏  左上角到 (起点)到右下角 (终点)扫描方式*/


            reg_init[34] =  {1'b0, 8'h3A};   
            reg_init[35] =  {1'b1, 8'h55}; 

            /* Frame Rate Control (In Normal Mode/Full Colors) (B1h) */

            reg_init[36] =  {1'b0, 8'hB1 };
            reg_init[37] =  {1'b1, 8'h00 };
            reg_init[38] =  {1'b1, 8'h17 };

            /*  Display Function Control (B6h) */

            reg_init[39] =  {1'b0, 8'hB6 };
            reg_init[40] =  {1'b1, 8'h0A };
            reg_init[41] =  {1'b1, 8'hA2 };

            reg_init[42] =  {1'b0, 8'hF6};    			
            reg_init[43] =  {1'b1, 8'h01}; 
            reg_init[44] =  {1'b1, 8'h30}; 

            /* Enable 3G (F2h) */
            reg_init[45] =  {1'b0, 8'hF2 };
            reg_init[46] =  {1'b1, 8'h00 };

            /* Gamma Set (26h) */
            reg_init[47] =  {1'b0, 8'h26 };
            reg_init[48] =  {1'b1, 8'h01 };


            /* Positive Gamma Correction */
            reg_init[49] =  {1'b0, 8'he0}; //Positive gamma
            reg_init[50] =  {1'b1, 8'hd0};         
            reg_init[51] =  {1'b1, 8'h00}; 
            reg_init[52] =  {1'b1, 8'h02}; 
            reg_init[53] =  {1'b1, 8'h07}; 
            reg_init[54] =  {1'b1, 8'h0b}; 
            reg_init[55] =  {1'b1, 8'h1a}; 
            reg_init[56] =  {1'b1, 8'h31}; 
            reg_init[57] =  {1'b1, 8'h54}; 
            reg_init[58] =  {1'b1, 8'h40}; 
            reg_init[59] =  {1'b1, 8'h29}; 
            reg_init[60] =  {1'b1, 8'h12}; 
            reg_init[61] =  {1'b1, 8'h12}; 
            reg_init[62] =  {1'b1, 8'h12}; 
            reg_init[63] =  {1'b1, 8'h17};

            /* Negative Gamma Correction (E1h) */
            reg_init[64] =  {1'b0, 8'he1}; //Negative gamma
            reg_init[65] =  {1'b1, 8'hd0}; 
            reg_init[66] =  {1'b1, 8'h00}; 
            reg_init[67] =  {1'b1, 8'h02}; 
            reg_init[68] =  {1'b1, 8'h07}; 
            reg_init[69] =  {1'b1, 8'h05}; 
            reg_init[70] =  {1'b1, 8'h25}; 
            reg_init[71] =  {1'b1, 8'h2d}; 
            reg_init[72] =  {1'b1, 8'h44}; 
            reg_init[73] =  {1'b1, 8'h45}; 
            reg_init[74] =  {1'b1, 8'h1c}; 
            reg_init[75] =  {1'b1, 8'h18}; 
            reg_init[76] =  {1'b1, 8'h16}; 
            reg_init[77] =  {1'b1, 8'h1c}; 
            reg_init[78] =  {1'b1, 8'h1d}; 


            /* Display ON (29h) */
            // reg_init[79] =  {1'b0, 8'h29 };   //Display on

            // reg_init[80] =  {1'b0, 8'h2c};

            colors[0] = 16'hFDB8;
            colors[1] = 16'h4810;
            colors[2] = 16'h001f;
            colors[3] = 16'h0410;
            colors[4] = 16'hFEA0;
            colors[5] = 16'hf410;
            colors[6] = 16'h8410;
            colors[7] = 16'hffff;
            
		end


    `define IDLE 3'b000
    `define INIT 3'b001
    `define WRITE 3'b010
    `define SCAN  3'b011
    `define DELAY 3'b100
    `define DELAY_LONG 21'd1000
    `define DELAY_SHORT 21'd0

    wire clk, clk_data, clk_trans;
    reg [31:0] clkdiv;
    reg [2:0] status;
    reg [2:0] status_ret;       // 返回状�??
    reg [20:0] delay_ticks;
    reg [6:0] cnt;
    reg [8:0] data_write;
    reg [4:0] cnt_write;
    reg [31:0] cnt_delay;
    reg [4:0] cnt_init;
    reg [4:0] cnt_scan;
    reg high_half;
    reg [15:0] cnt_x;
    reg [15:0] cnt_y;
    reg [2:0] color_type;
    reg [240 - 1: 0] mask;
    always @(posedge clk_in or negedge rstn) begin
        if(~rstn)begin
            clkdiv <= 32'b0;
        end
        else clkdiv <= clkdiv + 1'b1;
    end


    // assign clk = ~clkdiv[sw_i[12:8]];     // 分频，clk 频率�? 100/8 MHz
    assign clk = clk_in;
    // assign led_o[3] = clk;

    // assign led_o[5] = render_en;

    // 有限状态自动机
    always @ (posedge clk or negedge rstn) begin
        if(!rstn) begin
            status <= `IDLE;
        end
        else begin 
            case(status)
                `IDLE: begin
                    // 初始化各种参数的状�??
                    mask <= {5'b1, 235'b0};
                    color_type <= 3'b0;
                    cnt_x <= 16'b0;
                    cnt_y <= 16'b0;
                    cnt_delay <= 32'b0;
                    cnt_write <= 5'b0;
                    data_write <= 9'b0;
                    cnt <= 7'b0;
                    cnt_init <= 5'b0;
                    cnt_scan <= 5'b0;
                    delay_ticks <= 21'b0;       // 延迟的时钟周期数
                    high_half <= 1'b1;

                    // 进入初始化状�?
                    status <= `INIT;
                    status_ret <= `IDLE;
                end
                `INIT: begin
                    case(cnt_init)
                        5'b00000: begin LCD_RST <= 1'b0; cnt_init <= cnt_init + 1'b1; end                           // 设置LCD输入有效的复位信号，进入下一条状�?
                        5'b00001: begin delay_ticks <= `DELAY_LONG; status <= `DELAY; status_ret <= `INIT; cnt_init <= cnt_init + 1'b1; end         // 进入延迟状�?�，延迟 4000 个时钟周期，延迟结束后返回INIT状�??
                        5'b00010: begin LCD_RST <= 1'b1; cnt_init <= cnt_init + 1'b1; end                           // 设置LCD输入无效的复位信号，进入下一条状�?
                        5'b00011: begin delay_ticks <= `DELAY_LONG; status <= `DELAY; status_ret <= `INIT; cnt_init <= cnt_init + 1'b1; end         // 进入延迟状�?�，延迟 4000 个时钟周期，延迟结束后返回INIT状�??
                        5'b00100: begin 
                                    if(cnt >= 7'd79) begin
                                        cnt <= 7'b0;                        // 清空计数�?
                                        cnt_init <= cnt_init + 1'b1;        // 
                                    end else begin
                                        data_write <= reg_init[cnt];

                                        if(cnt == 7'b0) delay_ticks <= `DELAY_LONG;
                                        else delay_ticks <= `DELAY_SHORT;

                                        cnt <= cnt + 1'b1;
                                        status <= `WRITE;
                                        status_ret <= `INIT;
                                    end
                                end
                        5'b00101: begin cnt_init <= 5'b00000; status <= `SCAN; end
                    endcase
                end

                `SCAN: begin
                    // 暂时未完成，暂时设置为全部写入黄�?
                    case(cnt_scan) 
                        5'b00000: begin  
                            // 设置刷新区域
                                if(cnt >= 12) begin
                                    cnt <= 7'b0;
                                    cnt_scan <= cnt_scan + 1'b1;
                                    // data_write <= {1'b1, 16'hffe0};
                                end else begin
                                    data_write <= reg_setxy[cnt];
                                    cnt <= cnt + 1'b1;

                                    delay_ticks <= `DELAY_SHORT;

                                    status <= `WRITE;
                                    status_ret <= `SCAN;
                                end
                            end
                        5'b00001: begin
                                render_en <= 1'b1;      // 使能渲染信号
                                delay_ticks <= 21'd2;
                                cnt_scan <= cnt_scan + 1'b1;
                                status <= `DELAY;
                                status_ret <= `SCAN;
                            end
                        5'b00010: begin
                                // 先传输前半字节，在传输后半字�?
                                if(cnt_y >= 16'd480) begin
                                    // 改行渲染完毕
                                    cnt_y <= 16'b0;
                                    cnt_x <= cnt_x + 1'b1;
                                    if(cnt_x >= 16'd239) begin
                                        cnt_x <= 16'b0;
                                    end
                                    render_en <= 1'b1;      // 使能渲染信号
                                    delay_ticks <= 21'd2;
                                    status <= `DELAY;
                                    status_ret <= `SCAN;
                                    // color_type <= color_type + 1'b1;
                                end else begin
                                    render_en <= 1'b0;
                                    // if(high_half) data_write <= {1'b1, {sw_i[0] ? colors[color_type][15:8] : 8'h00}};
                                    // else data_write <= {1'b1, {sw_i[0] ? colors[color_type][7:0] : 8'h00}};
                                    if(high_half) data_write <= {1'b1, {data_in[cnt_y[15:1]] ? 8'hf4 : 8'h00}};
                                    else data_write <= {1'b1, {data_in[cnt_y[15:1]] ? 8'h10 : 8'h00}};
                                    high_half <= ~high_half;
                                    cnt_y <= cnt_y + 1'b1;

                                    delay_ticks <= `DELAY_SHORT;

                                    status <= `WRITE;
                                    status_ret <= `SCAN;
                                end
                            end
                        default: begin status <= `IDLE; end
                    endcase
                end

                `WRITE: begin
                    if(cnt_write >= 5'd17) cnt_write <= 5'b0;
                    else cnt_write <= cnt_write + 1'b1;
                    case(cnt_write)
                        5'b00000: begin LCD_WR <= data_write[8]; LCD_CS <= 1'b0; end
                        5'b00001: begin LCD_SCK <= 1'b0; LCD_SDA <= data_write[7]; end
                        5'b00010: begin LCD_SCK <= 1'b1;  end
                        5'b00011: begin LCD_SCK <= 1'b0; LCD_SDA <= data_write[6]; end
                        5'b00100: begin LCD_SCK <= 1'b1;  end
                        5'b00101: begin LCD_SCK <= 1'b0; LCD_SDA <= data_write[5]; end
                        5'b00110: begin LCD_SCK <= 1'b1;  end
                        5'b00111: begin LCD_SCK <= 1'b0; LCD_SDA <= data_write[4]; end
                        5'b01000: begin LCD_SCK <= 1'b1;  end
                        5'b01001: begin LCD_SCK <= 1'b0; LCD_SDA <= data_write[3]; end
                        5'b01010: begin LCD_SCK <= 1'b1;  end
                        5'b01011: begin LCD_SCK <= 1'b0; LCD_SDA <= data_write[2]; end
                        5'b01100: begin LCD_SCK <= 1'b1;  end
                        5'b01101: begin LCD_SCK <= 1'b0; LCD_SDA <= data_write[1]; end
                        5'b01110: begin LCD_SCK <= 1'b1;  end
                        5'b01111: begin LCD_SCK <= 1'b0; LCD_SDA <= data_write[0]; end
                        5'b10000: begin LCD_SCK <= 1'b1;  end
                        5'b10001: begin LCD_SCK <= 1'b0; status <= `DELAY; LCD_CS <= 1'b1;end          // 数据传输完成，DELAY后返回SCAN状�?�，获取下一个写入数�?
                        default:  begin status <= `IDLE; end
                    endcase
                end

                `DELAY: begin
                    if(cnt_delay >= delay_ticks) begin
                        // 延迟结束
                        status <= status_ret;
                        delay_ticks <= 21'b0;
                        cnt_delay <= 32'b0;
                    end
                    else cnt_delay <= cnt_delay + 1'b1;
                end

                default: begin status <= `IDLE; end


            endcase
        end

    end

    // assign led_o[0] = ~clkdiv[3];
    // assign led_o[1] = ~clkdiv[24];

    // reg [63:0] display_data;
    // always @ (*) begin
    //     case(sw_i[7:4]) 
    //         4'b0000: display_data <= {55'b0, data_write};
    //         4'b0001: display_data <= {61'b0, status};
    //         4'b0010: display_data <= {59'b0, cnt_init};
    //         4'b0011: display_data <= {59'b0, cnt_scan};
    //         4'b0100: display_data <= {59'b0, cnt_write};
    //         4'b0101: display_data <= {32'b0, cnt_delay};
    //         4'b0110: display_data <= {43'b0, cnt};
    //         4'b0111: display_data <= {48'b0, cnt_x};
    //         4'b1000: display_data <= {55'b0, cnt_y};
    //         4'b1001: display_data <= {data_in[63:0]};
    //         default: display_data <= {55'b0, data_write};
    //     endcase
    // end

    assign LCD_PWR = 1'b1;                                                                                                                                                                            
    // seg7x16 U_seg7x16(clk_in, rstn, sw_i[0], display_data, disp_seg_o, disp_an_o);




endmodule


