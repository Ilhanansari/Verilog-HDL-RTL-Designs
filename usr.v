module usr(
    input clk,
    input rst,
    input S1,
    input S0,
    input SL,
    input SR,
    input  [3:0]D,
    output reg [3:0]Q);
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
            Q<=4'b0000;
        else
            begin
                case({S1,S0})
                    2'b00:
                    begin
                        Q<=Q;
                    end
                    2'b01:
                    begin
                        Q<={SR,Q[3:1]};
                    end
                    2'b10:
                    begin
                        Q<={Q[2:0],SL};
                    end
                    2'b11:
                    begin
                        Q<=D;
                    end
                endcase
            end
    end
    
endmodule