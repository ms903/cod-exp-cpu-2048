module INTmod(
    input clk, rstn,
    input [31:0] PC,
    input [3:0] btn,
    output reg INT_en,
    output reg [1:0] INT_data,
    output reg led_o_11
);
    reg [31:0] retpc;
    reg [20:0] cnt;
    always @ (*) begin
        if(INT_en) begin
            cnt <= cnt + 1'b1;
            if(cnt == 20'hefff) begin
                INT_en <= 1'b0;
                cnt <= 20'b0;
            end
        end
        if(PC == retpc || ~rstn) begin
            INT_en <= 1'b0;
            led_o_11 = 1'b0;
            INT_data <= 2'b00;
            cnt <= 20'b0;
        end else if(~INT_en && PC >= 32'h00000ea8) begin
            INT_en <= 20'b0;
            case(btn)
                4'b0001: begin
                    INT_en <= 1'b1;
                    INT_data <= 2'b00;
                    led_o_11 = 1'b1;
                    retpc <= 32'h00000ee8;
                end
                4'b0010: begin
                    INT_en <= 1'b1;
                    INT_data <= 2'b01;
                    led_o_11 = 1'b1;
                    retpc <= 32'h00000f18;
                end
                4'b0100: begin
                    INT_en <= 1'b1;
                    INT_data <= 2'b11;
                    led_o_11 = 1'b1;
                    retpc <= 32'h00000f78;
                end
                4'b1000: begin
                    INT_en <= 1'b1;
                    INT_data <= 2'b10;
                    led_o_11 = 1'b1;
                    retpc <= 32'h00000f48;
                end
            endcase
        end 
    end
endmodule