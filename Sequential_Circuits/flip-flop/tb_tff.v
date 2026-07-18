`timescale 1ns / 1ps

module tb_t_flip_flop;

reg T;
reg clk;
reg rst;

wire Q;

t_flip_flop uut(
    .T(T),
    .clk(clk),
    .rst(rst),
    .Q(Q)
);

// Clock
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Monitor
initial
begin
    $monitor("Time=%0t clk=%b rst=%b T=%b Q=%b",
              $time, clk, rst, T, Q);
end

// Test Cases
initial
begin
    rst = 1;
    T = 0;
    #10;

    rst = 0;

    // Hold
    T = 0; #10;

    // Toggle
    T = 1; #10;
    T = 1; #10;
    T = 1; #10;

    // Hold
    T = 0; #10;

    // Toggle
    T = 1; #10;
    T = 1; #10;

    // Reset
    rst = 1; #10;
    rst = 0;

    T = 1; #10;
    T = 0; #10;

    $finish;
end

endmodule