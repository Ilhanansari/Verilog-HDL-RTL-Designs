module tb_jk_ff;
    reg J;
    reg K;
    reg clk;
    reg rst;
    
    wire Q;
    
    jk_ff uut(
    .J(J),
    .K(K),
    .clk(clk),
    .rst(rst),
    .Q(Q));
    
    initial
    begin
    clk=0;
    forever #5 clk=~clk;    
    end
    
    initial
    begin
    $monitor("time=%0t rst=%b J=%b K=%b  clk=%b Q=%b",$time,J,K,rst,clk,Q);  
    end
    
    initial
begin
    rst = 1;
    J = 0;
    K = 0;
    #10;

    rst = 0;

    // Hold
    J = 0; K = 0; #10;

    // Reset
    J = 0; K = 1; #10;

    // Set
    J = 1; K = 0; #10;

    // Toggle
    J = 1; K = 1; #10;
    J = 1; K = 1; #10;
    J = 1; K = 1; #10;

    // Hold
    J = 0; K = 0; #10;

    // Reset
    J = 0; K = 1; #10;

    // Set
    J = 1; K = 0; #10;

    $finish;
end
    
endmodule
