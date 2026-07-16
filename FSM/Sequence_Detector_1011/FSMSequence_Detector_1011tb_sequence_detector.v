module tb_fsm;
    reg clk;
    reg rst;
    reg x;
    wire y;
    
    fsm uut(
    .clk(clk),
    .rst(rst),
    .x(x),
    .y(y)
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
        $monitor("Time=%0t clk=%b rst=%b x=%b y=%b",
                 $time, clk, rst, x, y);
    end
    initial
    begin
        // Reset
        rst = 1;
        x = 0;
        #10;
    
        rst = 0;
    
        // Input Stream : 1011
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
    
        // Input Stream : 1011011 (Overlapping)
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
    
        // Random Inputs
        x = 0; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
    
        $finish;
    end
endmodule
