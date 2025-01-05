module motion_sensor (
    input wire clk,                // Clock input
    input wire rst,                // Reset input
    input wire car_detected,    // Sinyal deteksi mobil untuk jalur masuk
    output reg motion_out = 0  // Sinyal motion untuk jalur masuk
);

    // Logika untuk jalur masuk
    always @(posedge clk or posedge rst) begin
        if (rst)
            motion_out <= 1'b0;  // Reset sinyal motion untuk jalur masuk
        else
            motion_out <= car_detected;  // Salin sinyal deteksi mobil untuk jalur masuk
    end

endmodule

