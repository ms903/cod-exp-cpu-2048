`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/27 22:02:47
// Design Name: 
// Module Name: dm_controller
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


`include  "macrodefine.v"

module dm_controller(
    input               mem_w,
    input       [31:0]  Addr_in,
    input       [31:0]  Data_write,
    input       [2:0]   dm_ctrl,
    input       [31:0]  Data_read_from_dm,
    output reg  [31:0]  Data_read,
    output reg  [31:0]  Data_write_to_dm,
    output reg  [3:0]   wea_mem
);

    reg [1:0] b_offset;
    reg [31:0] aligned_h, aligned_b;

    always @ (*)
        b_offset <= Addr_in[1:0];

    always @ (*) begin
        aligned_b <= (Data_read_from_dm >> (8 * b_offset));
        aligned_h <= (Data_read_from_dm >> (16 * b_offset[1]));

        case(dm_ctrl)
            `dm_word:               Data_read <= Data_read_from_dm;
            `dm_halfword:           Data_read <= {{16{aligned_h[15]}}, aligned_h[15:0]};
            `dm_halfword_unsigned:  Data_read <= {16'h0000, aligned_h[15:0]};
            `dm_byte:               Data_read <= {{24{aligned_b[7]}}, aligned_b[7:0]};
            `dm_byte_unsigned:      Data_read <= {24'h0000000, aligned_b[7:0]};
            default:                Data_read <= 32'b0;
        endcase
    end


    always @ (*) begin
        wea_mem <= 4'b0000;

        if(mem_w)
        case (dm_ctrl)
            `dm_word: begin
                wea_mem <= 4'b1111;
                Data_write_to_dm <= Data_write;
            end
            
            `dm_halfword: begin
                case(b_offset[1])
                    1'b0: wea_mem <= 4'b0011;
                    1'b1: wea_mem <= 4'b1100;
                endcase
                Data_write_to_dm <= {2{Data_write[15:0]}};
            end
            
            `dm_halfword_unsigned: begin
                    case(b_offset[1])
                        1'b0: wea_mem <= 4'b0011;
                        1'b1: wea_mem <= 4'b1100;
                    endcase
                    Data_write_to_dm <= {2{Data_write[15:0]}};
            end

            `dm_byte: begin
                case(b_offset) 
                    2'b00: wea_mem <= 4'b0001;
                    2'b01: wea_mem <= 4'b0010;
                    2'b10: wea_mem <= 4'b0100;
                    2'b11: wea_mem <= 4'b1000;
                endcase
                Data_write_to_dm <= {4{Data_write[7:0]}};
            end

            `dm_byte_unsigned: begin
                case(b_offset) 
                    2'b00: wea_mem <= 4'b0001;
                    2'b01: wea_mem <= 4'b0010;
                    2'b10: wea_mem <= 4'b0100;
                    2'b11: wea_mem <= 4'b1000;
                endcase
                Data_write_to_dm <= {4{Data_write[7:0]}};
            end

            default : begin
                wea_mem <= 4'b1111;
                Data_write_to_dm <= Data_write;
            end
        endcase 
    end
endmodule

