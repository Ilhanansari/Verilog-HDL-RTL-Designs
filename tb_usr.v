module tb_usr;
    reg clk;
    reg rst;
    reg S1;
    reg S0;
    reg SL;
    reg SR;
    reg  [3:0]D;
    wire [3:0]Q;
    
    usr uut(
    .clk(clk),
    .rst(rst),
    .S1(S1),
    .S0(S0),
    
    .SR(SR),
    .SL(SL),
    .D(D),
    .Q(Q)
    );
    initial
    begin
    $monitor("time=%0t clk=%b rst=%b S1=%b S0=%b SR=%b SL=%b D=%b Q=%b",$time,clk,rst,S1,S0,SR,SL,Q,D);
    end
    
    initial
    begin
        clk=0;
    forever #5 clk=~clk;
    end
    
    initial
begin

    // Reset
    rst = 1;
    S1 = 0;
    S0 = 0;
    SL = 0;
    SR = 0;
    D  = 4'b0000;
    #10;

    rst = 0;

    // Parallel Load
    S1 = 1;
    S0 = 1;
    D  = 4'b1010;
    #10;

    // Hold
    S1 = 0;
    S0 = 0;
    #10;

    // Shift Right
    S1 = 0;
    S0 = 1;
    SR = 1;
    #10;

    // Shift Right Again
    SR = 0;
    #10;

    // Shift Left
    S1 = 1;
    S0 = 0;
    SL = 1;
    #10;

    // Shift Left Again
    SL = 0;
    #10;

    // Parallel Load
    S1 = 1;
    S0 = 1;
    D  = 4'b1100;
    #10;

    // Hold
    S1 = 0;
    S0 = 0;
    #10;

    // Shift Right
    S1 = 0;
    S0 = 1;
    SR = 1;
    #10;

    // Shift Left
    S1 = 1;
    S0 = 0;
    SL = 0;
    #10;

    $finish;

end
    
endmodule    