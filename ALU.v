module ALU( input [31:0] A,
            input [31:0] B,
            input [3:0] AluOp,
            output Zero,
            output reg [31:0] Result);
                            
            always @ (*) begin
                 case (AluOp)
                    4'b0000 : Result = A + B;
                    4'b0010 : Result = A - B;
                    4'b0100 : Result = A & B;
                    4'b0101 : Result = A || B;
                    4'b0110 : Result = A ^ B;
                    4'b0111 : Result = ~(A || B);
                    4'b1010 : Result = (A>B)?32'd1:32'd0;
                    default : Result = 32'd0;
                 endcase
            end
                    
            assign Zero = (Result == 32'd0)? 1:0;

endmodule