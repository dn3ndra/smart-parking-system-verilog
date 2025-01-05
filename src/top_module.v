`timescale 1ns / 1ps
`include "servo_handling.v"
`include "parking_controller.v"

module top_module (
    input wire clk,                   // Clock input
    input wire rst,                   // Reset input
    input wire car_detected_in,       // Deteksi mobil masuk
    input wire car_detected_out,      // Deteksi mobil keluar
    input wire [3:0] digit1_in,       // Input digit pertama untuk jalur masuk
    input wire [3:0] digit2_in,       // Input digit kedua untuk jalur masuk
    input wire [3:0] digit3_in,       // Input digit ketiga untuk jalur masuk
    input wire [3:0] digit1_out,      // Input digit pertama untuk jalur keluar
    input wire [3:0] digit2_out,      // Input digit kedua untuk jalur keluar
    input wire [3:0] digit3_out,      // Input digit ketiga untuk jalur keluar
    output wire [19:0] led_slot,      // Output status LED slot parkir
    output wire servo_pwm_in,         // Output PWM untuk kontrol servo masuk
    output wire servo_pwm_out         // Output PWM untuk kontrol servo keluar
);

    // Wires untuk menghubungkan modul-modul
    wire unlock_in;                   // Output unlock untuk jalur masuk
    wire unlock_out;                  // Output unlock untuk jalur keluar

    // Instansiasi Modul Servo Handling untuk Jalur Masuk dan Keluar
    servo_handling servo_handling_inst (
        .clk(clk),
        .rst(rst),
        .car_detected_in(car_detected_in),
        .car_detected_out(car_detected_out),
        .digit1_in(digit1_in),
        .digit2_in(digit2_in),
        .digit3_in(digit3_in),
        .digit1_out(digit1_out),
        .digit2_out(digit2_out),
        .digit3_out(digit3_out),
        .servo_pwm_in(servo_pwm_in),
        .servo_pwm_out(servo_pwm_out)
    );

    // Instansiasi Modul Parking Controller
    parking_controller parking_controller_inst (
        .clk(clk),
        .reset(rst),
        .a(servo_pwm_in),     // Input dari servo untuk mobil masuk
        .b(servo_pwm_out),   // Input dari servo untuk mobil keluar
        .led_slot(led_slot)              // Output status LED slot parkir
    );

endmodule

