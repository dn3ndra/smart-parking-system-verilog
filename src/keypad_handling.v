`include "keypad.v"
`include "motion_sensor.v"

module keypad_handling(
    input wire clk,
    input wire rst,
    input wire car_detected_in,       // Deteksi mobil untuk masuk
    input wire car_detected_out,      // Deteksi mobil untuk keluar
    input wire [3:0] digit1_in,       // Digit pertama untuk masuk
    input wire [3:0] digit2_in,       // Digit kedua untuk masuk
    input wire [3:0] digit3_in,       // Digit ketiga untuk masuk
    input wire [3:0] digit1_out,      // Digit pertama untuk keluar
    input wire [3:0] digit2_out,      // Digit kedua untuk keluar
    input wire [3:0] digit3_out,      // Digit ketiga untuk keluar
    output reg unlock_in,             // Output unlock untuk gerbang masuk
    output reg unlock_out             // Output unlock untuk gerbang keluar
);

    // Wires untuk jalur masuk
    wire keypad_unlock_in;
    wire motion_out_in;
    reg lock_input_in;

    // Wires untuk jalur keluar
    wire keypad_unlock_out;
    wire motion_out_out;
    reg lock_input_out;

    // Instansiasi motion_sensor untuk jalur masuk
    motion_sensor motion_sensor_in (
        .clk(clk),
        .rst(rst),
        .car_detected(car_detected_in),
        .motion_out(motion_out_in)
    );

    // Instansiasi keypad untuk jalur masuk
    keypad keypad_in (
        .digit1(digit1_in),
        .digit2(digit2_in),
        .digit3(digit3_in),
        .clk(clk),
        .rst(rst),
        .lock_input(motion_out_in),
        .unlock(keypad_unlock_in)
    );

    // Instansiasi motion_sensor untuk jalur keluar
    motion_sensor motion_sensor_out (
        .clk(clk),
        .rst(rst),
        .car_detected(car_detected_out),
        .motion_out(motion_out_out)
    );

    // Instansiasi keypad untuk jalur keluar
    keypad keypad_out (
        .digit1(digit1_out),
        .digit2(digit2_out),
        .digit3(digit3_out),
        .clk(clk),
        .rst(rst),
        .lock_input(motion_out_out),
        .unlock(keypad_unlock_out)
    );

    // Logika untuk jalur masuk
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            unlock_in <= 1'b0;
            lock_input_in <= 1'b0;
        end else begin
            if (motion_out_in == 1'b1) begin
                lock_input_in <= 1'b1; // Set lock_input_in saat ada motion
            end else begin
                lock_input_in <= 1'b0;
            end
            
            if (car_detected_in && lock_input_in) begin
                if (keypad_unlock_in == 1'b1) begin
                    unlock_in <= 1'b1;
                end else begin
                    unlock_in <= 1'b0;
                end
            end else begin
                unlock_in <= 1'b0;
            end
        end
    end

    // Logika untuk jalur keluar
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            unlock_out <= 1'b0;
            lock_input_out <= 1'b0;
        end else begin
            if (motion_out_out == 1'b1) begin
                lock_input_out <= 1'b1; // Set lock_input_out saat ada motion
            end else begin
                lock_input_out <= 1'b0;
            end
            
            if (car_detected_out && lock_input_out) begin
                if (keypad_unlock_out == 1'b1) begin
                    unlock_out <= 1'b1;
                end else begin
                    unlock_out <= 1'b0;
                end
            end else begin
                unlock_out <= 1'b0;
            end
        end
    end

endmodule
