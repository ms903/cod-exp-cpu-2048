`include "macrodefine.v"

module pipreg #(parameter WIDTH = 8)(
    input                  clk, reset, clear,
    input      [WIDTH-1:0] d, 
    output reg [WIDTH-1:0] q
);

    always @(posedge clk, posedge reset)
        if      (reset || clear) q <= 0;
        else            q <= d;
        
endmodule


module pipenreg #(parameter WIDTH = 8)(
    input                  clk, reset,
    input                  clear, en,
    input      [WIDTH-1:0] d, 
    output reg [WIDTH-1:0] q
);
 
    always @(posedge clk, posedge reset)
        if      (reset || clear) q <= 0;
        else if (en)             q <= d;
endmodule

module mux3 #(parameter WIDTH = 2)(
    input [WIDTH - 1:0] a,b,c,
    input [1:0] control,
    output reg [WIDTH - 1:0] o
);
    always@(*)
    case(control)
        2'b00 : o <= a;
        2'b01 : o <= b;
        2'b10 : o <= c;
    endcase

endmodule