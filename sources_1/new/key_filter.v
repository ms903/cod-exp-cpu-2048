//---------------------------------------------------
//高电平有效
//输出模板  o_key_flag && !o_key_state （一个脉冲）表示按下

module key_filter_module(

    input                               i_clk                     ,
    input                               i_rstn                    ,
    input                               i_key                     ,
    output reg                          o_key_flag                ,
    output reg                          o_key_state                  
	);


parameter
        IDEL        =  4'b0001,
        FILTER0     =  4'b0010,
        DOWN        =  4'b0100,
        FILTER1     =  4'b1000;


		
reg    [3:0]   state                ;
reg    [19:0]  cnt_20ms             ;
reg            en_cnt_20ms          ;//使能计数寄存器
reg            i_key_a,i_key_b      ;
reg            key_tmp_a,key_tmp_b  ;
reg            cnt_20ms_full        ;//计数满标志信号
wire           pedge,nedge          ;
 
//---------------跨时钟域处理，打两个拍子----------------//
always@(posedge i_clk or negedge i_rstn)
    if(!i_rstn)
      begin
         i_key_a <= 1'b0;
         i_key_b <= 1'b0;
      end
    else 
        begin
         i_key_a <= i_key;
         i_key_b <= i_key_a;
       end
//-------------边沿监测电路----------------------------//
always@(posedge i_clk or negedge i_rstn)
    if(!i_rstn)begin
        key_tmp_a <= 1'b0;
        key_tmp_b <= 1'b0;
    end
    else begin
        key_tmp_a <= i_key_b;
        key_tmp_b <= key_tmp_a;
    end
	
assign nedge = !key_tmp_a &  key_tmp_b  ;
assign pedge = key_tmp_a  & (!key_tmp_b);

//------------------------20ms计数器------------------//
always@(posedge i_clk or negedge i_rstn)
    if(!i_rstn)
        cnt_20ms <= 20'd0;
    else if(en_cnt_20ms)
        cnt_20ms <= cnt_20ms + 1'b1;
    else
        cnt_20ms <= 20'd0;
	
always@(posedge i_clk or negedge i_rstn)
    if(!i_rstn)
        cnt_20ms_full <= 1'b0;
    else if(cnt_20ms == 999_999)
        cnt_20ms_full <= 1'b1;
    else
        cnt_20ms_full <= 1'b0;

//----------------fsm-----------------------------
always@(posedge i_clk or negedge i_rstn)
    if(!i_rstn)begin
        en_cnt_20ms <= 1'b0;
        state       <= IDEL;
        o_key_flag  <= 1'b0;
        o_key_state <= 1'b1;
    end
    else begin
        case(state)
            IDEL :
                begin
                    o_key_flag <= 1'b0;
                    if(pedge)begin
                        state       <= FILTER0;
                        en_cnt_20ms <= 1'b1;
                    end
                    else
                        state <= IDEL;
                end
					
            FILTER0:
                if(cnt_20ms_full)begin
                    o_key_flag  <= 1'b1;
                    o_key_state <= 1'b0;
                    en_cnt_20ms <= 1'b0;
                    state       <= DOWN;
                end
                else if(nedge)begin
                    state       <= IDEL;
                    en_cnt_20ms <= 1'b0;
                end
                else
                    state <= FILTER0;
					
            DOWN:
                begin
                    o_key_flag <= 1'b0;
                    if(nedge)begin
                        state       <= FILTER1;
                        en_cnt_20ms <= 1'b1;
                    end
                    else
                        state <= DOWN;
                end
			
            FILTER1:
                if(cnt_20ms_full)begin
                    o_key_flag  <= 1'b1;
                    o_key_state <= 1'b1;
                    en_cnt_20ms <= 1'b0;
                    state       <= IDEL;
                end
                else if(pedge)begin
                    en_cnt_20ms <= 1'b0;
                    state       <= DOWN;
                end
                else
                    state <= FILTER1;
			
            default:
                begin
                    state       <= IDEL;
                    en_cnt_20ms <= 1'b0;
                    o_key_flag  <= 1'b0;
                    o_key_state <= 1'b1;
                end
				
        endcase
    end
	


endmodule


 
// /*========================================*
//     filename    : key_filter.v
//     description : 按键消抖实验
//     time        : 2022-11-08 
//     author      : 卡夫卡与海
// *========================================*/
 
// module key_filter(
//     input       clk      ,//系统时钟 50MHZ
//     input       rst_n    ,//系统复位
//     input       key_in   ,//按键输入
 
//     output reg  key_down   //按键输出 
// );
// //参数定义
// parameter   DELAY_TIME = 2000_000;//20ms
 
// //信号定义
// reg             filter_flag ;//抖动标志
 
// reg             key_r0      ;//打拍
// reg             key_r1      ;
// reg             key_r2      ;
 
// wire            nedge       ;//下降沿
// wire            podge       ;//上升沿
 
// reg    [19:0]   cnt_20ms    ;//计数器，计数20ms
// wire            add_cnt_20ms;
// wire            end_cnt_20ms;
 
// //对输入按键进行打拍，异步信号同步并检测边沿
// always @(posedge clk or negedge rst_n)begin
//     if(!rst_n)begin
//         key_r0 <= -1;//负数以补码方式存放，对原码取反加一
//         key_r1 <= -1;
//         key_r2 <= -1;
//     end
//     else begin
//         key_r0 <= key_in;
//         key_r1 <= key_r0;
//         key_r2 <= key_r1;
//     end
// end
 
// assign nedge = ~key_r1 && key_r2 ? 1'b1 :1'b0;//检测下降沿
// assign podge = key_r1 && ~key_r2 ? 1'b1 :1'b0;//检测上升沿
 
// //当检测到下降沿，filter_flag为1
// always @(posedge clk or negedge rst_n)begin
//     if(!rst_n)begin
//         filter_flag <= 1'b0;
//     end
//     else if(nedge)begin
//         filter_flag <= 1'b1;
//     end
//     else if(end_cnt_20ms)begin
//         filter_flag <= 1'b0;
//     end
//     else begin
//         filter_flag <= filter_flag;
//     end
// end
// //当检测到filter_flag为1时开始计数 cnt_20ms
// always @(posedge clk or negedge rst_n)begin
//     if(!rst_n)begin
//         cnt_20ms <= 0;
//     end
//     else if(add_cnt_20ms)begin
//         if(end_cnt_20ms)begin
//             cnt_20ms <= 0;
//         end
//         else begin
//             cnt_20ms <= cnt_20ms + 1'b1;
//         end
//     end
// end
// assign add_cnt_20ms = filter_flag;
// assign end_cnt_20ms = add_cnt_20ms && cnt_20ms == (DELAY_TIME - 1);
 
// //key_down取是最后当前周期的key_r2的值，是稳定的
// //当计数器计数满20ms后，并且没有抖动时，表面抖动结束
// always @(posedge clk or negedge rst_n)begin
//     if(!rst_n)begin
//         key_down <= 0;
//     end
//     else if(end_cnt_20ms)begin
//         key_down <= ~key_r2;
//     end
//     else begin
//         key_down <= 0;
//     end
// end
 
// endmodule



`define IDLE 2'b000
`define FILT1 2'b001
`define HIGH 2'b010
`define FILT2 2'b011
`define OUT 3'b100

`define delay_filt 20'h0ffff
`define output_ticks 4'b1111

module key_filter(
    input clk, rstn,
    input key_in,
    output reg key_out
);

    reg [2:0] state;
    reg [19:0] cnt;
    reg key_down;
    reg [3:0] cnt_output;
    reg outputed;

    always @ (posedge clk or negedge rstn) begin
        if(~rstn) begin
            state <= `IDLE;
            key_down <= 1'b0;
            cnt <= 20'b0;
            cnt_output <= 4'b0;
            outputed <= 1'b0;
            key_out <= 1'b0;
        end else begin
            case(state)
                `IDLE : begin
                    cnt <= 20'b0;
                    cnt_output <= 4'b0000;
                    key_down <= 1'b0;
                    if(key_in) begin
                        // 检测到高电平，进入消抖状态1
                        state <= `FILT1;
                    end else begin
                        state <= `IDLE;
                        // cnt_output <= 4'b0000;
                        // key_down <= 1'b0;
                        // cnt <= 20'b0;
                    end
                end

                `FILT1 : begin
                    cnt <= cnt + 1'b1;
                    if(cnt >= `delay_filt) begin
                        // 消抖延时完成
                        cnt_output <= 4'b0000;
                        state <= `HIGH;
                        cnt <= 20'b0;
                        outputed <= 1'b0;
                    end
                end

                `HIGH : begin
                    if(key_down == 1'b0 && key_in == 1'b1) begin
                        // 刚进行完延时消抖，抖动后处于高电平，
                        key_down <= 1'b1;
                    end else if(key_down == 1'b0 && key_in == 1'b0) begin
                        // 刚进行完延时消抖，抖动后未处于高电平，重置状态机
                        state <= `IDLE;
                        cnt <= 20'b0;
                    end else if(key_down == 1'b1 && key_in == 1'b0) begin
                        // 进入按下状态后又松开，进入消抖2
                        state <= `FILT2;
                        cnt <= 20'b0;
                        outputed <= 1'b0;
                    end
                    // else if(key_down == 1'b1 && key_in == 1'b1) begin
                    //     if(!outputed) begin
                    //         key_out <= 1'b1;
                    //         cnt_output <= cnt_output + 1'b1;
                    //         if(cnt_output == `output_ticks) begin
                    //             outputed <= 1'b1;
                    //             key_out <= 1'b0;
                    //         end
                    //     end 
                    // end
                end

                `FILT2 : begin
                    cnt <= cnt + 1'b1;
                    if(cnt >= `delay_filt) begin
                        // 消抖延时完成
                        cnt_output <= 4'b0000;
                        state <= `OUT;
                    end
                end

                `OUT : begin
                    if(!outputed) begin
                        key_out <= 1'b1;
                        cnt_output <= cnt_output + 1'b1;
                        if(cnt_output == `output_ticks) begin
                            outputed <= 1'b1;
                            key_out <= 1'b0;
                            state <= `IDLE;
                        end
                    end 
                end

                default : state <= `IDLE;
            endcase
        end


    end




endmodule