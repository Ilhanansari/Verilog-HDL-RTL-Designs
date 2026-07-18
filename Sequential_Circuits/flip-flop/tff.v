`timescale 1ns / 1ps

module t_flip_flop(
    input T,
    input clk,
    input rst,

    output reg Q
    );

always @(posedge clk or posedge rst)
begin
    if(rst)
        Q <= 1'b0;

    else
    begin
        if(T)
            Q <= ~Q;
        else
            Q <= Q;
    end
end

endmodule