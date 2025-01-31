module keypad(
    input wire [3:0] digit1,       // Digit pertama
    input wire [3:0] digit2,       // Digit kedua
    input wire [3:0] digit3,       // Digit ketiga
    input wire clk,
    input wire rst,
    input wire lock_input,    
    output reg unlock      
);

    // Password yang benar
    parameter [11:0] PASSWORD_IN  = 12'b000100100011; // Password untuk masuk: 123
    parameter [11:0] PASSWORD_OUT = 12'b001000110100; // Password untuk keluar: 234

    // Logika untuk unlock
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            unlock <= 1'b0; 
        end else if (lock_input) begin
            
            if ((digit1 == PASSWORD_IN[11:8] && 
                 digit2 == PASSWORD_IN[7:4] && 
                 digit3 == PASSWORD_IN[3:0]) || 
                (digit1 == PASSWORD_OUT[11:8] && 
                 digit2 == PASSWORD_OUT[7:4] && 
                 digit3 == PASSWORD_OUT[3:0])) begin
                unlock <= 1'b1;
            end else begin
                unlock <= 1'b0; 
            end
        end else begin
            unlock <= 1'b0;
        end
    end

endmodule

