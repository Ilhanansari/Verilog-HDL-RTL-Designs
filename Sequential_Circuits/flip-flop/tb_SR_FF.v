`timescale 1ns / 1ps

module tb_sr_flip_flop;

reg S;
reg R;
reg clk;
reg rst;

wire Q;

sr_flip_flop uut(
    .S(S),
    .R(R),
    .clk(clk),
    .rst(rst),
    .Q(Q)
);

// Clock Generation
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Monitor
initial
begin
    $monitor("Time=%0t clk=%b rst=%b S=%b R=%b Q=%b",
             $time, clk, rst, S, R, Q);
end

// Test Cases
initial
begin
    rst = 1;
    S = 0;
    R = 0;
    #10;

    rst = 0;

    // Hold
    S = 0; R = 0; #10;

    // Set
    S = 1; R = 0; #10;

    // Hold
    S = 0; R = 0; #10;

    // Reset
    S = 0; R = 1; #10;

    // Hold
    S = 0; R = 0; #10;

    // Invalid
    S = 1; R = 1; #10;

    // Hold
    S = 0; R = 0; #10;

    // Set
    S = 1; R = 0; #10;

    $finish;
end

endmodule