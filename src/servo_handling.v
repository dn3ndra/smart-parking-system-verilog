`include "keypad_handling.v"
`include "servo_control.v"

module servo_handling(
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
    output wire servo_pwm_in,         // Output PWM untuk kontrol servo masuk
    output wire servo_pwm_out         // Output PWM untuk kontrol servo keluar
);
    // Wires untuk unlock masing-masing jalur
    wire unlock_in;
    wire unlock_out;

    // Instansiasi modul keypad_handling untuk gerbang masuk
    keypad_handling keypad_handling_in (
        .clk(clk),
        .rst(rst),
        .car_detected_in(car_detected_in),
        .digit1_in(digit1_in),
        .digit2_in(digit2_in),
        .digit3_in(digit3_in),
        .unlock_in(unlock_in)             // Output unlock untuk servo masuk
    );

    // Instansiasi modul servo_control untuk gerbang masuk
    servo_control servo_control_in (
        .clk(clk),
        .reset(rst),
        .control_signal(unlock_in),
        .servo_pwm(servo_pwm_in)       // Output PWM untuk servo masuk
    );

    // Instansiasi modul keypad_handling untuk gerbang keluar
    keypad_handling keypad_handling_out (
        .clk(clk),
        .rst(rst),
        .car_detected_out(car_detected_out),
        .digit1_out(digit1_out),
        .digit2_out(digit2_out),
        .digit3_out(digit3_out),
        .unlock_out(unlock_out)            // Output unlock untuk servo keluar
    );

    // Instansiasi modul servo_control untuk gerbang keluar
    servo_control servo_control_out (
        .clk(clk),
        .reset(rst),
        .control_signal(unlock_out),
        .servo_pwm(servo_pwm_out)      // Output PWM untuk servo keluar
    );

endmodule
