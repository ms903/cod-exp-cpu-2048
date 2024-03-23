`timescale 1ns / 1ps
// testbench for simulation
module tb();
    
    reg  clk, rstn;
    wire[32-1:0]	 pcW;
    reg [4:0] btn_i;
    wire [15:0] sw_i, led_o;
    wire [7:0] disp_an_o, disp_seg_o;
    assign sw_i = 16'h1000;
    // assign btn_i = 5'b0;
    top U_top(clk, rstn, btn_i, sw_i, disp_an_o, disp_seg_o, led_o);

   integer counter = 0;
   
   initial begin
      clk = 1;
      rstn = 0;
      #10 ;
      rstn = 1;
   end
   
  always begin
    #(50) clk = ~clk;
     
    if (clk == 1'b1) 
      begin
        counter = counter + 1;
         // comment these four lines for online judge
         //$display("clock: %d", counter);
         //$display("pc:\t\t%h", xgriscvp.pcF);
         //$display("instr:\t%h", xgriscvp.instr);
         //$display("pcw:\t\t%h", pcW);
        if (pcW >= 32'h00000F2C || counter >= 100000000) // set to the address of the last instruction
        begin
          //$display("pcW:\t\t%h", pcW);
          //$finish;
          $stop;
        end
      end
  end //end always

  always begin
    btn_i = 4'b0000;
    #(500000);
    btn_i[1] = 0;
    #(300);
    btn_i[1] = 1;    #(300);
    btn_i[1] = 0;    #(300);
    btn_i[1] = 1;    #(300);
    btn_i[1] = 0;    #(300);
    btn_i[1] = 1;    #(300);
    btn_i[1] = 0;    #(300);
    btn_i[1] = 1;    #(100);
    btn_i[1] = 1;    #(1000000);
    btn_i[1] = 0;    #(10000);

    // btn_i[0] = 0;
    // #(5000);
    // btn_i[0] = 0;
    // #(300);
    // btn_i[0] = 1;    #(300);
    // btn_i[0] = 0;    #(300);
    // btn_i[0] = 1;    #(300);
    // btn_i[0] = 0;    #(300);
    // btn_i[0] = 1;    #(300);
    // btn_i[0] = 0;    #(300);
    // btn_i[0] = 1;    #(100);
    // btn_i[0] = 1;    #(1000000);
    // btn_i[0] = 0;    #(10000);

    // btn_i[2] = 0;
    // #(500000);
    // btn_i[2] = 0;
    // #(300);
    // btn_i[2] = 1;    #(300);
    // btn_i[2] = 0;    #(300);
    // btn_i[2] = 1;    #(300);
    // btn_i[2] = 0;    #(300);
    // btn_i[2] = 1;    #(300);
    // btn_i[2] = 0;    #(300);
    // btn_i[2] = 1;    #(100);
    // btn_i[2] = 1;    #(1000000);
    // btn_i[2] = 0;    #(10000);

    // btn_i[3] = 0;
    // #(500000);
    // btn_i[3] = 0;
    // #(300);
    // btn_i[3] = 1;    #(300);
    // btn_i[3] = 0;    #(300);
    // btn_i[3] = 1;    #(300);
    // btn_i[3] = 0;    #(300);
    // btn_i[3] = 1;    #(300);
    // btn_i[3] = 0;    #(300);
    // btn_i[3] = 1;    #(100);
    // btn_i[3] = 1;    #(1000000);
    // btn_i[3] = 0;    #(10000);
  end
   
endmodule