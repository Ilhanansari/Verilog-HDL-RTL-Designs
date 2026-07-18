module tb_D_ff;
    reg D;
    reg clk;
    reg rst;
    
    wire Q;
    
    D_ff uut(
    .D(D),
    .clk(clk),
    .rst(rst),
    .Q(Q));
    
    initial
    begin
    clk=0;
    forever #10 clk=~clk;    
    end
    
    initial
    begin
    $monitor("time=%0t rst=%b D=%b clk=%b Q=%b",$time,D,rst,clk,Q);  
    end
    
    initial
begin
    rst = 1;
    D = 0;
    #10;

    rst = 0;

    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;
    D = 1; #10;
    D = 0; #10;

    rst = 1; #10;
    rst = 0;

    D = 1; #10;
    D = 0; #10;

    $finish;
end
    
endmodule
