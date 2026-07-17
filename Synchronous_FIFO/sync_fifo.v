module sync_fifo(
    input clk,
    input rst,
    input wr_en,
    input rd_en,
    input [7:0]data_in,
    output reg [7:0]data_out,
    output reg full,
    output reg empty );
    
    
    reg [7:0] memory [7:0];

    reg [2:0] wr_ptr;
    reg [2:0] rd_ptr;
    
    reg [3:0] count;
    
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            wr_ptr<= 3'd0;
            rd_ptr<= 3'd0;
            count<= 4'd0;
            
            data_out<= 8'd0;
            full<= 1'b0;
            empty<= 1'b0;
        end
        
        else
        if(wr_en && !full)
        begin
            memory[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
            count <= count + 1;
        end 
        
        if(rd_en && !empty)
        begin
            data_out <= memory[rd_ptr];
            rd_ptr <= rd_ptr + 1;
            count <= count - 1;
        end 
        
        if(count == 8)
            full <= 1'b1;
        else
            full <= 1'b0;
            
        if(count == 0)
            empty <= 1'b1;
        else
            empty <= 1'b0;
            
            
    end
endmodule