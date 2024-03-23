//  //////////////////////////////////////////////////////////////////////////////////
//  // Company: 
//  // Engineer: 
//  // 
//  // Create Date: 2023/06/27 09:20:43
//  // Design Name: 
//  // Module Name: top
//  // Project Name: 
//  // Target Devices: 
//  // Tool Versions: 
//  // Description: 
//  // 
//  // Dependencies: 
//  // 
//  // Revision:
//  // Revision 0.01 - File Created
//  // Additional Comments:
//  // 
//  //////////////////////////////////////////////////////////////////////////////////


//  module top(
//      input clk,
//      input rstn,
//      input [4:0] btn_i,
//      input [15:0] sw_i,
//      output [7:0] disp_an_o,
//      output [7:0] disp_seg_o,
//      output [15:0]  led_o,
//      output LCD_CS, LCD_SCK, LCD_SDA, LCD_WR, LCD_RST, LCD_CLK, LCD_PWR
//  );

//      // wire [4:0] btn_i;
//      // wire [15:0] sw_i;
//      wire clk_in;
//      assign clk_in = clk;

//      // U10
//      // wire [4:0] BTN_out;
//      // wire [15:0] SW_out;
//      wire [15:0] SW;
//      wire [4:0] BTN;

//      // U_counter_x
//      // wire counter_we_out;
//      // wire [31:0] counter_val;
//      // wire [1:0] counter_ch;
//      wire counter0_OUT, counter1_OUT, counter2_OUT;
//      wire [31:0] counter_out;

//      // U_clk_div ʱ�ӷ�Ƶ
//      wire [31:0] clkdiv;
//      wire Clk_CPU;

//      // U_SPIO
//      // wire EN;
//      // wire [31:0] P_Data;
//      wire [15:0] LED_out, led;
//      // wire [15:0] led;
//      wire [1:0] counter_set;
//      wire [31:0] doutb, render_addr;
//      // wire [13:0] GPIOf0;

//      // U6_SSeg7
//      // wire [31:0] Hexs;
//      // wire [7:0] LES, point;
//      // seg_an, seg_sout;
//      // wire lopt;
//      wire [7:0] seg_an, seg_sout;
//      // wire SW0, flash;


//      // U_RAM_B
//      wire [31:0] douta;
//      // wire [31:0] dina;
//      // wire [9:0] addra;
//      // wire [3:0] wea;

//      // U_Multi_8CH32
//      // wire [31:0] data0, data1, data2, data3, data4, data5, data6, data7;
//      // wire [63:0] Multi_LES, point_in;
//      // wire [2:0] Switch;
//      // wire U5EN;
//      wire [31:0] Disp_num;
//      wire [7:0] LE_out, point_out;

//      // U4
//      wire [31:0] Peripheral_in, Cpu_data4bus, ram_data_in;
//      // wire [31:0] Cpu_data2bus, addr_bus, counter_out, ram_data_out, Disp_num, counter_in;
//      // , led_out;
//      wire [9:0] ram_addr;
//      // wire [7:0] LE_out, point_out;
//      // wire [4:0] BTN;
//      // wire counter0_out, counter1_out, counter2_out, lopt;
//      wire GPIOf0000000_we, counter_we_out, GPIOe0000000_we;

//      // U3
//      wire [31:0] Data_read, Data_write_to_dm;
//      // wire [31:0] Addr_in, Data_read_from_dm, Data_write;
//      wire [3:0] wea_mem;

//      // U_ROM_D
//      // wire [9:0] a;
//      wire [31:0] spo;

//      // U_SCPU
//      wire [31:0] PC_out, Addr_out, Data_out;
//      // wire [31:0] Data_in, inst_in;
//      // wire INT, MIO_ready;
//      wire CPU_MIO, mem_w_out;
//      wire [2:0] dm_ctrl_out;
//      wire rst;
//      // connect
//      // Enter U10_Enter(.clk(clk_in), .BTN(btn_i), .SW(sw_i), .BTN_out(BTN_out), .SW_out(SW_out));
//      assign BTN = btn_i;
//      assign SW = sw_i;

//      assign rst = ~rstn;
//      clk_div U_clk_div(.clk(clk), .rst(rst), .SW2(SW[2]), .clkdiv(clkdiv), .Clk_CPU(Clk_CPU));

//      wire Clk_CPUn = ~Clk_CPU;
//      wire clkn = ~clk;

//      Counter_x U_Counter_x(.clk(Clk_CPUn), .rst(rst), .clk0(clkdiv[6]), .clk1(clkdiv[9]), .clk2(clkdiv[11]), 
//                              .counter_we(counter_we_out), .counter_val(Peripheral_in), .counter_ch(counter_set), 
//                              .counter0_OUT(counter0_OUT), .counter1_OUT(counter1_OUT), .counter2_OUT(counter2_OUT), .counter_out());


//      // assign P_Data = Peripheral_in;
//      // assign EN = GPIOf0000000_we;
//      SPIO U_SPIO(.clk(Clk_CPUn), .rst(rst), .EN(GPIOf0000000_we), 
//                  .P_Data(Peripheral_in), .counter_set(counter_set), 
//                  .LED_out(LED_out), .led(LED), .GPIOf0());

//      // assign SW0 = SW_out[0];
//      // assign Hexs = Disp_num;
//      // assign LES = LE_out;
//      // assign point = point_out;
//      // assign flash = clkdiv[0];
//      // SSeg7 U_SSeg7(.clk(clk), .rst(rst), .SW0(SW[0]), .flash(clkdiv[10]), 
//      //                .Hexs(Disp_num), .point(point_out), .LES(LE_out), 
//      //                .seg_an(seg_an), .seg_sout(seg_sout));



//      // assign U5EN = GPIOe0000000_we;
//      // assign Switch = SW_out[7:5];
//      // assign point_in = clkdiv;
//      // assign data0 = Peripheral_in;
//      // assign data1 = PC_out;
//      // assign data2 = spo;
//      // assign data3 = counter_out;
//      // assign data4 = Addr_out;
//      // assign data5 = Data_out;
//      // assign data6 = Cpu_data4bus;
//      // assign data7 = PC_out;
//      // assign Multi_LES = 64'b1;
//      Multi_8CH32 U_Multi_8CH32(.clk(Clk_CPUn), .rst(rst), .EN(GPIOe0000000_we), .Switch(SW[7:5]), 
//                                .point_in({32'b0,clkdiv}), .LES({64'hFFFFFFFFFFFFFFFF}), 
//                                .data0(Peripheral_in), .data1({PC_out[31:2], 2'b0}), .data2(spo), 
//                                .data3(counter_out), .data4(Addr_out), .data5(Data_out), .data6(Cpu_data4bus), 
//                                .data7(PC_out), .point_out(point_out), .LE_out(LE_out), .Disp_num(Disp_num)
//                                );


//      // assign BTN = BTN_out;
//      // assign SW = SW_out;
//      // assign Cpu_data2bus = Data_out;
//      // assign addr_bus = Addr_out;
//      // assign counter_in = counter_out;
//      // assign counter0_out = U9_counter0_OUT;
//      // assign counter1_out = U9_counter1_OUT;
//      // assign counter2_out = U9_counter2_OUT;
//      // assign led_out = LED_out;
//      // assign ram_data_out = douta;
//      MIO_BUS U_MIO_BUS(.clk(clk), .rst(rst), .BTN(BTN), .SW(SW), .mem_w(mem_w_out), 
//                         .Cpu_data2bus(Data_out), .addr_bus(Addr_out), .ram_data_out(douta), 
//                         .led_out(LED_out), .counter_out(counter_out), .counter0_out(counter0_OUT), 
//                         .counter1_out(counter1_OUT), .counter2_out(counter2_OUT), 
//                         .Cpu_data4bus(Cpu_data4bus), .ram_data_in(ram_data_in), 
//                         .ram_addr(ram_addr), .data_ram_we(), .GPIOf0000000_we(GPIOf0000000_we), 
//                         .GPIOe0000000_we(GPIOe0000000_we), .counter_we(counter_we_out), .Peripheral_in(Peripheral_in)
//                         );


//      assign Addr_in = Addr_out;
//      assign Data_read_from_dm = Cpu_data4bus;
//      assign Data_write = ram_data_in;



//      dm_controller U_dm_controller(.mem_w(mem_w_out), .Addr_in(Addr_out), .Data_write(Data_out), 
//                                  .dm_ctrl(dm_ctrl_out), .Data_read_from_dm(douta), 
//                                  .Data_read(Data_read), .Data_write_to_dm(Data_write_to_dm), .wea_mem(wea_mem));

//      wire [239:0] render_out;
//      wire render_en;
//      assign led_o[10] = render_en;


//      wire cclk;
//      assign cclk = clkdiv[SW[15:11]];

//      LCD U_LCD(.clk_in(cclk), .rstn(rstn), .sw_i(SW), .data_in(render_out), .LCD_PWR(LCD_PWR), .LCD_SCK(LCD_SCK),
//                .LCD_CS(LCD_CS), .LCD_SDA(LCD_SDA), .LCD_WR(LCD_WR), .LCD_RST(LCD_RST), .LCD_CLK(LCD_CLK),
//                 .render_en(render_en) );


//      wire [1:0] block_num;
//      wire [5:0] inblock_num;
//      wire [31:0] now_num;
//      wire [31:0] mapsam;

//      // always @ (posedge render_en) begin
//      //     r_num <= r_num + 1'b1;
//      // end



//      render U_render(.clk(clkdiv[2]), .rstn(rstn), .map_data(doutb), .render_en(render_en), 
//                      .addr(render_addr), .render_out(render_out),
//                      .block_num(block_num), .inblock_num(inblock_num),  .mapsam(mapsam));

//      RAM_D U_RAM_D(.clka(~clk), .wea(wea_mem), .addra(Addr_out[11:2]), 
//                      .dina(Data_write_to_dm), .douta(douta),
//                      .clkb(~clk), .web(4'b0000), .addrb(render_addr[11:2]), .doutb(doutb), .dinb(32'b0));


//      reg [63:0] display_data;
//      always @ (*) begin
//          case(SW[7:4]) 
//              4'b0000: display_data <= {32'b0, doutb};
//              4'b0001: display_data <= {32'b0, render_addr};
//              4'b0010: display_data <= {render_out[59:0]};
//              4'b0011: display_data <= {render_out[119:60]};
//              4'b0100: display_data <= {render_out[179:120]};
//              4'b0101: display_data <= {render_out[239:180]};
//              4'b0110: display_data <= {64'b0 };
//              4'b0111: display_data <= {62'b0, block_num};
//              4'b1000: display_data <= {58'b0, inblock_num};
//              4'b1001: display_data <= {32'b0, now_num};
//              4'b1010: display_data <= {32'b0, mapsam};
//              // default: display_data <= {55'b0, data_write};
//          endcase
//      end
//      // seg7x16 U_seg7x16(clk_in, rstn, sw_i[0], display_data, disp_seg_o, disp_an_o);

//      ROM_I U_ROM_I(.a(PC_out[11:2]), .spo(spo));

//      SCPU U_SCPU(.clk(Clk_CPU), .reset(rst), .MIO_ready(CPU_MIO), .inst_in(spo), 
//                  .INT(counter0_OUT), .Data_in(Data_read), .mem_w(mem_w_out), .PC_out(PC_out), 
//                  .Addr_out(Addr_out), .Data_out(Data_out), .DMSize(dm_ctrl_out), .CPU_MIO(CPU_MIO));


//      assign led_o = led;
//      assign disp_an_o = seg_an;
//      assign disp_seg_o = seg_sout;
    

//  endmodule










module top(
   input clk,
   input rstn,
   input [3:0] btn_i,
   input [15:0] sw_i,
   output [7:0] disp_an_o,
   output [7:0] disp_seg_o,
   output [15:0]  led_o,
   output LCD_CS, LCD_SCK, LCD_SDA, LCD_WR, LCD_RST, LCD_CLK, LCD_PWR
);

    wire clk_in;
    assign clk_in = clk;

    wire [15:0] SW;
    wire [4:0] BTN;

    wire counter0_OUT, counter1_OUT, counter2_OUT;
    wire [31:0] counter_out;

    wire [31:0] clkdiv;
    wire Clk_CPU;

    wire [15:0] LED_out, led;
    wire [1:0] counter_set;



    wire [7:0] seg_an, seg_sout;


    wire [31:0] doutb, render_addr;
    // U_RAM_B
    wire [31:0] douta;

    wire [31:0] Disp_num;
    wire [7:0] LE_out, point_out;

    // U4
    wire [31:0] Peripheral_in, Cpu_data4bus, ram_data_in;

    wire [9:0] ram_addr;

    wire GPIOf0000000_we, counter_we_out, GPIOe0000000_we;


    wire [31:0] Data_read, Data_write_to_dm;

    wire [3:0] wea_mem;


    wire [31:0] spo;

    // U_SCPU
    wire [31:0] PC_out, Addr_out, Data_out;

    wire CPU_MIO, mem_w_out;
    wire [2:0] dm_ctrl_out;
    wire rst;

    assign SW = sw_i;

    assign rst = ~rstn;
    clk_div U_clk_div(.clk(clk), .rst(rst), .SW2(SW[2]), .clkdiv(clkdiv), .Clk_CPU());

    assign Clk_CPU = ~clkdiv[SW[15:11]];
    assign Clk_CPUn = ~Clk_CPU;
    wire clkn = ~clk;
    wire [3:0] o_key_flag;

    assign led_o[7:4] = btn_i[3:0];

    key_filter U_KF0(.clk(clk), .rstn(rstn), .key_in(btn_i[0]), .key_out(BTN[0]));
    key_filter U_KF1(.clk(clk), .rstn(rstn), .key_in(btn_i[1]), .key_out(BTN[1]));
    key_filter U_KF2(.clk(clk), .rstn(rstn), .key_in(btn_i[2]), .key_out(BTN[2]));
    key_filter U_KF3(.clk(clk), .rstn(rstn), .key_in(btn_i[3]), .key_out(BTN[3]));
    assign BTN[4] = 1'b0;
    // assign BTN[3:0] = btn_i[3:0];

    Counter_x U_Counter_x(.clk(Clk_CPU), .rst(rst), .clk0(clkdiv[6]), .clk1(clkdiv[9]), .clk2(clkdiv[11]), 
                            .counter_we(counter_we_out), .counter_val(Peripheral_in), .counter_ch(counter_set), 
                            .counter0_OUT(counter0_OUT), .counter1_OUT(counter1_OUT), .counter2_OUT(counter2_OUT), .counter_out());


    SPIO U_SPIO(.clk(Clk_CPU), .rst(rst), .EN(GPIOf0000000_we), 
                .P_Data(Peripheral_in), .counter_set(counter_set), 
                .LED_out(LED_out), .led(LED), .GPIOf0());


    SSeg7 U_SSeg7(.clk(Clk_CPU), .rst(rst), .SW0(SW[0]), .flash(clkdiv[10]), 
                    .Hexs(Disp_num), .point(point_out), .LES(LE_out), 
                    .seg_an(seg_an), .seg_sout(seg_sout));



    Multi_8CH32 U_Multi_8CH32(.clk(Clk_CPU), .rst(rst), .EN(GPIOe0000000_we), .Switch(SW[7:5]), 
                                .point_in({32'b0,clkdiv}), .LES({64'hFFFFFFFFFFFFFFFF}), 
                                .data0(Peripheral_in), .data1({PC_out[31:2], 2'b0}), .data2(spo), 
                                .data3(counter_out), .data4(Addr_out), .data5(Data_out), .data6(Cpu_data4bus), 
                                .data7(PC_out), .point_out(point_out), .LE_out(LE_out), .Disp_num(Disp_num)
                                );


    MIO_BUS U_MIO_BUS(.clk(Clk_CPU), .rst(rst), .BTN(BTN), .SW(SW), .mem_w(mem_w_out),  .PC(PC_out),
                       .Cpu_data2bus(Data_out), .addr_bus(Addr_out), .ram_data_out(douta), 
                       .led_out(LED_out), .counter_out(counter_out), .counter0_out(counter0_OUT), 
                       .counter1_out(counter1_OUT), .counter2_out(counter2_OUT), 
                       .Cpu_data4bus(Cpu_data4bus), .ram_data_in(ram_data_in), 
                       .ram_addr(ram_addr), .data_ram_we(), .GPIOf0000000_we(GPIOf0000000_we), 
                       .GPIOe0000000_we(GPIOe0000000_we), .counter_we(counter_we_out), .Peripheral_in(Peripheral_in)
                       );



    // 下板
    // dm_controller U_dm_controller(.mem_w(mem_w_out), .Addr_in(Addr_out), .Data_write(ram_data_in), 
    //                             .dm_ctrl(dm_ctrl_out), .Data_read_from_dm(Cpu_data4bus), 
    //                             .Data_read(Data_read), .Data_write_to_dm(Data_write_to_dm), .wea_mem(wea_mem));

    // tb
    dm_controller U_dm_controller(.mem_w(mem_w_out), .Addr_in(Addr_out), .Data_write(Data_out), 
                                .dm_ctrl(dm_ctrl_out), .Data_read_from_dm(douta), 
                                .Data_read(Data_read), .Data_write_to_dm(Data_write_to_dm), .wea_mem(wea_mem));

    wire [239:0] render_out;
    wire [1:0] block_num;
    wire [5:0] inblock_num;
    wire [31:0] now_num;
    wire [31:0] mapsam;
    wire render_en;

    LCD U_LCD(.clk_in(Clk_CPU), .rstn(rstn), .sw_i(SW), .data_in(render_out), .LCD_PWR(LCD_PWR), .LCD_SCK(LCD_SCK),
                .LCD_CS(LCD_CS), .LCD_SDA(LCD_SDA), .LCD_WR(LCD_WR), .LCD_RST(LCD_RST), .LCD_CLK(LCD_CLK),
                .render_en(render_en) );


    render U_render(.clk(Clk_CPU), .rstn(rstn), .map_data(doutb), .render_en(render_en), 
                    .addr(render_addr), .render_out(render_out),
                    .block_num(block_num), .inblock_num(inblock_num),  .mapsam(mapsam));


    // 下板用
    // RAM_D U_RAM_D(.clka(clkn), .wea(wea_mem), .addra(Addr_out[11:2]), 
    //                 .dina(Data_write_to_dm), .douta(douta),
    //                 .clkb(clkn), .web(4'b0000), .addrb(render_addr[11:2]), .doutb(doutb), .dinb(32'b0));

    // tb用
    RAM_D U_RAM_D(.clka(clkn), .wea(wea_mem), .addra(Addr_out[11:2]), 
                    .dina(Data_write_to_dm), .douta(douta),
                    .clkb(clkn), .web(4'b0000), .addrb(render_addr[11:2]), .doutb(doutb), .dinb(32'b0));

    ROM_I U_ROM_D(.a(PC_out[11:2]), .spo(spo));

    assign led_o[3:0] = BTN[3:0];

    wire INT_en, INT;
    
    assign led_o[10] = INT_en;
    wire [1:0] INT_data;
    wire led_o_11;
    assign led_o[11] = led_o_11;
    assign led_o[9:8] = INT_data;

    INTmod U_INT(.clk(Clk_CPU), .rstn(rstn), .btn(BTN), .PC(PC_out), .INT_en(INT_en), .INT_data(INT_data), .led_o_11(led_o_11));

    wire in_INT, interrupt_tick;
    SCPU U_SCPU(.clk(Clk_CPU), .reset(rst), .MIO_ready(CPU_MIO), .inst_in(spo), 
                .INT(INT_en), .Data_in(Data_read), .mem_w(mem_w_out), .PC_out(PC_out), 
                .Addr_out(Addr_out), .Data_out(Data_out), .DMSize(dm_ctrl_out), 
                .CPU_MIO(CPU_MIO), .INT_data(INT_data), .in_INT(in_INT), .interrupt_tick(interrupt_tick));

    assign led_o[12] = in_INT;
    assign led_o[13] = interrupt_tick;

    assign disp_an_o = seg_an;
    assign disp_seg_o = seg_sout;
    

endmodule
